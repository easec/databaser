CREATE DATABASE event;

CREATE TABLE `event`.`event`(
  `eventId` INT NOT NULL AUTO_INCREMENT,
  `titel` VARCHAR(50) NOT NULL,
  `datum` DATE NOT NULL,
  `pris` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`eventId`));

CREATE TABLE `event`.`person` (
  `personId` INT NOT NULL AUTO_INCREMENT,
  `fNamn` VARCHAR(50) NOT NULL,
  `eNamn` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`personId`));

CREATE TABLE `event`.`deltagare` (
  `deltagarId` INT NOT NULL AUTO_INCREMENT,
  `event` INT NOT NULL,
  `person` INT NOT NULL,
  PRIMARY KEY (`deltagarId`),
  INDEX `event_idx` (`event` ASC),
  INDEX `person_idx` (`person` ASC),
  CONSTRAINT `event`
    FOREIGN KEY (`event`)
    REFERENCES `event`.`event` (`eventId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `person`
    FOREIGN KEY (`person`)
    REFERENCES `event`.`person` (`personId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
