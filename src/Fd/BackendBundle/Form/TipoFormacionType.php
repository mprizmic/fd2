<?php

namespace Fd\BackendBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;

class TipoFormacionType extends AbstractType {

    public function buildForm(FormBuilderInterface $builder, array $options) {
        $builder
                ->add('codigo', 'text', array(
                    'attr' => array(
                        'size' => 3,
                    )
                ))
                ->add('descripcion', 'text', array(
                    'attr' => array(
                        'size' => 25,
                    )
                ))

        ;
    }

    public function getName() {
        return 'fd_tablabundle_tipo_formacion_type';
    }

}
