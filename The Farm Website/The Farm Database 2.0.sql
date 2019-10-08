-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 24, 2019 at 02:32 PM
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
-- Constraints for table `t_grassland`
--
ALTER TABLE `t_grassland`
  ADD CONSTRAINT `grasslandLandID` FOREIGN KEY (`landID`) REFERENCES `t_land` (`landID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `grasslandLivestockID` FOREIGN KEY (`livestockID`) REFERENCES `t_livestock` (`livestockID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `t_plantland`
--
ALTER TABLE `t_plantland`
  ADD CONSTRAINT `plantCropID` FOREIGN KEY (`cropID`) REFERENCES `t_crop` (`cropID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `plantLandID` FOREIGN KEY (`landID`) REFERENCES `t_land` (`landID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
