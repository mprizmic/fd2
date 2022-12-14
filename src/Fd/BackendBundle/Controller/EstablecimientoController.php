<?php

namespace Fd\BackendBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\ParamConverter;
use Fd\EstablecimientoBundle\Entity\Establecimiento;
use Fd\EstablecimientoBundle\Entity\EstablecimientoEdificio;
use Fd\EstablecimientoBundle\Entity\Respuesta;
use Fd\BackendBundle\Form\EstablecimientoType;

/**
 * Establecimiento controller.
 *
 * @Route("/establecimiento")
 */
class EstablecimientoController extends Controller {

    private $em;

    private function getEm() {
        if (is_null($this->em)) {
            $this->em = $this->getDoctrine()->getEntityManager();
        };
        return $this->em;
    }

    /**
     * FALTA migrar 
     * 
     * Lists all Establecimiento entities.
     *
     * @Route("/", name="backend_establecimiento")
     * @Template()
     */
    public function indexAction() {
        $entities = $this->getEm()
                ->getRepository('EstablecimientoBundle:Establecimiento')
                ->findAllOrdenado('orden');

        return array('entities' => $entities);
    }

    /**
     * FALTA migrar
     * 
     * Lista de establecimientos para un combo formateados en html como combo
     * @Route("/combo", name="backend_establecimiento_combo")
     */
    public function comboAction() {

        $entities = $this->getEm()->getRepository('EstablecimientoBundle:Establecimiento')->combo();

        return $this->render('BackendBundle:Establecimiento:combo.html.twig', array(
                    'establecimientos' => $entities,
                ));
    }

    /**
     * Finds and displays a Establecimiento entity.
     *
     * @Route("/{id}/show", name="backend_establecimiento_show")
     * @Template()
     */
    public function showAction($id) {
        $em = $this->getDoctrine()->getEntityManager();

        $entity = $em->getRepository('EstablecimientoBundle:Establecimiento')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Establecimiento entity.');
        }

        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity' => $entity,
            'delete_form' => $deleteForm->createView(),);
    }

    /**
     * Displays a form to create a new Establecimiento entity.
     *
     * @Route("/new", name="backend_establecimiento_new")
     * @Template()
     */
    public function newAction() {
        $entity = new Establecimiento();
        $form = $this->createForm(new EstablecimientoType(), $entity);

        return array(
            'entity' => $entity,
            'form' => $form->createView()
        );
    }

    /**
     * Creates a new Establecimiento entity.
     *
     * @Route("/create", name="backend_establecimiento_create")
     * @Method("post")
     * @Template("BackendBundle:Establecimiento:new.html.twig")
     */
    public function createAction() {
        $entity = new Establecimiento();
        $request = $this->getRequest();
        $form = $this->createForm(new EstablecimientoType(), $entity);
        $form->bindRequest($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getEntityManager();
            $em->persist($entity);
            $em->flush();
            
            $this->get('session')->getFlashBag()->add('notice', 'El establecimiento fue creada exitosamente');

            return $this->redirect($this->generateUrl('backend_establecimiento_edit', array('id' => $entity->getId())));
        }

        $this->get('session')->getFlashBag()->add('error', 'Problemas en la creaci??n del establecimiento.');
        
        return array(
            'entity' => $entity,
            'form' => $form->createView()
        );
    }

//    /**
//     * @Route("/docentes_nivel/editar/{establecimiento_edificio_id}",  name="backend_establecimiento_docentes_nivel_editar")
//     * @ParamConverter("establecimiento_edificio", class="EstablecimientoBundle:Establecimiento", options={"id"="establecimiento_edificio_id"})
//     */
//    public function docentesNivelEditarAction($establecimiento_edificio) {
//        
//        $niveles = $this->getEm()->getRepository('TablaBundle:Nivel')->descripciones_niveles();
//        
//        $docentes_nivel = new DocentesNivelClass($establecimiento);
//
//        $editForm = $this->createForm(new DocentesNivelType($establecimiento, $niveles ), $docentes_nivel);
//
//        return $this->render('BackendBundle:Docentes:edit.html.twig', array(
//                    'entity' => $docentes_nivel,
//                    'edit_form' => $editForm->createView(),
//                ));
//    }

    /**
     * Displays a form to edit an existing Establecimiento entity.
     *
     * @Route("/{id}/edit", name="backend_establecimiento_edit")
     * @Template("BackendBundle:Establecimiento:edit.html.twig")
     * @ParamConverter("entity", class="EstablecimientoBundle:Establecimiento")
     */
    public function editAction($entity) {

        $editForm = $this->createForm(new EstablecimientoType(), $entity);
        $deleteForm = $this->createDeleteForm($entity->getId());

        return array(
            'entity' => $entity,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Edits an existing Establecimiento entity.
     *
     * @Route("/{id}/update", name="backend_establecimiento_update")
     * @Method("post")
     * @Template("BackendBundle:Establecimiento:edit.html.twig")
     * @ParamConverter("entity", class="EstablecimientoBundle:Establecimiento", options={"id":"establecimiento_id"})
     */
    public function updateAction($entity) {

        $editForm = $this->createForm(new EstablecimientoType(), $entity);
        $deleteForm = $this->createDeleteForm($entity->getId());

        $request = $this->getRequest();

        $editForm->bind($request);

        if ($editForm->isValid()) {
            $this->getEm()->persist($entity);
            $this->getEm()->flush();

            $this->get('session')->getFlashBag()->add('exito', 'El establecimiento se actualiz?? exitosamente');
            
            return $this->redirect($this->generateUrl('backend_establecimiento_edit', array('id' => $entity->getId())));
        }

        $this->get('session')->getFlashBag()->add('error', 'Problemas al cargar el establecimiento. Verifique y reintente.');
        
        return array(
            'entity' => $entity,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }


    /**
     * Deletes a Establecimiento entity.
     *
     * @Route("/{id}/delete", name="backend_establecimiento_delete")
     * @Method("post")
     */
    public function deleteAction($id) {
        $form = $this->createDeleteForm($id);
        $request = $this->getRequest();

        $form->bindRequest($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getEntityManager();
            $entity = $em->getRepository('EstablecimientoBundle:Establecimiento')->find($id);

            if (!$entity) {
                throw $this->createNotFoundException('Unable to find Establecimiento entity.');
            }

            $em->remove($entity);
            $em->flush();
        }

        return $this->redirect($this->generateUrl('backend_establecimiento'));
    }

    private function createDeleteForm($id) {
        return $this->createFormBuilder(array('id' => $id))
                        ->add('id', 'hidden')
                        ->getForm()
        ;
    }

}
