-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 24, 2019 at 02:30 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thefarm`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`) VALUES
(1, 'test', '$2y$10$SfhYIDtn.iOuCW7zfoFLuuZHX6lja4lF4XA4JqNmpiH/.P3zB8JCa');

-- --------------------------------------------------------

--
-- Table structure for table `t_animalproduce`
--

DROP TABLE IF EXISTS `t_animalproduce`;
CREATE TABLE IF NOT EXISTS `t_animalproduce` (
  `animalproduceID` int(11) NOT NULL AUTO_INCREMENT,
  `livestockID` int(11) NOT NULL,
  `animalproduceName` varchar(45) NOT NULL,
  `animalproduceAmount` int(11) NOT NULL,
  `animalproducePrice` varchar(45) NOT NULL,
  `animalproduceDateMade` date NOT NULL,
  `animalproduceExpirationDate` date NOT NULL,
  PRIMARY KEY (`animalproduceID`),
  KEY `animalproduceLivestockID_idx` (`livestockID`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_animalproduce`
--

INSERT INTO `t_animalproduce` (`animalproduceID`, `livestockID`, `animalproduceName`, `animalproduceAmount`, `animalproducePrice`, `animalproduceDateMade`, `animalproduceExpirationDate`) VALUES
(1, 1, 'Angus Beef Sirloin', 20, '1', '2018-06-29', '2018-07-15'),
(2, 1, 'Angus Beef Tomahawk', 10, '2', '2018-06-29', '2018-07-15'),
(3, 2, 'Jersey Beef Sirloin', 20, '3', '2018-06-29', '2018-07-15'),
(4, 2, 'Jersey Beef Roast Joint', 8, '4', '2018-06-29', '2018-07-15'),
(5, 2, 'Jersey Beef Fillet', 4, '5', '2018-06-29', '2018-07-15'),
(6, 3, 'Holstein Friesian Beef Liver', 30, '1', '2018-06-29', '2018-07-15'),
(7, 4, 'Hereford Friesian Beef Ribs', 8, '2', '2018-06-29', '2018-07-15'),
(8, 4, 'Hereford Friesian Beef Calve Liver', 30, '3', '2018-06-29', '2018-07-15'),
(9, 4, 'Hereford Friesian Beef Shoulder Roast', 4, '4', '2018-06-29', '2018-07-15'),
(10, 5, 'Brangus Beef Sirloin', 20, '5', '2018-06-29', '2018-07-15'),
(11, 5, 'Brangus Beef Meatpie', 50, '1', '2018-06-29', '2018-07-15'),
(12, 6, 'Simmental Beef Piece of Meat', 20, '2', '2018-06-29', '2018-07-15'),
(13, 7, 'Limousin Beef Sirloin', 20, '3', '2018-06-29', '2018-07-15'),
(14, 7, 'Limousin Beef Roast Joint', 4, '4', '2018-06-29', '2018-07-15'),
(15, 7, 'Limousin Beef Liver', 40, '5', '2018-06-29', '2018-07-15'),
(16, 8, 'Merino Lamb Leg', 12, '1', '2018-06-29', '2018-07-15'),
(17, 8, 'Merino Lamb Shoulder', 6, '2', '2018-06-29', '2018-07-15'),
(18, 8, 'Merino Lamb Liver', 40, '3', '2018-06-29', '2018-07-15'),
(19, 9, 'Suffolk Lamb Chop', 20, '4', '2018-06-29', '2018-07-15'),
(20, 9, 'Suffolk Lamb Leg', 12, '5', '2018-06-29', '2018-07-15'),
(21, 10, 'Leicester Lamb Chop', 20, '1', '2018-06-29', '2018-07-15'),
(22, 10, 'Leicester Lamb Shoulder Roast', 4, '2', '2018-06-29', '2018-07-15'),
(23, 11, 'Dorset Lamb Chop', 20, '3', '2018-06-29', '2018-07-15'),
(24, 11, 'Dorset Lamb Leg', 12, '4', '2018-06-29', '2018-07-15'),
(25, 12, 'Southdown Lamb Leg', 12, '5', '2018-06-29', '2018-07-15'),
(26, 12, 'Southdown Lamb Liver', 30, '1', '2018-06-29', '2018-07-15'),
(27, 13, 'Dorper Lamb Liver', 30, '2', '2018-06-29', '2018-07-15'),
(28, 13, 'Dorper Lamb Leg', 12, '3', '2018-06-29', '2018-07-15'),
(29, 14, 'Plymouth Rock Chicken Breast', 20, '4', '2018-06-29', '2018-07-15'),
(30, 14, 'Plymouth Rock Chicken Drums', 30, '5', '2018-06-29', '2018-07-15'),
(31, 15, 'Leghorn Chicken Wings', 30, '1', '2018-06-29', '2018-07-15'),
(32, 15, 'Lenghorn Chicken Breast', 30, '2', '2018-06-29', '2018-07-15'),
(33, 16, 'Rhode Island Red Chicken Breast', 30, '3', '2018-06-29', '2018-07-15'),
(34, 16, 'Rhode Island Red Chicken Wings', 30, '4', '2018-06-29', '2018-07-15'),
(35, 16, 'Rhode Island Red Chicken Drums', 30, '5', '2018-06-29', '2018-07-15'),
(36, 17, 'Orpington Chicken Liver', 30, '1', '2018-06-29', '2018-07-15'),
(37, 17, 'Orpington Chicken Hearts', 30, '2', '2018-06-29', '2018-07-15');

-- --------------------------------------------------------

--
-- Table structure for table `t_crop`
--

DROP TABLE IF EXISTS `t_crop`;
CREATE TABLE IF NOT EXISTS `t_crop` (
  `cropID` int(11) NOT NULL AUTO_INCREMENT,
  `cropSpecies` varchar(50) NOT NULL,
  `cropDateAcquired` date NOT NULL,
  PRIMARY KEY (`cropID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_crop`
--

INSERT INTO `t_crop` (`cropID`, `cropSpecies`, `cropDateAcquired`) VALUES
(1, 'Rye', '2018-01-12'),
(2, 'Barley', '2018-01-16'),
(3, 'Corn', '2018-02-11'),
(4, 'Spelt', '2018-02-13'),
(5, 'Millet', '2018-02-17'),
(6, 'Oats', '2018-02-28'),
(7, 'Rapeseed', '2018-03-25'),
(8, 'Buckwheat', '2018-04-09'),
(9, 'Potatoes', '2018-04-14'),
(10, 'Wheat', '2018-05-05'),
(11, 'Flax', '2018-05-19'),
(12, 'Lentil', '2018-06-17'),
(13, 'Carrots', '2018-06-20'),
(14, 'Cabbage', '2018-07-15');

-- --------------------------------------------------------

--
-- Table structure for table `t_customers`
--

DROP TABLE IF EXISTS `t_customers`;
CREATE TABLE IF NOT EXISTS `t_customers` (
  `customerID` int(11) NOT NULL AUTO_INCREMENT,
  `customerName` varchar(45) NOT NULL,
  `customerSurname` varchar(45) NOT NULL,
  `customerDateJoined` date NOT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_customers`
--

INSERT INTO `t_customers` (`customerID`, `customerName`, `customerSurname`, `customerDateJoined`) VALUES
(1, 'Jonas', 'Pienikis', '2013-06-05'),
(2, 'Mantvydas', 'Ilgspimpis', '2014-05-13'),
(3, 'Gertruda', 'Marijampole', '2014-05-18'),
(4, 'Dovile', 'Grauziliene', '2014-06-24'),
(5, 'Darius', 'Ubaginis', '2014-08-20'),
(6, 'Tautvydas', 'NunerfintasEleras', '2015-04-12'),
(7, 'Marelis', 'Feisbukas', '2018-05-14'),
(8, 'Vytautas', 'Sabakinis', '2018-06-15'),
(9, 'Antanas', 'Jobanpydarskis', '2018-07-18');

-- --------------------------------------------------------

--
-- Table structure for table `t_equipment`
--

DROP TABLE IF EXISTS `t_equipment`;
CREATE TABLE IF NOT EXISTS `t_equipment` (
  `equipmentID` int(11) NOT NULL AUTO_INCREMENT,
  `equipmentName` varchar(45) NOT NULL,
  `equipmentModel` varchar(45) NOT NULL,
  `equipmentDatePurchase` date NOT NULL,
  PRIMARY KEY (`equipmentID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_equipment`
--

INSERT INTO `t_equipment` (`equipmentID`, `equipmentName`, `equipmentModel`, `equipmentDatePurchase`) VALUES
(1, 'Home Made Plow', '1.0', '1996-06-14'),
(2, 'Belarus Tractor', 'MTZ-800', '1982-04-13'),
(3, 'Claas Harvester', 'LEXION 670', '2013-05-21'),
(4, 'John Deere Planter', '1725 CCS Stack-Fold', '2016-04-21'),
(5, 'John Deere Air Hoe Drill', '1830', '2016-04-21'),
(6, 'John Deere Tractor', '620 Engine HP', '2018-05-21'),
(7, 'John Deere Compact Utility Tractor', '2025R', '2018-06-14');

-- --------------------------------------------------------

--
-- Table structure for table `t_grassland`
--

DROP TABLE IF EXISTS `t_grassland`;
CREATE TABLE IF NOT EXISTS `t_grassland` (
  `landID` int(11) NOT NULL,
  `livestockID` int(11) NOT NULL,
  `grasslandAmount` varchar(50) NOT NULL,
  KEY `grassLandID_idx` (`landID`),
  KEY `grassAnimalID_idx` (`livestockID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_grassland`
--

INSERT INTO `t_grassland` (`landID`, `livestockID`, `grasslandAmount`) VALUES
(39, 4, '40'),
(39, 5, '40'),
(39, 6, '40'),
(40, 9, '4'),
(40, 10, '6'),
(40, 11, '6'),
(40, 12, '6'),
(38, 6, '20'),
(41, 10, '10'),
(42, 10, '10'),
(43, 10, '10'),
(43, 5, '50'),
(38, 2, '30'),
(41, 6, '50'),
(42, 15, '50'),
(33, 2, '24');

-- --------------------------------------------------------

--
-- Table structure for table `t_grownproduce`
--

DROP TABLE IF EXISTS `t_grownproduce`;
CREATE TABLE IF NOT EXISTS `t_grownproduce` (
  `grownproduceID` int(11) NOT NULL AUTO_INCREMENT,
  `cropID` int(11) NOT NULL,
  `grownproduceName` varchar(45) NOT NULL,
  `grownproduceAmount` int(11) NOT NULL,
  `grownproducePrice` varchar(45) NOT NULL,
  `grownproduceDateMade` date NOT NULL,
  `grownproduceExpirationDate` date NOT NULL,
  PRIMARY KEY (`grownproduceID`),
  KEY `grownproduceCropID_idx` (`cropID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_grownproduce`
--

INSERT INTO `t_grownproduce` (`grownproduceID`, `cropID`, `grownproduceName`, `grownproduceAmount`, `grownproducePrice`, `grownproduceDateMade`, `grownproduceExpirationDate`) VALUES
(1, 1, 'Rye Bread', 50, '1', '2018-06-22', '2018-12-22'),
(2, 3, 'Corn Bread', 50, '2', '2018-06-23', '2018-12-23'),
(3, 2, 'Barley', 200, '3', '2018-06-23', '2020-06-23'),
(4, 4, 'Sour Roasted Spelt', 100, '4', '2018-06-24', '2018-12-24'),
(5, 4, 'Spelt Cereal with Honey', 100, '5', '2018-06-24', '2018-12-24'),
(6, 5, 'Millet', 100, '1', '2018-06-24', '2020-06-24'),
(7, 6, 'Oatmeal', 100, '2', '2018-06-25', '2020-06-25'),
(8, 6, 'Oats', 100, '3', '2018-06-25', '2020-06-25'),
(9, 7, 'Rapeseed Oil', 100, '4', '2018-06-25', '2020-06-25'),
(10, 8, 'Buckwheat', 100, '5', '2018-06-26', '2020-06-26'),
(11, 9, 'Home Made Potato Crisps', 100, '1', '2018-06-27', '2020-06-27'),
(12, 9, 'Potatoes', 100, '2', '2018-06-27', '2019-06-27'),
(13, 10, 'White Bread', 100, '3', '2018-06-27', '2018-12-27'),
(14, 10, 'Pasta', 100, '4', '2018-06-27', '2020-06-27'),
(15, 11, 'Flax Seed Oil', 100, '5', '2018-06-28', '2020-06-28'),
(16, 12, 'Lentils', 100, '1', '2018-06-28', '2020-06-28'),
(17, 13, 'Carrots', 100, '2', '2018-06-29', '2018-12-29'),
(18, 14, 'Cabbage', 100, '3', '2018-06-29', '2018-12-29');

-- --------------------------------------------------------

--
-- Table structure for table `t_invoice`
--

DROP TABLE IF EXISTS `t_invoice`;
CREATE TABLE IF NOT EXISTS `t_invoice` (
  `invoiceID` int(11) NOT NULL AUTO_INCREMENT,
  `customerID` int(11) NOT NULL,
  `invoiceDate` date NOT NULL,
  PRIMARY KEY (`invoiceID`),
  KEY `invoiceCustomerID_idx` (`customerID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_invoice`
--

INSERT INTO `t_invoice` (`invoiceID`, `customerID`, `invoiceDate`) VALUES
(1, 1, '2018-05-22'),
(2, 2, '2018-05-25'),
(3, 3, '2018-06-02'),
(4, 3, '2018-06-03'),
(5, 3, '2018-06-04'),
(6, 4, '2018-06-05'),
(7, 6, '2018-06-05'),
(8, 4, '2018-06-06'),
(9, 8, '2018-06-06'),
(10, 6, '2018-06-06'),
(11, 6, '2018-06-07'),
(12, 9, '2018-06-07');

-- --------------------------------------------------------

--
-- Table structure for table `t_invoicegoods`
--

DROP TABLE IF EXISTS `t_invoicegoods`;
CREATE TABLE IF NOT EXISTS `t_invoicegoods` (
  `invoiceID` int(11) NOT NULL,
  `grownproduceID` int(11) DEFAULT NULL,
  `invoiceGrownProduceQuantity` int(11) DEFAULT NULL,
  `invoiceGrownProduceEachPrice` decimal(10,2) DEFAULT NULL,
  `animalproduceID` int(11) DEFAULT NULL,
  `invoiceAnimalProduceQuantity` int(11) DEFAULT NULL,
  `invoiceAnimalProduceEachPrice` decimal(10,2) DEFAULT NULL,
  KEY `invoicegoodsInvoiceID_idx` (`invoiceID`),
  KEY `invoicegoodsGrownProduceID_idx` (`grownproduceID`),
  KEY `invoicegoodsAnimalProduceID_idx` (`animalproduceID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_invoicegoods`
--

INSERT INTO `t_invoicegoods` (`invoiceID`, `grownproduceID`, `invoiceGrownProduceQuantity`, `invoiceGrownProduceEachPrice`, `animalproduceID`, `invoiceAnimalProduceQuantity`, `invoiceAnimalProduceEachPrice`) VALUES
(1, NULL, 5, NULL, 1, NULL, '1.00'),
(1, NULL, 5, NULL, 2, NULL, '2.00'),
(1, NULL, 5, NULL, 3, NULL, '3.00'),
(2, NULL, 3, NULL, 4, NULL, '4.00'),
(3, NULL, 2, NULL, 5, NULL, '5.00'),
(3, NULL, 1, NULL, 6, NULL, '1.00'),
(4, NULL, 4, NULL, 7, NULL, '2.00'),
(5, NULL, 6, NULL, 8, NULL, '3.00'),
(6, NULL, 9, NULL, 9, NULL, '4.00'),
(7, NULL, 8, NULL, 10, NULL, '5.00'),
(8, NULL, 7, NULL, 11, NULL, '1.00'),
(9, NULL, 7, NULL, 12, NULL, '2.00'),
(10, NULL, 4, NULL, 13, NULL, '3.00'),
(11, NULL, 5, NULL, 14, NULL, '4.00'),
(12, NULL, 6, NULL, 15, NULL, '5.00'),
(2, NULL, NULL, '1.00', 1, 3, NULL),
(2, NULL, NULL, '2.00', 2, 4, NULL),
(2, NULL, NULL, '3.00', 3, 5, NULL),
(3, NULL, NULL, '4.00', 4, 4, NULL),
(3, NULL, NULL, '5.00', 5, 6, NULL),
(4, NULL, NULL, '1.00', 6, 3, NULL),
(5, NULL, NULL, '2.00', 7, 8, NULL),
(6, NULL, NULL, '3.00', 8, 5, NULL),
(7, NULL, NULL, '4.00', 9, 6, NULL),
(8, NULL, NULL, '5.00', 10, 7, NULL),
(9, NULL, NULL, '1.00', 11, 1, NULL),
(10, NULL, NULL, '2.00', 12, 3, NULL),
(11, NULL, NULL, '3.00', 13, 3, NULL),
(12, NULL, NULL, '4.00', 14, 6, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_land`
--

DROP TABLE IF EXISTS `t_land`;
CREATE TABLE IF NOT EXISTS `t_land` (
  `landID` int(11) NOT NULL AUTO_INCREMENT,
  `landSize` decimal(10,2) NOT NULL,
  `landStateIn` varchar(45) NOT NULL,
  `landLocation` varchar(50) NOT NULL,
  `landDatePurchased` date NOT NULL,
  PRIMARY KEY (`landID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_land`
--

INSERT INTO `t_land` (`landID`, `landSize`, `landStateIn`, `landLocation`, `landDatePurchased`) VALUES
(33, '10.50', 'Grass', 'A1', '2011-05-14'),
(34, '4.30', 'Growing', 'A2', '2011-05-20'),
(35, '6.80', 'Growing', 'A3', '2011-06-12'),
(36, '5.40', 'Cultivated', 'A4', '2011-11-12'),
(37, '0.60', 'Growing', 'A5', '2012-02-15'),
(38, '11.10', 'Grass', 'B1', '2012-04-12'),
(39, '6.10', 'Grass', 'B2', '2013-03-22'),
(40, '9.80', 'Grass', 'B3', '2013-04-21'),
(41, '4.50', 'Grass', 'B4', '2013-06-12'),
(42, '6.50', 'Grass', 'C1', '2014-04-10'),
(43, '7.20', 'Grass', 'C2', '2015-03-03'),
(44, '0.50', 'Growing', 'D1', '2015-11-20'),
(45, '1.90', 'Growing', 'D2', '2016-12-20'),
(46, '2.40', 'Growing', 'D3', '2017-01-02'),
(47, '5.20', 'Growing', 'D4', '2017-05-05'),
(48, '3.70', 'Cultivated', 'D5', '2018-03-14');

-- --------------------------------------------------------

--
-- Table structure for table `t_landworklog`
--

DROP TABLE IF EXISTS `t_landworklog`;
CREATE TABLE IF NOT EXISTS `t_landworklog` (
  `landworklogID` int(11) NOT NULL AUTO_INCREMENT,
  `personnelID` int(11) NOT NULL,
  `landID` int(11) NOT NULL,
  `equipmentID` int(11) NOT NULL,
  `landworklogWorkType` varchar(45) COLLATE latin1_bin NOT NULL,
  `landworklogDate` date NOT NULL,
  PRIMARY KEY (`landworklogID`),
  KEY `landworklogLandID_idx` (`landID`),
  KEY `landworklogPersonnelID_idx` (`personnelID`),
  KEY `landworklogEquipmentID_idx` (`equipmentID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `t_landworklog`
--

INSERT INTO `t_landworklog` (`landworklogID`, `personnelID`, `landID`, `equipmentID`, `landworklogWorkType`, `landworklogDate`) VALUES
(1, 1, 33, 1, 'Plowing', '2018-03-15'),
(2, 1, 34, 2, 'Plowing', '2018-03-16'),
(3, 2, 35, 3, 'Seeding', '2018-03-17'),
(4, 5, 36, 4, 'Plowing', '2018-03-18'),
(5, 5, 37, 5, 'Seeding', '2018-03-18'),
(6, 5, 38, 5, 'Tilled', '2018-03-19'),
(7, 5, 39, 5, 'Tilled', '2018-03-19'),
(8, 5, 40, 5, 'Tilled', '2018-03-19'),
(9, 5, 41, 5, 'Tilled', '2018-03-19'),
(10, 5, 42, 5, 'Tilled', '2018-03-19'),
(11, 5, 43, 5, 'Tilled', '2018-03-19'),
(12, 5, 44, 5, 'Seeding', '2018-03-19'),
(13, 5, 45, 4, 'Seeding', '2018-03-19'),
(14, 5, 46, 3, 'Seeding', '2018-03-20'),
(15, 5, 47, 2, 'Seeding', '2018-03-20'),
(16, 5, 48, 1, 'Seeding', '2018-03-20');

-- --------------------------------------------------------

--
-- Table structure for table `t_livestock`
--

DROP TABLE IF EXISTS `t_livestock`;
CREATE TABLE IF NOT EXISTS `t_livestock` (
  `livestockID` int(11) NOT NULL AUTO_INCREMENT,
  `livestockAnimal` varchar(50) NOT NULL,
  `livestockBreed` varchar(50) NOT NULL,
  `livestockDateAcquired` date NOT NULL,
  PRIMARY KEY (`livestockID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_livestock`
--

INSERT INTO `t_livestock` (`livestockID`, `livestockAnimal`, `livestockBreed`, `livestockDateAcquired`) VALUES
(1, 'Cow', 'Angus', '2015-04-24'),
(2, 'Cow', 'Jersey', '2015-05-13'),
(3, 'Cow', 'Holstein Friesian', '2015-11-11'),
(4, 'Cow', 'Hereford', '2015-11-15'),
(5, 'Cow', 'Brangus', '2015-12-01'),
(6, 'Cow', 'Simmental', '2016-04-05'),
(7, 'Cow', 'Limousin', '2016-06-04'),
(8, 'Sheep', 'Merino', '2017-01-03'),
(9, 'Sheep', 'Suffolk', '2017-03-21'),
(10, 'Sheep', 'Leicester', '2017-06-24'),
(11, 'Sheep', 'Dorset', '2017-07-28'),
(12, 'Sheep', 'Southdown', '2017-09-14'),
(13, 'Sheep', 'Dorper', '2018-04-21'),
(14, 'Chicken', 'Plymouth Rock', '2018-06-21'),
(15, 'Chicken', 'Leghorn', '2018-06-21'),
(16, 'Chicken', 'Rhode Island Red', '2018-08-24'),
(17, 'Chicken', 'Orpington', '2018-09-13');

-- --------------------------------------------------------

--
-- Table structure for table `t_personnel`
--

DROP TABLE IF EXISTS `t_personnel`;
CREATE TABLE IF NOT EXISTS `t_personnel` (
  `personnelID` int(11) NOT NULL AUTO_INCREMENT,
  `personnelName` varchar(45) NOT NULL,
  `personnelSurname` varchar(45) NOT NULL,
  `personnelDOB` date NOT NULL,
  PRIMARY KEY (`personnelID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COMMENT='	';

--
-- Dumping data for table `t_personnel`
--

INSERT INTO `t_personnel` (`personnelID`, `personnelName`, `personnelSurname`, `personnelDOB`) VALUES
(1, 'Vidis', 'Dalginis', '1982-12-01'),
(2, 'Haroldas', 'Keksinis', '1960-05-14'),
(3, 'Darius', 'Katapultavicius', '1976-11-05'),
(4, 'Jonas', 'Gersderlis', '1981-06-18'),
(5, 'Tomas', 'Gaisrinis', '1986-09-21'),
(6, 'Gertruda', 'Putiene', '1996-05-22'),
(7, 'Danielius', 'Nolsiemkius', '1985-07-12');

-- --------------------------------------------------------

--
-- Table structure for table `t_plantland`
--

DROP TABLE IF EXISTS `t_plantland`;
CREATE TABLE IF NOT EXISTS `t_plantland` (
  `landID` int(11) NOT NULL,
  `cropID` int(11) NOT NULL,
  `plantlandDatePlanted` date DEFAULT NULL,
  KEY `landID_idx` (`landID`),
  KEY `cropID_idx` (`cropID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_plantland`
--

INSERT INTO `t_plantland` (`landID`, `cropID`, `plantlandDatePlanted`) VALUES
(35, 1, '2018-05-21'),
(37, 2, '2018-06-05'),
(44, 3, '2018-06-08'),
(45, 4, '2018-07-04'),
(46, 5, '2018-07-12'),
(47, 6, '2018-07-15');

-- --------------------------------------------------------

--
-- Table structure for table `t_products`
--

DROP TABLE IF EXISTS `t_products`;
CREATE TABLE IF NOT EXISTS `t_products` (
  `ID` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `price` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` enum('0','1') NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_products`
--

INSERT INTO `t_products` (`ID`, `name`, `type`, `price`, `image`, `status`) VALUES
(1, 'Rye Bread', 'Bread', 'Â£1.20', 'ryebread.jpg', '1'),
(2, 'Corn Bread', 'Groceries', 'Â£1.30', 'cornbread.jpg', '1'),
(3, 'Barley', 'Crops', 'Â£0.60/KG', 'barley.jpg', '1'),
(4, 'Sour Roasted Spelt', 'Snacks', 'Â£1.30', 'sourroastedspelt.jpg', '1'),
(5, 'Spelt Cereal With Honey', 'Snacks', 'Â£3.00', 'speltcerealwithhoney.jpg', '1'),
(6, 'Millet', 'Crops', 'Â£0.70/KG', 'millet.jpg', '1'),
(7, 'Oatmeal', 'Groceries', 'Â£1.50', 'oatmeal.jpg', '1'),
(8, 'Oats', 'Crops', 'Â£0.60/KG', 'oats.jpg', '1'),
(9, 'Rape Seed Oil', 'Groceries', 'Â£2.00', 'rapeseedoil.jpg', '1'),
(10, 'Buckwheat', 'Crops', 'Â£0.50/KG', 'buckwheat.jpg', '1'),
(11, 'Home Made Potato Crisps', 'Snacks', 'Â£1.20', 'homemadepotatocrisps.jpg', '1'),
(12, 'Potatoes', 'Vegetables', 'Â£0.30/KG', 'potatoes.jpg', '1'),
(13, 'White Bread', 'Groceries', 'Â£1.00', 'whitebread.jpg', '1'),
(14, 'Home Made Pasta', 'Groceries', 'Â£1.50', 'pasta.jpg', '1'),
(15, 'Flax Seed Oil', 'Groceries', 'Â£3.00', 'flaxseedoil.jpg', '1'),
(16, 'Lentils', 'Crops', 'Â£0.80/KG', 'lentils.jpg', '1'),
(17, 'Carrots', 'Vegetables', 'Â£0.50/KG', 'carrots.jpg', '1'),
(18, 'Cabbages', 'Vegetables', 'Â£0.80/KG', 'cabbage.jpg', '1'),
(19, 'Beef Tomahawk Steak', 'Beef', 'Â£8.40/KG', 'tomahawk.jpg', '1'),
(20, 'Beef Sirloin Steak', 'Beef', 'Â£4.20/KG', 'sirloin.jpg', '1'),
(21, 'Beef Roast Joint', 'Beef', 'Â£6.30/KG', 'beefroastjoint.jpg', '1'),
(22, 'Beef Fillet', 'Beef', 'Â£12.50/KG', 'beeffillet.jpg', '1'),
(23, 'Beef Liver', 'Beef', 'Â£2.00/KG', 'beefliver.jpg', '1'),
(24, 'Beef Ribs', 'Beef', 'Â£4.60/KG', 'beefribs.jpeg', '1'),
(25, 'Calves Liver', 'Beef', 'Â£5.40/KG', 'calveliver.jpg', '1'),
(26, 'Beef Shoulder Roast', 'Beef', 'Â£6.40/KG', 'beefshoulderroast.jpg', '1'),
(27, 'Beef Meat Pie', 'Beef', 'Â£5.00', 'beefmeatpie.jpg', '1'),
(28, 'Lambs Leg', 'Lamb', 'Â£8.40/KG', 'lambleg.jpg', '1'),
(29, 'Lambs Shoulder', 'Lamb', 'Â£9.40/KG', 'lambshoulder.jpg', '1'),
(30, 'Lambs Liver', 'Lamb', 'Â£3.40/KG', 'lambliver.jpg', '1'),
(31, 'Lamb Chop', 'Lamb', 'Â£5.60/KG', 'lambchop.jpg', '1'),
(32, 'Chicken Breast', 'Chicken', 'Â£4.20/KG', 'chickenbreast.jpg', '1'),
(33, 'Chicken Drumsticks', 'Chicken', 'Â£3.10/KG', 'chickendrums.jpg', '1'),
(34, 'Chicken Wings', 'Chicken', 'Â£3.10/KG', 'chickenwings.jpg', '1'),
(35, 'Chicken Liver', 'Chicken', 'Â£2.50/KG', 'chickenliver.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `t_silos`
--

DROP TABLE IF EXISTS `t_silos`;
CREATE TABLE IF NOT EXISTS `t_silos` (
  `siloID` int(11) NOT NULL AUTO_INCREMENT,
  `siloLocation` varchar(45) NOT NULL,
  `siloCapacity` decimal(10,2) NOT NULL,
  `cropID` int(11) NOT NULL,
  `siloAmount` decimal(10,2) NOT NULL,
  `siloDateStored` date NOT NULL,
  PRIMARY KEY (`siloID`),
  KEY `siloCropID_idx` (`cropID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_silos`
--

INSERT INTO `t_silos` (`siloID`, `siloLocation`, `siloCapacity`, `cropID`, `siloAmount`, `siloDateStored`) VALUES
(1, 'S1', '30.00', 6, '20.00', '2018-05-22'),
(2, 'S2', '30.00', 7, '30.00', '2018-06-11'),
(3, 'S3', '50.00', 8, '50.00', '2018-06-24'),
(4, 'S4', '50.00', 1, '43.00', '2018-06-23'),
(5, 'S5', '100.00', 10, '80.00', '2018-07-02');

-- --------------------------------------------------------

--
-- Table structure for table `t_webcontent`
--

DROP TABLE IF EXISTS `t_webcontent`;
CREATE TABLE IF NOT EXISTS `t_webcontent` (
  `webcontentID` int(11) NOT NULL,
  `webcontentWhere` varchar(250) NOT NULL,
  `webcontentContent` varchar(60000) NOT NULL,
  PRIMARY KEY (`webcontentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_webcontent`
--

INSERT INTO `t_webcontent` (`webcontentID`, `webcontentWhere`, `webcontentContent`) VALUES
(0, 'homeMain', ' <h1> Welcome </h1>\r\n\r\n<p>Welcoming message goes here</p>'),
(1, 'homeSpecials', '<h3>Item 1</h3>\r\n<p>x% off</p>\r\n<br>\r\n<h3>Item 2</h3>\r\n<p>x% off</p>'),
(2, 'aboutusMain', '<h1> Welcome To The Farm </h1>\r\n<br>\r\n<p> Insert your text here </p>'),
(3, 'contactMain', '  <h1> Telephone </h1>\r\n<p>Your telephone goes here</p>\r\n<h1> Address </h1>\r\n<p>Insert your address here<p>');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `t_animalproduce`
--
ALTER TABLE `t_animalproduce`
  ADD CONSTRAINT `animalproduceLivestockID` FOREIGN KEY (`livestockID`) REFERENCES `t_livestock` (`livestockID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `t_grassland`
--
ALTER TABLE `t_grassland`
  ADD CONSTRAINT `grasslandLandID` FOREIGN KEY (`landID`) REFERENCES `t_land` (`landID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `grasslandLivestockID` FOREIGN KEY (`livestockID`) REFERENCES `t_livestock` (`livestockID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `t_grownproduce`
--
ALTER TABLE `t_grownproduce`
  ADD CONSTRAINT `grownproduceCropID` FOREIGN KEY (`cropID`) REFERENCES `t_crop` (`cropID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `t_invoice`
--
ALTER TABLE `t_invoice`
  ADD CONSTRAINT `invoiceCustomerID` FOREIGN KEY (`customerID`) REFERENCES `t_customers` (`customerID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `t_invoicegoods`
--
ALTER TABLE `t_invoicegoods`
  ADD CONSTRAINT `invoicegoodsAnimalProduceID` FOREIGN KEY (`animalproduceID`) REFERENCES `t_animalproduce` (`animalproduceID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `invoicegoodsGrownProduceID` FOREIGN KEY (`grownproduceID`) REFERENCES `t_grownproduce` (`grownproduceID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `invoicegoodsInvoiceID` FOREIGN KEY (`invoiceID`) REFERENCES `t_invoice` (`invoiceID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `t_landworklog`
--
ALTER TABLE `t_landworklog`
  ADD CONSTRAINT `landworklogEquipmentID` FOREIGN KEY (`equipmentID`) REFERENCES `t_equipment` (`equipmentID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `landworklogLandID` FOREIGN KEY (`landID`) REFERENCES `t_land` (`landID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `landworklogPersonnelID` FOREIGN KEY (`personnelID`) REFERENCES `t_personnel` (`personnelID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `t_plantland`
--
ALTER TABLE `t_plantland`
  ADD CONSTRAINT `plantCropID` FOREIGN KEY (`cropID`) REFERENCES `t_crop` (`cropID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `plantLandID` FOREIGN KEY (`landID`) REFERENCES `t_land` (`landID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `t_silos`
--
ALTER TABLE `t_silos`
  ADD CONSTRAINT `siloCropID` FOREIGN KEY (`cropID`) REFERENCES `t_crop` (`cropID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
