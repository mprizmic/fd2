<?php

namespace Fd\BackendBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Fd\TablaBundle\Entity\TipoFormacion;
use Fd\BackendBundle\Form\TipoFormacionType;

/**
 * Tipo Formacion controller.
 *
 * @Route("/tipo_formacion")
 */
class TipoFormacionController extends Controller
{
    /**
     * Lists all TipoFormacion entities.
     *
     * @Route("/", name="backend_tipo_formacion")
     * @Template()
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getEntityManager();

        $entities = $em->getRepository('TablaBundle:TipoFormacion')->findAll();

        return array('entities' => $entities);
    }

    /**
     * Finds and displays a TipoFormacion entity.
     *
     * @Route("/{id}/show", name="backend_tipo_formacion_show")
     * @Template()
     */
    public function showAction($id)
    {
        $em = $this->getDoctrine()->getEntityManager();

        $entity = $em->getRepository('TablaBundle:TipoFormacion')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find TipoFormacion entity.');
        }

        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity'      => $entity,
            'delete_form' => $deleteForm->createView(),        );
    }

    /**
     * Displays a form to create a new TipoFormacion entity.
     *
     * @Route("/new", name="backend_tipo_formacion_new")
     * @Template()
     */
    public function newAction()
    {
        $entity = new TipoFormacion();
        $form   = $this->createForm(new TipoFormacionType(), $entity);

        return array(
            'entity' => $entity,
            'form'   => $form->createView()
        );
    }

    /**
     * Creates a new TipoFormacion entity.
     *
     * @Route("/create", name="backend_tipo_formacion_create")
     * @Method("post")
     * @Template("TablaBundle:TipoFormacion:new.html.twig")
     */
    public function createAction()
    {
        $entity  = new TipoFormacion();
        $request = $this->getRequest();
        $form    = $this->createForm(new TipoFormacionType(), $entity);
        $form->bindRequest($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getEntityManager();
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('tipo_formacion_show', array('id' => $entity->getId())));
            
        }

        return array(
            'entity' => $entity,
            'form'   => $form->createView()
        );
    }

    /**
     * Displays a form to edit an existing TipoFormacion entity.
     *
     * @Route("/{id}/edit", name="backend_tipo_formacion_edit")
     * @Template()
     */
    public function editAction($id)
    {
        $em = $this->getDoctrine()->getEntityManager();

        $entity = $em->getRepository('TablaBundle:TipoFormacion')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find TipoFormacion entity.');
        }

        $editForm = $this->createForm(new TipoFormacionType(), $entity);
        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Edits an existing TipoFormacion entity.
     *
     * @Route("/{id}/update", name="backend_tipo_formacion_update")
     * @Method("post")
     * @Template("TablaBundle:TipoFormacion:edit.html.twig")
     */
    public function updateAction($id)
    {
        $em = $this->getDoctrine()->getEntityManager();

        $entity = $em->getRepository('TablaBundle:TipoFormacion')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find TipoFormacion entity.');
        }

        $editForm   = $this->createForm(new TipoFormacionType(), $entity);
        $deleteForm = $this->createDeleteForm($id);

        $request = $this->getRequest();

        $editForm->bindRequest($request);

        if ($editForm->isValid()) {
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('tipo_formacion_edit', array('id' => $id)));
        }

        return array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Deletes a TipoFormacion entity.
     *
     * @Route("/{id}/delete", name="backend_tipo_formacion_delete")
     * @Method("post")
     */
    public function deleteAction($id)
    {
        $form = $this->createDeleteForm($id);
        $request = $this->getRequest();

        $form->bindRequest($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getEntityManager();
            $entity = $em->getRepository('TablaBundle:TipoFormacion')->find($id);

            if (!$entity) {
                throw $this->createNotFoundException('Unable to find TipoFormacion entity.');
            }

            $em->remove($entity);
            $em->flush();
        }

        return $this->redirect($this->generateUrl('tipo_formacion'));
    }

    private function createDeleteForm($id)
    {
        return $this->createFormBuilder(array('id' => $id))
            ->add('id', 'hidden')
            ->getForm()
        ;
    }
}
