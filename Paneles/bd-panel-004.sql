-- MySQL Script generated by MySQL Workbench
-- Fri Aug 24 15:17:16 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema default_schema
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema SS-DB
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `SS-DB` ;

-- -----------------------------------------------------
-- Schema SS-DB
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `SS-DB` DEFAULT CHARACTER SET utf8 ;
USE `SS-DB` ;

-- -----------------------------------------------------
-- Table `SS-DB`.`panel`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SS-DB`.`panel` ;

CREATE TABLE IF NOT EXISTS `SS-DB`.`panel` (
  `idpanel` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `ip` VARCHAR(45) NOT NULL,
  `marca` VARCHAR(45) NOT NULL,
  `frecuencia` INT(4) NOT NULL,
  `clientes` INT(4) NOT NULL,
  `tiempo` DATETIME NOT NULL,
  PRIMARY KEY (`idpanel`),
  UNIQUE INDEX `ip_UNIQUE` (`ip` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SS-DB`.`fecha`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SS-DB`.`fecha` ;

CREATE TABLE IF NOT EXISTS `SS-DB`.`fecha` (
  `idFecha` INT NOT NULL AUTO_INCREMENT,
  `fecha` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idFecha`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
