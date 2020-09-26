<?php

namespace Application\Migrations;

use Doctrine\DBAL\Migrations\AbstractMigration;
use Doctrine\DBAL\Schema\Schema;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
class Version20200926192634 extends AbstractMigration
{
    public function up(Schema $schema)
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() != "mysql", "Migration can only be executed safely on 'mysql'.");
        
        $this->addSql("DROP TABLE cargo_ap");
        $this->addSql("DROP TABLE resumen_media");
        $this->addSql("ALTER TABLE domicilio_localizacion ADD CONSTRAINT FK_DABAA005166FC4DD FOREIGN KEY (domicilio_id) REFERENCES domicilio (id)");
        $this->addSql("ALTER TABLE domicilio_localizacion ADD CONSTRAINT FK_DABAA005C851F487 FOREIGN KEY (localizacion_id) REFERENCES localizacion (id)");
        $this->addSql("ALTER TABLE edificio ADD CONSTRAINT FK_DED4A4E873AEFE7 FOREIGN KEY (comuna_id) REFERENCES comuna (id)");
        $this->addSql("ALTER TABLE edificio ADD CONSTRAINT FK_DED4A4E8E68FCBB4 FOREIGN KEY (cgp_id) REFERENCES cgp (id)");
        $this->addSql("ALTER TABLE edificio ADD CONSTRAINT FK_DED4A4E8DBA79E2A FOREIGN KEY (barrio_id) REFERENCES barrio (id)");
        $this->addSql("ALTER TABLE edificio ADD CONSTRAINT FK_DED4A4E862E97D21 FOREIGN KEY (distrito_escolar_id) REFERENCES distrito_escolar (id)");
        $this->addSql("ALTER TABLE edificio ADD CONSTRAINT FK_DED4A4E8D0E3F35F FOREIGN KEY (inspector_id) REFERENCES inspector (id)");
        $this->addSql("ALTER TABLE vecino ADD CONSTRAINT FK_758D25E08A652BD6 FOREIGN KEY (edificio_id) REFERENCES edificio (id)");
        $this->addSql("ALTER TABLE domicilio ADD CONSTRAINT FK_9B942ED18A652BD6 FOREIGN KEY (edificio_id) REFERENCES edificio (id)");
        $this->addSql("ALTER TABLE unidad_oferta ADD CONSTRAINT FK_95C6F11DC851F487 FOREIGN KEY (localizacion_id) REFERENCES localizacion (id)");
        $this->addSql("ALTER TABLE unidad_oferta ADD CONSTRAINT FK_95C6F11D15CE31DF FOREIGN KEY (oferta_educativa_id) REFERENCES oferta_educativa (id)");
        $this->addSql("ALTER TABLE unidad_oferta ADD CONSTRAINT FK_95C6F11D4C7AA4E4 FOREIGN KEY (inicial_id) REFERENCES inicial_x (id)");
        $this->addSql("ALTER TABLE unidad_oferta ADD CONSTRAINT FK_95C6F11DA4A10292 FOREIGN KEY (secundario_id) REFERENCES secundario_x (id)");
        $this->addSql("ALTER TABLE plantel_establecimiento ADD CONSTRAINT FK_686FA49290B1019E FOREIGN KEY (organizacion_id) REFERENCES organizacion_interna (id)");
        $this->addSql("ALTER TABLE plantel_establecimiento ADD CONSTRAINT FK_686FA492813AC380 FOREIGN KEY (cargo_id) REFERENCES cargo (id)");
        $this->addSql("ALTER TABLE unidadoferta_turno ADD CONSTRAINT FK_59229137D1F42FF FOREIGN KEY (unidad_oferta_id) REFERENCES unidad_oferta (id)");
        $this->addSql("ALTER TABLE unidadoferta_turno ADD CONSTRAINT FK_5922913769C5211E FOREIGN KEY (turno_id) REFERENCES turno (id)");
        $this->addSql("ALTER TABLE establecimiento_edificio CHANGE cue_anexo cue_anexo VARCHAR(2) NOT NULL");
        $this->addSql("ALTER TABLE establecimiento_edificio ADD CONSTRAINT FK_37D12C65FB6C6A54 FOREIGN KEY (establecimientos_id) REFERENCES establecimiento (id)");
        $this->addSql("ALTER TABLE establecimiento_edificio ADD CONSTRAINT FK_37D12C65884BAFEF FOREIGN KEY (edificios_id) REFERENCES edificio (id)");
        $this->addSql("ALTER TABLE organizacion_interna ADD CONSTRAINT FK_92FADEB5DF2432B6 FOREIGN KEY (dependencia_id) REFERENCES dependencia (id)");
        $this->addSql("ALTER TABLE organizacion_interna ADD CONSTRAINT FK_92FADEB571B61351 FOREIGN KEY (establecimiento_id) REFERENCES establecimiento_edificio (id)");
        $this->addSql("ALTER TABLE establecimiento DROP FOREIGN KEY establecimiento_ibfk_1");
        $this->addSql("ALTER TABLE establecimiento ADD CONSTRAINT FK_94A4D17EE83582FE FOREIGN KEY (tipo_establecimiento_id) REFERENCES tipo_establecimiento (id)");
        $this->addSql("ALTER TABLE establecimiento ADD CONSTRAINT FK_94A4D17E62E97D21 FOREIGN KEY (distrito_escolar_id) REFERENCES distrito_escolar (id)");
        $this->addSql("ALTER TABLE establecimiento ADD CONSTRAINT FK_94A4D17EDE95C867 FOREIGN KEY (sector_id) REFERENCES sector (id)");
        $this->addSql("ALTER TABLE unidad_educativa ADD CONSTRAINT FK_27515E8071B61351 FOREIGN KEY (establecimiento_id) REFERENCES establecimiento (id)");
        $this->addSql("ALTER TABLE unidad_educativa ADD CONSTRAINT FK_27515E80DA3426AE FOREIGN KEY (nivel_id) REFERENCES nivel (id)");
        $this->addSql("ALTER TABLE localizacion ADD CONSTRAINT FK_5512F061BF20CF2F FOREIGN KEY (unidad_educativa_id) REFERENCES unidad_educativa (id)");
        $this->addSql("ALTER TABLE localizacion ADD CONSTRAINT FK_5512F061E0B84520 FOREIGN KEY (establecimiento_edificio_id) REFERENCES establecimiento_edificio (id)");
        $this->addSql("ALTER TABLE autoridad ADD CONSTRAINT FK_14FFC077813AC380 FOREIGN KEY (cargo_id) REFERENCES plantel_establecimiento (id)");
        $this->addSql("ALTER TABLE establecimiento_recurso ADD CONSTRAINT FK_D4968F6271B61351 FOREIGN KEY (establecimiento_id) REFERENCES establecimiento (id)");
        $this->addSql("ALTER TABLE establecimiento_recurso ADD CONSTRAINT FK_D4968F62E52B6C4E FOREIGN KEY (recurso_id) REFERENCES recurso (id)");
        $this->addSql("ALTER TABLE establecimiento_recurso ADD CONSTRAINT FK_D4968F62EA54AA7B FOREIGN KEY (origen_hora_id) REFERENCES origen_hora (id)");
        $this->addSql("ALTER TABLE cargo ADD CONSTRAINT FK_3BEE5771DA3426AE FOREIGN KEY (nivel_id) REFERENCES nivel (id)");
        $this->addSql("ALTER TABLE cargo ADD CONSTRAINT FK_3BEE577169C5211E FOREIGN KEY (turno_id) REFERENCES turno (id)");
        $this->addSql("ALTER TABLE cargo ADD CONSTRAINT FK_3BEE577189AE3DE4 FOREIGN KEY (dependencia_referenciante_id) REFERENCES dependencia (id)");
        $this->addSql("ALTER TABLE dependencia ADD CONSTRAINT FK_D23000C8DA3426AE FOREIGN KEY (nivel_id) REFERENCES nivel (id)");
        $this->addSql("ALTER TABLE dependencia ADD CONSTRAINT FK_D23000C869C5211E FOREIGN KEY (turno_id) REFERENCES turno (id)");
        $this->addSql("ALTER TABLE usuario CHANGE rol rol VARCHAR(25) NOT NULL");
        $this->addSql("ALTER TABLE bachillerato ADD CONSTRAINT FK_40A642E915CE31DF FOREIGN KEY (oferta_educativa_id) REFERENCES oferta_educativa (id)");
        $this->addSql("ALTER TABLE oferta_educativa ADD CONSTRAINT FK_21B7C831DA3426AE FOREIGN KEY (nivel_id) REFERENCES nivel (id)");
        $this->addSql("ALTER TABLE oferta_norma ADD CONSTRAINT FK_703EF970FAFBF624 FOREIGN KEY (oferta_id) REFERENCES oferta_educativa (id)");
        $this->addSql("ALTER TABLE oferta_norma ADD CONSTRAINT FK_703EF970E06FC29E FOREIGN KEY (norma_id) REFERENCES norma (id)");
        $this->addSql("ALTER TABLE cohorte ADD CONSTRAINT FK_35697A4BD1F42FF FOREIGN KEY (unidad_oferta_id) REFERENCES unidad_oferta (id)");
        $this->addSql("ALTER TABLE sala ADD CONSTRAINT FK_E226041C940B40B8 FOREIGN KEY (inicial_x_id) REFERENCES inicial_x (id)");
        $this->addSql("ALTER TABLE sala ADD CONSTRAINT FK_E226041C36ED91FF FOREIGN KEY (grupo_etario_id) REFERENCES grupo_etario (id)");
        $this->addSql("ALTER TABLE orientacion ADD CONSTRAINT FK_FB4EAA70C671B40F FOREIGN KEY (carrera_id) REFERENCES carrera (id)");
        $this->addSql("ALTER TABLE secundario ADD CONSTRAINT FK_EBA5F50A15CE31DF FOREIGN KEY (oferta_educativa_id) REFERENCES oferta_educativa (id)");
        $this->addSql("ALTER TABLE primario ADD CONSTRAINT FK_4101E2EA15CE31DF FOREIGN KEY (oferta_educativa_id) REFERENCES oferta_educativa (id)");
        $this->addSql("ALTER TABLE especializacion ADD CONSTRAINT FK_24C61C0415CE31DF FOREIGN KEY (oferta_educativa_id) REFERENCES oferta_educativa (id)");
        $this->addSql("ALTER TABLE especializacion ADD CONSTRAINT FK_24C61C046CBBC6BF FOREIGN KEY (tipo_especializacion_id) REFERENCES tipo_especializacion (id)");
        $this->addSql("ALTER TABLE especializacion ADD CONSTRAINT FK_24C61C049F5A440B FOREIGN KEY (estado_id) REFERENCES estado_carrera (id)");
        $this->addSql("ALTER TABLE inicial ADD CONSTRAINT FK_73E9728915CE31DF FOREIGN KEY (oferta_educativa_id) REFERENCES oferta_educativa (id)");
        $this->addSql("ALTER TABLE carrera ADD CONSTRAINT FK_CF1ECD3015CE31DF FOREIGN KEY (oferta_educativa_id) REFERENCES oferta_educativa (id)");
        $this->addSql("ALTER TABLE carrera ADD CONSTRAINT FK_CF1ECD30F0798A6E FOREIGN KEY (formacion_id) REFERENCES tipo_formacion (id)");
        $this->addSql("ALTER TABLE carrera ADD CONSTRAINT FK_CF1ECD302A30B056 FOREIGN KEY (disciplina_id) REFERENCES disciplina (id)");
        $this->addSql("ALTER TABLE carrera ADD CONSTRAINT FK_CF1ECD309F5A440B FOREIGN KEY (estado_id) REFERENCES estado_carrera (id)");
        $this->addSql("ALTER TABLE norma ADD CONSTRAINT FK_3EF6217E36AA9857 FOREIGN KEY (tipo_norma_id) REFERENCES tipo_norma (id)");
        $this->addSql("ALTER TABLE norma_referencias ADD CONSTRAINT FK_BCB3D063E06FC29E FOREIGN KEY (norma_id) REFERENCES norma (id)");
        $this->addSql("ALTER TABLE norma_referencias ADD CONSTRAINT FK_BCB3D063778D91A2 FOREIGN KEY (referencia_id) REFERENCES norma (id)");
        $this->addSql("ALTER TABLE titulo_carrera ADD CONSTRAINT FK_955288BAC671B40F FOREIGN KEY (carrera_id) REFERENCES carrera (id)");
        $this->addSql("ALTER TABLE titulo_carrera ADD CONSTRAINT FK_955288BA9F5A440B FOREIGN KEY (estado_id) REFERENCES estado_carrera (id)");
        $this->addSql("ALTER TABLE secundariox_orientacion ADD CONSTRAINT FK_98FC28242ED5694E FOREIGN KEY (secundariox_id) REFERENCES secundario_x (id)");
        $this->addSql("ALTER TABLE secundariox_orientacion ADD CONSTRAINT FK_98FC2824F73C956F FOREIGN KEY (orientacion_id) REFERENCES media_orientaciones (id)");
        $this->addSql("ALTER TABLE primario_x ADD CONSTRAINT FK_C8B17359D1F42FF FOREIGN KEY (unidad_oferta_id) REFERENCES unidad_oferta (id)");
    }

    public function down(Schema $schema)
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() != "mysql", "Migration can only be executed safely on 'mysql'.");
        
        $this->addSql("CREATE TABLE cargo_ap (id INT AUTO_INCREMENT NOT NULL, nombre VARCHAR(50) DEFAULT NULL, abreviatura VARCHAR(5) DEFAULT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = InnoDB");
        $this->addSql("CREATE TABLE resumen_media (id INT AUTO_INCREMENT NOT NULL, numero VARCHAR(20) DEFAULT NULL, fecha VARCHAR(30) DEFAULT NULL, cargo VARCHAR(40) DEFAULT NULL, establecimiento VARCHAR(100) DEFAULT NULL, cargo_vacante VARCHAR(150) DEFAULT NULL, fecha_iniciacion DATE DEFAULT NULL, fecha_terminacion VARCHAR(80) DEFAULT NULL, cantidad_horas VARCHAR(255) DEFAULT NULL, slug_cargo VARCHAR(40) DEFAULT NULL, cantidad_horas_string VARCHAR(100) DEFAULT NULL, horario_lunes VARCHAR(100) DEFAULT NULL, horario_martes VARCHAR(100) DEFAULT NULL, horario_miercoles VARCHAR(100) DEFAULT NULL, horario_jueves VARCHAR(100) DEFAULT NULL, horario_viernes VARCHAR(100) DEFAULT NULL, fila INT DEFAULT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = InnoDB");
        $this->addSql("ALTER TABLE autoridad DROP FOREIGN KEY FK_14FFC077813AC380");
        $this->addSql("ALTER TABLE bachillerato DROP FOREIGN KEY FK_40A642E915CE31DF");
        $this->addSql("ALTER TABLE cargo DROP FOREIGN KEY FK_3BEE5771DA3426AE");
        $this->addSql("ALTER TABLE cargo DROP FOREIGN KEY FK_3BEE577169C5211E");
        $this->addSql("ALTER TABLE cargo DROP FOREIGN KEY FK_3BEE577189AE3DE4");
        $this->addSql("ALTER TABLE carrera DROP FOREIGN KEY FK_CF1ECD3015CE31DF");
        $this->addSql("ALTER TABLE carrera DROP FOREIGN KEY FK_CF1ECD30F0798A6E");
        $this->addSql("ALTER TABLE carrera DROP FOREIGN KEY FK_CF1ECD302A30B056");
        $this->addSql("ALTER TABLE carrera DROP FOREIGN KEY FK_CF1ECD309F5A440B");
        $this->addSql("ALTER TABLE cohorte DROP FOREIGN KEY FK_35697A4BD1F42FF");
        $this->addSql("ALTER TABLE dependencia DROP FOREIGN KEY FK_D23000C8DA3426AE");
        $this->addSql("ALTER TABLE dependencia DROP FOREIGN KEY FK_D23000C869C5211E");
        $this->addSql("ALTER TABLE domicilio DROP FOREIGN KEY FK_9B942ED18A652BD6");
        $this->addSql("ALTER TABLE domicilio_localizacion DROP FOREIGN KEY FK_DABAA005166FC4DD");
        $this->addSql("ALTER TABLE domicilio_localizacion DROP FOREIGN KEY FK_DABAA005C851F487");
        $this->addSql("ALTER TABLE edificio DROP FOREIGN KEY FK_DED4A4E873AEFE7");
        $this->addSql("ALTER TABLE edificio DROP FOREIGN KEY FK_DED4A4E8E68FCBB4");
        $this->addSql("ALTER TABLE edificio DROP FOREIGN KEY FK_DED4A4E8DBA79E2A");
        $this->addSql("ALTER TABLE edificio DROP FOREIGN KEY FK_DED4A4E862E97D21");
        $this->addSql("ALTER TABLE edificio DROP FOREIGN KEY FK_DED4A4E8D0E3F35F");
        $this->addSql("ALTER TABLE especializacion DROP FOREIGN KEY FK_24C61C0415CE31DF");
        $this->addSql("ALTER TABLE especializacion DROP FOREIGN KEY FK_24C61C046CBBC6BF");
        $this->addSql("ALTER TABLE especializacion DROP FOREIGN KEY FK_24C61C049F5A440B");
        $this->addSql("ALTER TABLE establecimiento DROP FOREIGN KEY FK_94A4D17EE83582FE");
        $this->addSql("ALTER TABLE establecimiento DROP FOREIGN KEY FK_94A4D17E62E97D21");
        $this->addSql("ALTER TABLE establecimiento DROP FOREIGN KEY FK_94A4D17EDE95C867");
        $this->addSql("ALTER TABLE establecimiento ADD CONSTRAINT establecimiento_ibfk_1 FOREIGN KEY (tipo_establecimiento_id) REFERENCES tipo_establecimiento (id) ON UPDATE CASCADE");
        $this->addSql("ALTER TABLE establecimiento_edificio DROP FOREIGN KEY FK_37D12C65FB6C6A54");
        $this->addSql("ALTER TABLE establecimiento_edificio DROP FOREIGN KEY FK_37D12C65884BAFEF");
        $this->addSql("ALTER TABLE establecimiento_recurso DROP FOREIGN KEY FK_D4968F6271B61351");
        $this->addSql("ALTER TABLE establecimiento_recurso DROP FOREIGN KEY FK_D4968F62E52B6C4E");
        $this->addSql("ALTER TABLE establecimiento_recurso DROP FOREIGN KEY FK_D4968F62EA54AA7B");
        $this->addSql("ALTER TABLE inicial DROP FOREIGN KEY FK_73E9728915CE31DF");
        $this->addSql("ALTER TABLE localizacion DROP FOREIGN KEY FK_5512F061BF20CF2F");
        $this->addSql("ALTER TABLE localizacion DROP FOREIGN KEY FK_5512F061E0B84520");
        $this->addSql("ALTER TABLE norma DROP FOREIGN KEY FK_3EF6217E36AA9857");
        $this->addSql("ALTER TABLE norma_referencias DROP FOREIGN KEY FK_BCB3D063E06FC29E");
        $this->addSql("ALTER TABLE norma_referencias DROP FOREIGN KEY FK_BCB3D063778D91A2");
        $this->addSql("ALTER TABLE oferta_educativa DROP FOREIGN KEY FK_21B7C831DA3426AE");
        $this->addSql("ALTER TABLE oferta_norma DROP FOREIGN KEY FK_703EF970FAFBF624");
        $this->addSql("ALTER TABLE oferta_norma DROP FOREIGN KEY FK_703EF970E06FC29E");
        $this->addSql("ALTER TABLE organizacion_interna DROP FOREIGN KEY FK_92FADEB5DF2432B6");
        $this->addSql("ALTER TABLE organizacion_interna DROP FOREIGN KEY FK_92FADEB571B61351");
        $this->addSql("ALTER TABLE orientacion DROP FOREIGN KEY FK_FB4EAA70C671B40F");
        $this->addSql("ALTER TABLE plantel_establecimiento DROP FOREIGN KEY FK_686FA49290B1019E");
        $this->addSql("ALTER TABLE plantel_establecimiento DROP FOREIGN KEY FK_686FA492813AC380");
        $this->addSql("ALTER TABLE primario DROP FOREIGN KEY FK_4101E2EA15CE31DF");
        $this->addSql("ALTER TABLE primario_x DROP FOREIGN KEY FK_C8B17359D1F42FF");
        $this->addSql("ALTER TABLE sala DROP FOREIGN KEY FK_E226041C940B40B8");
        $this->addSql("ALTER TABLE sala DROP FOREIGN KEY FK_E226041C36ED91FF");
        $this->addSql("ALTER TABLE secundario DROP FOREIGN KEY FK_EBA5F50A15CE31DF");
        $this->addSql("ALTER TABLE secundariox_orientacion DROP FOREIGN KEY FK_98FC28242ED5694E");
        $this->addSql("ALTER TABLE secundariox_orientacion DROP FOREIGN KEY FK_98FC2824F73C956F");
        $this->addSql("ALTER TABLE titulo_carrera DROP FOREIGN KEY FK_955288BAC671B40F");
        $this->addSql("ALTER TABLE titulo_carrera DROP FOREIGN KEY FK_955288BA9F5A440B");
        $this->addSql("ALTER TABLE unidad_educativa DROP FOREIGN KEY FK_27515E8071B61351");
        $this->addSql("ALTER TABLE unidad_educativa DROP FOREIGN KEY FK_27515E80DA3426AE");
        $this->addSql("ALTER TABLE unidad_oferta DROP FOREIGN KEY FK_95C6F11DC851F487");
        $this->addSql("ALTER TABLE unidad_oferta DROP FOREIGN KEY FK_95C6F11D15CE31DF");
        $this->addSql("ALTER TABLE unidad_oferta DROP FOREIGN KEY FK_95C6F11D4C7AA4E4");
        $this->addSql("ALTER TABLE unidad_oferta DROP FOREIGN KEY FK_95C6F11DA4A10292");
        $this->addSql("ALTER TABLE unidadoferta_turno DROP FOREIGN KEY FK_59229137D1F42FF");
        $this->addSql("ALTER TABLE unidadoferta_turno DROP FOREIGN KEY FK_5922913769C5211E");
        $this->addSql("ALTER TABLE usuario CHANGE rol rol VARCHAR(25) DEFAULT 'ROLE_USUARIO'");
        $this->addSql("ALTER TABLE vecino DROP FOREIGN KEY FK_758D25E08A652BD6");
    }
}
