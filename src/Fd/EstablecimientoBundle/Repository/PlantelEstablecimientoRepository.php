<?php

namespace Fd\EstablecimientoBundle\Repository;

use Doctrine\ORM\EntityRepository;
use Fd\EstablecimientoBundle\Entity\EstablecimientoEdificio;
use Fd\EstablecimientoBundle\Entity\PlantelEstablecimiento;

class PlantelEstablecimientoRepository extends EntityRepository {

    public function qbAll() {
        return $this->createQueryBuilder('pe');
    }

    public function qbAllOrdenado() {
        return $this->qbAll()
                        ->join('pe.organizacion', 'oi')
                        ->join('oi.establecimiento', 'ee')
                        ->join('ee.establecimientos', 'e')
                        ->join('oi.dependencia', 'd')
                        ->join('pe.cargo', 'cg')
                        ->orderBy('e.orden', 'ASC')
                        ->addOrderBy('d.orden', 'ASC')
                        ->addOrderBy('cg.orden', 'ASC');
    }

    public function qyAll() {
        return $this->qbAll()->getQuery();
    }

    public function qyAllOrdenado() {
        return $this->qbAllOrdenado()->getQuery();
    }

    public function findAllOrdenado() {
        return $this->qyAllOrdenado()->getResult();
    }

    public function qbAllByEstablecimiento(EstablecimientoEdificio $establecimiento_edificio) {
        return $this->qbAllOrdenado()
                        ->where('ee.id = :establecimiento_edificio')
                        ->setParameter('establecimiento_edificio', $establecimiento_edificio);
    }

    public function qbAllByOrganizacion($organizacion_id){
        return $this->qbAllOrdenado()
                ->leftJoin('pe.autoridad', 'au')
                ->where('pe.organizacion = :organizacion')
                ->setParameter('organizacion', $organizacion_id)
                ->andWhere('au.id is null')
            ;
        
    }
    public function findear($qb){
        return $qb->getQuery()->getResult();
    }
    public function findAllByOrganizacion($organizacion_id){
        return $this->findear($this->qbAllByOrganizacion($organizacion_id));
    }
}
