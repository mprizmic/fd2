<?php

namespace Application\Migrations;

use Doctrine\DBAL\Migrations\AbstractMigration;
use Doctrine\DBAL\Schema\Schema;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
class Version20210429211844 extends AbstractMigration
{
    public function up(Schema $schema)
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() != "mysql", "Migration can only be executed safely on 'mysql'.");
        
        $this->addSql("CREATE TABLE area (id INT AUTO_INCREMENT NOT NULL, codigo VARCHAR(10) NOT NULL, descripcion VARCHAR(100) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = InnoDB");
        $this->addSql("ALTER TABLE establecimiento ADD area_id INT DEFAULT NULL, DROP area");
        $this->addSql("ALTER TABLE establecimiento ADD CONSTRAINT FK_94A4D17EBD0F409C FOREIGN KEY (area_id) REFERENCES area (id)");
        $this->addSql("CREATE INDEX IDX_94A4D17EBD0F409C ON establecimiento (area_id)");
    }

    public function down(Schema $schema)
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() != "mysql", "Migration can only be executed safely on 'mysql'.");
        
        $this->addSql("ALTER TABLE establecimiento DROP FOREIGN KEY FK_94A4D17EBD0F409C");
        $this->addSql("DROP TABLE area");
        $this->addSql("DROP INDEX IDX_94A4D17EBD0F409C ON establecimiento");
        $this->addSql("ALTER TABLE establecimiento ADD area VARCHAR(10) DEFAULT NULL, DROP area_id");
    }
}
