<?php

namespace Fd\EstablecimientoBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Validator\Constraints\NotBlank;

/**
 * Fd\EstablecimientoBundle\Entity\UnidadOferta
 * 
 * Es la relación entre unidad_educativa y oferta_educativa.
 * Es una oferta en particular asociada a una unidad educativa de un establecimiento en particular
 * Cada oferta se dicta en uno o mas establecimientos.
 * Las ofertas pueden ser de cualquier nivel.
 *
 * @ORM\Table(name="unidad_oferta")
 * @ORM\Entity(repositoryClass="Fd\EstablecimientoBundle\Repository\UnidadOfertaRepository")
 * @ORM\HasLifecycleCallbacks
 * 
 */
class UnidadOferta {

    /**
     * @var integer $id
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * bidireccional lado propietario
     * @ORM\ManyToOne(targetEntity="Fd\EstablecimientoBundle\Entity\Localizacion", inversedBy="ofertas")
     * @ORM\JoinColumn(name="localizacion_id", referencedColumnName="id")
     */
    private $localizacion;

    /**
     * bidireccional lado propietario
     * @ORM\ManyToOne(targetEntity="Fd\OfertaEducativaBundle\Entity\OfertaEducativa", inversedBy="unidades")
     * @ORM\JoinColumn(name="oferta_educativa_id", referencedColumnName="id")
     */
    private $ofertas;
    /**
     * @ORM\Column(type="string", length=20, nullable=false)
     */
     private $tipo;

    /**
     * bidireccional lado inverso
     * @ORM\OneToMany(targetEntity="Fd\OfertaEducativaBundle\Entity\Cohorte", mappedBy="unidad_oferta", cascade={"remove", "persist"})
     */
    private $cohortes;
    /**
     * bidireccional lado inverso
     * @ORM\OneToMany(targetEntity="Fd\EstablecimientoBundle\Entity\UnidadOfertaTurno", mappedBy="unidad_oferta", cascade={"persist", "remove"} )
     * @Assert\Valid()
     */
    private $turnos;

    /**
     * bidireccional lado propietario
     * @ORM\OneToOne(targetEntity="Fd\OfertaEducativaBundle\Entity\InicialX", inversedBy="unidad_oferta")
     * @ORM\JoinColumn(name="inicial_id", referencedColumnName="id")
     */
    private $inicial;
    /**
     * bidireccional lado propietario
     * @ORM\OneToOne(targetEntity="Fd\OfertaEducativaBundle\Entity\SecundarioX", inversedBy="unidad_oferta")
     * @ORM\JoinColumn(name="secundario_id", referencedColumnName="id")
     */
    private $secundario;
    /**
     * @ORM\Column(type="boolean", nullable=true)
     */
    private $has_examen;
    /**
     * @ORM\Column(type="datetime")
     */
    private $creado;

    /**
     * @ORM\Column(type="datetime")
     */
    private $actualizado;

    /**
     * esta la escribí yo, no es automática
     */
    public function setTurnos(ArrayCollection $turnos) {
        $this->turnos = $turnos;
        foreach ($turnos as $unidadoferta_turno) {
            $unidadoferta_turno->setUnidadOferta($this);
        }
    }
    /**
     * Add turnos
     *
     * @param \Fd\EstablecimientoBundle\Entity\UnidadOfertaTurno $turnos
     * @return UnidadOferta
     */
    public function addTurno(\Fd\EstablecimientoBundle\Entity\UnidadOfertaTurno $turno)
    {
        $turno->setUnidadOferta($this);
        $this->turnos[] = $turno;

        return $this;
    }
    public function __toString() {
        return $this->getLocalizacion() . ' - ' . $this->getOfertas();
    }
    public function getIdentificacionCompleta() {
        $l = $this->getLocalizacion();
        $ue = $l->getUnidadEducativa();
        $resultado = $ue->getEstablecimiento();
        $resultado .= '/Nivel: ';
        $resultado .= $ue->getNivel()->getNombre();
        $resultado .= '-';
        $resultado .= $l->getEstablecimientoEdificio()->strSede();
        $resultado .= ' (';
        $resultado .= $l->getDomicilioPrincipal();
        $resultado .= ') ';
        $resultado .= $this->getOfertas();

        return $resultado;
    }    

    public function __construct() {
        $this->cohortes = new \Doctrine\Common\Collections\ArrayCollection();
        $this->turnos = new ArrayCollection();
        $this->creado = new \DateTime();
        $this->actualizado = new \DateTime('now');
    }

    public function combo() {
        return $this->getOfertas()->getCarrera()->getNombre();
    }
    /**
     * FALTA hacerlo como un decorator o un visitor para todos los niveles
     * @return type
     */
    public function getCarreraIdentificacion() {
        return $this->getOfertas()->getCarrera()->getIdentificacion();
    }
    

    /**
     * @ORM\PrePersist  //en el persist cuando se da de alta uno nuevo
     * @ORM\PreUpdate //en el flush cuando se modifica uno existente
     */
    public function ultimaModificacion() {
        $this->setActualizado(new \DateTime());
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
     * Set tipo
     *
     * @param string $tipo
     * @return UnidadOferta
     */
    public function setTipo($tipo)
    {
        $this->tipo = $tipo;

        return $this;
    }

    /**
     * Get tipo
     *
     * @return string 
     */
    public function getTipo()
    {
        return $this->tipo;
    }

    /**
     * Set has_examen
     *
     * @param boolean $hasExamen
     * @return UnidadOferta
     */
    public function setHasExamen($hasExamen)
    {
        $this->has_examen = $hasExamen;

        return $this;
    }

    /**
     * Get has_examen
     *
     * @return boolean 
     */
    public function getHasExamen()
    {
        return $this->has_examen;
    }

    /**
     * Set creado
     *
     * @param \DateTime $creado
     * @return UnidadOferta
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
     * Set actualizado
     *
     * @param \DateTime $actualizado
     * @return UnidadOferta
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
     * Set localizacion
     *
     * @param \Fd\EstablecimientoBundle\Entity\Localizacion $localizacion
     * @return UnidadOferta
     */
    public function setLocalizacion(\Fd\EstablecimientoBundle\Entity\Localizacion $localizacion = null)
    {
        $this->localizacion = $localizacion;

        return $this;
    }

    /**
     * Get localizacion
     *
     * @return \Fd\EstablecimientoBundle\Entity\Localizacion 
     */
    public function getLocalizacion()
    {
        return $this->localizacion;
    }

    /**
     * Set ofertas
     *
     * @param \Fd\OfertaEducativaBundle\Entity\OfertaEducativa $ofertas
     * @return UnidadOferta
     */
    public function setOfertas(\Fd\OfertaEducativaBundle\Entity\OfertaEducativa $ofertas = null)
    {
        $this->ofertas = $ofertas;

        return $this;
    }

    /**
     * Get ofertas
     *
     * @return \Fd\OfertaEducativaBundle\Entity\OfertaEducativa 
     */
    public function getOfertas()
    {
        return $this->ofertas;
    }

    /**
     * Add cohortes
     *
     * @param \Fd\OfertaEducativaBundle\Entity\Cohorte $cohortes
     * @return UnidadOferta
     */
    public function addCohorte(\Fd\OfertaEducativaBundle\Entity\Cohorte $cohortes)
    {
        $this->cohortes[] = $cohortes;

        return $this;
    }

    /**
     * Remove cohortes
     *
     * @param \Fd\OfertaEducativaBundle\Entity\Cohorte $cohortes
     */
    public function removeCohorte(\Fd\OfertaEducativaBundle\Entity\Cohorte $cohortes)
    {
        $this->cohortes->removeElement($cohortes);
    }

    /**
     * Get cohortes
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getCohortes()
    {
        return $this->cohortes;
    }

    /**
     * Remove turnos
     *
     * @param \Fd\EstablecimientoBundle\Entity\UnidadOfertaTurno $turnos
     */
    public function removeTurno(\Fd\EstablecimientoBundle\Entity\UnidadOfertaTurno $turnos)
    {
        $this->turnos->removeElement($turnos);
    }

    /**
     * Get turnos
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getTurnos()
    {
        return $this->turnos;
    }

    /**
     * Set inicial
     *
     * @param \Fd\OfertaEducativaBundle\Entity\InicialX $inicial
     * @return UnidadOferta
     */
    public function setInicial(\Fd\OfertaEducativaBundle\Entity\InicialX $inicial = null)
    {
        $this->inicial = $inicial;

        return $this;
    }

    /**
     * Get inicial
     *
     * @return \Fd\OfertaEducativaBundle\Entity\InicialX 
     */
    public function getInicial()
    {
        return $this->inicial;
    }

    /**
     * Set secundario
     *
     * @param \Fd\OfertaEducativaBundle\Entity\SecundarioX $secundario
     * @return UnidadOferta
     */
    public function setSecundario(\Fd\OfertaEducativaBundle\Entity\SecundarioX $secundario = null)
    {
        $this->secundario = $secundario;

        return $this;
    }

    /**
     * Get secundario
     *
     * @return \Fd\OfertaEducativaBundle\Entity\SecundarioX 
     */
    public function getSecundario()
    {
        return $this->secundario;
    }
}
