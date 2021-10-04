<?php

namespace Fd\EstablecimientoBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use Fd\TablaBundle\Entity\Cargo;
use Fd\EstablecimientoBundle\Validator\Constraints as ApellidoAssert;
/**
 * @ORM\Table(name="autoridad")
 * @ORM\Entity(repositoryClass="Fd\EstablecimientoBundle\Repository\AutoridadRepository")
 * @ORM\HasLifecycleCallbacks
 */
class Autoridad
{
    /**
     * @var integer $id
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string $nombre
     *
     * @ORM\Column(length=50, nullable=true)
     * @ApellidoAssert\Apellido
     */
    private $nombre;
    /**
     * @var string $nombre
     *
     * @ORM\Column(length=50, nullable=false)
     * @ApellidoAssert\Apellido
     */
    private $apellido;
    /**
     * @ORM\Column(length=50, nullable=true)
     */
    private $te_particular;
    /**
     * @ORM\Column(length=50, nullable=true)
     */
    private $celular;
    /**
     * @ORM\Column(length=50, nullable=true)
     * @Assert\Email(message="El email no es válido")
     */
    private $email;
    
    /**
     * @ORM\Column(length=50, nullable=true)
     * @Assert\Email(message="El email no es válido")
     */
    private $email_personal;    

    /**
     * bidireccional lado propietario
     * @ORM\OneToOne(targetEntity="Fd\EstablecimientoBundle\Entity\PlantelEstablecimiento", inversedBy="autoridad")
     * @Assert\NotBlank(message="El dato no puede quedar en blanco")
     */
    private $cargo;
    /**
     * @ORM\Column(nullable=true, type="date")
     * 
     */
    private $inicio_mandato;
    /**
     * @ORM\Column(length=250)
     * 
     */
    private $comentarios;
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
    public function ultimaModificacion()
    {
        $this->setActualizado(new \DateTime());
    }    
    /**
     * @ORM\PrePersist  //en el persist cuando se da de alta uno nuevo
     * @ORM\PreUpdate //en el flush cuando se modifica uno existente
     */
    public function pasarAMayuscula()
    {
        $this->setApellido(strtoupper($this->getApellido()));
    }
    public function __construct() {
        $this->creado = new \DateTime();
        $this->actualizado = new \DateTime();
    }
    public function __toString() {
        return $this->getApellido() . ', ' . $this->getNombre();
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
     * Set nombre
     *
     * @param string $nombre
     * @return Autoridad
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
     * Set apellido
     *
     * @param string $apellido
     * @return Autoridad
     */
    public function setApellido($apellido)
    {
        $this->apellido = $apellido;

        return $this;
    }

    /**
     * Get apellido
     *
     * @return string 
     */
    public function getApellido()
    {
        return $this->apellido;
    }

    /**
     * Set te_particular
     *
     * @param string $teParticular
     * @return Autoridad
     */
    public function setTeParticular($teParticular)
    {
        $this->te_particular = $teParticular;

        return $this;
    }

    /**
     * Get te_particular
     *
     * @return string 
     */
    public function getTeParticular()
    {
        return $this->te_particular;
    }

    /**
     * Set celular
     *
     * @param string $celular
     * @return Autoridad
     */
    public function setCelular($celular)
    {
        $this->celular = $celular;

        return $this;
    }

    /**
     * Get celular
     *
     * @return string 
     */
    public function getCelular()
    {
        return $this->celular;
    }

    /**
     * Set email
     *
     * @param string $email
     * @return Autoridad
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
     * Set email
     *
     * @param string $emailPersonal
     * @return Autoridad
     */
    public function setEmailPersonal($emailPersonal)
    {
        $this->email_personal = $emailPersonal;

        return $this;
    }

    /**
     * Get email_personal
     *
     * @return string 
     */
    public function getEmailPersonal()
    {
        return $this->email_personal;
    }
    /**
     * Set inicio_mandato
     *
     * @param \DateTime $inicioMandato
     * @return Autoridad
     */
    public function setInicioMandato($inicioMandato)
    {
        $this->inicio_mandato = $inicioMandato;

        return $this;
    }

    /**
     * Get inicio_mandato
     *
     * @return \DateTime 
     */
    public function getInicioMandato()
    {
        return $this->inicio_mandato;
    }

    /**
     * Set actualizado
     *
     * @param \DateTime $actualizado
     * @return Autoridad
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
     * @return Autoridad
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
     * Set cargo
     *
     * @param \Fd\EstablecimientoBundle\Entity\PlantelEstablecimiento $cargo
     * @return Autoridad
     */
    public function setCargo(\Fd\EstablecimientoBundle\Entity\PlantelEstablecimiento $cargo = null)
    {
        $this->cargo = $cargo;

        return $this;
    }

    /**
     * Get cargo
     *
     * @return \Fd\EstablecimientoBundle\Entity\PlantelEstablecimiento 
     */
    public function getCargo()
    {
        return $this->cargo;
    }
    /**
     * Set comentarios
     *
     * @param \string $comentarios
     * @return Autoridad
     */
    public function setComentarios($comentarios)
    {
        $this->comentarios = $comentarios;

        return $this;
    }

    /**
     * Get comentarios
     *
     * @return \string 
     */
    public function getComentarios()
    {
        return $this->comentarios;
    }    
}
