<?php

namespace Fd\OfertaEducativaBundle\Repository;

use Doctrine\ORM\EntityRepository;

/**
 * NormaRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class NormaRepository extends EntityRepository {
    
    
    public function qbAllOrdenado($campo='numero', $alias='n') {
        return $this->createQueryBuilder($alias)->orderBy($alias .'.'.$campo);
    }
    public function qyAllOrdenado($campo='numero', $alias='n') {
        return $this->qbAllOrdenado($campo, $alias)->getQuery();
    }

    public function findAllOrdenado($campo, $alias=null) {
        return $this->qyAllOrdenado($campo, $alias)->getResult();
    }

    public function findAllOrdenadoArray($campo, $alias=null) {
        return $this->qyAllOrdenado($campo, $alias)->getArrayResult();
    }

    public function findCombo() {
        $dql = "select n.id, n.numero, t.codigo, n.anio
            from OfertaEducativaBundle:Norma n
            join n.tipo_norma t
            order by n.numero";
        return $this->_em->createQuery($dql)->getResult();
    }

    public function qyFiltradas($datos) {
        $dql = "select n.id, n.numero, n.anio, t.descripcion as tipo, n.descripcion
            from OfertaEducativaBundle:Norma n
            join n.tipo_norma t
            where ";
        if (!empty($datos['numero'])) {
            $dql = $dql . ' n.numero = :numero ';
        };
        if (!empty($datos['anio'])) {
            if (!empty($datos['numero'])) {
                $dql = $dql . ' and ';
            };
            $dql = $dql . ' n.anio= :anio';
        }
        if (!empty($datos['tipo'])){
            if (!empty($datos['numero']) or !empty($datos['anio']) ){
                $dql = $dql . ' and ';
            };
            $dql = $dql . ' t.id = :tipo';
        };
        $dql = $dql . ' ' . 'order by n.numero, n.anio';
        $query = $this->_em->createQuery($dql);

        if (!empty($datos['numero'])) {
            $query->setParameter('numero', $datos['numero']);
        };
        if (!empty($datos['anio'])) {
            $query->setParameter('anio', $datos['anio']);
        };
        if (!empty($datos['tipo'])) {
            $query->setParameter('tipo', $datos['tipo']->getId());
        };
        return $query;
    }

}