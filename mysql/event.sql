CREATE DATABASE event_db;

CREATE TABLE `event_db`.`event_tbl`(
  `eventId` INT NOT NULL AUTO_INCREMENT,
  `titel` VARCHAR(50) NOT NULL,
  `datum` DATE NOT NULL,
  `pris` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`eventId`));

CREATE TABLE `event_db`.`person_tbl` (
  `personId` INT NOT NULL AUTO_INCREMENT,
  `fNamn` VARCHAR(50) NOT NULL,
  `eNamn` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`personId`));

CREATE TABLE `event_db`.`deltagare_tbl` (
  `deltagarId` INT NOT NULL AUTO_INCREMENT,
  `event` INT NOT NULL,
  `person` INT NOT NULL,
  PRIMARY KEY (`deltagarId`),
  INDEX `event_idx` (`event` ASC),
  INDEX `person_idx` (`person` ASC),
  CONSTRAINT `event`
    FOREIGN KEY (`event`)
    REFERENCES `event_db`.`event_tbl` (`eventId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `person`
    FOREIGN KEY (`person`)
    REFERENCES `event_db`.`person_tbl` (`personId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
 
INSERT INTO `event_db`.`event_tbl` (titel, datum, pris)
VALUES
('Databashantering', 220310, 10000),
('Java', 220311, 5000),
('Klienthantering', 220509, 15000);

INSERT INTO `event_db`.`person_tbl` (fNamn, eNamn)
VALUES
('Gullan', 'Holm'),
('Christer', 'Larsson'),
('Nisse', 'Hult');


