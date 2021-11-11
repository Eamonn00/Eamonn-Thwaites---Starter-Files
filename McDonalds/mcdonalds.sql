-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2021 at 11:43 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mcdonalds`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `CategoryID` int(2) NOT NULL,
  `Category` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`CategoryID`, `Category`) VALUES
(0, 'Category'),
(1, 'Beef & Pork'),
(2, 'Beverages'),
(3, 'Breakfast'),
(4, 'Chicken & Fish'),
(5, 'Coffee & Tea'),
(6, 'Desserts'),
(7, 'Salads'),
(8, 'Smoothies & Shakes'),
(9, 'Snacks & Sides');

-- --------------------------------------------------------

--
-- Table structure for table `mcdonalds_details`
--

CREATE TABLE `mcdonalds_details` (
  `ID` int(3) NOT NULL,
  `CategoryID` int(1) NOT NULL,
  `Item` varchar(70) NOT NULL,
  `Serving Size` varchar(10) NOT NULL,
  `Calories` int(4) NOT NULL,
  `Total Fat` decimal(4,0) NOT NULL,
  `Total Fat (% Daily Value)` int(3) NOT NULL,
  `Saturated Fat` decimal(4,0) NOT NULL,
  `Saturated Fat (% Daily Value)` int(3) NOT NULL,
  `Cholesterol` int(3) NOT NULL,
  `Cholesterol (% Daily Value)` int(3) NOT NULL,
  `Carbohydrates` int(3) NOT NULL,
  `Carbohydrates (% Daily Value)` int(3) NOT NULL,
  `Dietary Fiber` int(2) NOT NULL,
  `Dietary Fiber (% Daily Value)` int(3) NOT NULL,
  `Sugars` int(3) NOT NULL,
  `Protein` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mcdonalds_details`
--

INSERT INTO `mcdonalds_details` (`ID`, `CategoryID`, `Item`, `Serving Size`, `Calories`, `Total Fat`, `Total Fat (% Daily Value)`, `Saturated Fat`, `Saturated Fat (% Daily Value)`, `Cholesterol`, `Cholesterol (% Daily Value)`, `Carbohydrates`, `Carbohydrates (% Daily Value)`, `Dietary Fiber`, `Dietary Fiber (% Daily Value)`, `Sugars`, `Protein`) VALUES
(1, 0, 'Item', 'Serving Si', 0, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 3, 'Egg White Delight', '135 g', 250, '8', 12, '3', 15, 25, 8, 30, 10, 4, 17, 3, 18),
(3, 3, 'Sausage McMuffin with Egg', '161 g', 450, '28', 43, '10', 52, 285, 95, 30, 10, 4, 17, 2, 21),
(4, 3, 'Sausage McMuffin with Egg Whites', '161 g', 400, '23', 35, '8', 42, 50, 16, 30, 10, 4, 17, 2, 21),
(5, 3, 'Steak & Egg McMuffin', '185 g', 430, '23', 36, '9', 46, 300, 100, 31, 10, 4, 18, 3, 26),
(6, 3, 'Bacon, Egg & Cheese Biscuit (Regular Biscuit)', '150 g', 460, '26', 40, '13', 65, 250, 83, 38, 13, 2, 7, 3, 19),
(7, 3, 'Bacon, Egg & Cheese Biscuit (Large Biscuit)', '164 g', 520, '30', 47, '14', 68, 250, 83, 43, 14, 3, 12, 4, 19),
(8, 3, 'Bacon, Egg & Cheese Biscuit with Egg Whites (Regular Biscuit)', '153 g', 410, '20', 32, '11', 56, 35, 11, 36, 12, 2, 7, 3, 20),
(9, 3, 'Bacon, Egg & Cheese Biscuit with Egg Whites (Large Biscuit)', '167 g', 470, '25', 38, '12', 59, 35, 11, 42, 14, 3, 12, 4, 20),
(10, 3, 'Sausage Biscuit (Regular Biscuit)', '117 g', 430, '27', 42, '12', 62, 30, 10, 34, 11, 2, 6, 2, 11),
(11, 3, 'Sausage Biscuit (Large Biscuit)', '131 g', 480, '31', 48, '13', 65, 30, 10, 39, 13, 3, 11, 3, 11),
(12, 3, 'Sausage Biscuit with Egg (Regular Biscuit)', '163 g', 510, '33', 50, '14', 71, 250, 83, 36, 12, 2, 6, 2, 18),
(13, 3, 'Sausage Biscuit with Egg (Large Biscuit)', '177 g', 570, '37', 57, '15', 74, 250, 83, 42, 14, 3, 11, 3, 18),
(14, 3, 'Sausage Biscuit with Egg Whites (Regular Biscuit)', '167 g', 460, '27', 42, '12', 62, 35, 11, 34, 11, 2, 6, 3, 18),
(15, 3, 'Southern Style Chicken Biscuit (Regular Biscuit)', '143 g', 410, '20', 31, '8', 41, 30, 10, 41, 14, 2, 6, 3, 17),
(16, 3, 'Southern Style Chicken Biscuit (Large Biscuit)', '157 g', 470, '24', 37, '9', 45, 30, 10, 46, 15, 3, 11, 4, 17),
(17, 3, 'Steak & Egg Biscuit (Regular Biscuit)', '201 g', 540, '32', 49, '16', 78, 280, 93, 38, 13, 2, 8, 3, 25),
(18, 3, 'Bacon, Egg & Cheese McGriddles', '174 g', 460, '21', 32, '9', 44, 250, 84, 48, 16, 2, 9, 15, 19),
(19, 3, 'Bacon, Egg & Cheese McGriddles with Egg Whites', '178 g', 400, '15', 24, '7', 34, 35, 11, 47, 16, 2, 9, 16, 20),
(20, 3, 'Sausage McGriddles', '141 g', 420, '22', 34, '8', 40, 35, 11, 44, 15, 2, 8, 15, 11),
(21, 3, 'Sausage, Egg & Cheese McGriddles', '201 g', 550, '31', 48, '12', 61, 265, 89, 48, 16, 2, 9, 15, 20),
(22, 3, 'Sausage, Egg & Cheese McGriddles with Egg Whites', '205 g', 500, '26', 40, '10', 52, 50, 17, 46, 15, 2, 9, 15, 21),
(23, 3, 'Bacon, Egg & Cheese Bagel', '197 g', 620, '31', 48, '11', 56, 275, 92, 57, 19, 3, 11, 7, 30),
(24, 3, 'Bacon, Egg & Cheese Bagel with Egg Whites', '201 g', 570, '25', 39, '9', 45, 60, 20, 55, 18, 3, 12, 8, 30),
(25, 3, 'Steak, Egg & Cheese Bagel', '241 g', 670, '35', 53, '13', 63, 295, 99, 56, 19, 3, 12, 7, 33),
(26, 3, 'Big Breakfast (Regular Biscuit)', '269 g', 740, '48', 73, '17', 87, 555, 185, 51, 17, 3, 12, 3, 28),
(27, 3, 'Big Breakfast with Egg Whites (Regular Biscuit)', '272 g', 640, '37', 57, '14', 69, 35, 12, 50, 17, 3, 12, 3, 26),
(28, 3, 'Big Breakfast with Egg Whites (Large Biscuit)', '286 g', 690, '41', 63, '14', 72, 35, 12, 55, 18, 4, 17, 4, 26),
(29, 3, 'Big Breakfast with Hotcakes (Regular Biscuit)', '420 g', 1090, '56', 87, '19', 96, 575, 192, 111, 37, 6, 23, 17, 36),
(30, 3, 'Big Breakfast with Hotcakes (Large Biscuit)', '434 g', 1150, '60', 93, '20', 100, 575, 192, 116, 39, 7, 28, 17, 36),
(31, 3, 'Big Breakfast with Hotcakes and Egg Whites (Regular Biscuit)', '423 g', 990, '46', 70, '16', 78, 55, 19, 110, 37, 6, 23, 17, 35),
(32, 3, 'Big Breakfast with Hotcakes and Egg Whites (Large Biscuit)', '437 g', 1050, '50', 77, '16', 81, 55, 19, 115, 38, 7, 28, 18, 35),
(33, 3, 'Hotcakes', '151 g', 350, '9', 13, '2', 9, 20, 7, 60, 20, 3, 10, 14, 8),
(34, 3, 'Hotcakes and Sausage', '192 g', 520, '24', 37, '7', 36, 50, 17, 61, 20, 3, 10, 14, 15),
(35, 3, 'Sausage Burrito', '111 g', 300, '16', 25, '7', 33, 115, 38, 26, 9, 1, 5, 2, 12),
(36, 3, 'Hash Brown', '56 g', 150, '9', 14, '2', 6, 0, 0, 15, 5, 2, 6, 0, 1),
(37, 3, 'Cinnamon Melts', '114 g', 460, '19', 30, '9', 43, 15, 5, 66, 22, 3, 11, 32, 6),
(38, 3, 'Fruit & Maple Oatmeal', '251 g', 290, '4', 6, '2', 8, 5, 2, 58, 19, 5, 19, 32, 5),
(39, 1, 'Big Mac', '211 g', 530, '27', 42, '10', 48, 85, 28, 47, 16, 3, 13, 9, 24),
(40, 1, 'Quarter Pounder with Cheese', '202 g', 520, '26', 41, '12', 61, 95, 31, 41, 14, 3, 11, 10, 30),
(41, 1, 'Quarter Pounder with Bacon & Cheese', '227 g', 600, '29', 45, '13', 63, 105, 34, 48, 16, 3, 12, 12, 37),
(42, 1, 'Quarter Pounder with Bacon Habanero Ranch', '235 g', 610, '31', 48, '13', 64, 105, 35, 46, 15, 3, 14, 10, 37),
(43, 1, 'Quarter Pounder Deluxe', '244 g', 540, '27', 42, '11', 54, 85, 28, 45, 15, 3, 13, 9, 29),
(44, 1, 'Double Quarter Pounder with Cheese', '283 g', 750, '43', 66, '19', 96, 160, 53, 42, 14, 3, 11, 10, 48),
(45, 1, 'Hamburger', '98 g', 240, '8', 12, '3', 15, 30, 10, 32, 11, 1, 6, 6, 12),
(46, 1, 'Cheeseburger', '113 g', 290, '11', 18, '5', 27, 45, 15, 33, 11, 2, 7, 7, 15),
(47, 1, 'Double Cheeseburger', '161 g', 430, '21', 32, '10', 52, 90, 30, 35, 12, 2, 8, 7, 24),
(48, 1, 'Bacon Clubhouse Burger', '270 g', 720, '40', 62, '15', 75, 115, 38, 51, 17, 4, 14, 14, 39),
(49, 1, 'McDouble', '147 g', 380, '17', 26, '8', 40, 75, 25, 34, 11, 2, 7, 7, 22),
(50, 1, 'Bacon McDouble', '161 g', 440, '22', 34, '10', 49, 90, 30, 35, 12, 2, 7, 7, 27),
(51, 1, 'Jalape̱o Double', '159 g', 430, '23', 36, '9', 44, 80, 27, 35, 12, 2, 7, 6, 22),
(52, 1, 'McRib', '208 g', 500, '26', 40, '10', 48, 70, 23, 44, 15, 3, 10, 11, 22),
(53, 4, 'Premium Crispy Chicken Classic Sandwich', '213 g', 510, '22', 33, '4', 18, 45, 16, 55, 18, 3, 13, 10, 24),
(54, 4, 'Premium Grilled Chicken Classic Sandwich', '200 g', 350, '9', 13, '2', 9, 65, 22, 42, 14, 3, 13, 8, 28),
(55, 4, 'Premium Crispy Chicken Club Sandwich', '249 g', 670, '33', 51, '9', 44, 85, 29, 58, 19, 3, 14, 11, 36),
(56, 4, 'Premium Grilled Chicken Club Sandwich', '235 g', 510, '20', 31, '7', 36, 105, 35, 44, 15, 3, 13, 9, 40),
(57, 4, 'Premium Crispy Chicken Ranch BLT Sandwich', '230 g', 610, '28', 43, '6', 31, 70, 24, 57, 19, 3, 13, 11, 32),
(58, 4, 'Premium Grilled Chicken Ranch BLT Sandwich', '217 g', 450, '15', 23, '5', 22, 90, 30, 43, 14, 3, 13, 9, 36),
(59, 4, 'Bacon Clubhouse Crispy Chicken Sandwich', '284 g', 750, '38', 59, '10', 51, 90, 31, 65, 22, 4, 15, 16, 36),
(60, 4, 'Bacon Clubhouse Grilled Chicken Sandwich', '270 g', 590, '25', 39, '8', 42, 110, 37, 51, 17, 4, 15, 14, 40),
(61, 4, 'Southern Style Crispy Chicken Sandwich', '160 g', 430, '19', 29, '3', 15, 45, 14, 43, 14, 2, 7, 7, 21),
(62, 4, 'McChicken', '143 g', 360, '16', 25, '3', 15, 35, 11, 40, 13, 2, 7, 5, 14),
(63, 4, 'Bacon Buffalo Ranch McChicken', '161 g', 430, '21', 32, '5', 25, 50, 17, 41, 14, 2, 7, 6, 20),
(64, 4, 'Buffalo Ranch McChicken', '148 g', 360, '16', 25, '3', 16, 35, 11, 40, 13, 2, 7, 5, 14),
(65, 4, 'Premium McWrap Chicken & Bacon (Crispy Chicken)', '316 g', 630, '32', 49, '9', 45, 80, 26, 56, 19, 3, 13, 7, 32),
(66, 4, 'Premium McWrap Chicken & Bacon (Grilled Chicken)', '302 g', 480, '19', 28, '7', 36, 95, 32, 42, 14, 3, 13, 6, 36),
(67, 4, 'Premium McWrap Chicken & Ranch (Crispy Chicken)', '310 g', 610, '31', 47, '8', 40, 65, 21, 56, 19, 3, 14, 8, 27),
(68, 4, 'Premium McWrap Chicken & Ranch (Grilled Chicken)', '297 g', 450, '18', 27, '6', 31, 80, 27, 42, 14, 3, 14, 6, 30),
(69, 4, 'Premium McWrap Southwest Chicken (Crispy Chicken)', '314 g', 670, '33', 51, '8', 40, 60, 21, 68, 23, 5, 19, 12, 27),
(70, 4, 'Premium McWrap Southwest Chicken (Grilled Chicken)', '318 g', 520, '20', 31, '6', 32, 80, 27, 55, 18, 5, 20, 10, 31),
(71, 4, 'Premium McWrap Chicken Sweet Chili (Crispy Chicken)', '304 g', 540, '23', 35, '5', 23, 50, 16, 61, 20, 3, 13, 14, 23),
(72, 4, 'Premium McWrap Chicken Sweet Chili (Grilled Chicken)', '291 g', 380, '10', 15, '3', 14, 65, 22, 47, 16, 3, 13, 12, 27),
(73, 4, 'Chicken McNuggets (4 piece)', '65 g', 190, '12', 18, '2', 10, 25, 9, 12, 4, 1, 2, 0, 9),
(74, 4, 'Chicken McNuggets (6 piece)', '97 g', 280, '18', 27, '3', 15, 40, 13, 18, 6, 1, 4, 0, 13),
(75, 4, 'Chicken McNuggets (20 piece)', '323 g', 940, '59', 91, '10', 50, 135, 44, 59, 20, 3, 12, 0, 44),
(76, 4, 'Chicken McNuggets (40 piece)', '646 g', 1880, '118', 182, '20', 101, 265, 89, 118, 39, 6, 24, 1, 87),
(77, 4, 'Filet-O-Fish', '142 g', 390, '19', 29, '4', 19, 40, 14, 39, 13, 2, 7, 5, 15),
(78, 7, 'Premium Bacon Ranch Salad (without Chicken)', '223 g', 140, '7', 11, '4', 18, 25, 9, 10, 3, 3, 12, 4, 9),
(79, 7, 'Premium Bacon Ranch Salad with Crispy Chicken', '255 g', 380, '21', 33, '6', 29, 70, 23, 22, 7, 2, 10, 5, 25),
(80, 7, 'Premium Bacon Ranch Salad with Grilled Chicken', '241 g', 220, '8', 13, '4', 20, 85, 29, 8, 3, 2, 10, 4, 29),
(81, 7, 'Premium Southwest Salad (without Chicken)', '230 g', 140, '5', 7, '2', 9, 10, 3, 20, 7, 6, 23, 6, 6),
(82, 7, 'Premium Southwest Salad with Crispy Chicken', '348 g', 450, '22', 33, '5', 22, 50, 17, 42, 14, 7, 28, 12, 23),
(83, 7, 'Premium Southwest Salad with Grilled Chicken', '335 g', 290, '8', 13, '3', 13, 70, 23, 28, 9, 7, 28, 10, 27),
(84, 9, 'Chipotle BBQ Snack Wrap (Crispy Chicken)', '130 g', 340, '15', 23, '5', 22, 30, 11, 37, 12, 1, 6, 8, 14),
(85, 9, 'Chipotle BBQ Snack Wrap (Grilled Chicken)', '123 g', 260, '8', 13, '4', 18, 40, 14, 30, 10, 1, 6, 7, 16),
(86, 9, 'Honey Mustard Snack Wrap (Crispy Chicken)', '123 g', 330, '15', 23, '5', 22, 35, 11, 34, 11, 1, 5, 3, 14),
(87, 9, 'Ranch Snack Wrap (Crispy Chicken)', '128 g', 360, '20', 30, '5', 27, 40, 13, 32, 11, 1, 5, 3, 15),
(88, 9, 'Ranch Snack Wrap (Grilled Chicken)', '121 g', 280, '13', 20, '5', 22, 45, 16, 25, 8, 1, 5, 2, 16),
(89, 9, 'Small French Fries', '75 g', 230, '11', 17, '2', 8, 0, 0, 30, 10, 2, 10, 0, 2),
(90, 9, 'Medium French Fries', '111 g', 340, '16', 24, '3', 11, 0, 0, 44, 15, 4, 14, 0, 4),
(91, 9, 'Large French Fries', '168 g', 510, '24', 37, '4', 17, 0, 0, 67, 22, 5, 22, 0, 6),
(92, 9, 'Kids French Fries', '38 g', 110, '5', 8, '1', 4, 0, 0, 15, 5, 1, 5, 0, 1),
(93, 9, 'Side Salad', '87 g', 20, '0', 0, '0', 0, 0, 0, 4, 1, 1, 6, 2, 1),
(94, 9, 'Apple Slices', '34 g', 15, '0', 0, '0', 0, 0, 0, 4, 1, 0, 0, 3, 0),
(95, 9, 'Fruit \'n Yogurt Parfait', '149 g', 150, '2', 3, '1', 5, 5, 2, 30, 10, 1, 3, 23, 4),
(96, 6, 'Baked Apple Pie', '77 g', 250, '13', 19, '7', 35, 0, 0, 32, 11, 4, 15, 13, 2),
(97, 6, 'Chocolate Chip Cookie', '33 g', 160, '8', 12, '4', 19, 10, 3, 21, 7, 1, 3, 15, 2),
(98, 6, 'Oatmeal Raisin Cookie', '33 g', 150, '6', 9, '3', 13, 10, 3, 22, 7, 1, 3, 13, 2),
(99, 6, 'Hot Fudge Sundae', '179 g', 330, '9', 14, '7', 34, 25, 8, 53, 18, 1, 3, 48, 8),
(100, 6, 'Hot Caramel Sundae', '182 g', 340, '8', 12, '5', 24, 30, 10, 60, 20, 0, 0, 43, 7),
(101, 6, 'Strawberry Sundae', '178 g', 280, '6', 10, '4', 20, 25, 8, 49, 16, 0, 0, 45, 6),
(102, 2, 'Coca-Cola Classic (Child)', '355 ml', 100, '0', 0, '0', 0, 0, 0, 28, 9, 0, 0, 28, 0),
(103, 2, 'Diet Coke (Child)', '355 ml', 0, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(104, 2, 'Dr Pepper (Child)', '355 ml', 100, '0', 0, '0', 0, 0, 0, 27, 9, 0, 0, 26, 0),
(105, 2, 'Diet Dr Pepper (Child)', '355 ml', 0, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 1),
(106, 2, 'Sprite (Child)', '355 ml', 100, '0', 0, '0', 0, 0, 0, 27, 9, 0, 0, 27, 0),
(107, 2, 'Minute Maid Orange Juice (Small)', '355 ml', 150, '0', 0, '0', 0, 0, 0, 34, 11, 0, 0, 30, 2),
(108, 5, 'Iced Tea (Child)', '355 ml', 0, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(109, 5, 'Sweet Tea (Child)', '355 ml', 110, '0', 0, '0', 0, 0, 0, 27, 9, 0, 0, 27, 0),
(110, 5, 'Coffee (Small)', '355 ml', 0, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(111, 5, 'Caramel Latte (Small)', '355 ml', 270, '9', 13, '5', 24, 25, 9, 40, 13, 1, 3, 38, 9),
(112, 5, 'Hazelnut Latte (Small)', '355 ml', 270, '9', 13, '5', 24, 25, 9, 40, 13, 1, 3, 38, 9),
(113, 5, 'French Vanilla Latte (Small)', '355 ml', 260, '9', 13, '5', 24, 25, 9, 38, 13, 1, 3, 36, 9),
(114, 5, 'Latte with Sugar Free French Vanilla Syrup (Small)', '355 ml', 210, '9', 13, '5', 24, 25, 9, 24, 8, 1, 4, 12, 9),
(115, 5, 'Nonfat Latte (Small)', '355 ml', 100, '0', 0, '0', 0, 5, 2, 15, 5, 1, 3, 13, 10),
(116, 5, 'Nonfat Caramel Latte (Small)', '355 ml', 200, '0', 0, '0', 0, 5, 2, 41, 14, 1, 3, 39, 10),
(117, 5, 'Nonfat Hazelnut Latte (Small)', '355 ml', 200, '0', 0, '0', 0, 5, 2, 40, 13, 1, 3, 38, 10),
(118, 5, 'Nonfat French Vanilla Latte (Small)', '355 ml', 190, '0', 0, '0', 0, 5, 2, 39, 13, 1, 3, 37, 10),
(119, 5, 'Nonfat Latte with Sugar Free French Vanilla Syrup (Small)', '355 ml', 140, '0', 0, '0', 0, 5, 2, 24, 8, 1, 4, 13, 10),
(120, 5, 'Mocha (Small)', '355 ml', 340, '11', 18, '7', 34, 35, 12, 49, 16, 2, 6, 42, 10),
(121, 2, '1% Low Fat Milk Jug', '236 ml', 100, '3', 4, '2', 8, 10, 3, 12, 4, 0, 0, 12, 8),
(122, 2, 'Fat Free Chocolate Milk Jug', '236 ml', 130, '0', 0, '0', 0, 5, 2, 23, 8, 1, 2, 22, 9),
(123, 5, 'Mocha with Nonfat Milk (Small)', '355 ml', 270, '4', 5, '2', 11, 15, 5, 49, 16, 2, 6, 43, 11),
(124, 5, 'Caramel Mocha (Small)', '355 ml', 320, '11', 17, '7', 33, 35, 12, 45, 15, 1, 3, 40, 10),
(125, 5, 'Nonfat Caramel Mocha (Small)', '355 ml', 250, '4', 5, '2', 10, 15, 5, 45, 15, 1, 3, 41, 10),
(126, 5, 'Hot Chocolate (Small)', '355 ml', 360, '13', 21, '8', 39, 40, 14, 50, 17, 1, 3, 45, 11),
(127, 5, 'Hot Chocolate with Nonfat Milk (Small)', '355 ml', 280, '4', 5, '2', 11, 15, 5, 50, 17, 1, 3, 46, 12),
(128, 5, 'Iced Mocha (Small)', '355 ml', 290, '11', 17, '7', 33, 35, 12, 41, 14, 1, 4, 34, 8),
(129, 5, 'Iced Mocha with Nonfat Milk (Small)', '355 ml', 240, '5', 8, '3', 16, 20, 7, 41, 14, 1, 4, 35, 8),
(130, 5, 'Iced Caramel Mocha (Small)', '355 ml', 280, '11', 17, '7', 33, 35, 12, 38, 13, 0, 0, 33, 8),
(131, 5, 'Iced Nonfat Caramel Mocha (Small)', '355 ml', 230, '5', 8, '3', 16, 20, 7, 38, 13, 0, 0, 33, 8),
(132, 5, 'Frapp̩ Mocha (Small)', '355 ml', 450, '18', 28, '12', 59, 65, 21, 65, 22, 1, 3, 57, 7),
(133, 5, 'Frapp̩ Caramel (Small)', '355 ml', 450, '19', 29, '12', 60, 65, 22, 64, 21, 0, 0, 57, 7),
(134, 5, 'Frapp̩ Chocolate Chip (Small)', '355 ml', 530, '23', 35, '14', 72, 65, 22, 76, 25, 1, 5, 67, 8),
(135, 8, 'Strawberry Banana Smoothie (Small)', '355 ml', 210, '1', 1, '0', 0, 5, 1, 47, 16, 3, 10, 44, 3),
(136, 8, 'Mango Pineapple Smoothie (Small)', '355 ml', 210, '1', 1, '0', 0, 5, 1, 50, 17, 1, 4, 46, 2),
(137, 8, 'Vanilla Shake (Small)', '355 ml', 530, '15', 24, '10', 49, 60, 20, 86, 29, 0, 0, 63, 11),
(138, 8, 'Strawberry Shake (Small)', '355 ml', 550, '16', 25, '10', 52, 60, 21, 90, 30, 0, 0, 79, 12),
(139, 8, 'Chocolate Shake (Small)', '355 ml', 560, '16', 25, '10', 51, 60, 20, 91, 30, 1, 5, 77, 12),
(140, 2, 'Coca-Cola Classic (Small)', '473 ml', 140, '0', 0, '0', 0, 0, 0, 39, 13, 0, 0, 39, 0),
(141, 2, 'Diet Coke (Small)', '473 ml', 0, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(142, 2, 'Dr Pepper (Small)', '473 ml', 140, '0', 0, '0', 0, 0, 0, 37, 12, 0, 0, 35, 0),
(143, 2, 'Diet Dr Pepper (Small)', '473 ml', 0, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 2),
(144, 2, 'Sprite (Small)', '473 ml', 140, '0', 0, '0', 0, 0, 0, 37, 12, 0, 0, 37, 0),
(145, 2, 'Minute Maid Orange Juice (Medium)', '473 ml', 190, '0', 0, '0', 0, 0, 0, 44, 15, 0, 0, 39, 3),
(146, 5, 'Iced Tea (Small)', '473 ml', 0, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(147, 5, 'Coffee (Medium)', '473 ml', 0, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(148, 5, 'Coffee (Large)', '473 ml', 0, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(149, 5, 'Latte (Medium)', '473 ml', 210, '10', 16, '6', 30, 30, 11, 18, 6, 1, 4, 15, 11),
(150, 5, 'Caramel Latte (Medium)', '473 ml', 340, '10', 16, '6', 30, 30, 11, 50, 17, 1, 4, 48, 11),
(151, 5, 'Hazelnut Latte (Medium)', '473 ml', 330, '10', 16, '6', 30, 30, 11, 50, 17, 1, 4, 47, 11),
(152, 5, 'French Vanilla Latte (Medium)', '473 ml', 330, '10', 16, '6', 30, 30, 11, 48, 16, 1, 4, 45, 11),
(153, 5, 'Latte with Sugar Free French Vanilla Syrup (Medium)', '473 ml', 260, '10', 16, '6', 30, 30, 11, 29, 10, 1, 5, 15, 12),
(154, 5, 'Nonfat Latte (Medium)', '473 ml', 130, '0', 0, '0', 0, 5, 2, 19, 6, 1, 4, 16, 12),
(155, 5, 'Nonfat Caramel Latte (Medium)', '473 ml', 250, '0', 0, '0', 0, 5, 2, 51, 17, 1, 4, 48, 12),
(156, 5, 'Nonfat Hazelnut Latte (Medium)', '473 ml', 250, '0', 0, '0', 0, 5, 2, 51, 17, 1, 4, 48, 12),
(157, 5, 'Nonfat French Vanilla Latte (Medium)', '473 ml', 240, '0', 0, '0', 0, 5, 2, 49, 16, 1, 4, 46, 12),
(158, 5, 'Nonfat Latte with Sugar Free French Vanilla Syrup (Medium)', '473 ml', 170, '0', 0, '0', 0, 5, 2, 30, 10, 1, 5, 16, 12),
(159, 5, 'Mocha with Nonfat Milk (Medium)', '473 ml', 330, '4', 6, '2', 11, 15, 5, 60, 20, 2, 8, 53, 13),
(160, 5, 'Caramel Mocha (Medium)', '473 ml', 390, '14', 21, '8', 40, 40, 14, 55, 18, 1, 4, 50, 12),
(161, 5, 'Nonfat Caramel Mocha (Medium)', '473 ml', 310, '4', 5, '2', 11, 15, 5, 56, 19, 1, 4, 51, 13),
(162, 5, 'Hot Chocolate (Medium)', '473 ml', 440, '16', 25, '9', 47, 50, 16, 61, 20, 1, 4, 56, 14),
(163, 5, 'Hot Chocolate with Nonfat Milk (Medium)', '473 ml', 340, '4', 5, '2', 11, 15, 6, 61, 20, 1, 4, 57, 14),
(164, 5, 'Regular Iced Coffee (Small)', '473 ml', 140, '5', 7, '3', 15, 15, 6, 23, 8, 0, 0, 22, 1),
(165, 5, 'Caramel Iced Coffee (Small)', '473 ml', 130, '5', 7, '3', 15, 15, 6, 22, 7, 0, 0, 21, 1),
(166, 5, 'Hazelnut Iced Coffee (Small)', '473 ml', 130, '5', 7, '3', 15, 15, 6, 21, 7, 0, 0, 20, 1),
(167, 5, 'French Vanilla Iced Coffee (Small)', '473 ml', 120, '5', 7, '3', 15, 15, 6, 20, 7, 0, 0, 19, 1),
(168, 5, 'Iced Coffee with Sugar Free French Vanilla Syrup (Small)', '473 ml', 80, '5', 7, '3', 15, 15, 6, 9, 3, 0, 0, 1, 1),
(169, 5, 'Iced Mocha (Medium)', '473 ml', 350, '13', 19, '8', 38, 40, 13, 50, 17, 1, 5, 43, 9),
(170, 5, 'Iced Mocha with Nonfat Milk (Medium)', '473 ml', 290, '5', 8, '4', 17, 20, 7, 50, 17, 1, 5, 43, 10),
(171, 5, 'Iced Nonfat Caramel Mocha (Medium)', '473 ml', 270, '5', 8, '3', 16, 20, 7, 47, 16, 1, 2, 41, 10),
(172, 5, 'Frapp̩ Mocha (Medium)', '473 ml', 550, '22', 34, '14', 71, 75, 25, 80, 27, 1, 4, 71, 9),
(173, 5, 'Frapp̩ Caramel (Medium)', '473 ml', 550, '23', 35, '15', 73, 80, 27, 79, 26, 0, 0, 71, 9),
(174, 5, 'Frapp̩ Chocolate Chip (Medium)', '473 ml', 630, '26', 41, '17', 85, 80, 26, 91, 30, 1, 5, 81, 9),
(175, 8, 'Blueberry Pomegranate Smoothie (Medium)', '473 ml', 260, '1', 1, '0', 0, 5, 1, 62, 21, 4, 15, 54, 3),
(176, 8, 'Strawberry Banana Smoothie (Medium)', '473 ml', 250, '1', 1, '0', 0, 5, 1, 58, 19, 3, 13, 54, 4),
(177, 8, 'Mango Pineapple Smoothie (Medium)', '473 ml', 260, '1', 1, '0', 0, 5, 1, 61, 20, 1, 5, 56, 3),
(178, 8, 'Vanilla Shake (Medium)', '473 ml', 660, '19', 29, '12', 61, 75, 24, 109, 36, 0, 0, 81, 14),
(179, 8, 'Strawberry Shake (Medium)', '473 ml', 690, '20', 30, '13', 63, 75, 25, 114, 38, 0, 0, 100, 15),
(180, 8, 'Chocolate Shake (Medium)', '473 ml', 700, '20', 30, '12', 62, 75, 24, 114, 38, 2, 6, 97, 15),
(181, 8, 'Shamrock Shake (Medium)', '473 ml', 660, '19', 29, '12', 61, 75, 24, 109, 36, 0, 0, 93, 14),
(182, 2, 'Dasani Water Bottle', '500 ml', 0, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(183, 5, 'Caramel Latte (Large)', '591 ml', 430, '14', 21, '8', 39, 40, 14, 62, 21, 1, 6, 59, 15),
(184, 5, 'Hazelnut Latte (Large)', '591 ml', 430, '14', 21, '8', 39, 40, 14, 62, 21, 1, 6, 58, 15),
(185, 5, 'French Vanilla Latte (Large)', '591 ml', 420, '14', 21, '8', 39, 40, 14, 60, 20, 1, 6, 56, 15),
(186, 5, 'Latte with Sugar Free French Vanilla Syrup (Large)', '591 ml', 330, '14', 21, '8', 39, 40, 14, 37, 12, 2, 7, 20, 15),
(187, 5, 'Nonfat Latte (Large)', '591 ml', 170, '1', 1, '0', 0, 10, 3, 25, 8, 1, 6, 21, 16),
(188, 5, 'Nonfat Caramel Latte (Large)', '591 ml', 310, '1', 1, '0', 0, 10, 3, 63, 21, 1, 6, 59, 16),
(189, 5, 'Nonfat Hazelnut Latte (Large)', '591 ml', 310, '1', 1, '0', 0, 10, 3, 63, 21, 1, 6, 59, 16),
(190, 5, 'Nonfat French Vanilla Latte (Large)', '591 ml', 300, '1', 1, '0', 0, 10, 3, 60, 20, 1, 6, 56, 16),
(191, 5, 'Nonfat Latte with Sugar Free French Vanilla Syrup (Large)', '591 ml', 220, '1', 1, '0', 0, 10, 3, 38, 13, 2, 7, 21, 16),
(192, 5, 'Mocha (Large)', '591 ml', 500, '17', 26, '10', 49, 50, 17, 72, 24, 2, 10, 63, 16),
(193, 5, 'Mocha with Nonfat Milk (Large)', '591 ml', 390, '4', 6, '3', 12, 20, 6, 73, 24, 2, 10, 64, 17),
(194, 5, 'Caramel Mocha (Large)', '591 ml', 480, '17', 26, '10', 49, 50, 17, 66, 22, 1, 5, 60, 16),
(195, 5, 'Hot Chocolate (Large)', '591 ml', 540, '20', 31, '12', 58, 60, 20, 73, 24, 1, 5, 68, 17),
(196, 5, 'Hot Chocolate with Nonfat Milk (Large)', '591 ml', 400, '4', 6, '3', 12, 20, 7, 74, 25, 1, 5, 69, 19),
(197, 2, 'Coca-Cola Classic (Medium)', '621 ml', 200, '0', 0, '0', 0, 0, 0, 55, 18, 0, 0, 55, 0),
(198, 2, 'Diet Coke (Medium)', '621 ml', 0, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(199, 2, 'Dr Pepper (Medium)', '621 ml', 190, '0', 0, '0', 0, 0, 0, 53, 18, 0, 0, 51, 0),
(200, 2, 'Diet Dr Pepper (Medium)', '621 ml', 0, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 3),
(201, 2, 'Sprite (Medium)', '621 ml', 200, '0', 0, '0', 0, 0, 0, 54, 18, 0, 0, 54, 0),
(202, 5, 'Iced Tea (Medium)', '621 ml', 0, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(203, 5, 'Sweet Tea (Medium)', '621 ml', 180, '0', 0, '0', 0, 0, 0, 45, 15, 0, 0, 45, 1),
(204, 2, 'Minute Maid Orange Juice (Large)', '651 ml', 280, '0', 0, '0', 0, 0, 0, 65, 22, 0, 0, 58, 4),
(205, 5, 'Regular Iced Coffee (Medium)', '651 ml', 190, '7', 11, '5', 22, 25, 9, 31, 10, 0, 0, 30, 1),
(206, 5, 'Caramel Iced Coffee (Medium)', '651 ml', 180, '7', 11, '5', 22, 25, 9, 29, 10, 0, 0, 28, 1),
(207, 5, 'Hazelnut Iced Coffee (Medium)', '651 ml', 180, '7', 11, '5', 22, 25, 9, 29, 10, 0, 0, 28, 1),
(208, 5, 'Iced Coffee with Sugar Free French Vanilla Syrup (Medium)', '651 ml', 120, '7', 11, '5', 22, 25, 9, 12, 4, 0, 0, 2, 1),
(209, 5, 'Iced Mocha (Large)', '651 ml', 480, '16', 25, '10', 49, 50, 17, 70, 23, 2, 8, 62, 14),
(210, 5, 'Iced Mocha with Nonfat Milk (Large)', '651 ml', 390, '6', 9, '4', 18, 25, 8, 71, 24, 2, 8, 62, 14),
(211, 5, 'Iced Caramel Mocha (Large)', '651 ml', 460, '16', 25, '10', 48, 50, 17, 65, 22, 1, 3, 59, 13),
(212, 5, 'Iced Nonfat Caramel Mocha (Large)', '651 ml', 370, '6', 8, '4', 17, 25, 8, 65, 22, 1, 3, 59, 14),
(213, 5, 'Frapp̩ Mocha (Large)', '651 ml', 670, '26', 41, '17', 85, 90, 30, 98, 33, 1, 4, 88, 11),
(214, 5, 'Frapp̩ Caramel (Large)', '651 ml', 670, '27', 42, '17', 87, 95, 32, 96, 32, 0, 0, 88, 11),
(215, 5, 'Frapp̩ Chocolate Chip (Large)', '651 ml', 760, '31', 48, '20', 101, 95, 32, 111, 37, 1, 5, 99, 12),
(216, 8, 'Blueberry Pomegranate Smoothie (Large)', '651 ml', 340, '1', 2, '1', 3, 5, 2, 79, 26, 5, 19, 70, 4),
(217, 8, 'Strawberry Banana Smoothie (Large)', '651 ml', 330, '1', 2, '1', 3, 5, 2, 74, 25, 4, 16, 70, 5),
(218, 8, 'Mango Pineapple Smoothie (Large)', '651 ml', 340, '1', 2, '1', 3, 5, 2, 78, 26, 2, 6, 72, 4),
(219, 8, 'Vanilla Shake (Large)', '651 ml', 820, '23', 35, '15', 73, 90, 29, 135, 45, 0, 0, 101, 18),
(220, 8, 'Chocolate Shake (Large)', '651 ml', 850, '23', 36, '15', 74, 85, 29, 141, 47, 2, 8, 120, 19),
(221, 8, 'Shamrock Shake (Large)', '651 ml', 820, '23', 35, '15', 73, 90, 29, 135, 45, 0, 0, 115, 18),
(222, 2, 'Coca-Cola Classic (Large)', '887 ml', 280, '0', 0, '0', 0, 0, 0, 76, 25, 0, 0, 76, 0),
(223, 2, 'Diet Coke (Large)', '887 ml', 0, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(224, 2, 'Dr Pepper (Large)', '887 ml', 270, '0', 0, '0', 0, 0, 0, 72, 24, 0, 0, 70, 0),
(225, 2, 'Diet Dr Pepper (Large)', '887 ml', 0, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 4),
(226, 2, 'Sprite (Large)', '887 ml', 280, '0', 0, '0', 0, 0, 0, 74, 25, 0, 0, 74, 0),
(227, 5, 'Iced Tea (Large)', '887 ml', 0, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(228, 5, 'Sweet Tea (Large)', '887 ml', 220, '0', 0, '0', 0, 0, 0, 54, 18, 0, 0, 54, 1),
(229, 5, 'Regular Iced Coffee (Large)', '946 ml', 270, '9', 14, '6', 29, 35, 12, 47, 16, 0, 0, 45, 2),
(230, 5, 'Caramel Iced Coffee (Large)', '946 ml', 260, '9', 14, '6', 29, 35, 12, 43, 14, 0, 0, 42, 2),
(231, 5, 'Hazelnut Iced Coffee (Large)', '946 ml', 250, '9', 14, '6', 29, 35, 12, 43, 14, 0, 0, 41, 2),
(232, 5, 'Iced Coffee with Sugar Free French Vanilla Syrup (Large)', '946 ml', 160, '9', 14, '6', 29, 35, 12, 18, 6, 0, 0, 2, 2),
(233, 8, 'McFlurry with M&M?۪s Candies (Small)', '310 g', 650, '23', 35, '14', 72, 50, 17, 96, 32, 1, 6, 89, 13),
(234, 8, 'McFlurry with M&M?۪s Candies (Medium)', '460 g', 930, '33', 50, '20', 102, 75, 25, 139, 46, 2, 7, 128, 20),
(235, 8, 'McFlurry with M&M?۪s Candies (Snack)', '207 g', 430, '15', 24, '10', 48, 35, 11, 64, 21, 1, 4, 59, 9),
(236, 8, 'McFlurry with Oreo Cookies (Small)', '285 g', 510, '17', 26, '9', 44, 45, 14, 80, 27, 1, 4, 64, 12),
(237, 8, 'McFlurry with Oreo Cookies (Medium)', '381 g', 690, '23', 35, '12', 58, 55, 19, 106, 35, 1, 5, 85, 15),
(238, 8, 'McFlurry with Oreo Cookies (Snack)', '190 g', 340, '11', 17, '6', 29, 30, 9, 53, 18, 1, 2, 43, 8),
(239, 8, 'McFlurry with Reese\'s Peanut Butter Cups (Medium)', '403 g', 810, '32', 50, '15', 76, 60, 20, 114, 38, 2, 9, 103, 21),
(240, 8, 'McFlurry with Reese\'s Peanut Butter Cups (Snack)', '202 g', 410, '16', 25, '8', 38, 30, 10, 57, 19, 1, 5, 51, 10),
(241, 0, 'Item', 'Serving Si', 0, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(242, 0, 'Item', 'Serving Si', 0, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mcdonalds_details`
--
ALTER TABLE `mcdonalds_details`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CategoryID` (`CategoryID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mcdonalds_details`
--
ALTER TABLE `mcdonalds_details`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
