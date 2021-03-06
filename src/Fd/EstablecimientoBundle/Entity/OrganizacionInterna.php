<?php

/**
 * entity de la relación entre establecimeinto_edificio y dependencia
 * Representa la estructura de cada establecimientos. la estructura está definida por las dependencias y los niveles
 */

namespace Fd\EstablecimientoBundle\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\ORM\EntityRepository;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Bridge\Doctrine\Validator\Constraints as DoctrineAssert;
use Symfony\Component\Validator\Constraints\Date;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Validator\Constraints\NotBlank;

/**
 * @ORM\Table(name="organizacion_interna")
 * @ORM\Entity(repositoryClass="Fd\EstablecimientoBundle\Repository\OrganizacionInternaRepository")
 * @ORM\HasLifecycleCallbacks
 */
class OrganizacionInterna {

    /**
     * 
     * @ORM\Column(name = "id", type = "integer", nullable = false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy = "AUTO")
     */
    private $id;

    /**
     * @ORM\Column(length=50, nullable=true)
     */
    private $te;

    /**
     * @ORM\Column(length=50, nullable=true)
     * @Assert\Email(message="El email no es válido")
     */
    private $email;

    /**
     * bidireccional lado propietario
     * @ORM\ManyToOne(targetEntity="Fd\TablaBundle\Entity\Dependencia", inversedBy="establecimientos")
     * @Assert\NotBlank(message="El dato no puede quedar en blanco")
     */
    private $dependencia;
    /**
     * bidireccional lado propietario
     * @ORM\ManyToOne(targetEntity="Fd\EstablecimientoBundle\Entity\EstablecimientoEdificio", inversedBy="dependencias")
     * @Assert\NotBlank(message="El dato no puede quedar en blanco")
     */
    private $establecimiento;
    /**
     * bidireccional lado inverso
     * @ORM\OneToMany(targetEntity="Fd\EstablecimientoBundle\Entity\PlantelEstablecimiento", mappedBy="organizacion")
     */
    private $cargos;
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
        return $this->getDependencia() . '/' .  $this->getEstablecimiento();
    }

    public function __construct() {
        $this->creado = new \DateTime();
        $this->actualizado = new \DateTime('now');
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
     * Set te
     *
     * @param string $te
     * @return OrganizacionInterna
     */
    public function setTe($te)
    {
        $this->te = $te;

        return $this;
    }

    /**
     * Get te
     *
     * @return string 
     */
    public function getTe()
    {
        return $this->te;
    }

    /**
     * Set email
     *
     * @param string $email
     * @return OrganizacionInterna
     */
    public function setEmail($email)
    {
        $this->email = $email;

        return $this;
    }

    /**
     * Get email
     *
     * @return string 
     */
    public function getEmail()
    {
        return $this->email;
    }

    /**
     * Set actualizado
     *
     * @param \DateTime $actualizado
     * @return OrganizacionInterna
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
     * @return OrganizacionInterna
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
     * Set dependencia
     *
     * @param \Fd\TablaBundle\Entity\Dependencia $dependencia
     * @return OrganizacionInterna
     */
    public function setDependencia(\Fd\TablaBundle\Entity\Dependencia $dependencia = null)
    {
        $this->dependencia = $dependencia;

        return $this;
    }

    /**
     * Get dependencia
     *
     * @return \Fd\TablaBundle\Entity\Dependencia 
     */
    public function getDependencia()
    {
        return $this->dependencia;
    }

    /**
     * Set establecimiento
     *
     * @param \Fd\EstablecimientoBundle\Entity\EstablecimientoEdificio $establecimiento
     * @return OrganizacionInterna
     */
    public function setEstablecimiento(\Fd\EstablecimientoBundle\Entity\EstablecimientoEdificio $establecimiento = null)
    {
        $this->establecimiento = $establecimiento;

        return $this;
    }

    /**
     * Get establecimiento
     *
     * @return \Fd\EstablecimientoBundle\Entity\EstablecimientoEdificio 
     */
    public function getEstablecimiento()
    {
        return $this->establecimiento;
    }

    /**
     * Add cargos
     *
     * @param \Fd\EstablecimientoBundle\Entity\PlantelEstablecimiento $cargos
     * @return OrganizacionInterna
     */
    public function addCargo(\Fd\EstablecimientoBundle\Entity\PlantelEstablecimiento $cargos)
    {
        $this->cargos[] = $cargos;

        return $this;
    }

    /**
     * Remove cargos
     *
     * @param \Fd\EstablecimientoBundle\Entity\PlantelEstablecimiento $cargos
     */
    public function removeCargo(\Fd\EstablecimientoBundle\Entity\PlantelEstablecimiento $cargos)
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
