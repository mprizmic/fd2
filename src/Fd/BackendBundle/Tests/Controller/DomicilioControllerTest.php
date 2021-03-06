<?php

namespace Fd\BackendBundle\Tests\Controller;

use Fd\EstablecimientoBundle\Tests\Controller\LoginWebTestCase;

/**
 * testea el crud de domicilio del backend
 */
class DomicilioControllerTest extends LoginWebTestCase {

    private $edificio_id;

    public function setup() {

        parent::setup();

        /**
         * si el nro del id de establecimiento_edificio está mal no corre. Este es un edificio existente
         */
        $this->edificio_id = 59;
    }
    /**
     * @dataProvider domicilios
     * 
     * @param type $domicilio 
     */
    public function testCompleteScenario($domicilio) {
        $client = $this->client;
        $crawler = $this->crawler;

        // Llama a la página del index
        $crawler = $client->request('GET', '/backend/domicilio');
        $this->assertTrue(200 === $client->getResponse()->getStatusCode());

        /**
         * Creación de nuevo domicilio 
         */
        // Hace click en el link a la página de nuevo domicilio
        $crawler = $client->click($crawler->selectLink('Crear nuevo domicilio')->link());

        // Verifica que se visualizò la pagina de edicion
        $this->assertGreaterThan(0, 
                $crawler->filter('html:contains("Crear nuevo domicilio")')->count(),
                'Se visualiza la página de creación de domicilio');

        // Selecciono el formulario de la página y lo lleno con el dataProvider
        $formulario = $crawler->selectButton('Crear')->form($domicilio);

        // Envío el formulario con datos de alta
        $crawler = $client->submit($formulario);
        $this->assertTrue($client->getResponse()->isSuccessful());

        // Check que se grabó ok
        $this->assertEquals(
                $domicilio['fd_edificiobundle_domiciliotype[calle]'],
                $crawler->filter('form input[name="fd_edificiobundle_domiciliotype[calle]"]')->attr('value'),
                'El domicilio se registró ok'
        );

        /**
         *  Prueba de modificación de un dato y grabación de lo editado  NO ANDA
         */
        
//        // Cambio un dato editado
//        $domicilio['fd_edificiobundle_domiciliotype[calle]'] = 'modificado';
//        
//        //en la creación no tiene el campo edificio pero en la edición si
//        $domicilio['fd_edificiobundle_domiciliotype[edificio]'] = $this->edificio_id;
//        $domicilio['fd_edificiobundle_domiciliotype[principal]'] = FALSE;
//        
//
//        // Selecciono el formulario de la página y lo lleno con el dataProvider modificado
//        $formulario = $crawler->selectButton('Guardar')->form($domicilio);
//
//        // Envío el formulario con datos de alta
//        $crawler = $client->submit($formulario);
//        $this->assertTrue($client->getResponse()->isSuccessful());
//
//        // Check que se grabó ok
//        $this->assertEquals(
//                $domicilio['fd_edificiobundle_domiciliotype[calle]'],
//                $crawler->filter('form input[name="fd_edificiobundle_domiciliotype[calle]"]')->attr('value'),
//                'El domicilio se registró ok por segunda vez'
//        );

        /**
         * Prueba de eliminación del dato reción creado 
         */
        // Se llama al formulario de eliminación con el id como dato del form

        $crawler = $client->submit($crawler->selectButton('Eliminar')->form());
        $this->assertTrue($client->getResponse()->isSuccessful());
        
        // Se verifica que sea la página de index
//                'Volvió a index');
        $this->assertGreaterThan(0, 
                $crawler->filter('html:contains("Lista de Domicilio")')->count(),
                'Volvió a index')
                ;        
        
        // Se verifica que no aparezca la dirección en la lista de la página de index
        $this->assertEquals(0,
                $crawler->filter('html:contains("modificado por el test")')->count(),
                'Se eliminó. No figura en la lista.');
    }

    public function domicilios() {
        return array(
            array(
                array(
                    'fd_edificiobundle_domiciliotype[calle]' => 'sarasa',
                    'fd_edificiobundle_domiciliotype[altura]' => '123',
                    'fd_edificiobundle_domiciliotype[c_postal]' => '456',
//                    'fd_edificiobundle_domiciliotype[principal]' => false,
//                    'fd_edificiobundle_domiciliotype[edificio]' => 59,
                )
            )
        );
    }

}