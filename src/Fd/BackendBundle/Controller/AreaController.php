<?php

namespace Fd\BackendBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Fd\EstablecimientoBundle\Entity\Area;
use Fd\BackendBundle\Form\AreaType;

/**
 * Area controller.
 *
 * @Route("/area")
 */
class AreaController extends Controller {

    /**
     * Lists all areas entities.
     *
     * @Route("/", name="backend.area")
     * @Template("BackendBundle:Area:index.html.twig")
     */
    public function indexAction() {
        $em = $this->getDoctrine()->getEntityManager();

        $entities = $em->getRepository('EstablecimientoBundle:Area')->findBy(array(), array('codigo' => 'ASC'));

        return array('entities' => $entities);
    }

    /**
     * Finds and displays a areas entity.
     *
     * @Route("/{id}/show", name="backend.area.show")
     * @Template("BackendBundle:Area:show.html.twig")
     */
    public function showAction($id) {
        $em = $this->getDoctrine()->getEntityManager();

        $entity = $em->getRepository('EstablecimientoBundle:Area')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Area entity.');
        }

        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity' => $entity,
            'delete_form' => $deleteForm->createView(),);
    }

    /**
     * Displays a form to create a new area entity.
     *
     * @Route("/new", name="backend.area.new")
     * @Template("BackendBundle:Area:new.html.twig")
     */
    public function newAction() {
        $entity = new Area();
        $form = $this->createForm(new AreaType(), $entity);

        return array(
            'entity' => $entity,
            'form' => $form->createView()
        );
    }

    /**
     * Creates a new Area entity.
     *
     * @Route("/create", name="backend.area.create")
     * @Method("post")
     * @Template("BackendBundle:Area:new.html.twig")
     */
    public function createAction() {
        $entity = new Area();
        $request = $this->getRequest();
        $form = $this->createForm(new AreaType(), $entity);
        $form->bindRequest($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getEntityManager();
            $em->persist($entity);
            $em->flush();

            $this->get('session')->getFlashBag()->add('exito', 'Guardado exitosamente');

            return $this->redirect($this->generateUrl('backend.area.show', array('id' => $entity->getId())));
        }
        $this->get('session')->getFlashBag()->add('error', 'No se pudo guardar. Verifique y reintente.');

        return array(
            'entity' => $entity,
            'form' => $form->createView()
        );
    }

    /**
     * Displays a form to edit an existing area entity.
     *
     * @Route("/{id}/edit", name="backend.area.edit")
     * @Template("BackendBundle:Area:edit.html.twig")
     */
    public function editAction($id) {
        $em = $this->getDoctrine()->getEntityManager();

        $entity = $em->getRepository('EstablecimientoBundle:Area')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Area entity.');
        }

        $editForm = $this->createForm(new AreaType(), $entity);
        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity' => $entity,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Edits an existing GrupoEtario entity.
     *
     * @Route("/{id}/update", name="backend.area.update")
     * @Method("post")
     * @Template("BackendBundle:Area:edit.html.twig")
     */
    public function updateAction($id) {
        $em = $this->getDoctrine()->getEntityManager();

        $entity = $em->getRepository('EstablecimientoBundle:Area')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Area entity.');
        }

        $editForm = $this->createForm(new AreaType(), $entity);
        $deleteForm = $this->createDeleteForm($id);

        $request = $this->getRequest();

        $editForm->bindRequest($request);

        if ($editForm->isValid()) {
            $em->persist($entity);
            $em->flush();

            $this->get('session')->getFlashBag()->add('exito', 'Guardado exitosamente');

            return $this->redirect($this->generateUrl('backend.area.edit', array('id' => $id)));
        }
        $this->get('session')->getFlashBag()->add('error', 'No se pudo guardar. Verifique y reintente.');

        return array(
            'entity' => $entity,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Deletes a area entity.
     *
     * @Route("/{id}/delete", name="backend.area.delete")
     * @Method("post")
     */
    public function deleteAction($id) {
        $form = $this->createDeleteForm($id);
        $request = $this->getRequest();

        $form->bindRequest($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getEntityManager();
            $entity = $em->getRepository('TablaBundle:GrupoEtario')->find($id);

            if (!$entity) {
                throw $this->createNotFoundException('Unable to find GrupoEtario entity.');
            }

            $em->remove($entity);
            $em->flush();

            $this->get('session')->getFlashBag()->add('exito', 'Guardado exitosamente');
        }
        $this->get('session')->getFlashBag()->add('error', 'No se pudo guardar. Verifique y reintente.');

        return $this->redirect($this->generateUrl('backend.grupo_etario'));
    }

    private function createDeleteForm($id) {
        return $this->createFormBuilder(array('id' => $id))
                        ->add('id', 'hidden')
                        ->getForm()
        ;
    }

}
