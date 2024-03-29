-- MySQL Script generated by MySQL Workbench
-- Wed Sep  5 17:05:16 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema SS-DBTK
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `SS-DBTK` ;

-- -----------------------------------------------------
-- Schema SS-DBTK
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `SS-DBTK` DEFAULT CHARACTER SET utf8 ;
USE `SS-DBTK` ;

-- -----------------------------------------------------
-- Table `SS-DBTK`.`tecnico`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SS-DBTK`.`tecnico` ;

CREATE TABLE IF NOT EXISTS `SS-DBTK`.`tecnico` (
  `idtecnico` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `perfil` VARCHAR(45) NULL,
  PRIMARY KEY (`idtecnico`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SS-DBTK`.`reclamo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SS-DBTK`.`reclamo` ;

CREATE TABLE IF NOT EXISTS `SS-DBTK`.`reclamo` (
  `idreclamo` INT NOT NULL AUTO_INCREMENT,
  `tecnico` INT NOT NULL,
  `nodo` VARCHAR(45) NOT NULL,
  `problema` VARCHAR(45) NOT NULL,
  `numcliente` INT UNSIGNED NOT NULL,
  `time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idreclamo`),
  UNIQUE INDEX `idreclamo_UNIQUE` (`idreclamo` ASC),
  INDEX `fktecnico_tecnico_idtecnico_idx` (`tecnico` ASC),
  CONSTRAINT `fktecnico_tecnico_idtecnico`
    FOREIGN KEY (`tecnico`)
    REFERENCES `SS-DBTK`.`tecnico` (`idtecnico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
