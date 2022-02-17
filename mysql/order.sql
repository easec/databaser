CREATE DATABASE `Order`;
USE `Order`;

CREATE TABLE Kund
(
	kundId INT PRIMARY KEY AUTO_INCREMENT,
	fNamn VARCHAR(30) NOT NULL,
	eNamn VARCHAR(30) NOT NULL,
	rabatt DECIMAL(2,2),
	telefon VARCHAR(15)
);

CREATE TABLE `Order`
(
	orderId INT PRIMARY KEY AUTO_INCREMENT,
	skapad DATETIME NOT NULL,
	kund INT NOT NULL,
	summa INT NOT NULL,
    kundId INT NOT NULL,
    CONSTRAINT order_kund
    FOREIGN KEY kundId (kundId)
    REFERENCES Kund(KundId)
);

CREATE TABLE Produkttyp
(
	produkttypId INT PRIMARY KEY AUTO_INCREMENT,
	produkttyp VARCHAR(30)
);

CREATE TABLE Produkt
(
	produktId INT PRIMARY KEY AUTO_INCREMENT,
	produkt VARCHAR(50) NOT NULL,
	pris INT NOT NULL,
    produkttyp INT NOT NULL,
	CONSTRAINT produkt_produkttyp
    FOREIGN KEY produkttyp (produkttyp)
    REFERENCES Produkttyp(produkttypId)
);

CREATE TABLE Orderrad
(
	orderradId INT PRIMARY KEY AUTO_INCREMENT,
	antal INT NOT NULL,
    
    `order` INT NOT NULL,
	CONSTRAINT orderrad_order
    FOREIGN KEY Orderrad (`order`)
    REFERENCES `Order`(orderId),
    
    produkt INT NOT NULL,
	CONSTRAINT orderrad_produkt
    FOREIGN KEY produkt (produkt)
    REFERENCES Produkt(produktId)
);

INSERT INTO Kund (fNamn, eNamn, telefon, rabatt)
VALUES
('Viktor', 'Sigurd', '0920-414 85', 0),
('Gabriel', 'Johansson', '0920-162 95', 0.05),
('Jacob', 'Thalin', '0920-658 85', 0),
('Erik', 'Ulvdell', '0920-145 45', 0.10);

INSERT INTO Produkttyp (produkttyp)
VALUES
('Kök'),
('Böcker'),
('Möbler');

INSERT INTO Produkt (produkt, pris, produkttyp)
VALUES
('Kaffebryggare', 399, 1),
('Brödrost', 299, 1),
('Blender', 299, 1),
('Database Systems', 1838, 2),
('Java How to Program', 1073, 2),
('Interaktionsdesign och UX', 285, 2),
('Hylla Kallax', 499, 3),
('Skrivbord Micke', 399, 3),
('Skåp Lixhult', 199, 3);
