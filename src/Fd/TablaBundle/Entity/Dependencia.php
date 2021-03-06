<?php


namespace Fd\TablaBundle\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\ORM\EntityRepository;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Bridge\Doctrine\Validator\Constraints as DoctrineAssert;
use Symfony\Component\Validator\Constraints\Date;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Validator\Constraints\NotBlank;

/**
 * @ORM\Table(name="dependencia")
 * @ORM\Entity(repositoryClass="Fd\TablaBundle\Repository\DependenciaRepository")
 * @ORM\HasLifecycleCallbacks
 */
class Dependencia{
    
    /**
     * 
     * @ORM\Column(name = "id", type = "integer", nullable = false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy = "AUTO")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=10, unique=true)
     */
    private $codigo;
    /**
     * @ORM\Column(length=150, nullable=false)
     */
    private $nombre;
    /**
     * @ORM\ManyToOne(targetEntity="Fd\TablaBundle\Entity\Nivel")
     */
    private $nivel;
    /**
     * @ORM\ManyToOne(targetEntity="Fd\TablaBundle\Entity\Turno")
     */
    private $turno;

    /**
     * bidireccional lado inverso
     * @ORM\OneToMany(targetEntity="Fd\EstablecimientoBundle\Entity\OrganizacionInterna", mappedBy="dependencia")
     */
    private $establecimientos;
    /**
     * bidireccional lado inverso
     * @ORM\OneToMany(targetEntity="Fd\TablaBundle\Entity\Cargo", mappedBy="dependencia_referenciante")
     */
    private $cargos;
    /**
     * @ORM\Column(type="integer", nullable=false)
     */
    private $orden;
    /**
     * @ORM\Column(type="datetime")
     * 
     */
    private $actualizado;

    /**
     * @ORM\Column(type="datetime")
     */
    private $creado;

    /**
     * @ORM\PrePersist  //en el persist cuando se da de alta uno nuevo
     * @ORM\PreUpdate //en el flush cuando se modifica uno existente
     */
    public function ultimaModificacion() {
        $this->setActualizado(new \DateTime());
    }

    public function __toString() {
        return $this->nombre;
    }
    public function __construct() {
        $this->creado = new \DateTime('now');
        $this->actualizado = new \DateTime('now');
        $this->nivel = new ArrayCollection();
        $this->turno = new ArrayCollection();
    }

    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set codigo
     *
     * @param string $codigo
     * @return Dependencia
     */
    public function setCodigo($codigo)
    {
        $this->codigo = $codigo;

        return $this;
    }

    /**
     * Get codigo
     *
     * @return string 
     */
    public function getCodigo()
    {
        return $this->codigo;
    }

    /**
     * Set nombre
     *
     * @param string $nombre
     * @return Dependencia
     */
    public function setNombre($nombre)
    {
        $this->nombre = $nombre;

        return $this;
    }

    /**
     * Get nombre
     *
     * @return string 
     */
    public function getNombre()
    {
        return $this->nombre;
    }

    /**
     * Set orden
     *
     * @param integer $orden
     * @return Dependencia
     */
    public function setOrden($orden)
    {
        $this->orden = $orden;

        return $this;
    }

    /**
     * Get orden
     *
     * @return integer 
     */
    public function getOrden()
    {
        return $this->orden;
    }

    /**
     * Set actualizado
     *
     * @param \DateTime $actualizado
     * @return Dependencia
     */
    public function setActualizado($actualizado)
    {
        $this->actualizado = $actualizado;

        return $this;
    }

    /**
     * Get actualizado
     *
     * @return \DateTime 
     */
    public function getActualizado()
    {
        return $this->actualizado;
    }

    /**
     * Set creado
     *
     * @param \DateTime $creado
     * @return Dependencia
     */
    public function setCreado($creado)
    {
        $this->creado = $creado;

        return $this;
    }

    /**
     * Get creado
     *
     * @return \DateTime 
     */
    public function getCreado()
    {
        return $this->creado;
    }

    /**
     * Set nivel
     *
     * @param \Fd\TablaBundle\Entity\Nivel $nivel
     * @return Dependencia
     */
    public function setNivel(\Fd\TablaBundle\Entity\Nivel $nivel = null)
    {
        $this->nivel = $nivel;

        return $this;
    }

    /**
     * Get nivel
     *
     * @return \Fd\TablaBundle\Entity\Nivel 
     */
    public function getNivel()
    {
        return $this->nivel;
    }

    /**
     * Set turno
     *
     * @param \Fd\TablaBundle\Entity\Turno $turno
     * @return Dependencia
     */
    public function setTurno(\Fd\TablaBundle\Entity\Turno $turno = null)
    {
        $this->turno = $turno;

        return $this;
    }

    /**
     * Get turno
     *
     * @return \Fd\TablaBundle\Entity\Turno 
     */
    public function getTurno()
    {
        return $this->turno;
    }

    /**
     * Add establecimientos
     *
     * @param \Fd\EstablecimientoBundle\Entity\OrganizacionInterna $establecimientos
     * @return Dependencia
     */
    public function addEstablecimiento(\Fd\EstablecimientoBundle\Entity\OrganizacionInterna $establecimientos)
    {
        $this->establecimientos[] = $establecimientos;

        return $this;
    }

    /**
     * Remove establecimientos
     *
     * @param \Fd\EstablecimientoBundle\Entity\OrganizacionInterna $establecimientos
     */
    public function removeEstablecimiento(\Fd\EstablecimientoBundle\Entity\OrganizacionInterna $establecimientos)
    {
        $this->establecimientos->removeElement($establecimientos);
    }

    /**
     * Get establecimientos
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getEstablecimientos()
    {
        return $this->establecimientos;
    }

    /**
     * Add cargos
     *
     * @param \Fd\TablaBundle\Entity\Cargo $cargos
     * @return Dependencia
     */
    public function addCargo(\Fd\TablaBundle\Entity\Cargo $cargos)
    {
        $this->cargos[] = $cargos;

        return $this;
    }

    /**
     * Remove cargos
     *
     * @param \Fd\TablaBundle\Entity\Cargo $cargos
     */
    public function removeCargo(\Fd\TablaBundle\Entity\Cargo $cargos)
    {
        $this->cargos->removeElement($cargos);
    }

    /**
     * Get cargos
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getCargos()
    {
        return $this->cargos;
    }
}
