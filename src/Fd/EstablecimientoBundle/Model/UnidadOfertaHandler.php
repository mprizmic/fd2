<?php

namespace Fd\EstablecimientoBundle\Model;

use Doctrine\ORM\EntityManager;
use Fd\EstablecimientoBundle\Entity\Localizacion;
use Fd\EstablecimientoBundle\Entity\Respuesta;
use Fd\EstablecimientoBundle\Entity\UnidadEducativa;
use Fd\EstablecimientoBundle\Entity\UnidadOferta;
use Fd\EstablecimientoBundle\Model\UnidadOfertaInicialHandler;
use Fd\EstablecimientoBundle\Model\UnidadOfertaTerciarioHandler;
use Fd\OfertaEducativaBundle\Entity\OfertaEducativa;
use Fd\TablaBundle\Entity\Nivel;
use Fd\TablaBundle\Model\NivelManager;

class UnidadOfertaHandler {

    protected $em;
    protected $strategy;
    protected $strategy_instance;
    protected $nivel;

    public function __construct(EntityManager $em, $nivel ) {

        $this->em = $em;
        if ($nivel instanceof Nivel) {
            
        }else{
            $nivel_manager = new NivelManager($this->em);
            $nivel = $nivel_manager->crearLleno('Ter');
        };
        $strategy = $nivel->getCrearUOClass();
        $strategy_instance = new $strategy($em);
        $this->strategy_instance = $strategy_instance;
        $this->nivel = $nivel;
    }

    /**
     * Por ahora es para actualizar los turnos de los terciarios
     */
    public function actualizar($entity, $turnos){
        return $this->strategy_instance->actualizar( $entity, $turnos);
    }
    
    public function crear(Localizacion $localizacion = null, $oferta_educativa = null) {

        return $this->strategy_instance->crear( $localizacion, $oferta_educativa);
    }

//    public function getUnidadEducativa() {
//        
//        return $this->unidad_educativa;
//    }
    /**
     * Elimina 1 unidad_oferta determinada
     * 
     * @return type
     */
    public function eliminar( $unidad_oferta, $flush = true ){
        return $this->strategy_instance->eliminar( $unidad_oferta, $flush );
    }
    /**
     * Elimina todas las unidad_oferta de una unidad educativa
     * 
     * @param type $unidad_educativa
     * @return type
     */
    public function eliminarAll( $unidad_educativa, $flush = true ){
        return $this->strategy_instance->eliminarAll( $unidad_educativa, $flush);
    }

}