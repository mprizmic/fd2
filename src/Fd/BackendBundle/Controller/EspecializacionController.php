<?php

namespace Fd\BackendBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Fd\OfertaEducativaBundle\Entity\Especializacion;
use Fd\BackendBundle\Form\EspecializacionType;

/**
 * Especializacion controller.
 *
 * @Route("/especializacion")
 */
class EspecializacionController extends Controller
{
    /**
     * Lists all Especializacion entities.
     *
     * @Route("/", name="backend_especializacion")
     * @Template()
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getEntityManager();

        $entities = $em->getRepository('OfertaEducativaBundle:Especializacion')->findAll();

        return array('entities' => $entities);
    }

    /**
     * Finds and displays a Especializacion entity.
     *
     * @Route("/{id}/show", name="backend_especializacion_show")
     * @Template()
     */
    public function showAction($id)
    {
        $em = $this->getDoctrine()->getEntityManager();

        $entity = $em->getRepository('OfertaEducativaBundle:Especializacion')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Especializacion entity.');
        }

        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity'      => $entity,
            'delete_form' => $deleteForm->createView(),        );
    }

    /**
     * Displays a form to create a new Especializacion entity.
     *
     * @Route("/new", name="backend_especializacion_new")
     * @Template()
     */
    public function newAction()
    {
        $entity = new Especializacion();
        $form   = $this->createForm(new EspecializacionType(), $entity);

        return array(
            'entity' => $entity,
            'form'   => $form->createView()
        );
    }

    /**
     * Creates a new Especializacion entity.
     *
     * @Route("/create", name="backend_especializacion_create")
     * @Method("post")
     * @Template("OfertaEducativaBundle:Especializacion:new.html.twig")
     */
    public function createAction()
    {
        $entity  = new Especializacion();
        $request = $this->getRequest();
        $form    = $this->createForm(new EspecializacionType(), $entity);
        $form->bindRequest($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getEntityManager();
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('backend_especializacion_show', array('id' => $entity->getId())));
            
        }

        return array(
            'entity' => $entity,
            'form'   => $form->createView()
        );
    }

    /**
     * Displays a form to edit an existing Especializacion entity.
     *
     * @Route("/{id}/edit", name="backend_especializacion_edit")
     * @Template()
     */
    public function editAction($id)
    {
        $em = $this->getDoctrine()->getEntityManager();

        $entity = $em->getRepository('OfertaEducativaBundle:Especializacion')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Especializacion entity.');
        }

        $editForm = $this->createForm(new EspecializacionType(), $entity);
        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Edits an existing Especializacion entity.
     *
     * @Route("/{id}/update", name="backend_especializacion_update")
     * @Method("post")
     * @Template("BackendBundle:Especializacion:edit.html.twig")
     */
    public function updateAction($id)
    {
        $em = $this->getDoctrine()->getEntityManager();

        $entity = $em->getRepository('OfertaEducativaBundle:Especializacion')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Especializacion entity.');
        }

        $editForm   = $this->createForm(new EspecializacionType(), $entity);
        $deleteForm = $this->createDeleteForm($id);

        $request = $this->getRequest();

        $editForm->bindRequest($request);

        if ($editForm->isValid()) {
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('backend_especializacion_edit', array('id' => $id)));
        }

        return array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Deletes a Especializacion entity.
     *
     * @Route("/{id}/delete", name="backend_especializacion_delete")
     * @Method("post")
     */
    public function deleteAction($id)
    {
        $form = $this->createDeleteForm($id);
        $request = $this->getRequest();

        $form->bindRequest($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getEntityManager();
            $entity = $em->getRepository('OfertaEducativaBundle:Especializacion')->find($id);

            if (!$entity) {
                throw $this->createNotFoundException('Unable to find Especializacion entity.');
            }

            $em->remove($entity);
            $em->flush();
        }

        return $this->redirect($this->generateUrl('backend_especializacion'));
    }

    private function createDeleteForm($id)
    {
        return $this->createFormBuilder(array('id' => $id))
            ->add('id', 'hidden')
            ->getForm()
        ;
    }
}
