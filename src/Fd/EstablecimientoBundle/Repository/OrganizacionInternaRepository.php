<?php

namespace Fd\EstablecimientoBundle\Repository;

use Doctrine\Common\Collections\Criteria;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\EntityRepository;
use Fd\EstablecimientoBundle\Entity\OrganizacionInterna;
use Fd\EstablecimientoBundle\Model\ConstantesTests;

class OrganizacionInternaRepository extends EntityRepository {

    public function qbAll() {
        return $this->createQueryBuilder('oi');
    }

    public function qbAllOrdenado() {
        return $this->qbAll()
                ->join('oi.establecimiento', 'ee')
                ->join('ee.establecimientos', 'e')
                ->join('oi.dependencia', 'd')
                ->orderBy('e.orden', 'ASC')
                ->addOrderBy('d.orden', 'ASC');
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
    /**
     * Es visitado para pasar los datos de una Collection a un array determinado
     * el findAllOrdenados pasa a un array con un cierto formato
     * 
     * @param DatosAChoiceVisitadorInterface $visitador
     * @return type
     */
    public function acceptDatosAChoice(DatosAChoiceVisitadorInterface $visitador) {
        return $visitador->visitOrganizacionInterna($this);
        ;
    }
    public function findUnaSede($establecimiento_edificio_id){
        return $this->qbAllOrdenado()
                ->where('oi.establecimiento = :sede_anexo')
                ->setParameter('sede_anexo', $establecimiento_edificio_id)
                ->getQuery()
                ->getResult();
    }
}
