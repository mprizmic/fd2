<?php

namespace Fd\BackendBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\FormTypeInterface;
use Symfony\Component\Form\FormEvent;
use Symfony\Component\Form\FormEvents;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;
use Doctrine\ORM\EntityRepository;
use Fd\EstablecimientoBundle\Entity\UnidadOferta;
use Fd\BackendBundle\Form\UnaOrientacionType;

class SecundarioXType extends AbstractType {

    public function buildForm(FormBuilderInterface $builder, array $options) {

        $factory = $builder->getFormFactory();
        /*
         * si el rgistro ya está creado no se pueden cambiar la unidad_oferta
         * si es un registro nuevo el campo estàn disponibles para cargarlos 
         */
        $builder->addEventListener(FormEvents::PRE_SET_DATA, function(FormEvent $event) use ($factory) {

            $form = $event->getForm();
            $data = $event->getData();

            $optionsUnidadOferta = array(
                'class' => 'EstablecimientoBundle:UnidadOferta',
                'label'=> 'Oferta Localizada',
            );

            if ($data->getId()) {
                //si el registro ya está creado no se pueden cambiar ni la unidad educativa ni el establecimeinto
                $optionsUnidadOferta['disabled'] = true;
            };

            $form->add(
                    $factory->createNamed('unidad_oferta', 'entity', null, $optionsUnidadOferta));
        });
        $builder
                ->add('anio_inicio', 'integer', array(
                    'required' => false,
                    'label' => 'Año de inicio',
                ))
                ->add('matricula', 'integer', array(
                    'required' => false,
                    'label' => 'Matrícula',
                ))
                ->add('orientaciones', 'collection', array(
                    'type' => new UnaOrientacionType(),
                    'by_reference' => FALSE,
                    'allow_delete' => TRUE,
                    'allow_add' => TRUE,
                ))
        ;
    }

    public function getName() {
        return 'secundariox_type';
    }

    public function setDefaultOptions(OptionsResolverInterface $resolver) {
        $resolver->setDefaults(array(
            'data_class' => 'Fd\OfertaEducativaBundle\Entity\SecundarioX',
        ));
    }

}
