<?php

namespace Application\Migrations;

use Doctrine\DBAL\Migrations\AbstractMigration;
use Doctrine\DBAL\Schema\Schema;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
class Version20211013181511 extends AbstractMigration
{
    public function up(Schema $schema)
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() != "mysql", "Migration can only be executed safely on 'mysql'.");
        
        $this->addSql("insert into tipo_formacion (codigo, descripcion ) values ('EA', 'Eduación Artística');");        
        $this->addSql("insert into portada (tabla, descripcion, url, etiqueta ) values ('TipoFormacion', 'Tipos de formación', 'backend_tipo_formacion', 'Tipos de Formación');");        

    }

    public function down(Schema $schema)
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() != "mysql", "Migration can only be executed safely on 'mysql'.");
        
        $this->addSql("delete from tipo_formacion where codigo='EA' and descripcion='Eduación Artística';");
}   }