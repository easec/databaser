CREATE DATABASE IF NOT EXISTS kontakt_db DEFAULT CHARACTER SET 'utf8mb4';


CREATE TABLE `kontakt_db`,`meddelande_tbl` (    
	`meddelande_Id` int NOT NULL AUTO_INCREMENT,
	`anv_Id` int DEFAULT 0 NOT NULL,
	`anv_Namn` varchar(50) DEFAULT `` NOT NULL,
	`anv_Mail` varchar(50) DEFAULT `` NOT NULL,
	`anv_Meddelande` varchar(200),
	`anv_MeddTS` timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
	PRIMARY KEY (`meddelande_Id`)
	);

CREATE TABLE `kontakt.db`,`anv_tbl` (
	`anv_id` int NOT NULL AUTO_INCREMENT,
        `fnamn` varchar(50) NOT NULL,
        `enamn` varchar(50) NOT NULL,
	`adress1` varchar(50) NOT NULL,
        `adress2` varchar(50),
        `adress3` varchar(50),
        `pnummer` int NOT NULL,
        `postort` varchar(40) NOT NULL,
        `epost` varchar(40) NOT NULL,
        `ftelefon` varchar(15),
        `mtelefon` varchar(15),
        PRIMARY KEY (`anv_id`)
        );
