<?php
/**
 * corrió ok
 */
namespace Application\Migrations;

use Doctrine\DBAL\Migrations\AbstractMigration;
use Doctrine\DBAL\Schema\Schema;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
class Version20151120174132 extends AbstractMigration
{
    public function up(Schema $schema)
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() != "mysql", "Migration can only be executed safely on 'mysql'.");
        
//        $this->addSql("ALTER TABLE unidad_oferta DROP has_examen");
        $this->addSql("CREATE UNIQUE INDEX UNIQ_D23000C820332D99 ON dependencia (codigo)");
    }

    public function down(Schema $schema)
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() != "mysql", "Migration can only be executed safely on 'mysql'.");
        
        $this->addSql("DROP INDEX UNIQ_D23000C820332D99 ON dependencia");
//        $this->addSql("ALTER TABLE unidad_oferta ADD has_examen TINYINT(1) DEFAULT NULL");
    }
}
