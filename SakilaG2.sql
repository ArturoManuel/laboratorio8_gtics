-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `SakilaG2` DEFAULT CHARACTER SET utf8 ;
USE `SakilaG2` ;

-- -----------------------------------------------------
-- Table `mydb`.`Pelicula`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SakilaG2`.`Pelicula` (
  `idPelicula` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idPelicula`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Reserva`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SakilaG2`.`Reserva` (
  `idReserva` INT NOT NULL AUTO_INCREMENT,
  `Pelicula_idPelicula` INT NOT NULL,
  `fecha` VARCHAR(45) NOT NULL,
  `horaInicio` VARCHAR(45) NOT NULL,
  `horaFin` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idReserva`),
  INDEX `fk_Reserva_Pelicula_idx` (`Pelicula_idPelicula` ASC) VISIBLE,
  CONSTRAINT `fk_Reserva_Pelicula`
    FOREIGN KEY (`Pelicula_idPelicula`)
    REFERENCES `SakilaG2`.`Pelicula` (`idPelicula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
insert into SakilaG2.pelicula (Nombre) values('El castillo de terror'),('Asumare1'),('La era de hielo 3'),
('El regreso de los zombies'), ('Clementine'),('El monitor del diablo');