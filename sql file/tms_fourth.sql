-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2023 at 04:58 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin@admin.com', 'f925916e2754e5e03f75dd58a5733251', '2017-05-13 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(2, 1, 'anuj@gmail.com', '05/18/2017', '05/31/2017', '\"Lorem ipsum dolor sit amet, cpariatur. Excepteur sint ', '2017-05-13 19:01:10', 2, 'u', '2017-05-13 21:30:23'),
(3, 2, 'anuj@gmail.com', '05/16/2017', '05/31/2017', 'casf esd sg gd gdfh df', '2017-05-13 20:20:01', 2, 'a', '2017-05-13 23:04:40'),
(4, 1, 'anuj@gmail.com', '05/16/2017', '05/31/2017', 'dwef  fwe', '2017-05-13 20:32:54', 2, 'a', '2017-05-13 21:36:39'),
(5, 1, 'anuj@gmail.com', '05/16/2017', '05/31/2017', 'dwef  fwe', '2017-05-13 20:33:17', 2, 'a', '2019-07-20 20:02:42'),
(6, 2, 'anuj@gmail.com', '05/14/2017', '05/24/2017', 'test demo', '2017-05-13 21:18:37', 2, 'a', '2017-05-14 07:58:28'),
(7, 4, 'sarita@gmail.com', '05/26/2017', '05/30/2017', 'est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2017-05-14 05:09:11', 2, 'a', '2017-05-14 07:47:39'),
(8, 2, 'sarita@gmail.com', '05/27/2017', '05/28/2017', 'ubub5u6', '2017-05-14 05:10:24', 2, 'a', '2017-05-14 05:13:03'),
(9, 1, 'demo@test.com', '05/19/2017', '05/21/2017', 'demo test demo test', '2017-05-14 07:45:11', 1, NULL, '2017-05-14 07:47:45'),
(10, 5, 'abc@g.com', '05/22/2017', '05/24/2017', 'test test t test test ttest test ttest test ttest test ttest test ttest test ttest test ttest test ttest test ttest test ttest test ttest test ttest test t', '2017-05-14 07:56:26', 1, NULL, '2017-05-14 07:58:19'),
(11, 4, 'anuj@gmail.com', '2019-07-31', '2019-08-02', 'This is sample text for testing,', '2019-07-20 20:15:35', 0, NULL, NULL),
(12, 1, 'arc4ace7@gmail.com', '2023-04-20', '2023-04-21', 'Seems interesting', '2023-04-19 21:17:53', 2, 'a', '2023-06-26 15:49:27'),
(13, 1, 'xyz@gmail.com', '2023-04-20', '2023-04-21', 'Book this now', '2023-06-26 15:32:35', 1, NULL, '2023-06-26 15:49:31'),
(14, 2, 'xyz@gmail.com', '2023-04-20', '2023-04-21', 'Hello i wish to book this', '2023-06-26 15:52:32', 2, 'a', '2023-06-26 15:53:09');

-- --------------------------------------------------------

--
-- Table structure for table `tblemergency`
--

CREATE TABLE `tblemergency` (
  `id` int(11) NOT NULL,
  `latitude` decimal(9,6) NOT NULL,
  `longitude` decimal(9,6) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'Requested Help'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblemergency`
--

INSERT INTO `tblemergency` (`id`, `latitude`, `longitude`, `email`, `created_at`, `status`) VALUES
(67, '9.261200', '76.783300', 'xyz@gmail.com', '2023-06-23 17:21:42', 'Completed'),
(68, '9.261200', '76.783300', 'xyz@gmail.com', '2023-06-23 17:36:55', 'Completed'),
(69, '9.261200', '76.783300', 'xyz@gmail.com', '2023-06-23 17:54:08', 'Requested Help'),
(70, '9.261200', '76.783300', 'xyz@gmail.com', '2023-06-23 17:54:48', 'Requested Help'),
(71, '9.261200', '76.783300', 'xyz@gmail.com', '2023-06-23 18:04:20', 'Requested Help'),
(72, '9.261200', '76.783300', 'xyz@gmail.com', '2023-06-25 07:07:43', 'Requested Help'),
(73, '9.261200', '76.783300', 'xyz@gmail.com', '2023-06-25 07:07:50', 'Requested Help'),
(74, '9.261200', '76.783300', 'xyz@gmail.com', '2023-06-25 11:48:18', 'Requested Help'),
(75, '9.261200', '76.783300', 'xyz@gmail.com', '2023-06-26 03:50:05', 'Requested Help');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(1, 'anuj', 'anuj.lpu1@gmail.com', '2354235235', 'The standard Lorem Ipsum passage, used since the 1500s', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2017-05-13 22:23:53', 1),
(2, 'efgegter', 'terterte@gmail.com', '3454353453', 'The standard Lorem Ipsum passage', 'nventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat volup', '2017-05-13 22:27:00', 1),
(3, 'fwerwetrwet', 'fwsfhrtre@hdhdhqw.com', '8888888888', 'erwt wet', 'nventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat volup', '2017-05-13 22:28:11', 1),
(4, 'Test', 'test@gm.com', '4747474747', 'Test', 'iidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiid', '2017-05-14 07:54:07', 1),
(5, 'xyz', 'xyz@gmail.com', '132', 'Testing', 'Hello Bhai\r\n', '2023-06-25 12:12:25', NULL),
(6, 'xyz', 'xyz@gmail.com', '132', 'Testing', 'Hello Bhai\r\n', '2023-06-25 12:28:52', NULL),
(7, 'xyz', 'xyz@gmail.com', '132', 'Testing', 'Hello Bhai\r\n', '2023-06-25 12:28:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(4, 'anuj@gmail.com', 'Cancellation', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco ', '2017-05-13 22:03:33', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur', '2017-05-13 23:50:40'),
(5, 'sarita@gmail.com', 'Cancellation', 'tbt 3y 34y4 3y3hgg34t', '2017-05-14 05:12:14', 'sg sd gs g sdgfs ', '2017-05-14 07:52:07'),
(6, 'demo@test.com', 'Refund', 'demo test.com demo test.comdemo test.comdemo test.comdemo test.com', '2017-05-14 07:45:37', NULL, '0000-00-00 00:00:00'),
(7, 'abc@g.com', 'Refund', 'test test ttest test ttest test ttest test ttest test ttest test t', '2017-05-14 07:56:46', 'vetet ert erteryre', '2017-05-14 07:58:43'),
(8, NULL, NULL, NULL, '2023-04-19 21:16:48', NULL, NULL),
(9, 'arc4ace7@gmail.com', 'Booking Issues', 'Issue with booking', '2023-04-19 21:19:10', 'There was no issue with it', '2023-04-19 21:19:38'),
(10, NULL, NULL, NULL, '2023-06-13 01:23:17', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'Terms', '																																								<p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap; font-size: medium;\">Welcome to Wayfarer, a tourism management website. The following terms and conditions govern your use of this website and the services provided by it. By accessing and using the website, you agree to comply with and be bound by the following terms and conditions.</span></p><p align=\"justify\"><b style=\"font-weight:normal;\" id=\"docs-internal-guid-de63aace-7fff-f6e9-3101-502c81200a79\"><br></b></p><ol style=\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\"><li dir=\"ltr\" style=\"list-style-type:decimal;font-size:11pt;font-family:Arial;color:#980000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial;color:#980000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Services Offered</span></p></li></ol><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Wayfarer provides users with tour packages, tour itineraries, hotel booking systems, and collects location data of the users. We do not guarantee the accuracy, completeness, or suitability of the information and services provided on our website. Users must make their own independent assessment before relying on any information or services provided by Wayfarer.</span></p><p align=\"justify\"><b style=\"font-weight:normal;\"><br></b></p><ol style=\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\" start=\"2\"><li dir=\"ltr\" style=\"list-style-type:decimal;font-size:11pt;font-family:Arial;color:#980000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial;color:#980000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">User Accounts</span></p></li></ol><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">To access certain features of the website, you must create an account with us. You agree to provide accurate, complete, and up-to-date information when registering for an account. You are responsible for maintaining the confidentiality of your account credentials, and you agree to notify us immediately if you become aware of any unauthorized access to your account.</span></p><p align=\"justify\"><b style=\"font-weight:normal;\"><br></b></p><ol style=\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\" start=\"3\"><li dir=\"ltr\" style=\"list-style-type:decimal;font-size:11pt;font-family:Arial;color:#980000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial;color:#980000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Bookings</span></p></li></ol><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">All bookings made through Wayfarer are subject to availability and confirmation by the respective service provider. We do not guarantee the availability of any particular tour package or hotel booking, and we are not responsible for any cancellations or changes to your itinerary made by the service provider.</span></p><p align=\"justify\"><b style=\"font-weight:normal;\"><br></b></p><ol style=\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\" start=\"4\"><li dir=\"ltr\" style=\"list-style-type:decimal;font-size:11pt;font-family:Arial;color:#980000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial;color:#980000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Payments</span></p></li></ol><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Payments for tour packages and hotel bookings made through Wayfarer are processed through secure payment gateways. We do not store any credit card information on our website. Users are responsible for any fees or charges associated with their payment method.</span></p><p align=\"justify\"><b style=\"font-weight:normal;\"><br></b></p><ol style=\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\" start=\"5\"><li dir=\"ltr\" style=\"list-style-type:decimal;font-size:11pt;font-family:Arial;color:#980000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial;color:#980000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">User Conduct</span></p></li></ol><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">You agree to use the website and services provided by Wayfarer for lawful purposes only. You agree not to engage in any conduct that may damage, disable, or impair the website or interfere with the use of the website by other users. You agree not to upload or transmit any content that is illegal, offensive, or infringes on the rights of others.</span></p><p align=\"justify\"><b style=\"font-weight:normal;\"><br></b></p><ol style=\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\" start=\"6\"><li dir=\"ltr\" style=\"list-style-type:decimal;font-size:11pt;font-family:Arial;color:#980000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial;color:#980000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Intellectual Property</span></p></li></ol><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">All content on Wayfarer, including text, graphics, logos, images, and software, is the property of Wayfarer or its licensors and is protected by copyright laws. You may not reproduce, distribute, or display any content on our website without our express written permission.</span></p><p align=\"justify\"><b style=\"font-weight:normal;\"><br></b></p><ol style=\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\" start=\"7\"><li dir=\"ltr\" style=\"list-style-type:decimal;font-size:11pt;font-family:Arial;color:#980000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial;color:#980000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Privacy</span></p></li></ol><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Wayfarer collects location data from users to provide location-based services. We are committed to protecting the privacy of our users and have implemented appropriate security measures to safeguard user data. Please review our privacy policy for more information.</span></p><p align=\"justify\"><b style=\"font-weight:normal;\"><br></b></p><ol style=\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\" start=\"8\"><li dir=\"ltr\" style=\"list-style-type:decimal;font-size:11pt;font-family:Arial;color:#980000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial;color:#980000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Limitation of Liability</span></p></li></ol><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Wayfarer is not liable for any direct, indirect, incidental, or consequential damages arising from your use of the website or services provided by Wayfarer. We are not responsible for any losses or damages incurred as a result of any errors or omissions on our website, or as a result of any cancellations or changes made by service providers.</span></p><p align=\"justify\"><b style=\"font-weight:normal;\"><br></b></p><ol style=\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\" start=\"9\"><li dir=\"ltr\" style=\"list-style-type:decimal;font-size:11pt;font-family:Arial;color:#980000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial;color:#980000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Indemnification</span></p></li></ol><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">You agree to indemnify and hold Wayfarer, its affiliates, and its officers, directors, employees, and agents harmless from any and all claims, damages, liabilities, costs, and expenses, including reasonable attorneys\' fees, arising from your use of the website or services provided by Wayfarer.</span></p><p align=\"justify\"><b style=\"font-weight:normal;\"><br></b></p><ol style=\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\" start=\"10\"><li dir=\"ltr\" style=\"list-style-type:decimal;font-size:11pt;font-family:Arial;color:#980000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial;color:#980000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Modifications</span></p></li></ol><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">We reserve the right to modify these terms and conditions at any time. Your continued use of the website after any such modifications will constitute your acceptance of the new terms and conditions.</span></p><p align=\"justify\"><b style=\"font-weight:normal;\"><br></b></p><ol style=\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\" start=\"11\"><li dir=\"ltr\" style=\"list-style-type:decimal;font-size:11pt;font-family:Arial;color:#980000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial;color:#980000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Governing Law</span></p></li></ol><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">These terms and conditions are governed by the laws of the jurisdiction in which Wayfarer operates.</span></p><p align=\"justify\"><br></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">If you have any questions or concerns regarding these terms and conditions, please contact us at </span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">wayfarertours</span><span style=\"background-color: transparent; color: rgb(0, 0, 0); font-family: Arial; font-size: 11pt; white-space: pre-wrap;\">@gmail.com</span></p>\r\n										\r\n										\r\n										\r\n										'),
(2, 'Privacy', '<span id=\"docs-internal-guid-23a08e3b-7fff-5ef9-4b80-f80acd88cd04\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">At Wayfarer, we are committed to protecting the privacy of our users. This privacy policy explains how we collect, use, and safeguard user data. By using our website, you consent to the terms of this privacy policy.</span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">Information Collection</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">We collect the following types of information from our users:</span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">a. Personal Information: We collect personal information, such as your name, email address, and phone number, when you register for an account with us or make a booking through our website.</span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">b. Location Data: We collect location data from your device to provide location-based services, such as tour recommendations and local weather updates.</span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">c. Usage Data: We collect usage data, such as your IP address and browser type, when you use our website.</span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">Information Use</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">We use the information we collect for the following purposes:</span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">a. To provide services: We use your personal information to provide tour packages, tour itineraries, and hotel booking services through our website.</span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">b. To improve our services: We use usage data and location data to improve our website and services.</span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">c. To communicate with users: We use your contact information to send you information about your bookings, updates about our services, and promotional offers.</span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">Information Sharing</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">We do not sell or rent your personal information to third parties. We may share your information with the following parties:</span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">a. Service Providers: We share your information with service providers, such as hotels and tour operators, to fulfill your bookings.</span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">b. Business Partners: We may share your information with our business partners for marketing purposes.</span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">c. Legal Requirements: We may disclose your information in response to a court order, subpoena, or other legal process.</span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">Data Security</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">We have implemented appropriate security measures to protect user data from unauthorized access, disclosure, or alteration. We use industry-standard encryption technologies to secure sensitive information, such as credit card numbers.</span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">Third-Party Links</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">Our website may contain links to third-party websites. We are not responsible for the privacy practices or content of these websites.</span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">Children\'s Privacy</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">Our website is not intended for use by children under the age of 18. We do not knowingly collect personal information from children under the age of 18.</span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">Changes to the Privacy Policy</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">We reserve the right to modify this privacy policy at any time. We will notify users of any material changes to the policy.</span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">If you have any questions or concerns regarding our privacy policy, please contact us at [contact email].</span></p><br></span>'),
(3, 'About', '<div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Welcome to Wayfarer, your one-stop-shop for all your travel needs! At Wayfarer, we believe that travel should be fun, affordable, and accessible to everyone. That\'s why we strive to provide our customers with the best possible travel experience.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Our team of travel experts has years of experience in the tourism industry and is passionate about helping people explore new destinations. We are committed to providing personalized service to each of our customers, ensuring that their travel plans are tailored to their unique preferences and needs.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">At Wayfarer, we offer a wide range of travel services, including tour packages, hotel bookings, and customized travel itineraries. Our tour packages are carefully crafted to provide an immersive experience of the destination, allowing travelers to explore the local culture, history, and natural beauty. Our hotel booking system is user-friendly and provides access to a wide range of accommodation options to suit every budget.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">We understand that travel can be overwhelming, especially when planning a trip to a new destination. That\'s why we provide our customers with a team of dedicated travel consultants who are available around the clock to assist with any travel-related queries.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">At Wayfarer, we are committed to responsible tourism and strive to minimize our impact on the environment and local communities. We work with local partners to promote sustainable tourism practices and support the local economy.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Thank you for choosing Wayfarer for your travel needs. We look forward to helping you plan your next adventure!</span></div>'),
(11, 'Contact', '																				<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Email: wayfarertours@gmail.com</span><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Ph No:&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">+91 73060 94430</span></div>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2023 at 04:51 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tmsfirst`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Spain', 'General', 'Barcelona', 30000, 'Air Conditioning ,Balcony / Terrace,Cable / Satellite / Pay TV available,Ceiling Fan,Hairdryer', 'Day 1:\r\n\r\nArrival in Barcelona and transfer to your hotel\r\nVisit to the famous Park Güell, designed by Antoni Gaudí\r\nWalking tour of the Gothic Quarter, including the Barcelona Cathedral and Plaça del Rei\r\nEnjoy traditional Spanish tapas for dinner at a local restaurant\r\nDay 2:\r\n\r\nGuided tour of La Sagrada Familia, Gaudí\'s unfinished masterpiece\r\nVisit to Casa Batlló, another of Gaudí\'s famous buildings\r\nStroll down La Rambla, a famous pedestrian boulevard lined with shops and cafes\r\nDinner at a local restaurant in the trendy El Raval neighborhood\r\nDay 3:\r\n\r\nDay trip to Montserrat, a mountain range and monastery located just outside of Barcelona\r\nGuided tour of the Montserrat Monastery and Basilica\r\nFree time to explore the mountain range and enjoy the stunning views\r\nReturn to Barcelona in the evening\r\nDay 4:\r\n\r\nVisit to the Picasso Museum, showcasing the work of one of Spain\'s most famous artists\r\nFree time to explore the trendy Born neighborhood and its boutiques and cafes\r\nTransfer to the airport for departure\r\nPackage Inclusions:\r\n\r\n3 nights\' accommodation in a centrally located hotel\r\nDaily breakfast at the hotel\r\nAll tours and activities as mentioned in the itinerary\r\nTransportation for all tours and activities\r\nLocal English-speaking guide for all tours\r\nAll taxes and fees\r\nPackage Exclusions:\r\n\r\nAirfare to and from Barcelona\r\nTravel insurance\r\nMeals and drinks not mentioned in the itinerary\r\nPersonal expenses and gratuities\r\nNote: This package can be customized to meet your specific needs and interests. Contact us for more information.', 'spain.jpg', '2017-05-13 14:23:44', '2023-04-20 05:52:39'),
(2, 'Parisian Delights', 'Couple', 'Paris, France', 40000, 'Duration: 5 days, 4 nights', 'Day 1:\r\n\r\nArrival in Paris and transfer to your hotel\r\nA stroll through the charming Marais neighborhood, known for its picturesque streets and boutiques\r\nEnjoy a delicious French dinner at a local restaurant\r\nDay 2:\r\n\r\nGuided tour of the iconic Eiffel Tower, with stunning views of the city from the top\r\nA visit to the impressive Notre-Dame Cathedral, one of the most famous examples of Gothic architecture in the world\r\nA leisurely boat ride along the Seine River, with views of many of Paris\' most famous landmarks\r\nDinner at a classic Parisian brasserie\r\nDay 3:\r\n\r\nTour of the Louvre Museum, one of the largest and most famous art museums in the world\r\nFree time to explore the chic Saint-Germain-des-Prés neighborhood, known for its fashion boutiques and charming cafes\r\nA visit to the Montmartre neighborhood, home to the famous Basilica of the Sacré-Cœur and picturesque streets\r\nDinner at a trendy Parisian bistro\r\nDay 4:\r\n\r\nA day trip to Versailles, the famous palace of the French kings and queens\r\nGuided tour of the palace and gardens\r\nA visit to the Trianon estate, including the Grand Trianon and Petit Trianon palaces\r\nDinner at a traditional French restaurant\r\nDay 5:\r\n\r\nA visit to the charming Montparnasse neighborhood, known for its artist studios and cafes\r\nTransfer to the airport for departure\r\nPackage Inclusions:\r\n\r\n4 nights\' accommodation in a centrally located hotel\r\nDaily breakfast at the hotel\r\nAll tours and activities as mentioned in the itinerary\r\nTransportation for all tours and activities\r\nLocal English-speaking guide for all tours\r\nAll taxes and fees\r\nPackage Exclusions:\r\n\r\nAirfare to and from Paris\r\nTravel insurance\r\nMeals and drinks not mentioned in the itinerary\r\nPersonal expenses and gratuities\r\nNote: This package can be customized to meet your specific needs and interests. Contact us for more information.', 'france.jpg', '2017-05-13 15:24:26', '2023-04-20 05:54:53'),
(3, 'Discover England', 'Family', 'England, UK ', 100000, 'Duration: 7 days, 6 nights', 'Day 1:\r\n\r\nArrival in London and transfer to your hotel\r\nWalking tour of central London, including Buckingham Palace, Trafalgar Square, and Big Ben\r\nTraditional English dinner at a local pub\r\nDay 2:\r\n\r\nA visit to the iconic Tower of London, home to the Crown Jewels and a fascinating history\r\nA stroll through the charming Notting Hill neighborhood, known for its colorful houses and trendy boutiques\r\nDinner at a modern British restaurant\r\nDay 3:\r\n\r\nGuided tour of the world-famous British Museum, home to a vast collection of artifacts from around the world\r\nA visit to the bustling Covent Garden, with its street performers and trendy shops\r\nDinner at a traditional fish and chips shop\r\nDay 4:\r\n\r\nDay trip to Stonehenge, the mysterious and ancient monument in the English countryside\r\nA visit to the historic city of Bath, known for its Roman Baths and Georgian architecture\r\nDinner at a classic English pub in Bath\r\nDay 5:\r\n\r\nA scenic drive through the Cotswolds, with its rolling hills and picturesque villages\r\nA visit to the charming town of Stratford-upon-Avon, birthplace of William Shakespeare\r\nDinner at a cozy restaurant in Stratford\r\nDay 6:\r\n\r\nA visit to the stunning Blenheim Palace, birthplace of Winston Churchill and a UNESCO World Heritage Site\r\nA stroll through the charming town of Oxford, known for its prestigious university and beautiful architecture\r\nDinner at a stylish restaurant in Oxford\r\nDay 7:\r\n\r\nTransfer to the airport for departure\r\nPackage Inclusions:\r\n\r\n6 nights\' accommodation in centrally located hotels\r\nDaily breakfast at the hotels\r\nAll tours and activities as mentioned in the itinerary\r\nTransportation for all tours and activities\r\nLocal English-speaking guide for all tours\r\nAll taxes and fees\r\nPackage Exclusions:\r\n\r\nAirfare to and from England\r\nTravel insurance\r\nMeals and drinks not mentioned in the itinerary\r\nPersonal expenses and gratuities\r\nNote: This package can be customized to meet your specific needs and interests. Contact us for more information.', 'england.jpg', '2017-05-13 16:00:58', '2023-04-20 05:56:52'),
(4, 'Discover Japan', 'Familty and Couple', 'Japan', 15000, 'Duration: 10 days, 9 nights', 'Day 1:\r\n\r\nArrival in Tokyo and transfer to your hotel\r\nWalking tour of the lively Shibuya neighborhood, known for its trendy shops and famous pedestrian crossing\r\nDinner at a local izakaya, a traditional Japanese tavern\r\nDay 2:\r\n\r\nGuided tour of the historic Senso-ji Temple in the Asakusa neighborhood\r\nA visit to the famous Tsukiji Fish Market, one of the largest fish markets in the world\r\nDinner at a modern Japanese restaurant\r\nDay 3:\r\n\r\nDay trip to Mount Fuji, the iconic and sacred mountain of Japan\r\nA visit to the charming town of Hakone, known for its hot springs and scenic views\r\nDinner at a traditional Japanese ryokan, a type of inn with tatami-matted rooms and communal hot springs\r\nDay 4:\r\n\r\nBullet train ride to Kyoto, the cultural heart of Japan\r\nWalking tour of the historic Gion district, known for its geisha houses and charming streets\r\nDinner at a local restaurant serving traditional Kyoto cuisine\r\nDay 5:\r\n\r\nGuided tour of the stunning Kinkaku-ji Temple, also known as the Golden Pavilion\r\nA visit to the tranquil Arashiyama Bamboo Grove, with its towering bamboo stalks\r\nDinner at a stylish restaurant in Kyoto\r\nDay 6:\r\n\r\nDay trip to Nara, the ancient capital of Japan\r\nGuided tour of the Todai-ji Temple, home to the world\'s largest bronze statue of Buddha\r\nA visit to the friendly deer in Nara Park\r\nDinner at a local restaurant in Nara\r\nDay 7:\r\n\r\nBullet train ride to Hiroshima, known for its poignant history and delicious food\r\nGuided tour of the Hiroshima Peace Memorial Park and Museum\r\nDinner at a local restaurant serving Hiroshima-style okonomiyaki, a savory pancake filled with various ingredients\r\nDay 8:\r\n\r\nA visit to the stunning Miyajima Island, home to the iconic Torii gate and the Itsukushima Shrine\r\nA hike to the top of Mount Misen for breathtaking views\r\nDinner at a local restaurant on Miyajima Island\r\nDay 9:\r\n\r\nBullet train ride back to Tokyo\r\nFree time to explore the vibrant Shinjuku neighborhood, known for its nightlife and entertainment\r\nFarewell dinner at a stylish restaurant in Tokyo\r\nDay 10:\r\n\r\nTransfer to the airport for departure\r\nPackage Inclusions:\r\n\r\n9 nights\' accommodation in centrally located hotels and a traditional Japanese ryokan\r\nDaily breakfast at the hotels\r\nAll tours and activities as mentioned in the itinerary\r\nTransportation for all tours and activities, including bullet train rides\r\nLocal English-speaking guide for all tours\r\nAll taxes and fees\r\nPackage Exclusions:\r\n\r\nAirfare to and from Japan\r\nTravel insurance\r\nMeals and drinks not mentioned in the itinerary\r\nPersonal expenses and gratuities\r\nNote: This package can be customized to meet your specific needs and interests. Contact us for more information.', 'japan.jpg', '2017-05-13 22:39:37', '2023-04-20 05:59:07'),
(5, 'Korean Delight', 'Vacation', 'Korea', 20000, 'Duration: 8 days, 7 nights', 'Day 1:\r\n\r\nArrival in Seoul and transfer to your hotel\r\nWalking tour of the trendy Gangnam neighborhood, known for its shopping and nightlife\r\nDinner at a local restaurant serving Korean barbecue\r\nDay 2:\r\n\r\nGuided tour of Gyeongbokgung Palace, the main royal palace of the Joseon Dynasty\r\nA visit to the National Museum of Korea, featuring Korean cultural artifacts\r\nDinner at a local restaurant serving traditional Korean cuisine\r\nDay 3:\r\n\r\nDay trip to the historic city of Gyeongju, known as the \"Museum Without Walls\"\r\nGuided tour of the UNESCO World Heritage Site of Bulguksa Temple\r\nA visit to the Royal Tomb Complex of the Silla Dynasty\r\nDinner at a local restaurant in Gyeongju\r\nDay 4:\r\n\r\nTransfer to the scenic Jeju Island, known for its natural beauty and UNESCO World Heritage Sites\r\nA visit to the Manjanggul Cave, a lava tube cave system\r\nDinner at a local restaurant serving fresh seafood\r\nDay 5:\r\n\r\nGuided tour of the Jeju Folk Village Museum, showcasing traditional Jeju Island life\r\nA visit to the Seongsan Ilchulbong Peak, a UNESCO World Heritage Site\r\nDinner at a local restaurant in Jeju\r\nDay 6:\r\n\r\nReturn to Seoul and visit to the Namsan Tower, offering panoramic views of the city\r\nShopping at the famous Myeong-dong shopping district\r\nDinner at a local restaurant serving Korean fusion cuisine\r\nDay 7:\r\n\r\nGuided tour of the DMZ (Demilitarized Zone) between North and South Korea, one of the most heavily fortified borders in the world\r\nA visit to the Joint Security Area, where negotiations between North and South Korea take place\r\nFarewell dinner at a local restaurant serving Korean cuisine\r\nDay 8:\r\n\r\nTransfer to the airport for departure\r\nPackage Inclusions:\r\n\r\n7 nights\' accommodation in centrally located hotels\r\nDaily breakfast at the hotels\r\nAll tours and activities as mentioned in the itinerary\r\nTransportation for all tours and activities, including domestic flights\r\nLocal English-speaking guide for all tours\r\nAll taxes and fees\r\nPackage Exclusions:\r\n\r\nAirfare to and from Korea\r\nTravel insurance\r\nMeals and drinks not mentioned in the itinerary\r\nPersonal expenses and gratuities\r\nNote: This package can be customized to meet your specific needs and interests. Contact us for more information.', 'korea.jpg', '2017-05-13 22:42:10', '2023-04-20 06:00:32'),
(6, 'Singapore Explorer', 'Family', 'Singapore', 25000, 'Duration: 5 days, 4 nights Free wifi, pickup and drop etc', 'Day 1:\r\n\r\nArrival in Singapore and transfer to your hotel\r\nEvening visit to Gardens by the Bay, a stunning garden featuring iconic Supertrees and Flower Dome\r\nDinner at a local restaurant serving Singaporean cuisine\r\nDay 2:\r\n\r\nGuided tour of the historic district of Chinatown, including visits to the Buddha Tooth Relic Temple and Sri Mariamman Temple\r\nA visit to the famous Merlion Park, featuring the iconic statue of the mythical creature\r\nDinner at a local restaurant serving Singaporean street food\r\nDay 3:\r\n\r\nVisit to Sentosa Island, a popular island resort with attractions such as Universal Studios and S.E.A. Aquarium\r\nA visit to the iconic Marina Bay Sands, featuring an observation deck with panoramic views of the city skyline\r\nDinner at a local restaurant serving fusion cuisine\r\nDay 4:\r\n\r\nGuided tour of the futuristic Gardens by the Bay, including a visit to the OCBC Skyway for a bird\'s eye view of the gardens\r\nShopping at the famous Orchard Road, known for its high-end boutiques and shopping centers\r\nDinner at a local restaurant serving Singaporean cuisine\r\nDay 5:\r\n\r\nTransfer to the airport for departure\r\nPackage Inclusions:\r\n\r\n4 nights\' accommodation in centrally located hotels\r\nDaily breakfast at the hotels\r\nAll tours and activities as mentioned in the itinerary\r\nTransportation for all tours and activities\r\nLocal English-speaking guide for all tours\r\nAll taxes and fees\r\nPackage Exclusions:\r\n\r\nAirfare to and from Singapore\r\nTravel insurance\r\nMeals and drinks not mentioned in the itinerary\r\nPersonal expenses and gratuities\r\nNote: This package can be customized to meet your specific needs and interests. Contact us for more information.', 'singapore.jpg', '2017-05-14 08:01:08', '2023-04-20 06:02:11'),
(7, 'Dubai Dreams', 'Vacation', 'Dubai', 100000, 'Free wifi, completely free, pickup and drop from airport', 'Day 1:\r\n\r\nArrival in Dubai and transfer to your hotel\r\nEvening visit to the iconic Burj Khalifa, the world\'s tallest building, for panoramic views of the city\r\nDinner at a local restaurant serving Middle Eastern cuisine\r\nDay 2:\r\n\r\nGuided tour of the historic district of Old Dubai, including visits to the Dubai Museum, Bastakiya Quarter, and the Gold and Spice Souks\r\nA visit to the Dubai Creek, with a ride on an Abra water taxi\r\nDinner at a local restaurant serving traditional Emirati cuisine\r\nDay 3:\r\n\r\nVisit to the Palm Jumeirah, an artificial island featuring luxury hotels and residences\r\nA visit to the Atlantis, The Palm, a stunning hotel with an aquarium and waterpark\r\nDinner at a local restaurant serving international cuisine\r\nDay 4:\r\n\r\nDesert safari experience, including dune bashing, camel riding, and a traditional Bedouin-style dinner under the stars\r\nVisit to the Dubai Miracle Garden, the world\'s largest flower garden\r\nDinner at a local restaurant serving Middle Eastern cuisine\r\nDay 5:\r\n\r\nGuided tour of the Dubai Mall, one of the largest shopping centers in the world, with over 1,200 stores\r\nVisit to the Dubai Fountain, a spectacular water and light show set to music\r\nDinner at a local restaurant serving international cuisine\r\nDay 6:\r\n\r\nTransfer to the airport for departure\r\nPackage Inclusions:\r\n\r\n5 nights\' accommodation in centrally located hotels\r\nDaily breakfast at the hotels\r\nAll tours and activities as mentioned in the itinerary\r\nTransportation for all tours and activities\r\nLocal English-speaking guide for all tours\r\nAll taxes and fees\r\nPackage Exclusions:\r\n\r\nAirfare to and from Dubai\r\nTravel insurance\r\nMeals and drinks not mentioned in the itinerary\r\nPersonal expenses and gratuities\r\nNote: This package can be customized to meet your specific needs and interests. Contact us for more information.', 'dubai.jpg', '2023-03-23 04:21:52', '2023-04-20 06:03:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(12, 'adrin', '9778357157', 'arc4ace7@gmail.com', 'af4e3993e42b21ee6327720683808206', '2023-04-19 21:16:48', NULL),
(14, 'xyz', '328249382', 'xyz@gmail.com', 'd16fb36f0911f878998c136191af705e', '2023-06-13 01:23:17', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblemergency`
--
ALTER TABLE `tblemergency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblemergency`
--
ALTER TABLE `tblemergency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
