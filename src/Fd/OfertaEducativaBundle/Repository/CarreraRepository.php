<?php

namespace Fd\OfertaEducativaBundle\Repository;

use Doctrine\ORM\EntityRepository;
use Fd\EstablecimientoBundle\Entity\EstablecimientoEdificio;
use Fd\EstablecimientoBundle\Entity\Respuesta;
use Fd\EstablecimientoBundle\Entity\UnidadOferta;
use Fd\EstablecimientoBundle\Repository\LocalizacionRepository;
use Fd\OfertaEducativaBundle\Entity\OfertaEducativa;
use Fd\TablaBundle\Entity\EstadoCarrera;

/**
 * CarreraRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class CarreraRepository extends EntityRepository {

    /**
     * dado un establecimeinto devuelve objetos de tipo carrera de las carreras del mismo, sin localizar
     * 
     * @return type resultados objetos carrera
     */
    public function findCarrerasPorSedeAnexo(EstablecimientoEdificio $establecimiento_edificio) {
        $qb = $this->createQueryBuilder('car')
                ->select('car')
                ->join('car.oferta', 'oe')
                ->join('oe.unidades', 'uo')
                ->join('uo.localizacion', 'l')
                ->where('l.establecimiento_edificio = :ee');
        
        $qb->setParameter('ee', $establecimiento_edificio);
        return $qb->getQuery()->getResult();
    }

    /**
     * devuelve todas las localizaciones donde se dicta la carrera informada
     * Los datos devueltos son un array
     * 
     */
    public function findLocalizaciones( \Fd\OfertaEducativaBundle\Entity\Carrera $carrera ){
        
        $resultado = $this->_em->getRepository('EstablecimientoBundle:Localizacion')
                ->findDeCarrera($carrera);
        return $resultado;
    }
    
    public function qbAllOrdenado($campo){
        return $this->createQueryBuilder('c')
                        ->orderBy('c.' . $campo);
    }
    public function qyAllOrdenado($campo) {
        return $this->qbAllOrdenado($campo)
                        ->getQuery();
    }

    public function dqlActivas() {
        $x = $this->getEntityManager()->getReference('TablaBundle:EstadoCarrera', 1);
        $xx = $this->createQueryBuilder('c')
                ->where('c.estado = :estado');
        $xx->setParameter('estado', $x->getId());
        return $xx;
    }

    public function dqlActivasOrdenadas($campo) {
        return $this->dqlActivas()->orderBy('c.' . $campo);
    }

    public function qyActivasOrdenadas($campo) {
        return $this->dqlActivasOrdenadas($campo)->getQuery();
    }

    public function findActivasOrdenadas($campo) {
        return $this->qyActivasOrdenadas($campo)->getResult();
    }

    public function findAllOrdenado($campo) {
        return $this->qyAllOrdenado($campo)->getResult();
    }
    /**
     * Lista de carreras para un combo
     */
    public function combo($localizacion = null) {
        if ($localizacion) {
            return $this->findCarrerasPorSedeAnexo($localizacion->getEstablecimientoEdificio());
        };
        return $this->findAllOrdenado('nombre');
    }

}