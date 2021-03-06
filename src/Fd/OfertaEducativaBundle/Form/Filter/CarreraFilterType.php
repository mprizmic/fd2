<?php

namespace Fd\OfertaEducativaBundle\Form\Filter;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;
use Fd\OfertaEducativaBundle\Entity\Carrera;
use Fd\TablaBundle\Entity\TipoFormacion;

class CarreraFilterType extends AbstractType {

//    private $estados;
//    private $tipos;
//
//    public function __construct($estados = array(), $tipos=array()) {
//        $this->estados = $estados;
//        $this->tipos = $tipos;
//    }

    public function buildForm(FormBuilderInterface $builder, array $options) {

        $builder->add('nombre', 'filter_text', array(
            'condition_pattern' => 4,
            'attr' => array(
                'class' => 'input_talle_4',
            ),
        ));
//        $builder->add('titulos', 'filter_text', array(
//            'label' => 'Título que otorga',
//            'attr' => array(
//                'class' => 'input_talle_4',
//            )
//        ));
        $builder->add('formacion', 'filter_choice', array(
            'label' => 'Tipo de formación',
            'choices' => $options['tipos'],
            'empty_value' => 'Seleccione...',
        ));
        $builder->add('estado', 'filter_choice', array(
            'empty_value' => 'Seleccione...',
            'label' => 'Estado de la carrera',
            'choices' => $options['estados'],
        ));
    }

    public function getName() {
        return 'carrera_filter';
    }

    public function setDefaultOptions(OptionsResolverInterface $resolver) {
        $resolver->setDefaults(array(
            'csrf_protection' => false,
            'validation_groups' => array('filtering'), // avoid NotBlank() constraint-related message
            'tipos' => array(),
            'estados' => array(),
        ));
        //para probar
//        $resolver->setDefaults(array(
//            "color" => "#0000FF"
//        ));        
    }

}
