-- MySQL Script Tiago Luiz da Silva
-- Social: https://www.facebook.com/tiagodesenvolvedor
-- E-mail: tlsprogramador@gmail.com
-- Celular: 11-966189914
-- Quarta-feira 15/03/2017

-- -----------------------------------------------------
-- Banco de Dados zend-db | Definição Charset UTF-8
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `zend-db` DEFAULT CHARACTER SET utf8 ;
USE `zend-db` ;

-- -----------------------------------------------------
-- Tabela (CLIENTE) `zend-db`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zend-db`.`cliente` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `telefone` VARCHAR(15) NOT NULL,
  `regiao` SET('Norte', 'Nordeste', 'Sul', 'Sudeste', 'Centro-Oeste') NOT NULL,
  `unidade` SET('Porto Alegre', 'Curitiba', 'São Paulo', 'Rio de Janeiro', 'Belo Horizonte', 'Brasília', 'Salvador', 'Recife', 'INDISPONÍVEL') NOT NULL,
  `data_nascimento` DATE NOT NULL,
  `score` TINYINT(2) UNSIGNED NOT NULL,
  `token` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC))
ENGINE = InnoDB;


