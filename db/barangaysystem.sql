-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2022 at 02:37 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `barangaysystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `category` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `category`, `photo`, `created_on`) VALUES
(1, 'Admin', '$2y$10$Hys97rF4C5a5ZVXolPqrOuwHZOna.1WbpJJotx87dPOujZ/yWQUme', 'Mon Cedric', 'Avila', 'Super Admin', 'Avila.jpg', '2018-04-02'),
(2, 'Admin01', '$2y$10$Hys97rF4C5a5ZVXolPqrOuwHZOna.1WbpJJotx87dPOujZ/yWQUme', 'Kimberly', 'Pangilinan', 'Admin', 'kim.jpg', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `id` int(100) NOT NULL,
  `message` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`id`, `message`, `photo`, `title`) VALUES
(1, 'Project\r\n', 'Culiat.jpg', 'Project'),
(2, 'Title', 'Culiat.jpg', 'Title');

-- --------------------------------------------------------

--
-- Table structure for table `archiveresidents`
--

CREATE TABLE `archiveresidents` (
  `id` int(11) NOT NULL,
  `no` int(10) NOT NULL,
  `residentid` varchar(100) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `puroknumber` int(10) NOT NULL,
  `dob` date NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `pob` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contno` varchar(255) NOT NULL,
  `suf` varchar(255) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `religion` varchar(255) NOT NULL,
  `cs` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `unt` varchar(100) NOT NULL,
  `user_type` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bmss`
--

CREATE TABLE `bmss` (
  `id` int(11) NOT NULL,
  `trackingno` varchar(255) NOT NULL,
  `residentid` varchar(100) NOT NULL,
  `no` int(10) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `purokno` int(10) NOT NULL,
  `dob` date NOT NULL,
  `tin` varchar(255) NOT NULL,
  `htwt` varchar(255) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `emergency` varchar(255) NOT NULL,
  `nos` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `pob` varchar(255) NOT NULL,
  `sssno` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `scontno` varchar(255) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `unt` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `precno` varchar(255) NOT NULL,
  `contno` varchar(255) NOT NULL,
  `contemer` varchar(255) NOT NULL,
  `spooccu` varchar(255) NOT NULL,
  `suf` varchar(255) NOT NULL,
  `nation` varchar(255) NOT NULL,
  `cs` varchar(255) NOT NULL,
  `religion` varchar(255) NOT NULL,
  `occu` varchar(255) NOT NULL,
  `di` date NOT NULL,
  `reason` varchar(200) NOT NULL,
  `letter` varchar(255) NOT NULL,
  `total` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bmss`
--

INSERT INTO `bmss` (`id`, `trackingno`, `residentid`, `no`, `purpose`, `status`, `sname`, `address`, `purokno`, `dob`, `tin`, `htwt`, `weight`, `emergency`, `nos`, `fname`, `pob`, `sssno`, `color`, `email`, `rel`, `scontno`, `mname`, `unt`, `gender`, `precno`, `contno`, `contemer`, `spooccu`, `suf`, `nation`, `cs`, `religion`, `occu`, `di`, `reason`, `letter`, `total`) VALUES
(119, 'TNO-619527', 'D4OQZH', 120, 'Certificate of Residency', 'Ready for Pickup', 'Avila', 'Bagumbong, Caloocan City', 1, '2001-11-24', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Mon Cedric', 'Caloocan City', 'n/a', 'n/a', 'admin@gmail.com', 'n/a', 'n/a', 'Orbeta', 'Owner', 'Male', 'n/a', '09480804906', 'n/a', 'n/a', 'N/A', 'Filipino', 'Single', 'Catholic', 'Student', '2022-12-05', 'n/a', '', '150'),
(120, 'TNO-242705', 'D4OQZH', 120, 'Certificate of Indigency', 'Ready for Pickup', 'Avila', 'Bagumbong, Caloocan City', 1, '2001-11-24', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Mon Cedric', 'Caloocan City', 'n/a', 'n/a', 'admin@gmail.com', 'n/a', 'n/a', 'Orbeta', 'Owner', 'Male', 'n/a', '09480804906', 'n/a', 'n/a', 'N/A', 'Filipino', 'Single', 'Catholic', 'Student', '2022-11-05', 'n/a', '', '150'),
(121, 'TNO-351478', 'D4OQZH', 120, 'Certificate of Indigency', 'Released', 'Avila', 'Bagumbong, Caloocan City', 1, '2001-11-24', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Mon Cedric', 'Caloocan City', 'n/a', 'n/a', 'admin@gmail.com', 'n/a', 'n/a', 'Orbeta', 'Owner', 'Male', 'n/a', '09480804906', 'n/a', 'n/a', 'N/A', 'Filipino', 'Single', 'Catholic', 'Student', '2022-12-05', 'n/a', '', '250');

-- --------------------------------------------------------

--
-- Table structure for table `census`
--

CREATE TABLE `census` (
  `id` int(10) NOT NULL,
  `population` int(50) NOT NULL,
  `year` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `census`
--

INSERT INTO `census` (`id`, `population`, `year`) VALUES
(1, 28770, 1990),
(2, 39438, 1995),
(3, 49639, 2000),
(4, 68618, 2007),
(5, 68881, 2010),
(6, 74304, 2015);

-- --------------------------------------------------------

--
-- Table structure for table `chat_message`
--

CREATE TABLE `chat_message` (
  `chat_message_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `chat_message` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat_message`
--

INSERT INTO `chat_message` (`chat_message_id`, `to_user_id`, `from_user_id`, `chat_message`, `timestamp`, `status`) VALUES
(1, 1, 4, 'hi', '2022-12-03 15:18:56', 2),
(2, 1, 4, '?', '2022-12-03 15:19:49', 1),
(3, 5, 4, 'pakyu', '2022-12-03 15:21:25', 2),
(4, 4, 5, '?', '2022-12-03 15:22:06', 0),
(5, 0, 4, '<p><img src=\"upload/1cade81e0dde29f80f8ad5d59dac651b.jpg\" class=\"img-thumbnail\" width=\"200\" height=\"160\"></p><br>', '2022-12-03 15:29:40', 1),
(6, 1, 4, 'hahahahah', '2022-12-05 12:22:03', 1),
(7, 3, 5, 'hi', '2022-12-06 20:33:56', 1),
(8, 5, 4, 'jhgtrdweaqwzyt', '2022-12-06 20:34:52', 1),
(9, 5, 4, 'tite', '2022-12-06 20:35:00', 1),
(10, 5, 4, 'hi', '2022-12-06 20:36:06', 1),
(11, 5, 4, 'hi', '2022-12-06 20:36:20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `covidbooster`
--

CREATE TABLE `covidbooster` (
  `id` int(10) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `suffix` varchar(50) NOT NULL,
  `birthdate` date NOT NULL,
  `gender` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact_num` int(15) NOT NULL,
  `category` varchar(50) NOT NULL,
  `priority` varchar(50) NOT NULL,
  `allergy` varchar(50) NOT NULL,
  `comorbidities` varchar(50) NOT NULL,
  `sched` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `site` varchar(50) NOT NULL,
  `submitted` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `covidbooster`
--

INSERT INTO `covidbooster` (`id`, `firstname`, `lastname`, `middlename`, `suffix`, `birthdate`, `gender`, `email`, `contact_num`, `category`, `priority`, `allergy`, `comorbidities`, `sched`, `site`, `submitted`) VALUES
(22, 'Jericho Chris', 'Taroma', '', '', '2022-11-29', 'Male', 'jerichotaroma@gmail.com', 0, 'booster', 'A2 Senior Citizens', 'yes', 'yes', '2022-12-22 16:00:00', 'QC', '2022-12-06 09:56:08');

-- --------------------------------------------------------

--
-- Table structure for table `hmf`
--

CREATE TABLE `hmf` (
  `id` int(10) NOT NULL,
  `residentid` int(10) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `age` int(10) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `datebirth` varchar(50) NOT NULL,
  `perma_add` varchar(50) NOT NULL,
  `height` varchar(50) NOT NULL,
  `weight` varchar(50) NOT NULL,
  `asthma` varchar(50) NOT NULL,
  `cancer` varchar(50) NOT NULL,
  `diabetes` varchar(50) NOT NULL,
  `hypertension` varchar(50) NOT NULL,
  `epilepsy` varchar(50) NOT NULL,
  `dizziness` varchar(50) NOT NULL,
  `snoring` varchar(50) NOT NULL,
  `chestpain` varchar(50) NOT NULL,
  `abdominalpain` varchar(50) NOT NULL,
  `heartburn` varchar(50) NOT NULL,
  `fever` varchar(50) NOT NULL,
  `headache` varchar(50) NOT NULL,
  `vomitting` varchar(50) NOT NULL,
  `hunger` varchar(50) NOT NULL,
  `rash` varchar(50) NOT NULL,
  `insomnia` varchar(50) NOT NULL,
  `travel` varchar(50) NOT NULL,
  `travel_place` varchar(50) NOT NULL,
  `PWD` varchar(50) NOT NULL,
  `disability_type` varchar(50) NOT NULL,
  `disability_cause` varchar(50) NOT NULL,
  `mens` date NOT NULL,
  `pregnancies` int(20) NOT NULL,
  `births` int(20) NOT NULL,
  `birth_control` varchar(50) NOT NULL,
  `irreg_period` varchar(50) NOT NULL,
  `medicine` varchar(50) NOT NULL,
  `medicinetype` varchar(50) NOT NULL,
  `allergies` varchar(50) NOT NULL,
  `tobacco` varchar(50) NOT NULL,
  `drugs` varchar(50) NOT NULL,
  `alcohol` varchar(50) NOT NULL,
  `submitted` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hmf`
--

INSERT INTO `hmf` (`id`, `residentid`, `fullname`, `age`, `gender`, `datebirth`, `perma_add`, `height`, `weight`, `asthma`, `cancer`, `diabetes`, `hypertension`, `epilepsy`, `dizziness`, `snoring`, `chestpain`, `abdominalpain`, `heartburn`, `fever`, `headache`, `vomitting`, `hunger`, `rash`, `insomnia`, `travel`, `travel_place`, `PWD`, `disability_type`, `disability_cause`, `mens`, `pregnancies`, `births`, `birth_control`, `irreg_period`, `medicine`, `medicinetype`, `allergies`, `tobacco`, `drugs`, `alcohol`, `submitted`) VALUES
(39, 0, 'Mon Cedric Avila', 0, 'Female', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', 'no', '', '2022-12-06 09:22:17'),
(40, 0, 'Mon Cedric Avila', 0, 'Female', '', '1', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', '', '2022-12-06 11:11:26'),
(41, 0, 'Mon Cedric Avila', 0, 'Female', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'yes', 'Visual Disability', 'Illness', '0000-00-00', 0, 0, '', '', '', '', '', '', '', '', '2022-12-06 11:11:45');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `username`, `password`) VALUES
(1, 'johnsmith', '$2y$10$4REfvTZpxLgkAR/lKG9QiOkSdahOYIR3MeoGJAyiWmRkEFfjH3396'),
(2, 'peterParker', '$2y$10$4REfvTZpxLgkAR/lKG9QiOkSdahOYIR3MeoGJAyiWmRkEFfjH3396'),
(3, 'davidMoore', '$2y$10$4REfvTZpxLgkAR/lKG9QiOkSdahOYIR3MeoGJAyiWmRkEFfjH3396'),
(4, 'admin', '$2y$10$yqbgCtYqGaoUbES/4Ewb.O/KN58yiLehiodl6QrazwAI4spf5aJh2'),
(5, 'eunice', '$2y$10$3aoK0R10w07rJcqHrzan2eqEtZhpiNXmQiin1PhJHWoYFHvr/b0VO');

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE `login_details` (
  `login_details_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `last_activity` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_type` enum('no','yes') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_details`
--

INSERT INTO `login_details` (`login_details_id`, `user_id`, `last_activity`, `is_type`) VALUES
(1, 4, '2022-12-03 15:23:10', 'no'),
(2, 5, '2022-12-03 15:22:28', 'no'),
(3, 4, '2022-12-03 16:18:12', 'no'),
(4, 4, '2022-12-05 11:16:16', 'no'),
(5, 4, '2022-12-05 12:54:52', 'no'),
(6, 5, '2022-12-06 20:34:08', 'no'),
(7, 4, '2022-12-06 20:39:41', 'no'),
(8, 5, '2022-12-06 21:04:37', 'no'),
(9, 5, '2022-12-07 00:59:43', 'no'),
(10, 5, '2022-12-06 21:29:50', 'no'),
(11, 5, '2022-12-06 21:31:06', 'no'),
(12, 5, '2022-12-06 21:31:54', 'no'),
(13, 5, '2022-12-06 21:32:50', 'no'),
(14, 5, '2022-12-06 21:33:45', 'no'),
(15, 5, '2022-12-06 21:34:36', 'no'),
(16, 5, '2022-12-06 21:35:23', 'no'),
(17, 5, '2022-12-06 21:37:17', 'no'),
(18, 5, '2022-12-06 21:37:49', 'no'),
(19, 5, '2022-12-06 21:39:09', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `officials`
--

CREATE TABLE `officials` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `term` varchar(50) NOT NULL,
  `photo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `officials`
--

INSERT INTO `officials` (`id`, `name`, `position`, `term`, `photo`) VALUES
(1, 'HON. CRISTINA BERNARDINO', 'Punong Barangay', '2022', '1-removebg-preview.png'),
(2, 'MARICHU B. MONTEHERMOSO', 'Barangay Kagawad', '2022', '2-removebg-preview.png'),
(4, 'AMEERAH S. IBRAHIM', ' Barangay Kagawad', '2022', '3-removebg-preview.png');

-- --------------------------------------------------------

--
-- Table structure for table `residents`
--

CREATE TABLE `residents` (
  `id` int(11) NOT NULL,
  `residentid` varchar(100) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `puroknumber` int(10) NOT NULL,
  `dob` date NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `pob` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contno` varchar(255) NOT NULL,
  `suf` varchar(255) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `religion` varchar(255) NOT NULL,
  `cs` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `unt` varchar(100) NOT NULL,
  `user_type` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `residents`
--

INSERT INTO `residents` (`id`, `residentid`, `lastname`, `address`, `puroknumber`, `dob`, `nationality`, `firstname`, `pob`, `email`, `password`, `middlename`, `gender`, `contno`, `suf`, `occupation`, `religion`, `cs`, `status`, `unt`, `user_type`, `photo`) VALUES
(120, 'D4OQZH', 'Avila', 'Bagumbong, Caloocan City', 1, '2001-11-24', 'Filipino', 'Mon Cedric', 'Caloocan City', 'admin@gmail.com', '$2y$10$LpQBSR9CWQx6Rzrqn9GC6uw.7kuD3l1bM521AB0EE8FSuqmwG4LHC', 'Orbeta', 'Male', '09480804906', 'N/A', 'Student', 'Catholic', 'Single', '', 'Owner', 'user', 'Avila.jpg'),
(135, 'WOPLKX', 'Cuenca', 'Novaliches, Quezon City', 5, '2001-12-18', 'Filipino', 'Eunice', 'Quezon CIty', 'eunicecuenca@gmail.com', '$2y$10$ulcWYdoftN9Oc8UawAyxweDaEyOxz1nO2OoWUKmEXYpmBeJVASLAy', 'C', 'Female', '09831238288', 'N/A', 'Student', 'Catholic', 'Single', '', 'Owner', 'user', 'Screenshot 2022-02-21 212805.png');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `position`, `photo`) VALUES
(1, 'Renato Samora', 'Admin Desk', 'profile.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `term`
--

CREATE TABLE `term` (
  `id` int(10) NOT NULL,
  `term` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `term`
--

INSERT INTO `term` (`id`, `term`) VALUES
(8, '2022');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `no` int(11) NOT NULL,
  `transactionid` int(11) NOT NULL,
  `residentid` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `daterequested` timestamp NOT NULL DEFAULT current_timestamp(),
  `dateissued` timestamp NOT NULL DEFAULT current_timestamp(),
  `payment` int(11) NOT NULL,
  `status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`no`, `transactionid`, `residentid`, `type`, `daterequested`, `dateissued`, `payment`, `status`) VALUES
(1, 1, 1, 'bc', '2022-11-26 04:52:21', '2021-11-26 04:52:21', 150, 'successful'),
(2, 1, 1, 'bid', '2022-11-26 04:52:29', '2022-11-26 04:52:29', 50, 'successful'),
(3, 2, 2, 'bc', '2022-11-26 04:53:09', '2022-11-26 04:53:09', 50, 'successful'),
(4, 3, 3, 'bid', '2022-11-26 04:53:09', '2022-11-26 04:53:09', 50, 'successful'),
(5, 4, 4, 'bce', '2022-11-26 04:53:36', '2022-02-26 04:53:36', 50, 'successful'),
(6, 1, 1, 'bid', '2022-10-06 05:17:50', '2022-10-06 05:17:50', 50, 'successful'),
(7, 1, 1, 'bid', '2022-10-06 05:17:50', '2022-10-06 05:17:50', 50, 'successful'),
(8, 1, 1, 'bid', '2022-10-06 05:17:50', '2022-09-06 05:17:50', 50, 'successful'),
(9, 1, 1, 'bid', '2022-10-06 05:17:50', '2022-08-06 05:17:50', 50, 'successful'),
(10, 1, 1, 'bc', '2022-10-06 05:17:50', '2022-10-06 05:17:50', 50, 'successful'),
(11, 1, 1, 'bid', '2022-10-06 05:17:50', '2022-10-06 05:17:50', 50, 'successful'),
(12, 1, 1, 'bce', '2022-10-06 05:17:50', '2022-10-06 05:17:50', 50, 'successful'),
(13, 1, 1, 'bc', '2022-10-06 05:17:50', '2022-09-06 05:17:50', 50, 'successful'),
(14, 1, 1, 'bce', '2022-11-26 04:52:21', '2022-11-26 04:52:21', 50, 'successful'),
(15, 1, 1, 'bc', '2022-10-26 04:52:29', '2022-10-26 04:52:29', 50, 'successful'),
(16, 2, 2, 'bc', '2022-10-26 04:53:09', '2022-10-26 04:53:09', 50, 'successful'),
(17, 1, 1, 'bc', '2022-10-26 04:52:21', '2022-10-26 04:52:21', 50, 'successful'),
(18, 1, 1, 'bc', '2022-02-26 04:52:21', '2022-02-26 04:52:21', 100, 'successful'),
(19, 1, 1, 'bid', '2022-02-26 04:52:29', '2022-02-26 04:52:29', 50, 'successful'),
(20, 4, 4, 'bce', '2022-11-26 04:53:36', '2022-11-26 04:53:36', 50, 'successful'),
(21, 1, 1, 'bid', '2022-10-06 05:17:50', '2022-10-06 05:17:50', 50, 'successful'),
(22, 1, 1, 'bid', '2022-10-06 05:17:50', '2022-09-06 05:17:50', 50, 'successful');

-- --------------------------------------------------------

--
-- Table structure for table `webofficial`
--

CREATE TABLE `webofficial` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `position` varchar(30) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `webofficial`
--

INSERT INTO `webofficial` (`id`, `name`, `position`, `photo`) VALUES
(1, 'HON. CRISTINA BERNARDINOS', 'Punong Barangay', '1-removebg-preview.png'),
(2, 'MARICHU B. MONTEHERMOSO', 'Barangay Kagawad', '2-removebg-preview.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `archiveresidents`
--
ALTER TABLE `archiveresidents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bmss`
--
ALTER TABLE `bmss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `census`
--
ALTER TABLE `census`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_message`
--
ALTER TABLE `chat_message`
  ADD PRIMARY KEY (`chat_message_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `covidbooster`
--
ALTER TABLE `covidbooster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hmf`
--
ALTER TABLE `hmf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`login_details_id`);

--
-- Indexes for table `officials`
--
ALTER TABLE `officials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `residents`
--
ALTER TABLE `residents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `term`
--
ALTER TABLE `term`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webofficial`
--
ALTER TABLE `webofficial`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `archiveresidents`
--
ALTER TABLE `archiveresidents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `bmss`
--
ALTER TABLE `bmss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `census`
--
ALTER TABLE `census`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `chat_message`
--
ALTER TABLE `chat_message`
  MODIFY `chat_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `covidbooster`
--
ALTER TABLE `covidbooster`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `hmf`
--
ALTER TABLE `hmf`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `login_details`
--
ALTER TABLE `login_details`
  MODIFY `login_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `officials`
--
ALTER TABLE `officials`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `residents`
--
ALTER TABLE `residents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `term`
--
ALTER TABLE `term`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `webofficial`
--
ALTER TABLE `webofficial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
