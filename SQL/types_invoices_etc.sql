-- MySQL Script generated by MySQL Workbench
-- Wed Feb 28 10:13:50 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema cogip
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema cogip
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cogip` ;
-- -----------------------------------------------------
-- Schema new_schema2
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema new_schema3
-- -----------------------------------------------------
USE `cogip` ;

-- -----------------------------------------------------
-- Table `cogip`.`types`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cogip`.`types` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `created_at` DATETIME NOT NULL,
  `update_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`));


-- -----------------------------------------------------
-- Table `cogip`.`companies`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cogip`.`companies` (
  `id` INT NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  `type_id` INT NOT NULL,
  `country` VARCHAR(50) NOT NULL,
  `tva` VARCHAR(50) NOT NULL,
  `created_at` DATETIME NOT NULL,
  `update_at` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_companies_types1_idx` (`type_id` ASC) VISIBLE,
  CONSTRAINT `fk_companies_types1`
    FOREIGN KEY (`type_id`)
    REFERENCES `cogip`.`types` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `cogip`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cogip`.`invoices` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ref` VARCHAR(50) NOT NULL,
  `id_company` INT NOT NULL,
  `created_at` DATETIME NOT NULL,
  `update_at` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_invoices_companies_idx` (`id_company` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_companies`
    FOREIGN KEY (`id_company`)
    REFERENCES `cogip`.`companies` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `cogip`.`contacts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cogip`.`contacts` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `company_id` INT NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  `phone` VARCHAR(50) NOT NULL,
  `created_at` DATETIME NOT NULL,
  `update_at` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_contacts_companies1_idx` (`company_id` ASC) VISIBLE,
  CONSTRAINT `fk_contacts_companies1`
    FOREIGN KEY (`company_id`)
    REFERENCES `cogip`.`companies` (`country`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
