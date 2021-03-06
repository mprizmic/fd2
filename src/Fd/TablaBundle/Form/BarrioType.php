<?php

namespace Fd\TablaBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class BarrioType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('nombre')
            ->add('created')
            ->add('updated')
            ->add('abreviatura')
        ;
    }

    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'Fd\TablaBundle\Entity\Barrio'
        ));
    }

    public function getName()
    {
        return 'fd_tablabundle_barriotype';
    }
}
