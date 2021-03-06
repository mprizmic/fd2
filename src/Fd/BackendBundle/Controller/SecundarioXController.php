<?php

/**
 * Corresponde a una oferta educativa de tipo SECUNDARIO existente en una localización determinada. 
 * Es una instancia de la NES.|
 */

namespace Fd\BackendBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\ParamConverter;
use Fd\EstablecimientoBundle\Entity\UnidadOferta;
use Fd\OfertaEducativaBundle\Entity\SecundarioX;
use Fd\OfertaEducativaBundle\Model\SecundarioXHandler;
use Fd\BackendBundle\Form\SecundarioXType;

/**
 *
 * @Route("/secundariox")
 */
class SecundarioXController extends Controller {

    private $em;
    private $handler;

    private function getEm() {
        if (!$this->em) {
            $this->em = $this->getDoctrine()->getEntityManager();
        };
        return $this->em;
    }

    private function getHandler() {
        if (!$this->handler) {
            $this->handler = new SecundarioXHandler($this->getEm());
        };
        return $this->handler;
    }

    private function getRepository() {
        return $this->getEm()->getRepository('OfertaEducativaBundle:SecundarioX');
    }

    /**
     * Displays a form to create a new SecundarioXentity.
     *
     * @Route("/new", name="backend.secundariox.new")
     * @Template()
     */
    public function newAction() {
        $entity = $this->getHandler()->crearObjeto();
        $form = $this->createForm(new SecundarioXType(), $entity);

        return array(
            'entity' => $entity,
            'form' => $form->createView()
        );
    }

    /**
     * Creates a new orientacion entity a partir de un unidad_oferta_id.
     *
     * @Route("/crear/{unidad_oferta_id}", name="backend.secundariox.crear")
     * @ParamConverter("unidad_oferta", class="EstablecimientoBundle:UnidadOferta", options={"id":"unidad_oferta_id"})
     */
    public function crearAction(Request $request, $unidad_oferta) {
        $entity = $this->getHandler()->crear($unidad_oferta);
        return $this->redirect($this->generateUrl('backend.secundariox.edit', array('id' => $entity->getId())));
    }

    /**
     * Displays a form to edit an existing orientación entity.
     *
     * @Route("/{id}/edit", name="backend.secundariox.edit")
     * @ParamConverter("entity", class="OfertaEducativaBundle:SecundarioX")
     */
    public function editAction($entity) {

        $editForm = $this->createForm(new SecundarioXType(), $entity);

        $deleteForm = $this->createDeleteForm($entity->getId());

        return $this->render('BackendBundle:SecundarioX:edit.html.twig', array(
                    'entity' => $entity,
                    'edit_form' => $editForm->createView(),
                    'delete_form' => $deleteForm->createView(),
                ))
        ;
    }

    /**
     * Edits an existing orientación entity.
     *
     * @Route("/{id}/update", name="backend.secundariox.update")
     * @Method("post")
     * @Template("BackendBundle:SecundarioX:edit.html.twig")
     * @ParamConverter("entity", class="OfertaEducativaBundle:SecundarioX")
     */
    public function updateAction($entity) {

        $editForm = $this->createForm(new SecundarioXType(), $entity);

        $deleteForm = $this->createDeleteForm($entity->getId());
        
        $originalOrientaciones = array();
        foreach ($entity->getOrientaciones() as $orientacion) {
            $originalOrientaciones[] = $orientacion;
        }        

        $request = $this->getRequest();

        $editForm->bindRequest($request);

        if ($editForm->isValid()) {
            
            $respuesta = $this->getHandler()->actualizar($entity, $originalOrientaciones);

            $tipo = ($respuesta->getCodigo() == 1) ? 'exito' : 'error';

            $this->get('session')->getFlashBag()->add($tipo, $respuesta->getMensaje());

            return $this->redirect($this->generateUrl('backend.secundariox.edit', array('id' => $entity->getId())));
        }

        return array(
            'entity' => $entity,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Deletes a SecundarioX entity.
     *
     * @Route("/{id}/delete", name="backend.secundariox.delete")
     * @Method("post")
     * @ParamConverter("entity", class="OfertaEducativaBundle:SecundarioX")
     */
    public function deleteAction($entity) {
        $form = $this->createDeleteForm($entity->getId());
        $request = $this->getRequest();

        $form->bindRequest($request);

        if ($form->isValid()) {

            $this->getEm()->remove($entity);
            $this->getEm()->flush();
        }

        return $this->redirect($this->generateUrl('backend.secundariox.new'));
    }

    private function createDeleteForm($id) {
        return $this->createFormBuilder(array('id' => $id))
                        ->add('id', 'hidden')
                        ->getForm()
        ;
    }

}
