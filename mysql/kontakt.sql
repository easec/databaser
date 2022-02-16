CREATE DATABASE IF NOT EXISTS kontakt_db DEFAULT CHARACTER SET 'utf8mb4';


CREATE TABLE `kontakt_db`.`meddelande_tbl` (    
	`meddelande_Id` INT NOT NULL AUTO_INCREMENT,
	`anv_Id` INT DEFAULT 0 NOT NULL,
	`anv_Namn` VARCHAR(50) DEFAULT '' NOT NULL,
	`anv_Mail` VARCHAR(50) DEFAULT '' NOT NULL,
	`anv_Meddelande` VARCHAR(200),
	`anv_MeddTS` TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	PRIMARY KEY (`meddelande_Id`)
	);

CREATE TABLE `kontakt.db`.`anv_tbl` (
	`anv_id` INT NOT NULL AUTO_INCREMENT,
        `fnamn` VARCHAR(50) NOT NULL,
        `enamn` VARCHAR(50) NOT NULL,
	`adress1` VARCHAR(50) NOT NULL,
        `adress2` VARCHAR(50),
        `adress3` VARCHAR(50),
        `pnummer` INT NOT NULL,
        `postort` VARCHAR(40) NOT NULL,
        `epost` VARCHAR(40) NOT NULL,
        `ftelefon` VARCHAR(15),
        `mtelefon` VARCHAR(15),
        PRIMARY KEY (`anv_id`)
        );
