<?php

namespace Fd\BackendBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\ParamConverter;
use Fd\BackendBundle\Form\UnidadOfertaType;
use Fd\EstablecimientoBundle\Entity\Establecimiento;
use Fd\EstablecimientoBundle\Entity\Localizacion;
use Fd\EstablecimientoBundle\Entity\UnidadOferta;
use Fd\EstablecimientoBundle\Model\UnidadOfertaHandler;
use Fd\OfertaEducativaBundle\Entity\Carrera;
use Fd\TablaBundle\Entity\Nivel;

/**
 * UnidadOferta controller.
 *
 * @Route("/unidadoferta")
 */
class UnidadOfertaController extends Controller {

    private $em;

    /**
     * Muestra una pagina para seleccionar de cada localizacion, alguno de sus niveles educativos.
     *
     * @Route("/", name="backend_unidadoferta")
     */
    public function indexAction() {

        $request = $this->getRequest();

        // establezco la ruta para la pagina que tenga que volver aca
        $this->get('session')->set('ruta_completa', $request->get('_route'));
        $this->get('session')->set('parametros', $request->get('_route_params'));

        // combo de edificios de establecimientos
        $establecimiento_edificios = $this->getEm()
                ->getRepository('EstablecimientoBundle:EstablecimientoEdificio')
                ->findAllOrdenado();

        // combo de niveles
        $niveles = $this->getEm()
                ->getRepository('TablaBundle:Nivel')
                ->findBy(array(), array('orden' => 'asc'));

        return $this->render('BackendBundle:UnidadOferta:index.html.twig', array(
                    'establecimiento_edificios' => $establecimiento_edificios,
                    'niveles' => $niveles,
        ));
    }

    /**
     * Llamada AJAX que devuelve una array con una lista de unidad_ofertas de una localizacion
     * 
     * @Route("/listar/{localizacion_id}", name="backend_unidadoferta_listar")
     * @ParamConverter("localizacion", class="EstablecimientoBundle:Localizacion", options={"id"="localizacion_id"} )
     * @Template("BackendBundle:UnidadOferta:listar.html.twig")
     */
    public function listarAction($localizacion) {
        $entities = array();
        //recupero todas las ofertas de la unidad educativa
        //de acuerdo al nivel de las ofertas quiero que se muestren de forma distinta
        foreach ($localizacion->getOfertas() as $oferta) {
            $elemento['value'] = $oferta->getId();
            $entity = $oferta->getOfertas()->getObjetoOferta();
            if ($entity instanceof Carrera) {
                $elemento['text'] = $entity->getIdentificacion();
            } else {
                $elemento['text'] = $entity->__toString();
            };
            $entities[] = $elemento;
        }
        return array(
            'entities' => $entities,
        );
    }

    /**
     * Lista de unidades_oferta para un combo formateados en html como combo
     * Filtrado por unidad_educativa
     * 
     * @Route("/combo/{localizacion_id}", name="backend_unidad_oferta_combo", options={"expose"=true})
     */
    public function comboAction($localizacion_id) {

        $localizacion = $this->getEm()->getRepository('EstablecimientoBundle:Localizacion')->find($localizacion_id);

        $entities = $this->getEm()
                ->getRepository('EstablecimientoBundle:UnidadOferta')
                ->findUnidadOferta($localizacion)
        ;

        return $this->render('EstablecimientoBundle:UnidadOferta:combo.html.twig', array(
                    'unidad_ofertas' => $entities,
        ));
    }

    private function getEm() {
        if (!$this->em) {
            $this->em = $this->getDoctrine()->getEntityManager();
        };
        return $this->em;
    }

    /**
     * Displays a form to create a new UnidadOferta entity.
     *
     * @Route("/new", name="backend_unidadoferta_new")
     * @Template()
     */
    public function newAction() {
        $entity = new UnidadOferta();
        $form = $this->createForm(new UnidadOfertaType(), $entity);

        return array(
            'entity' => $entity,
            'form' => $form->createView()
        );
    }

    /**
     * Creates a new UnidadOferta entity.
     *
     * @Route("/create", name="backend_unidadoferta_create")
     * @Method("post")
     * @Template("EstablecimientoBundle:UnidadOferta:new.html.twig")
     */
    public function createAction(Request $request) {
        $entity = new UnidadOferta();
        $form = $this->createForm(new UnidadOfertaType(), $entity);
        $form->bind($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getEntityManager();
            $em->persist($entity);
            $em->flush();

            $this->get('session')->getFlashbag()->add('notice', 'Guardado exitosamente');

            return $this->redirect($this->generateUrl('backend_unidadoferta_edit', array('id' => $entity->getId())));
        }

        return array(
            'entity' => $entity,
            'form' => $form->createView()
        );
    }

    /**
     * Displays a form to edit an existing UnidadOferta entity.
     *
     * @Route("/{id}/edit", name="backend_unidadoferta_edit")
     * @ParamConverter("unidad_oferta", class="EstablecimientoBundle:UnidadOferta", options={"id":"unidad_oferta_id"})
     * @Template()
     */
    public function editAction($unidad_oferta) {

        $editForm = $this->createForm(new UnidadOfertaType(), $unidad_oferta);
        $deleteForm = $this->createDeleteForm($unidad_oferta->getId());

        return array(
            'entity' => $unidad_oferta,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Edits an existing UnidadOferta entity.
     *
     * @Route("/{id}/update", name="backend_unidadoferta_update")
     * @Method("post")
     * @Template("EstablecimientoBundle:UnidadOferta:edit.html.twig")
     */
    public function updateAction($id) {
        $em = $this->getDoctrine()->getEntityManager();

        $entity = $em->getRepository('EstablecimientoBundle:UnidadOferta')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find UnidadOferta entity.');
        }

        $editForm = $this->createForm(new UnidadOfertaType(), $entity);
        $deleteForm = $this->createDeleteForm($id);

        $request = $this->getRequest();

        $editForm->bindRequest($request);

        if ($editForm->isValid()) {
            $em->persist($entity);
            $em->flush();

            $this->get('session')->setFlash('notice', 'Guardado exitosamente');

            return $this->redirect($this->generateUrl('backend_unidadoferta_edit', array('id' => $id)));
        }

        return array(
            'entity' => $entity,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Deletes a UnidadOferta entity. Sirve para todos los niveles. Llama al handler correspondiente
     *
     * @Route("/{id}/delete", name="backend_unidadoferta_delete")
     * @Method("post")
     * @ParamConverter("unidad_oferta", class="EstablecimientoBundle:UnidadOferta", options={"id":"id"})
     */
    public function deleteAction($unidad_oferta) {
        $handler = new UnidadOfertaHandler($this->getEm(), $unidad_oferta
                        ->getLocalizacion()
                        ->getUnidadEducativa()
                        ->getNivel()
        );

        $respuesta = $handler->eliminar($unidad_oferta, true);
        
        $tipo = ($respuesta->getCodigo() == 1) ? 'exito' : 'error';
        
        $this->get('session')->getFlashBag()->add($tipo, $respuesta->getMensaje());

        return $this->redirect($this->generateUrl('backend_unidadoferta'));

    }

    private function createDeleteForm($id) {
        return $this->createFormBuilder(array('id' => $id))
                        ->add('id', 'hidden')
                        ->getForm()
        ;
    }

}
