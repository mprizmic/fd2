<?php

namespace Fd\BackendBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\ParamConverter;
use Fd\BackendBundle\Form\Filter\OrganizacionInternaFilterType;
use Fd\BackendBundle\Form\OrganizacionInternaType;
use Fd\EstablecimientoBundle\Entity\OrganizacionInterna;

/**
 * Organizacion Interna controller.
 *
 * @Route("/organizacioninterna")
 */
class AutoridadController extends Controller {

    private $em;

    private function getEm() {
        if (!$this->em) {
            $this->em = $this->getDoctrine()->getEntityManager();
        };
        return $this->em;
    }

    private function getRepository() {
        return $this->getEm()->getRepository('EstablecimientoBundle:OrganizacionInterna');
    }

    /**
     * Busqueda de organizacioninterna por nombre y apellido.
     * 
     * @Route("/buscar", name="backend.organizacioninterna.buscar")
     * @ParamConverter()
     */
    public function buscarAction(Request $request) {

        $session = $this->get('session');

        if ($request->getMethod() == 'POST') {

            //se diparó la búsqueda desde el formulario
            $form = $this->crearFormBusqueda();

            // bind values from the request
            $form->bind($request);

            if ($form->isValid()) {

                //se guardan los datos en la sesiòn
                $datos = $form->getData();
                $session->set('datos', $datos);

                //se generan los resultados a partir de los parametros cargados en el form de busqueda
                $organizacion_internas = $this->generarDatosBusquedaPaginada($form);
            };
        };

        if ($request->getMethod() == 'GET') {

            //o bien se pidió la página o bien se pidió la paginación de los resultados
            //la paginacion manda un GET con la variable 'page'. Si no existe 'page' no fue un request de paginacion
            if ($request->query->get('page')) {
                //se pidió paginación
                //regenero el form para mostrarlo con los datos que le habìa cargado
                $datos = $session->get('datos');
                $form = $this->crearFormBusqueda($datos);

                //hay por lo menos un campo con algo
                $organizacion_internas = $this->generarDatosBusquedaPaginada($form);
            } else {
                //se entra a la página por primera vez
                //o bien se clickeo en 'limpiar'
                $form = $this->crearFormBusqueda();

                $organizacion_internas = array();
            }
        };

        return $this->render('BackendBundle:OrganizacionInterna:buscar.html.twig', array(
                    'organizacion_internas' => $organizacion_internas,
                    'form' => $form->createView(),
                        )
        );
    }

    /**
     * Genera un array que contiene los datos a ser mostrados en el template
     * Los genera a partir de los datos cargados en el form de busqueda usando el generador de filtro
     * y el paginador
     * 
     * @param type form
     * @return type array
     */
    public function generarDatosBusquedaPaginada($form) {
        //se crear la consulta
        $filterBuilder = $this->getRepository()->createQueryBuilder('oi')->orderBy('oi.establecimiento');

        // build the query from the given form object
        $this->get('lexik_form_filter.query_builder_updater')->addFilterConditions($form, $filterBuilder);

        //crea el paginador
        $paginador = $this->get('ideup.simple_paginator');
        $paginador->setItemsPerPage($this->container->getParameter('fd.grilla_mediano'));

        //hay por lo menos un campo con algo
        $autoridades = $paginador->paginate($filterBuilder->getQuery())
                ->getResult();

        return $organizacion_internas;
    }

    /**
     * Crea el formulario de busqueda de autoridades.
     * Cuando se redespliega luego de avanzar una pàgina, se le recargan los datos originales que se guardaron 
     * previamente en la sesion.
     * 
     * @param type $datos_sesion
     * @return type 
     */
    public function crearFormBusqueda($datos_sesion = null) {

        $form = $this->createForm(new OrganizacionInternaFilterType($this->getCmbEstablecimientos()));

        if ($datos_sesion)
            $form->setData($datos_sesion);

        return $form;
    }

    /**
     * HASTA ACA
     * **************************************************************************************
     * **************************************************************************************
     * **************************************************************************************
     * **************************************************************************************
     */
    /**
     * pasar a un repo
     * @return type
     */
    public function getCmbEstablecimientos() {
        $establecimientos = $this->getEm()
                ->getRepository('EstablecimientoBundle:Establecimiento')
                ->combo();

        foreach ($establecimientos as $key => $value) {
            $resultado[$value->getId()] = $value->getApodo();
        };
        return $resultado;
    }

    /**
     * Finds and displays a Autoridad entity.
     *
     * @Route("/{id}/show", name="backend.organizacioninterna.show")
     * @Template()
     */
    public function showAction($id) {
        $em = $this->getDoctrine()->getEntityManager();

        $entity = $em->getRepository('EstablecimientoBundle:Autoridad')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Autoridad entity.');
        }

        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity' => $entity,
            'delete_form' => $deleteForm->createView(),);
    }

    /**
     * Displays a form to create a new Autoridad entity.
     *
     * @Route("/new", name="backend.organizacioninterna.new")
     * @Template()
     */
    public function newAction() {
        $entity = new Autoridad();
        $form = $this->createForm(new AutoridadType(), $entity);

        return array(
            'entity' => $entity,
            'form' => $form->createView()
        );
    }

    /**
     * Creates a new Autoridad entity.
     *
     * @Route("/create", name="backend.organizacioninterna.create")
     * @Method("post")
     * @Template("EstablecimientoBundle:Autoridad:new.html.twig")
     */
    public function createAction() {
        $entity = new Autoridad();
        $request = $this->getRequest();
        $form = $this->createForm(new AutoridadType(), $entity);
        $form->bindRequest($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getEntityManager();
            $em->persist($entity);
            $em->flush();

            $this->get('session')->getFlashBag()->add('exito', 'La autoridad fue creada exitosamente');

            return $this->redirect($this->generateUrl('backend.organizacioninterna.edit', array('id' => $entity->getId())));
        }

        $this->get('session')->getFlashBag()->add('error', 'Problemas en el registro de la nueva autoridad. Verifique y reintente');

        return array(
            'entity' => $entity,
            'form' => $form->createView()
        );
    }

    /**
     * Displays a form to edit an existing Autoridad entity.
     *
     * @Route("/{id}/edit", name="backend.organizacioninterna.edit")
     * @ParamConverter("entity", class="EstablecimientoBundle:Autoridad")
     */
    public function editAction($entity) {
        $editForm = $this->createForm(new AutoridadType(), $entity);
        $deleteForm = $this->createDeleteForm($entity->getId());

        return $this->render('BackendBundle:Autoridad:edit.html.twig', array(
                    'entity' => $entity,
                    'edit_form' => $editForm->createView(),
                    'delete_form' => $deleteForm->createView(),
                ))
        ;
    }

    /**
     * Edits an existing Autoridad entity.
     *
     * @Route("/{id}/update", name="backend.organizacioninterna.update")
     * @Method("post")
     * @Template("BackendBundle:Autoridad:edit.html.twig")
     */
    public function updateAction($id) {
        $em = $this->getDoctrine()->getEntityManager();

        $entity = $em->getRepository('EstablecimientoBundle:Autoridad')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Autoridad entity.');
        }

        $editForm = $this->createForm(new AutoridadType(), $entity);
        $deleteForm = $this->createDeleteForm($id);

        $request = $this->getRequest();

        $editForm->bind($request);

        if ($editForm->isValid()) {
            $em->persist($entity);
            $em->flush();

            $this->get('session')->getFlashBag()->add('exito', 'La autoridad fue cargada exitosamente');

            return $this->redirect($this->generateUrl('backend.organizacioninterna.edit', array('id' => $id)));
        }

        $this->get('session')->getFlashBag()->add('error', 'Problemas al cargar la autoridad. Verifique y reintente.');

        return array(
            'entity' => $entity,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Deletes a Autoridad entity.
     *
     * @Route("/{id}/delete", name="backend.organizacioninterna.delete")
     * @Method("post")
     */
    public function deleteAction($id) {
        $form = $this->createDeleteForm($id);
        $request = $this->getRequest();

        $form->bindRequest($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getEntityManager();
            $entity = $em->getRepository('EstablecimientoBundle:Autoridad')->find($id);

            if (!$entity) {
                throw $this->createNotFoundException('Unable to find Autoridad entity.');
            }

            $em->remove($entity);
            $em->flush();
        }

        return $this->redirect($this->generateUrl('backend.organizacioninterna.buscar'));
    }

    private function createDeleteForm($id) {
        return $this->createFormBuilder(array('id' => $id))
                        ->add('id', 'hidden')
                        ->getForm()
        ;
    }

}
