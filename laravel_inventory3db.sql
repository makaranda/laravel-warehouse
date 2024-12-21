-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2024 at 01:34 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_inventory3db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Laptops', 'laptops', '2024-12-10 03:47:12', NULL),
(2, 'Hardware', 'hardware', '2024-12-10 03:47:12', NULL),
(3, 'Smartphones', 'smartphones', '2024-12-10 03:47:12', NULL),
(4, 'Speakers', 'speakers', '2024-12-10 03:47:12', NULL),
(5, 'Software', 'software', '2024-12-10 03:47:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `account_holder` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `photo`, `account_holder`, `account_number`, `bank_name`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Melany Stracke II', 'brandt.reilly@example.com', '(951) 931-6502', '78765 Dwight Prairie Apt. 797\nNew Ruby, NH 01701-2364', NULL, 'Dr. Michale Ryan PhD', '39967296', 'BRI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(2, 'Delpha Bogisich', 'stokes.emely@example.org', '(813) 737-9117', '193 VonRueden Squares\nSantiagobury, MS 91484-6013', NULL, 'Jayne Davis', '95686269', 'BRI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(3, 'Dr. Wilfred Monahan', 'fgrimes@example.com', '1-507-979-0581', '93832 Rashawn Fork Suite 112\nBeiershire, NM 71638-9539', NULL, 'Lela McDermott', '21344528', 'BSI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(4, 'Summer King', 'acartwright@example.com', '+1.701.912.1335', '32443 Marcel Prairie\nNew Kasandra, NM 12676', NULL, 'Valentin Wiza', '50854611', 'Mandiri', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(5, 'Kelli Durgan DDS', 'dorcas.kuvalis@example.com', '(423) 265-9651', '6070 Reichert Road\nHyattstad, DE 56332', NULL, 'Niko Eichmann', '33021036', 'BCA', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(6, 'Araceli Doyle', 'devyn60@example.org', '731.659.6131', '778 Renner Avenue\nJosiahmouth, PA 13875-2027', NULL, 'Keira Greenholt', '82221985', 'BCA', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(7, 'Brisa Jacobson', 'maximillia55@example.net', '920-322-0172', '1071 Karlie Drive\nGoyettefurt, ME 29469-9212', NULL, 'Zelda Langworth', '74871712', 'BRI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(8, 'Miss Carli Gibson', 'karlee10@example.org', '1-251-327-2597', '8412 Benedict Port Apt. 146\nHarveyhaven, WV 97481-3929', NULL, 'Flossie McClure', '83549154', 'BSI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(9, 'Pedro McCullough II', 'adah.murazik@example.net', '1-580-859-8170', '140 Lucious Ferry Apt. 601\nWest Clotilde, RI 54306', NULL, 'Kieran Koss', '32562778', 'Mandiri', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(10, 'Martina Homenick', 'lawson19@example.com', '1-518-781-4830', '866 Boyle Valley Apt. 900\nSouth Jeremyshire, CO 09785-1639', NULL, 'Kyleigh Koepp', '68178528', 'BCA', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(11, 'Conner Zemlak DVM', 'dooley.emiliano@example.net', '208-695-5569', '21431 Barrows Crest\nShaynechester, SD 13525-8721', NULL, 'Prof. Emerald Mann', '82957386', 'BSI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(12, 'Mckenna Quigley', 'andy.bahringer@example.org', '+1 (424) 439-8083', '187 Beatty Corner Apt. 635\nHoegermouth, MI 04662', NULL, 'Katlyn Nikolaus', '36568552', 'BCA', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(13, 'Judge Witting', 'graham97@example.net', '1-848-560-2158', '1772 Crawford Springs Apt. 329\nLake Juwan, NV 01904', NULL, 'Mr. Rod Smitham', '49547710', 'BNI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(14, 'Miss Autumn Walter', 'vschiller@example.com', '651-930-6012', '1914 Stiedemann Locks\nPort Filomenaton, AK 68098', NULL, 'Grayce Schmeler', '82808895', 'BCA', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(15, 'Frieda Larson', 'ferry.reilly@example.org', '+1-801-788-1054', '52739 Loren Spurs\nNorth Rettaland, AZ 74021-1554', NULL, 'Zora Greenholt', '92700812', 'Mandiri', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(16, 'Bianka Monahan', 'qoreilly@example.com', '1-314-285-0887', '3215 Olson Square Apt. 080\nWunschchester, WV 69734', NULL, 'Brent Corkery II', '92455645', 'BNI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(17, 'Prof. Willy Lueilwitz Sr.', 'bechtelar.junius@example.org', '+1 (341) 645-3444', '665 Blick Club Apt. 833\nEast Angelita, GA 77314-1089', NULL, 'Dr. Kara Johnston Sr.', '88682464', 'BCA', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(18, 'Cathy Schowalter', 'chanel.kshlerin@example.org', '+1-713-852-3547', '742 Ervin Stravenue Apt. 832\nYundtfurt, KY 90232-7610', NULL, 'Brandt Doyle', '25396890', 'BSI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(19, 'Blaze Williamson', 'kohara@example.com', '623-641-5683', '8804 Jonathan Vista Suite 954\nWest Ashtyn, IA 64591', NULL, 'Dale Farrell', '47631594', 'BRI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(20, 'Maximus Boyle DDS', 'giovani.kuphal@example.net', '(463) 919-7781', '9845 Keebler Run\nWest Caleighbury, RI 96367-9587', NULL, 'Mrs. Lisa Heathcote', '52800408', 'BCA', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(21, 'Zackery Jacobs', 'drolfson@example.com', '+1.858.212.9325', '381 Adams Valleys Apt. 999\nKemmermouth, CO 29872', NULL, 'Milo Jones DDS', '56976858', 'BNI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(22, 'Lauretta Wunsch', 'hickle.melvina@example.com', '870-479-0890', '503 Mylene Streets\nEast Bettefort, CT 53002-8723', NULL, 'Orlo Reichel PhD', '56466020', 'BNI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(23, 'Shaina Jast', 'oframi@example.net', '+1 (248) 637-5029', '64854 Marjory Walk\nPort Kenneth, WA 42216', NULL, 'Lucy Greenfelder I', '91770876', 'BRI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(24, 'Mr. Norval Wilkinson', 'dach.isabell@example.com', '(408) 941-5060', '589 Maye Lights Suite 904\nWest Hulda, IL 10402', NULL, 'Dr. Francis Pfannerstill', '57789110', 'Mandiri', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(25, 'Santina Boehm', 'tgrimes@example.com', '872-410-9906', '8187 Langworth Court Apt. 471\nWest Bernardoton, SD 24387', NULL, 'Carmela Schiller', '15561719', 'BSI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(26, 'Arely Huels', 'grant.reva@example.org', '(805) 931-5114', '56812 Larson Junction Apt. 645\nRobertastad, MS 76017-5064', NULL, 'Quinton Romaguera', '88939631', 'BCA', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(27, 'Prof. Dora Emmerich V', 'smith.minerva@example.com', '+1 (216) 236-2445', '96541 Yadira Valley\nAllantown, AL 22995', NULL, 'Dr. Luther Nitzsche III', '21388432', 'Mandiri', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(28, 'Ed Metz DDS', 'ondricka.kay@example.com', '762.303.4107', '8493 Fermin Points\nLexusberg, SC 77234', NULL, 'Prof. Jadon Green DDS', '96226129', 'BRI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(29, 'Jaren Stanton', 'matilda77@example.com', '+1-912-815-6082', '390 Tiana Club\nLorinemouth, LA 96260-5841', NULL, 'Sidney Kunde', '81015424', 'Mandiri', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(30, 'Ryleigh Rice', 'kutch.cooper@example.com', '872-774-6856', '201 Bo Key Apt. 228\nMetastad, TX 68991', NULL, 'Reece Turner DDS', '65491999', 'BNI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(31, 'Mrs. Brisa Kulas Jr.', 'nitzsche.libby@example.org', '+1.629.713.9272', '52575 Hudson Tunnel Apt. 502\nDouglastown, AL 61397-7752', NULL, 'Colton Will', '67011126', 'BCA', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(32, 'Margarita Graham', 'ernser.grover@example.org', '+1-559-784-3495', '9367 Marilou Mission Suite 960\nPort Brookshire, ND 47571', NULL, 'Dr. Melvin Zulauf PhD', '91006788', 'BNI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(33, 'Donnell Kuhic', 'gisselle.stamm@example.org', '380.744.2954', '393 Devyn Summit Apt. 757\nSouth Kathrynemouth, VT 27911', NULL, 'Jamil Daugherty Jr.', '66402386', 'BRI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(34, 'Virginia Schuster', 'tlangworth@example.com', '484.208.2088', '91838 Lenora Circles Apt. 294\nNew Christine, IA 77602', NULL, 'Trudie Heidenreich Jr.', '78575100', 'BNI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(35, 'Kasey Towne PhD', 'lela12@example.org', '+1.701.573.2867', '15938 Theresa Rue Suite 950\nJacobifurt, UT 11514', NULL, 'Murphy Robel', '63575671', 'Mandiri', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(36, 'Dr. Richard Dach III', 'mina.moen@example.com', '+1 (765) 260-3873', '373 Wilhelm Path Apt. 262\nCorkeryfurt, NV 78074-3648', NULL, 'Grant Bins', '94623985', 'Mandiri', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(37, 'Viola Nikolaus', 'schoen.mike@example.com', '1-669-848-1857', '673 Padberg Cliffs Apt. 321\nNew Estrella, LA 52739', NULL, 'Arianna Luettgen', '24590166', 'Mandiri', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(38, 'Ambrose Schneider', 'grunolfsdottir@example.com', '+1-667-788-3648', '5660 Conn Ferry\nNew Aidenview, TX 42239', NULL, 'Gaston Hoeger II', '25116458', 'BCA', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(39, 'Rosa Marvin II', 'kautzer.marian@example.org', '385-426-7235', '956 Fidel Harbors\nWatsonstad, WY 98761-9521', NULL, 'Jed Robel', '90861745', 'BNI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(40, 'Jennie Maggio', 'kilback.quinn@example.org', '+1.678.415.3116', '7237 Schaden Course Apt. 970\nNorth Aftonstad, PA 74723', NULL, 'Alfreda Wolf', '97635356', 'BCA', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(41, 'Angelo Mraz', 'dubuque.kristin@example.net', '469-724-3057', '64811 Quitzon Cape\nPort Jaquanberg, ME 63429-1448', NULL, 'Forest Olson', '78580796', 'Mandiri', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(42, 'Prof. Joesph Trantow', 'myrtie92@example.org', '+1.785.834.4259', '53095 Marvin Ramp Apt. 960\nWest Charlotteshire, NH 24124-1522', NULL, 'Prof. Malachi Reichert III', '18512866', 'BNI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(43, 'Annette Beatty III', 'karlie.schamberger@example.com', '(904) 535-8041', '8314 Treutel Run Suite 603\nSouth Isaiasmouth, CT 49713', NULL, 'Dr. Kendall Bins Sr.', '68087441', 'BCA', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(44, 'Marcos Bruen II', 'joannie.pouros@example.org', '+1-601-915-9014', '893 Kirk Extensions Apt. 175\nNew Zellatown, HI 09749', NULL, 'Easton Krajcik', '70165091', 'Mandiri', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(45, 'Louisa Quitzon', 'graham.jada@example.com', '+1-540-494-4088', '9865 Thiel Estates Suite 425\nLake Mollie, KS 24458', NULL, 'Veronica Kuhic', '50632641', 'Mandiri', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(46, 'Jaylin Rutherford', 'ecassin@example.com', '432-217-0388', '405 Kyla Fords Apt. 430\nEbertland, AZ 29717-3640', NULL, 'Enrique Volkman IV', '98125937', 'BNI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(47, 'Lula Huel', 'vaughn61@example.net', '(660) 614-6698', '9058 Spinka Prairie\nLake Gildaberg, ND 91048', NULL, 'Rita Sporer', '37914171', 'BSI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(48, 'Mrs. Marcia Stracke III', 'phudson@example.com', '1-989-281-5483', '8150 Geovanny Stravenue\nPredovicfort, AZ 58670', NULL, 'Maryjane Stokes', '21519663', 'BSI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(49, 'Prof. Mallie Nienow III', 'irma.turcotte@example.com', '+12198229879', '3227 Crist Vista Suite 987\nPort Vada, VT 95274-8106', NULL, 'Lessie Schneider DVM', '83021055', 'BRI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(50, 'Dr. Avery Hyatt IV', 'dwunsch@example.net', '308-976-5315', '1095 Shea Well\nPort Shannachester, CO 41966-4742', NULL, 'Joe Marvin MD', '49107014', 'BSI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(51, 'Tavares Heller', 'hammes.tevin@example.net', '(934) 903-8255', '664 Orn Valleys Apt. 319\nEast Melyssa, KY 08163', NULL, 'Roman Kuphal II', '91571569', 'BRI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(52, 'Mr. Amani Gleichner', 'jacques22@example.org', '+1 (432) 880-7174', '9914 Moen Glen\nNorth Lilyan, PA 67424-4587', NULL, 'Rowan Conroy', '25914658', 'BSI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(53, 'Katrina Stroman II', 'eleannon@example.org', '+19592043205', '743 Jast Motorway\nJohnstonmouth, MA 14209-1217', NULL, 'Holly Eichmann', '45010258', 'BRI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(54, 'Mr. Tyson Howell PhD', 'elda.mills@example.net', '(954) 949-8527', '7981 Jacobson Course\nCaraside, IL 36609-5645', NULL, 'Anissa Stokes', '84426934', 'BNI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(55, 'Bennie Upton', 'hector.green@example.com', '458.431.3889', '6018 Agustina Manors Suite 904\nPort Brockfurt, MO 32440-7604', NULL, 'Aylin Deckow', '97755385', 'BSI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(56, 'Dorothea McGlynn', 'wava.osinski@example.org', '630.487.8320', '952 Kreiger Valleys Apt. 292\nSouth Deshauntown, DE 87538-8767', NULL, 'Ms. Leda Denesik', '18883331', 'Mandiri', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(57, 'Dusty Kub', 'bernhard.addie@example.com', '+1-458-922-7672', '103 Orie Drive Suite 221\nSimview, HI 83310-9708', NULL, 'Carter Weissnat', '61008883', 'Mandiri', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(58, 'Kelly Abshire', 'plarkin@example.org', '(559) 856-8349', '2984 Augustus Oval\nLueberg, UT 83743-7171', NULL, 'Josefina Ernser', '65956939', 'BCA', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(59, 'Dale Rowe', 'willms.brannon@example.net', '+1 (743) 314-4286', '409 Kub Isle\nLake Rosalia, FL 54840-3695', NULL, 'Kevon Hills', '35189007', 'BNI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(60, 'Ian Schneider', 'aryanna.durgan@example.org', '559.465.4225', '668 Lang Islands\nBaronborough, FL 47721', NULL, 'Chance Kessler', '59970687', 'Mandiri', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(61, 'Rosalind Hegmann', 'fred53@example.net', '(360) 968-4596', '28483 Ullrich Glen Apt. 989\nPort Haleighburgh, FL 43603', NULL, 'Leslie Huel', '13806196', 'BSI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(62, 'Abdul Bradtke', 'maurine.cronin@example.com', '1-442-387-6896', '59524 Maverick Fort Suite 064\nGerholdborough, NM 40874-2400', NULL, 'Dr. Austen Schmidt III', '39797083', 'BSI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(63, 'Golden Rolfson V', 'loma.mccullough@example.com', '+1-614-737-1692', '1641 Lakin Landing\nNew Stacy, AL 09992-5298', NULL, 'Flavio Tillman PhD', '70499064', 'BNI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(64, 'Judge Marquardt II', 'amani.monahan@example.com', '820-875-8902', '9969 Marlee Mountain\nLake Ahmad, UT 32559', NULL, 'Henriette Borer', '75196409', 'BSI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(65, 'Prof. Fleta Wolf', 'roob.meaghan@example.net', '+1 (406) 849-9932', '4321 Feeney Street Suite 261\nBettyeport, SC 01284', NULL, 'Ruthe Durgan', '65815366', 'BRI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(66, 'Joyce Conn Sr.', 'laron.huels@example.net', '(425) 625-2079', '5075 Felipe Grove Suite 872\nEmardmouth, OR 26349', NULL, 'Maximo McDermott', '22375526', 'BSI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(67, 'Duane Marvin', 'zkirlin@example.org', '360-210-8321', '95747 Jedidiah Lock Suite 097\nMaceychester, LA 35520', NULL, 'Prof. Antonio Weimann', '41985366', 'BCA', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(68, 'Miss Trisha Kessler', 'spacocha@example.net', '+13856292235', '71087 Mann Harbor Apt. 104\nNew Dewayne, ID 73007-6480', NULL, 'Prof. Scotty Keeling', '28096231', 'BCA', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(69, 'Ethan Klocko', 'arne.dickinson@example.org', '+1-575-755-6147', '56927 Sawayn Throughway\nWest Erica, KS 08633-0203', NULL, 'Lucas Waters Sr.', '75763823', 'BCA', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(70, 'Clementine Lynch', 'ashton.dare@example.net', '463-330-3973', '6755 Nitzsche Glen Suite 472\nPort Kamron, MT 52343', NULL, 'Janie Predovic', '83829906', 'BNI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(71, 'Mia Quitzon Sr.', 'marlin.zulauf@example.net', '520-880-3431', '558 Sydni Extensions Apt. 694\nKeelingfort, AR 81115', NULL, 'Brown Olson', '85071068', 'BSI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(72, 'Kaya Leannon', 'kelsie.rutherford@example.net', '1-870-843-6509', '46814 Bechtelar Junction\nSebastianland, CA 33448', NULL, 'Justine Schuster', '59925285', 'BSI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(73, 'Prof. Leif McCullough', 'crist.tiana@example.com', '+13304951484', '732 Fritsch Unions Apt. 283\nWest Bernhardstad, SC 34113', NULL, 'Sterling Larkin Jr.', '48381214', 'BSI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(74, 'Prof. Michael Koss PhD', 'casey.johnson@example.org', '(662) 544-8565', '4957 Leffler Route Suite 080\nRowefort, OR 76963', NULL, 'Prof. Dannie Hackett II', '34282977', 'BSI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(75, 'Ms. Judy McLaughlin', 'verla.shields@example.com', '+1-283-791-3326', '640 Martine Park Apt. 245\nHarbermouth, NM 52487-3289', NULL, 'Marcelo Hansen', '71367064', 'BSI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(76, 'Cielo Ortiz V', 'wbergnaum@example.com', '1-906-621-5156', '68788 Kameron Shores Apt. 691\nLake Hildegard, ND 89018', NULL, 'Daija Weimann', '89653583', 'BCA', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(77, 'Maiya Rice', 'schulist.otha@example.org', '(534) 883-3733', '168 Fernando Pine Apt. 188\nGisselletown, DC 41160-5957', NULL, 'Miss Eden Bechtelar', '50859912', 'BCA', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(78, 'Ms. Penelope Welch V', 'fgislason@example.com', '539.949.2356', '26174 Stephany Dale Suite 245\nJedbury, SD 64430-0638', NULL, 'Javonte Nolan MD', '30482853', 'Mandiri', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(79, 'Mr. Jalen Stark I', 'gisselle.wilderman@example.net', '+1 (463) 935-3356', '13043 Emmy Hollow\nLake Kathleen, KY 19452-8672', NULL, 'Art Nitzsche', '65201493', 'BNI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(80, 'Hiram Wilderman', 'connor82@example.org', '+1.850.406.7487', '84949 McGlynn Trail Suite 361\nNew Mittietown, MD 08004-0409', NULL, 'Miss Anika Breitenberg III', '99817992', 'Mandiri', '2024-12-10 03:47:12', '2024-12-10 03:47:12');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_30_150318_create_customers_table', 1),
(6, '2023_05_01_111143_create_suppliers_table', 1),
(7, '2023_05_02_114617_create_categories_table', 1),
(8, '2023_05_02_122454_create_units_table', 1),
(9, '2023_05_02_140630_create_products_table', 1),
(10, '2023_05_04_084431_create_orders_table', 1),
(11, '2023_05_04_084646_create_order_details_table', 1),
(12, '2023_05_04_173440_create_shoppingcart_table', 1),
(13, '2023_05_06_142348_create_purchases_table', 1),
(14, '2023_05_06_143104_create_purchase_details_table', 1),
(15, '2023_11_03_140528_create_quotations_table', 1),
(16, '2023_11_03_140529_create_quotation_details_table', 1),
(17, '2023_11_17_183122_create_notifications_table', 1),
(18, '2024_12_21_001015_add_user_type_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `order_status` tinyint(4) NOT NULL COMMENT '0 - Pending / 1 - Complete',
  `total_products` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `vat` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `invoice_no` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `pay` int(11) NOT NULL,
  `due` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_date`, `order_status`, `total_products`, `sub_total`, `vat`, `total`, `invoice_no`, `payment_type`, `pay`, `due`, `created_at`, `updated_at`) VALUES
(1, 1, '1977-12-08 00:49:01', 1, 1, 12511, 15, 62121, 'INV-2522390129', 'cheque', 35361, 10519, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(2, 2, '2000-09-03 04:44:27', 2, 1, 41458, 24, 88059, 'INV-2994016925', 'cash', 77372, 13672, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(3, 3, '1970-05-16 03:50:56', 0, 1, 78913, 15, 80278, 'INV-3877297751', 'cash', 94629, 46253, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(4, 4, '2011-02-23 02:14:55', 0, 10, 15102, 24, 35878, 'INV-6104357426', 'cash', 18721, 65864, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(5, 5, '1970-09-14 10:41:32', 2, 10, 52075, 6, 92577, 'INV-3256758897', 'cash', 65422, 95630, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(6, 6, '1986-10-24 01:44:21', 1, 1, 63535, 24, 57189, 'INV-9118574482', 'due', 74081, 58832, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(7, 7, '2001-04-17 12:23:59', 0, 10, 65397, 15, 66378, 'INV-1586082147', 'cash', 78088, 79759, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(8, 8, '1970-08-24 16:04:43', 2, 5, 96204, 6, 41651, 'INV-9739916221', 'cheque', 14021, 89423, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(9, 9, '2015-12-12 07:33:15', 0, 1, 47824, 6, 92715, 'INV-5031568904', 'cash', 25261, 57477, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(10, 10, '2014-12-31 10:33:00', 2, 15, 48830, 24, 65212, 'INV-7906268175', 'cheque', 50897, 93201, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(11, 11, '1985-03-20 21:51:46', 0, 1, 97610, 6, 75062, 'INV-5762282771', 'cash', 62357, 47615, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(12, 12, '1973-10-01 22:38:41', 0, 5, 64692, 6, 19771, 'INV-7795469016', 'cash', 25742, 42245, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(13, 13, '2005-11-30 11:56:50', 1, 1, 95296, 24, 34124, 'INV-7539471293', 'cash', 50743, 84793, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(14, 14, '1970-12-31 20:36:35', 2, 10, 62917, 24, 28247, 'INV-4834393599', 'cash', 69672, 26073, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(15, 15, '1976-06-09 09:47:57', 2, 5, 37162, 15, 45297, 'INV-8139824794', 'due', 44664, 25163, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(16, 16, '1977-05-19 06:02:16', 2, 15, 79384, 15, 41623, 'INV-3946460068', 'cash', 74531, 65358, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(17, 17, '2001-11-04 17:07:35', 2, 5, 37996, 24, 29952, 'INV-7593030894', 'cheque', 99949, 86833, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(18, 18, '1984-02-21 22:49:55', 1, 1, 84820, 24, 68794, 'INV-5777749555', 'due', 27018, 56478, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(19, 19, '2016-01-04 06:03:50', 0, 10, 91661, 24, 44218, 'INV-1039698591', 'cheque', 58812, 30439, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(20, 20, '1976-12-27 20:05:52', 2, 10, 51397, 24, 85553, 'INV-4052180887', 'cash', 66454, 67640, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(21, 21, '2002-10-19 13:00:51', 0, 5, 43546, 15, 91121, 'INV-3450889257', 'cheque', 53541, 64811, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(22, 22, '2000-01-27 03:41:45', 2, 1, 73215, 24, 18247, 'INV-8663027133', 'cash', 81397, 97454, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(23, 23, '2000-07-10 00:56:28', 1, 1, 48240, 24, 25489, 'INV-2787263131', 'due', 14091, 64804, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(24, 24, '1985-10-11 08:39:36', 0, 15, 27485, 15, 30246, 'INV-4489631053', 'cheque', 81702, 50361, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(25, 25, '2018-02-13 20:05:59', 2, 5, 52807, 6, 64815, 'INV-6915401569', 'due', 65591, 67234, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(26, 26, '2024-11-21 07:54:40', 2, 5, 14552, 24, 46263, 'INV-0123294050', 'cheque', 65046, 79447, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(27, 27, '1978-12-18 06:40:27', 2, 1, 82533, 15, 50329, 'INV-4055662788', 'cheque', 95901, 77057, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(28, 28, '2010-07-31 08:12:17', 0, 15, 88743, 24, 12758, 'INV-9104426477', 'due', 22063, 11550, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(29, 29, '1970-05-22 06:53:27', 1, 15, 58836, 24, 27642, 'INV-8597032906', 'due', 31425, 18221, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(30, 30, '1989-12-06 18:35:45', 1, 1, 46719, 24, 57909, 'INV-2215955757', 'cheque', 87060, 20018, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(31, 31, '2007-05-13 13:55:21', 1, 1, 46106, 6, 52162, 'INV-4076384973', 'due', 12739, 31681, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(32, 32, '1976-10-20 11:46:19', 2, 1, 39075, 6, 35511, 'INV-9735034578', 'cheque', 39501, 29740, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(33, 33, '1993-12-24 03:13:36', 0, 15, 77363, 15, 40050, 'INV-2071441563', 'due', 53305, 24385, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(34, 34, '2021-07-13 10:38:35', 2, 10, 61138, 6, 29048, 'INV-0008630587', 'due', 29065, 56513, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(35, 35, '2009-10-30 20:53:09', 0, 15, 48097, 15, 31616, 'INV-5868593716', 'cash', 91931, 11371, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(36, 36, '2000-04-18 12:42:10', 2, 10, 11835, 15, 21417, 'INV-3282492162', 'cash', 96937, 26252, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(37, 37, '2022-05-12 19:54:39', 2, 5, 91301, 15, 62619, 'INV-9018843744', 'cash', 85952, 81672, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(38, 38, '1971-11-22 02:52:23', 0, 1, 78784, 15, 92606, 'INV-4137277909', 'due', 47994, 91044, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(39, 39, '2005-09-19 12:27:26', 2, 1, 70728, 6, 44442, 'INV-5154586182', 'due', 19053, 39031, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(40, 40, '1981-09-29 22:51:00', 1, 15, 43797, 6, 42445, 'INV-1633310188', 'cash', 70547, 30971, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(41, 41, '2000-06-10 18:05:18', 2, 5, 89112, 24, 12533, 'INV-8657185256', 'cash', 51481, 24703, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(42, 42, '2009-08-20 08:28:50', 0, 15, 36736, 6, 28613, 'INV-6971127400', 'cash', 46962, 19875, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(43, 43, '1973-07-11 15:18:04', 0, 5, 60840, 24, 75110, 'INV-8676492618', 'cheque', 25950, 52354, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(44, 44, '1992-08-11 22:04:22', 0, 15, 52122, 15, 94806, 'INV-4982542813', 'cash', 21202, 13202, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(45, 45, '2004-03-02 12:14:35', 0, 10, 15765, 24, 94214, 'INV-6650863093', 'cheque', 59523, 24860, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(46, 46, '2019-07-17 22:03:50', 1, 10, 75813, 15, 67789, 'INV-3880201300', 'cheque', 16727, 42390, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(47, 47, '1990-01-07 17:00:20', 1, 10, 33485, 24, 25158, 'INV-3724669125', 'cash', 96384, 36182, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(48, 48, '1980-10-02 15:28:28', 0, 10, 28532, 24, 37532, 'INV-5788171471', 'cash', 15434, 67810, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(49, 49, '2011-06-28 06:54:43', 2, 5, 36846, 6, 10944, 'INV-4149510361', 'cheque', 83061, 18731, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(50, 50, '1981-05-27 00:49:29', 0, 1, 24348, 24, 30919, 'INV-2253212596', 'cash', 90078, 40553, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(51, 62, '2024-12-10 00:00:00', 0, 3, 2700, 648, 3348, 'INV-973992', 'HandCash', 4000, -652, '2024-12-10 03:50:59', '2024-12-10 03:50:59');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `unitcost` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `unitcost`, `total`, `created_at`, `updated_at`) VALUES
(1, 51, 2, 2, 900, 1800, '2024-12-10 03:50:59', NULL),
(2, 51, 3, 1, 900, 900, '2024-12-10 03:50:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `buying_price` int(11) NOT NULL COMMENT 'Buying Price',
  `selling_price` int(11) NOT NULL COMMENT 'Selling Price',
  `quantity_alert` int(11) NOT NULL,
  `tax` int(11) DEFAULT NULL,
  `tax_type` tinyint(4) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `unit_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `code`, `quantity`, `buying_price`, `selling_price`, `quantity_alert`, `tax`, `tax_type`, `notes`, `product_image`, `category_id`, `unit_id`, `created_at`, `updated_at`) VALUES
(1, 'iPhone 14 Pro', 'iphone-14-pro', '1', 10, 90000, 140000, 10, 24, 1, NULL, NULL, 3, 3, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(2, 'ASUS Laptop', 'asus-laptop', '2', 10, 90000, 140000, 10, 24, 1, NULL, NULL, 1, 3, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(3, 'Logitech Keyboard', 'logitech-keyboard', '3', 10, 90000, 140000, 10, 24, 1, NULL, NULL, 2, 3, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(4, 'Logitech Speakers', 'logitech-speakers', '4', 10, 90000, 140000, 10, 24, 1, NULL, NULL, 4, 3, '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(5, 'AutoCAD v7.0', 'autocad-v7.0', '5', 10, 90000, 140000, 10, 24, 1, NULL, NULL, 5, 3, '2024-12-10 03:47:12', '2024-12-10 03:47:12');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) NOT NULL,
  `purchase_no` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=Pending, 1=Approved',
  `total_amount` int(11) NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `supplier_id`, `date`, `purchase_no`, `status`, `total_amount`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, '2010-12-17 08:03:49', '2', 0, 15, 1, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(2, 2, '1997-09-03 23:09:38', '4', 0, 1, 2, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(3, 3, '2018-02-14 01:36:48', '2', 0, 75, 3, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(4, 4, '2013-08-12 10:26:32', '3', 0, 71, 4, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(5, 5, '2018-01-10 02:30:42', '4', 1, 46, 5, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(6, 6, '2021-01-19 00:00:58', '4', 0, 19, 6, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(7, 7, '2003-01-03 18:28:12', '2', 0, 57, 7, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(8, 8, '2006-12-08 05:37:43', '2', 0, 39, 8, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(9, 9, '2009-12-23 07:40:13', '5', 1, 62, 9, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(10, 10, '2005-01-31 03:08:24', '3', 0, 39, 10, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(11, 11, '2005-02-03 22:06:07', '3', 1, 56, 11, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(12, 12, '2003-11-08 20:11:21', '2', 1, 1, 12, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(13, 13, '2018-12-15 16:50:02', '1', 1, 40, 13, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(14, 14, '2015-08-14 22:28:41', '4', 1, 8, 14, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(15, 15, '2005-11-23 20:31:14', '4', 0, 15, 15, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(16, 16, '2020-10-12 12:44:33', '4', 0, 37, 16, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(17, 17, '2008-06-30 00:53:54', '1', 1, 19, 17, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(18, 18, '2009-08-05 06:09:50', '1', 0, 38, 18, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(19, 19, '2012-04-20 06:06:15', '5', 1, 61, 19, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(20, 20, '1995-06-03 15:40:18', '1', 1, 99, 20, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(21, 21, '2024-01-02 07:32:40', '3', 0, 50, 21, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(22, 22, '1997-08-05 20:05:36', '4', 0, 11, 22, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(23, 23, '2021-12-25 11:29:42', '5', 1, 6, 23, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(24, 24, '2021-09-07 00:02:39', '5', 0, 19, 24, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(25, 25, '1999-07-10 17:59:37', '4', 0, 11, 25, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(26, 26, '2000-01-26 16:32:20', '2', 1, 22, 26, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(27, 27, '1996-01-26 15:34:31', '1', 0, 28, 27, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(28, 28, '2018-01-14 01:02:21', '3', 0, 48, 28, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(29, 29, '1998-04-01 20:34:11', '1', 0, 33, 29, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(30, 30, '2004-05-08 08:59:22', '2', 1, 91, 30, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(31, 31, '2011-12-18 16:42:00', '5', 0, 70, 31, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(32, 32, '2024-06-18 06:58:06', '2', 0, 38, 32, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(33, 33, '2015-05-22 14:14:06', '2', 1, 76, 33, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(34, 34, '1995-07-22 13:03:10', '1', 1, 91, 34, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(35, 35, '2002-11-06 07:17:00', '1', 1, 55, 35, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(36, 36, '2003-07-13 03:59:44', '5', 0, 42, 36, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(37, 37, '2022-02-19 08:28:29', '4', 0, 26, 37, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(38, 38, '2001-08-05 04:21:56', '5', 0, 95, 38, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(39, 39, '2018-03-11 05:49:39', '3', 0, 78, 39, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(40, 40, '2015-03-19 08:04:18', '3', 0, 72, 40, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(41, 41, '1996-11-04 12:23:21', '5', 0, 11, 41, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(42, 42, '1995-02-12 10:55:47', '2', 0, 66, 42, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(43, 43, '2017-12-06 12:27:50', '2', 0, 15, 43, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(44, 44, '2006-01-09 01:10:13', '3', 1, 14, 44, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(45, 45, '2020-04-07 14:58:06', '3', 0, 37, 45, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(46, 46, '1996-01-29 08:29:55', '5', 0, 75, 46, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(47, 47, '2022-03-19 01:00:33', '5', 0, 38, 47, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(48, 48, '2005-09-03 05:18:43', '5', 1, 84, 48, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(49, 49, '2012-12-28 02:14:45', '4', 1, 93, 49, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(50, 50, '2022-02-23 07:09:47', '2', 0, 22, 50, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(51, 51, '2023-05-16 05:34:30', '5', 1, 16, 51, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(52, 52, '2005-09-11 20:04:07', '2', 1, 97, 52, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(53, 53, '2016-06-29 05:34:19', '2', 0, 84, 53, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(54, 54, '2004-03-06 07:29:02', '2', 0, 85, 54, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(55, 55, '2020-11-19 22:35:49', '2', 0, 34, 55, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(56, 56, '2021-06-09 19:16:47', '1', 1, 7, 56, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(57, 57, '2008-06-26 21:41:30', '2', 0, 59, 57, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(58, 58, '1996-02-01 22:19:26', '3', 0, 90, 58, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(59, 59, '1996-03-20 09:25:59', '3', 1, 81, 59, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(60, 60, '1996-08-24 03:22:56', '4', 1, 89, 60, NULL, '2024-12-10 03:47:17', '2024-12-10 03:47:17');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_details`
--

CREATE TABLE `purchase_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `unitcost` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `reference` varchar(255) NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `customer_name` varchar(255) NOT NULL,
  `tax_percentage` int(11) NOT NULL DEFAULT 0,
  `tax_amount` int(11) NOT NULL DEFAULT 0,
  `discount_percentage` int(11) NOT NULL DEFAULT 0,
  `discount_amount` int(11) NOT NULL DEFAULT 0,
  `shipping_amount` int(11) NOT NULL DEFAULT 0,
  `total_amount` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotations`
--

INSERT INTO `quotations` (`id`, `date`, `reference`, `customer_id`, `customer_name`, `tax_percentage`, `tax_amount`, `discount_percentage`, `discount_amount`, `shipping_amount`, `total_amount`, `status`, `note`, `created_at`, `updated_at`) VALUES
(1, '2024-12-10', 'QT-00001', 1, 'Dr. Melany Stracke II', 0, 833, 0, 0, 0, 4305, 0, NULL, '2024-12-10 04:28:46', '2024-12-10 04:28:46');

-- --------------------------------------------------------

--
-- Table structure for table `quotation_details`
--

CREATE TABLE `quotation_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quotation_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `product_discount_amount` int(11) NOT NULL,
  `product_discount_type` varchar(255) NOT NULL DEFAULT 'fixed',
  `product_tax_amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotation_details`
--

INSERT INTO `quotation_details` (`id`, `quotation_id`, `product_id`, `product_name`, `product_code`, `quantity`, `price`, `unit_price`, `sub_total`, `product_discount_amount`, `product_discount_type`, `product_tax_amount`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'iPhone 14 Pro', '1', 1, 1736, 1400, 1736, 0, 'fixed', 336, '2024-12-10 04:28:46', '2024-12-10 04:28:46'),
(2, 1, 2, 'ASUS Laptop', '2', 1, 1736, 1400, 1736, 0, 'fixed', 336, '2024-12-10 04:28:46', '2024-12-10 04:28:46');

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) NOT NULL,
  `instance` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `shopname` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `account_holder` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `email`, `phone`, `address`, `shopname`, `type`, `photo`, `account_holder`, `account_number`, `bank_name`, `created_at`, `updated_at`) VALUES
(1, 'Rosalyn Bechtelar', 'skyla20@example.net', '+18478483789', '194 Magali Park\nDurganville, ME 66008', 'Ratke Ltd', 'wholesaler', NULL, 'Dr. Mertie Kshlerin', '38145780', 'BSI', '2024-12-10 03:47:12', '2024-12-10 03:47:12'),
(2, 'Keon Predovic', 'aaltenwerth@example.com', '508-582-4992', '966 Antonia Pass Apt. 010\nNew Lincolnside, MI 82121-7112', 'Miller LLC', 'producer', NULL, 'Ocie Will', '93077214', 'Mandiri', '2024-12-10 03:47:13', '2024-12-10 03:47:13'),
(3, 'Lillian Thompson PhD', 'mike50@example.net', '(510) 901-3668', '6847 Towne Point Suite 813\nSouth Jackiestad, NV 41238-9230', 'Olson-Harber', 'wholesaler', NULL, 'Prof. Zetta Murazik III', '22428081', 'Mandiri', '2024-12-10 03:47:13', '2024-12-10 03:47:13'),
(4, 'Lynn Lehner', 'okuneva.kiera@example.org', '+1-440-628-2708', '56548 Eryn Common\nPort Christop, NJ 76970', 'Legros, McCullough and Schmeler', 'wholesaler', NULL, 'Zane Fisher DVM', '15880378', 'BSI', '2024-12-10 03:47:13', '2024-12-10 03:47:13'),
(5, 'Dr. Orval Schumm V', 'sanford.flavie@example.net', '1-385-423-4596', '130 Ferry Summit\nEast Korbin, DE 44222-2803', 'Willms-Emmerich', 'producer', NULL, 'Evan Muller DVM', '66830751', 'BSI', '2024-12-10 03:47:13', '2024-12-10 03:47:13'),
(6, 'Ms. Phyllis Kertzmann II', 'cordia38@example.com', '(484) 438-4741', '6324 Edgardo Keys\nBotsfordchester, PA 57620-6279', 'Von-Torphy', 'producer', NULL, 'Elwyn Weissnat', '68862059', 'BSI', '2024-12-10 03:47:13', '2024-12-10 03:47:13'),
(7, 'Michaela Hansen', 'hollie55@example.net', '+1.704.284.5537', '26889 Bins Ford Apt. 134\nSouth Yadira, IA 07014-7937', 'Padberg-Corkery', 'distributor', NULL, 'Alivia Glover', '24127143', 'BRI', '2024-12-10 03:47:13', '2024-12-10 03:47:13'),
(8, 'Eryn Purdy', 'helen.dicki@example.org', '+1 (762) 621-7169', '20531 Antwon Field\nLake Martinaville, MN 73982', 'Walsh, Moore and Jaskolski', 'distributor', NULL, 'Dr. Zoey Mante', '53349662', 'BRI', '2024-12-10 03:47:13', '2024-12-10 03:47:13'),
(9, 'Dr. Vanessa Reilly', 'dcrooks@example.net', '1-817-277-6946', '6393 Erica Corners\nEast Hilariotown, TN 73334-7634', 'Nolan PLC', 'wholesaler', NULL, 'Jeffrey Hane DDS', '98687331', 'BCA', '2024-12-10 03:47:13', '2024-12-10 03:47:13'),
(10, 'Hollis Flatley DDS', 'grady.rau@example.com', '+1.623.850.5039', '28667 Demario Courts\nLake Ameliatown, MT 62652-3641', 'Hauck, Roberts and Halvorson', 'wholesaler', NULL, 'Ilene Stoltenberg', '23050228', 'BRI', '2024-12-10 03:47:13', '2024-12-10 03:47:13'),
(11, 'Prof. Terrance Hagenes MD', 'dsanford@example.net', '1-352-361-3579', '94067 Winston Gateway\nLake Chet, IL 34580-8291', 'Walker Group', 'distributor', NULL, 'Delbert Hill II', '23159300', 'BSI', '2024-12-10 03:47:13', '2024-12-10 03:47:13'),
(12, 'Jena Schinner', 'kathlyn.beatty@example.com', '+1 (727) 450-2990', '612 Hickle Rapids\nHauckstad, CO 11505', 'Davis-Fritsch', 'distributor', NULL, 'Krystina Lebsack DDS', '98753310', 'Mandiri', '2024-12-10 03:47:13', '2024-12-10 03:47:13'),
(13, 'Jerome Zulauf', 'mandy.nader@example.net', '(678) 739-5909', '56974 Rosario Prairie\nLake Titusville, KY 42949', 'Gislason-Heller', 'wholesaler', NULL, 'Sydnee Rutherford Jr.', '46359096', 'BRI', '2024-12-10 03:47:13', '2024-12-10 03:47:13'),
(14, 'Sheila Konopelski', 'bode.berneice@example.org', '1-614-476-6687', '6497 Pierre Loop Apt. 766\nWest Meghan, NE 84856-1782', 'Barton-Medhurst', 'wholesaler', NULL, 'Lazaro Ortiz V', '37937886', 'BSI', '2024-12-10 03:47:13', '2024-12-10 03:47:13'),
(15, 'Kian Predovic', 'gleason.claudine@example.net', '+1.541.782.2473', '9801 Kemmer Glen Apt. 117\nMarkmouth, MD 75243-2039', 'Haley LLC', 'producer', NULL, 'Gayle Ortiz', '21640248', 'BNI', '2024-12-10 03:47:13', '2024-12-10 03:47:13'),
(16, 'Hector Beier', 'evan44@example.net', '+1-984-926-3704', '516 Cummerata Extension Suite 652\nPort Eloisahaven, SC 05216-1961', 'Heller-Stark', 'producer', NULL, 'Vincent Waelchi', '37039225', 'BNI', '2024-12-10 03:47:14', '2024-12-10 03:47:14'),
(17, 'Mac West', 'coty57@example.net', '620-714-4087', '9608 Lisa Lakes Suite 082\nNorth Carrieshire, TX 03510-9397', 'Thompson, Abbott and Gislason', 'wholesaler', NULL, 'Sabina Farrell', '63157674', 'Mandiri', '2024-12-10 03:47:14', '2024-12-10 03:47:14'),
(18, 'Ana White', 'hahn.eva@example.com', '+1-669-360-7557', '2874 Abbott Club Suite 889\nOpheliashire, MD 88055', 'Metz-Wilderman', 'producer', NULL, 'Prof. Dolores Purdy', '68197835', 'BSI', '2024-12-10 03:47:14', '2024-12-10 03:47:14'),
(19, 'Brandy Watsica', 'alta68@example.net', '678-993-3295', '913 Kris Grove Suite 061\nMorrisberg, NC 20761-4407', 'Kuphal, Beier and Carter', 'wholesaler', NULL, 'Seamus Hodkiewicz', '48816029', 'BRI', '2024-12-10 03:47:14', '2024-12-10 03:47:14'),
(20, 'Natalia Hudson', 'christiana.emard@example.net', '520-408-0041', '6353 Princess Streets\nSouth Dianaville, MI 16177', 'Rutherford PLC', 'wholesaler', NULL, 'Heloise Sipes', '92957816', 'BSI', '2024-12-10 03:47:14', '2024-12-10 03:47:14'),
(21, 'Elyssa Stehr', 'cgrady@example.org', '1-814-340-2049', '9686 Rudy Trail\nSchusterfort, NE 51637-3627', 'Metz, Goyette and Sanford', 'producer', NULL, 'Madisyn Kovacek', '91584173', 'BCA', '2024-12-10 03:47:14', '2024-12-10 03:47:14'),
(22, 'Bell Senger', 'dbotsford@example.com', '(346) 806-0633', '77822 Arvel Forest\nMurphyberg, OK 35295', 'Hoppe, Orn and Kohler', 'producer', NULL, 'Kane Waters', '42867002', 'Mandiri', '2024-12-10 03:47:14', '2024-12-10 03:47:14'),
(23, 'Chauncey Lemke', 'mante.amely@example.net', '(531) 560-0616', '362 Pfeffer Mountains Suite 082\nNorth Larue, MO 27474-6562', 'Shanahan, Donnelly and Gutmann', 'distributor', NULL, 'Angelita Denesik', '66600601', 'Mandiri', '2024-12-10 03:47:14', '2024-12-10 03:47:14'),
(24, 'Caitlyn Waters', 'wdenesik@example.net', '(640) 408-6908', '56728 Okuneva Plaza Apt. 795\nKiehnland, FL 69057', 'Herman-Robel', 'wholesaler', NULL, 'Prof. Adrien Howell', '89229941', 'Mandiri', '2024-12-10 03:47:14', '2024-12-10 03:47:14'),
(25, 'Shaina Crooks', 'mstanton@example.net', '1-541-974-5317', '75712 Cydney Manor Apt. 913\nSouth Nettieport, MD 30383', 'Gusikowski, Ruecker and Stoltenberg', 'distributor', NULL, 'Mr. Jordon Franecki', '19435269', 'BRI', '2024-12-10 03:47:14', '2024-12-10 03:47:14'),
(26, 'Stefanie Boyer', 'manley14@example.org', '+1 (564) 426-6845', '153 Manuela Mountain Suite 565\nLake Tracey, MD 44922-9894', 'Ondricka PLC', 'wholesaler', NULL, 'Mr. Jarrod Collins PhD', '79448674', 'BSI', '2024-12-10 03:47:14', '2024-12-10 03:47:14'),
(27, 'Mr. Fidel Lemke Jr.', 'dwillms@example.org', '309.393.5277', '95924 Yadira Falls Suite 225\nJohnsview, OH 54293-5793', 'Fay, Kerluke and Dicki', 'producer', NULL, 'Faye Considine', '56487978', 'BCA', '2024-12-10 03:47:14', '2024-12-10 03:47:14'),
(28, 'Ms. Jackie Pagac', 'sylvia65@example.net', '918.829.5849', '37007 Jessie Road Apt. 891\nPort Rylan, OK 43591-1537', 'Hoppe Inc', 'producer', NULL, 'Hulda Leannon', '52539578', 'BRI', '2024-12-10 03:47:14', '2024-12-10 03:47:14'),
(29, 'Alisa Schumm', 'angelica12@example.com', '1-501-617-6005', '5428 Hagenes Cliff Suite 247\nPort Jean, OH 83917-6314', 'Reinger-Nader', 'wholesaler', NULL, 'Prof. Matilda Watsica PhD', '12553209', 'BRI', '2024-12-10 03:47:14', '2024-12-10 03:47:14'),
(30, 'Brendan Lemke', 'rogelio63@example.org', '+1-929-565-2545', '5764 Mosciski Lakes Suite 897\nBonitahaven, CT 27577', 'Hammes-Volkman', 'wholesaler', NULL, 'Burnice Herzog', '96458202', 'Mandiri', '2024-12-10 03:47:15', '2024-12-10 03:47:15'),
(31, 'Owen Altenwerth', 'lgreenholt@example.com', '+1-838-927-3281', '362 Antone Expressway\nBrantville, KY 07875', 'Auer LLC', 'wholesaler', NULL, 'Gilda Marvin', '36855653', 'BNI', '2024-12-10 03:47:15', '2024-12-10 03:47:15'),
(32, 'Jazlyn Olson', 'jortiz@example.com', '+1.860.416.8479', '973 Jessyca Extensions\nBayerport, MT 01318', 'Oberbrunner and Sons', 'producer', NULL, 'Mr. Archibald Friesen', '21417505', 'BRI', '2024-12-10 03:47:15', '2024-12-10 03:47:15'),
(33, 'Theo Harris', 'slangosh@example.net', '1-304-327-1377', '22523 Marcel Estate\nWest Aylashire, IL 93089-4846', 'Ruecker, Olson and Ondricka', 'wholesaler', NULL, 'Prof. Arianna Champlin MD', '70697873', 'BNI', '2024-12-10 03:47:15', '2024-12-10 03:47:15'),
(34, 'Alysha Jacobson V', 'ken.nikolaus@example.com', '(641) 406-3828', '5693 Frami Run Apt. 637\nLarsonhaven, DE 73392', 'Hamill PLC', 'distributor', NULL, 'Ludie Eichmann I', '79932432', 'BRI', '2024-12-10 03:47:15', '2024-12-10 03:47:15'),
(35, 'Vallie Hills', 'kadams@example.net', '(781) 986-4429', '796 Jeanette Track Suite 808\nLake Alexis, NC 69048-0814', 'Hoppe, Kling and Von', 'producer', NULL, 'Aidan Leffler', '38540446', 'BCA', '2024-12-10 03:47:15', '2024-12-10 03:47:15'),
(36, 'Roel Rohan DDS', 'sim77@example.org', '612.570.9387', '6288 Greenholt Fork Suite 899\nPort Freda, NM 84437', 'Jaskolski Ltd', 'wholesaler', NULL, 'Ms. Jordane Nienow Sr.', '34881915', 'BSI', '2024-12-10 03:47:15', '2024-12-10 03:47:15'),
(37, 'Santina Adams', 'bernhard.randal@example.com', '1-657-862-5432', '2255 Willis Flat\nWest Ezekiel, WA 81810-1761', 'Stracke-Wisozk', 'producer', NULL, 'Abbey Lehner II', '80714793', 'Mandiri', '2024-12-10 03:47:15', '2024-12-10 03:47:15'),
(38, 'Lincoln Herzog', 'stanton.grover@example.net', '+12143461644', '1526 Douglas Spur Apt. 373\nMarvinhaven, WA 10761-4305', 'Torphy, Parker and Torphy', 'wholesaler', NULL, 'Araceli Medhurst I', '93327926', 'BNI', '2024-12-10 03:47:15', '2024-12-10 03:47:15'),
(39, 'Vernon Hamill', 'keara.abernathy@example.com', '979-644-2626', '5860 Santa Knolls Suite 131\nKuhnmouth, FL 57213-3139', 'Witting, Rippin and Botsford', 'wholesaler', NULL, 'Ruthe Wisozk', '15327252', 'BNI', '2024-12-10 03:47:15', '2024-12-10 03:47:15'),
(40, 'Prof. Margarita Nolan III', 'marlon54@example.com', '+1 (425) 320-7225', '548 Candelario Land Suite 400\nSipesborough, ND 04231', 'Ward PLC', 'distributor', NULL, 'Queen Ernser', '30795047', 'BRI', '2024-12-10 03:47:15', '2024-12-10 03:47:15'),
(41, 'Alaina Sipes V', 'ppfeffer@example.net', '+1-570-587-6844', '25135 White Locks\nThielbury, NJ 49944', 'Prohaska, McClure and Borer', 'producer', NULL, 'Dr. Claude Bednar', '75080391', 'BCA', '2024-12-10 03:47:15', '2024-12-10 03:47:15'),
(42, 'Jamel Kris', 'kyost@example.org', '773.625.5839', '425 Nathanial Parkway\nJacobiton, KS 87375-2474', 'Feil-Rutherford', 'producer', NULL, 'Ms. Ruth Smitham DDS', '98723101', 'BRI', '2024-12-10 03:47:15', '2024-12-10 03:47:15'),
(43, 'Jammie Marquardt DDS', 'yswaniawski@example.net', '+1.734.449.6097', '2076 Mitchell Prairie\nEast Bettye, AL 56858', 'Little-Breitenberg', 'wholesaler', NULL, 'Carlo Runolfsdottir', '33072101', 'Mandiri', '2024-12-10 03:47:15', '2024-12-10 03:47:15'),
(44, 'Leone Pfeffer', 'paucek.noe@example.com', '(775) 794-1459', '91756 Emmerich Burg\nSouth Pearline, NC 46118', 'Lakin and Sons', 'distributor', NULL, 'Caleigh Hauck', '10215642', 'Mandiri', '2024-12-10 03:47:16', '2024-12-10 03:47:16'),
(45, 'Prof. Charles Nicolas', 'yokon@example.org', '+1.520.461.2014', '73838 Smitham Crescent Apt. 351\nEffertzmouth, ID 05778', 'Graham Group', 'wholesaler', NULL, 'Elna Christiansen I', '41978626', 'BNI', '2024-12-10 03:47:16', '2024-12-10 03:47:16'),
(46, 'Dr. Mckenzie Parker DVM', 'eboehm@example.com', '779-734-7964', '3075 Estell Road\nSouth Rachel, KY 50679', 'Yundt-Franecki', 'producer', NULL, 'Mr. Kaley Dickens Sr.', '51989375', 'BSI', '2024-12-10 03:47:16', '2024-12-10 03:47:16'),
(47, 'Evalyn Heaney', 'clovis.turner@example.com', '+1-540-957-1996', '66306 Joe Vista\nPort Zoeystad, CT 69414-6830', 'Hudson, Ledner and Bins', 'distributor', NULL, 'Miss Salma Boyer', '59750391', 'BCA', '2024-12-10 03:47:16', '2024-12-10 03:47:16'),
(48, 'Zackary Schmitt', 'jamaal.bergstrom@example.com', '+19862153074', '839 Katlyn Flat\nLake Lesleyshire, AZ 00485', 'Kilback, Goodwin and Wiza', 'wholesaler', NULL, 'Maximilian Schoen MD', '89281634', 'BCA', '2024-12-10 03:47:16', '2024-12-10 03:47:16'),
(49, 'Fredrick Gutkowski', 'brook64@example.com', '856-799-1080', '614 Annetta Estates Suite 140\nWisokybury, PA 17062-1727', 'Runolfsdottir, Predovic and Jenkins', 'wholesaler', NULL, 'Crystel Daniel', '81345187', 'BNI', '2024-12-10 03:47:16', '2024-12-10 03:47:16'),
(50, 'Miss Breanna Dach DDS', 'murazik.raina@example.org', '+1-832-618-9492', '1543 Denesik Place Suite 582\nHauckshire, AK 37984', 'Cruickshank LLC', 'producer', NULL, 'Garnet Conn', '13239868', 'BNI', '2024-12-10 03:47:16', '2024-12-10 03:47:16'),
(51, 'Mara Weimann', 'ova52@example.org', '725.219.3213', '5466 Bergnaum Vista Suite 917\nWuckertville, AL 78832-8438', 'Zemlak and Sons', 'producer', NULL, 'Prof. Kianna Connelly DDS', '46517691', 'BSI', '2024-12-10 03:47:16', '2024-12-10 03:47:16'),
(52, 'Sammie Lueilwitz DDS', 'wlarson@example.org', '+1-347-933-5711', '37303 Parker Cliffs\nKertzmannstad, NY 35945', 'Durgan-Dickinson', 'producer', NULL, 'Miss Amelia Maggio', '65160553', 'BRI', '2024-12-10 03:47:16', '2024-12-10 03:47:16'),
(53, 'Greyson Friesen', 'leannon.priscilla@example.com', '1-949-482-8778', '14082 Ella Skyway\nEthelshire, NJ 36654', 'Brakus Ltd', 'distributor', NULL, 'Prof. Hazel Batz', '61953760', 'BRI', '2024-12-10 03:47:16', '2024-12-10 03:47:16'),
(54, 'Gloria Cummerata', 'wfarrell@example.org', '1-541-466-0184', '9375 Kennedy Key\nReneestad, IL 92401', 'Hilpert, Breitenberg and Mann', 'producer', NULL, 'Daisha Spinka Jr.', '12436444', 'BCA', '2024-12-10 03:47:16', '2024-12-10 03:47:16'),
(55, 'Berta Jerde', 'qweber@example.net', '+1-520-806-2052', '778 Cletus Crossing Apt. 209\nLake Nikitafurt, NM 25082', 'Goldner, Bosco and Schneider', 'distributor', NULL, 'Mrs. Rosie Ziemann', '65095249', 'BRI', '2024-12-10 03:47:16', '2024-12-10 03:47:16'),
(56, 'Noemie Halvorson', 'wilburn.bailey@example.com', '+1 (830) 587-3897', '705 Schultz Center Suite 649\nEast Estrellatown, MT 64122-3759', 'Wisoky, Sipes and Upton', 'wholesaler', NULL, 'Alyson Fisher', '38034783', 'Mandiri', '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(57, 'Berenice Rutherford', 'champlin.jameson@example.com', '1-715-595-0111', '8678 Damon Manor Suite 242\nNorth Shanechester, MI 79902-8935', 'Roob-Raynor', 'producer', NULL, 'Prof. Brielle Abbott DDS', '98645494', 'BRI', '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(58, 'Edgardo Wilderman', 'weissnat.alverta@example.net', '+19899978529', '41046 Crona Plaza Suite 740\nDonatohaven, TX 22485-2810', 'Turcotte Inc', 'producer', NULL, 'Joannie Wunsch', '81792623', 'BRI', '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(59, 'Dr. Ken Lind Jr.', 'laila.cartwright@example.com', '231-508-6765', '754 Dina Glens Suite 278\nLake Cristobal, TN 58486-1864', 'Bernier, Wuckert and Leffler', 'producer', NULL, 'Emily Cormier', '68381736', 'BRI', '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(60, 'Tyrel Powlowski', 'allene97@example.net', '248.546.6828', '56144 Donald Corner\nTremblayberg, NM 99928', 'Schimmel, Herzog and Zboncak', 'producer', NULL, 'Ian Kiehn', '14727154', 'Mandiri', '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(61, 'Mertie Bailey', 'jleannon@example.org', '630.523.1733', '94099 Blick Streets Suite 463\nKristofferfurt, OK 60538-5843', 'Marvin-Maggio', 'wholesaler', NULL, 'Mr. Benedict Monahan', '76483912', 'BSI', '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(62, 'Matilda Nicolas I', 'okey99@example.net', '534-670-1335', '73844 Vernice Curve Suite 860\nIsadoreport, SD 57733-7337', 'Leuschke Ltd', 'distributor', NULL, 'Prof. Julius Jakubowski', '25311076', 'BSI', '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(63, 'Arnoldo Adams', 'xconnelly@example.org', '+1 (832) 272-8368', '13040 Prosacco Valley\nArmstrongburgh, TN 13332-8321', 'Terry-Koch', 'distributor', NULL, 'Elaina Brekke', '34232555', 'BSI', '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(64, 'Alec Lebsack', 'melisa52@example.net', '1-669-553-5466', '814 Howell Mountain\nHirtheborough, OK 11056', 'Cormier PLC', 'producer', NULL, 'Alysha Zieme', '80167969', 'BNI', '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(65, 'Cecelia Heathcote', 'wisozk.boyd@example.com', '830-862-2136', '18128 Champlin Island\nWest Simoneberg, OR 55218-1392', 'Rowe PLC', 'distributor', NULL, 'Andreanne McCullough', '92239941', 'BCA', '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(66, 'Mr. Hollis Hackett MD', 'sweimann@example.org', '785-440-1301', '8921 Kiel Junctions\nCruickshankbury, SC 32381-3806', 'Buckridge and Sons', 'wholesaler', NULL, 'Devan Jakubowski', '36464568', 'BRI', '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(67, 'Dr. Kimberly Armstrong DDS', 'kovacek.kimberly@example.net', '1-248-549-4639', '98693 Daugherty Passage\nPort Elvashire, MI 54749', 'Spencer-Koelpin', 'wholesaler', NULL, 'Stuart Gleason', '49186558', 'Mandiri', '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(68, 'Jaron Spinka', 'cdavis@example.net', '1-912-603-6132', '8742 Margarita Street Suite 467\nPort Zacheryhaven, HI 65841', 'Kuhn, Beer and Gibson', 'wholesaler', NULL, 'Forrest Braun', '89466500', 'Mandiri', '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(69, 'Lilly Schroeder I', 'roob.micaela@example.org', '1-251-527-6508', '26091 Rolfson Fort Apt. 563\nLionelmouth, HI 87667-1617', 'Cronin, O\'Connell and Hirthe', 'distributor', NULL, 'Prof. Herman Stokes', '35231786', 'Mandiri', '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(70, 'Melvina Dare', 'kfeeney@example.org', '(845) 287-6390', '697 Lockman Viaduct\nSchaeferborough, GA 20728', 'Sporer-Mayer', 'wholesaler', NULL, 'Mr. Thurman Volkman', '59325774', 'BNI', '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(71, 'Ms. Emie Corkery', 'ziemann.myah@example.org', '1-520-379-6806', '696 Witting Parkway Apt. 772\nMarcellusburgh, MT 91539', 'Goyette, Dietrich and Raynor', 'wholesaler', NULL, 'Keely Kertzmann', '53822470', 'Mandiri', '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(72, 'Mr. Ahmed Senger IV', 'khaley@example.com', '727.320.2356', '75474 West Rest Apt. 864\nFranzchester, MD 17825', 'Hoeger-Walsh', 'producer', NULL, 'Edyth Block I', '35313234', 'BNI', '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(73, 'Tatyana Daugherty', 'litzy.spinka@example.com', '(650) 861-9822', '976 Roger Track\nLizziemouth, AZ 95142-8498', 'Prosacco-Cummerata', 'wholesaler', NULL, 'Kaylah Heidenreich', '94746300', 'BNI', '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(74, 'Marianne Blick', 'cecelia62@example.net', '301-817-2795', '31054 Greenholt Crossroad Apt. 562\nDonnellybury, KY 99604-2468', 'Balistreri LLC', 'distributor', NULL, 'Jordy Volkman', '18644516', 'BNI', '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(75, 'Leonora Willms', 'rey99@example.net', '702.934.1626', '71640 Preston Stravenue Apt. 072\nSchultzfort, LA 28059-2218', 'Koss PLC', 'wholesaler', NULL, 'Adrien Corkery', '24755148', 'BNI', '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(76, 'Kiara O\'Reilly', 'angela61@example.org', '+1-251-571-5741', '2887 Dustin Ways\nLake Carolinastad, ND 42557-4115', 'Upton, Runte and Schuster', 'wholesaler', NULL, 'Mr. Keshawn Rau', '14865057', 'BRI', '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(77, 'Prof. Dameon Frami', 'thompson.michale@example.net', '860-587-0305', '3337 Cristina Parkways\nNew Amaya, GA 07800', 'Upton Ltd', 'producer', NULL, 'Dr. Karlie West', '90806016', 'Mandiri', '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(78, 'Mrs. Mittie Kautzer', 'zack66@example.com', '1-940-705-6725', '44765 Nola Forest Suite 561\nJulietmouth, MA 18451', 'Ankunding Ltd', 'producer', NULL, 'Elva Feeney', '69215137', 'BSI', '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(79, 'Heaven Nikolaus', 'lavern08@example.org', '+1-949-384-5897', '7946 Corwin Lights\nPredovicview, MN 84453', 'Goodwin-Jaskolski', 'wholesaler', NULL, 'Alec Hackett III', '79690290', 'BRI', '2024-12-10 03:47:17', '2024-12-10 03:47:17'),
(80, 'Dortha Waelchi I', 'stephany.romaguera@example.com', '(757) 961-6003', '180 Verla Estate\nReingerhaven, CT 11567', 'Littel, Kertzmann and Windler', 'distributor', NULL, 'Sally Graham', '47701131', 'Mandiri', '2024-12-10 03:47:17', '2024-12-10 03:47:17');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `short_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `slug`, `short_code`, `created_at`, `updated_at`) VALUES
(1, 'Meters', 'meters', 'm', NULL, NULL),
(2, 'Centimeters', 'centimeters', 'cm', NULL, NULL),
(3, 'Piece', 'piece', 'pc', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL DEFAULT '5',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `user_type`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `photo`) VALUES
(71, 'admin', 'makara', 'admin@admin.com', '1', '2024-12-10 03:47:18', '$2y$10$oJ.ceW3iRTDTNxx4ELSpfOjxAFq2V3MMohffB7XCnyx0VquRmTQLu', 'L6p6A9ZjZwH6kQne04x0QWGWfbLtfGNaqROPflTHIW7BMPphpPp2w14YlX2A', '2024-12-10 03:47:18', '2024-12-10 03:58:01', '1818045061379300.jpg'),
(72, 'admin', 'anuradha', 'anuradhadh@masholdings.com', '1', '2024-12-10 03:47:18', '$2y$08$wFkuCsWlNlcSPsG/8o.2/uK8A5d/IcWw/zjDh/nHm/wUVe.ds2CoO', 'uybZFt1zsKmChJ6cD0QrW5bpOlsgcaZC6OYYwB6jmHHgpy5ybr3W4ulWz9z7', '2024-12-10 03:47:18', '2024-12-10 03:58:01', '1818045061379300.jpg'),
(73, 'malinda', 'malinda', 'malinda@gmail.com', '4', NULL, '123456789', NULL, '2024-12-20 18:49:48', '2024-12-20 18:49:48', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_phone_unique` (`phone`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_code_unique` (`code`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_unit_id_foreign` (`unit_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_supplier_id_foreign` (`supplier_id`);

--
-- Indexes for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_details_purchase_id_foreign` (`purchase_id`),
  ADD KEY `purchase_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotations_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `quotation_details`
--
ALTER TABLE `quotation_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotation_details_quotation_id_foreign` (`quotation_id`),
  ADD KEY `quotation_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suppliers_email_unique` (`email`),
  ADD UNIQUE KEY `suppliers_phone_unique` (`phone`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `units_name_unique` (`name`),
  ADD UNIQUE KEY `units_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `purchase_details`
--
ALTER TABLE `purchase_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `quotation_details`
--
ALTER TABLE `quotation_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`);

--
-- Constraints for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD CONSTRAINT `purchase_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_details_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quotations`
--
ALTER TABLE `quotations`
  ADD CONSTRAINT `quotations_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `quotation_details`
--
ALTER TABLE `quotation_details`
  ADD CONSTRAINT `quotation_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `quotation_details_quotation_id_foreign` FOREIGN KEY (`quotation_id`) REFERENCES `quotations` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
