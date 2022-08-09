<?php

namespace Application\Migrations;

use Doctrine\DBAL\Migrations\AbstractMigration;
use Doctrine\DBAL\Schema\Schema;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
class Version20220804155033 extends AbstractMigration
{
    public function up(Schema $schema)
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() != "mysql", "Migration can only be executed safely on 'mysql'.");
        
        //$this->addSql("ALTER TABLE unidadoferta_turno DROP publica_en_iel");
        $this->addSql("ALTER TABLE autoridad ADD sade VARCHAR(50) DEFAULT NULL");
        //$this->addSql("ALTER TABLE primario_x DROP jornada_extendida");
    }

    public function down(Schema $schema)
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() != "mysql", "Migration can only be executed safely on 'mysql'.");
        
        $this->addSql("ALTER TABLE autoridad DROP sade");
        //$this->addSql("ALTER TABLE primario_x ADD jornada_extendida VARCHAR(2) DEFAULT NULL");
        //$this->addSql("ALTER TABLE unidadoferta_turno ADD publica_en_iel VARCHAR(1) DEFAULT NULL");
    }
}
