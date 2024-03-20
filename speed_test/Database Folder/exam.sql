-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2024 at 06:24 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(36) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`) VALUES
('admin@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('65b649c27525e', '65b649c275c19'),
('65b649f1e057b', '65b649f1e0e1b'),
('65b64a8b96558', '65b64a8b970a7'),
('65b79720abd1a', '65b79720ad98d'),
('65b79720b96b8', '65b79720bc136'),
('65b79770c1a72', '65b79770c6c7d'),
('65b797b35a07d', '65b797b35ba78'),
('65b79b87494b1', '65b79b874a968'),
('65b79e1d0c700', '65b79e1d0e43b'),
('65b7a1ec07ca7', '65b7a1ec09eaf'),
('65b9bb4fd447f', '65b9bb4fd6547'),
('65b9bb4fdcdeb', '65b9bb4fdda62'),
('65b9bbf0d5720', '65b9bbf0d7d6e'),
('65b9d202db014', '65b9d202dd442'),
('65b9d20302328', '65b9d20303252'),
('65b9d792dc1c7', '65b9d792dda99'),
('65b9d792e7430', '65b9d792ec743'),
('65ba65021b07c', '65ba65021cbf9'),
('65ba65022e6cd', '65ba65022f483'),
('65bbaec89c80f', '65bbaec89df64'),
('65bbaec8a3970', '65bbaec8a4645'),
('65e30772c5ff4', '65e30772c6ac0'),
('65e3079160480', '65e3079160e73'),
('65e3081c6a13c', '65e3081c6aec1'),
('65e31c4e4455e', '65e31c4e466d2'),
('65e31cdb758f2', '65e31cdb76b3c'),
('65e31e27dd9a6', '65e31e27de8ca'),
('65e31faa5c47f', '65e31faa5d217'),
('65e327723e66a', '65e3277240118'),
('65e348c56c7e6', '65e348c56d26c');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `message`) VALUES
('first ', 'name@gmail.com', 'this is meassager '),
('first', 'name@gmail.com', 'this is meassager'),
('Jon', 'Doe@gmail.com', 'This is last testing may be'),
('Jon', 'Doe@gmail.com', 'This is last testing may be'),
('klsjf', 'raju@hotmail.com', 'fkljfd'),
('LAst', 'name@gmail.com', 'what is your name'),
('Rakesh Khanna', 'khanna@gmail.com', 'This is the person who is invisible'),
('Rocky', 'sivirop563@mainmile.com', 'This is Last Testing'),
('kskfk', 'kjlsjd@gmail.com', 'fdsdkljf');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `feedback` varchar(1000) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `subject`, `email`, `feedback`, `date`, `time`) VALUES
('xyz789', 'Alice Smith', 'Customer Support', 'alice@example.com', 'Prompt and helpful support!', '2024-01-30', '14:45:00'),
('pqr456', 'Bob Johnson', 'Product Suggestions', 'bob@example.com', 'Here are some ideas for improvement.', '2024-01-31', '09:15:00'),
('uvw789', 'Eva Williams', 'Bug Report', 'eva@example.com', 'Found a bug, please fix!', '2024-02-01', '16:20:00'),
('lmn123', 'Chris Davis', 'General Inquiry', 'chris@example.com', 'Inquiring about your services.', '2024-02-02', '10:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(10) NOT NULL,
  `level` int(10) NOT NULL,
  `correct` int(10) NOT NULL,
  `wrong` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `correct`, `wrong`, `date`) VALUES
('jklsa@gmail.com', '65e3076659a8b', 4, 1, 1, 0, '2024-03-02 12:38:55'),
('jklsa@gmail.com', '65e31cca05224', 10, 5, 3, 2, '2024-03-02 15:47:15');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('65b64a8b96558', 'a', '65'),
('65b64a8b96558', 'b', '65'),
('65b64a8b96558', 'c', '65'),
('65b64a8b96558', 'd', '65'),
('65b79720abd1a', 'Option a', '65'),
('65b79720abd1a', 'Option b', '65'),
('65b79720abd1a', 'option c', '65'),
('65b79720abd1a', 'option d', '65'),
('65b79720b96b8', 'option 1', '65'),
('65b79720b96b8', 'option b', '65'),
('65b79720b96b8', 'option c', '65'),
('65b79720b96b8', 'option d', '65'),
('65b79770c1a72', 'option a', '65'),
('65b79770c1a72', 'option b', '65'),
('65b79770c1a72', 'option c', '65'),
('65b79770c1a72', 'option d', '65'),
('65b797b35a07d', 'kfsf', '65'),
('65b797b35a07d', 'kjlj', '65'),
('65b797b35a07d', 'kljlk', '65'),
('65b797b35a07d', 'lkljlkj', '65'),
('65b79b87494b1', 'option a', '65'),
('65b79b87494b1', 'option b', '65'),
('65b79b87494b1', 'option c', '65'),
('65b79b87494b1', 'option d', '65'),
('65b79e1d0c700', 'option 1', '65'),
('65b79e1d0c700', 'option 2', '65'),
('65b79e1d0c700', 'option 3', '65'),
('65b79e1d0c700', 'option 4', '65'),
('65b7a1ec07ca7', 'option 1', '65'),
('65b7a1ec07ca7', 'option 2', '65'),
('65b7a1ec07ca7', 'option 3', '65'),
('65b7a1ec07ca7', 'option 4', '65'),
('65b9bb4fd447f', 'nice', '65'),
('65b9bb4fd447f', 'good', '65'),
('65b9bb4fd447f', 'bad', '65'),
('65b9bb4fd447f', 'none', '65'),
('65b9bb4fdcdeb', 'excellent ', '65'),
('65b9bb4fdcdeb', 'nice ', '65'),
('65b9bb4fdcdeb', 'very good', '65'),
('65b9bb4fdcdeb', 'good', '65'),
('65b9bbf0d5720', 'very good', '65'),
('65b9bbf0d5720', 'good', '65'),
('65b9bbf0d5720', 'nice', '65'),
('65b9bbf0d5720', 'can be better', '65'),
('65b9bbf0df249', 'Yes', '65'),
('65b9bbf0df249', 'No', '65'),
('65b9d202db014', 'Option a', '65'),
('65b9d202db014', 'Option b', '65'),
('65b9d202db014', 'Option c', '65'),
('65b9d202db014', 'Option d', '65'),
('65b9d20302328', 'Excellent ', '65'),
('65b9d20302328', 'Very good', '65'),
('65b9d20302328', 'good', '65'),
('65b9d20302328', 'Nice', '65'),
('65b9d792dc1c7', 'oprion a', '65'),
('65b9d792dc1c7', 'option b', '65'),
('65b9d792dc1c7', 'option c', '65'),
('65b9d792dc1c7', 'option d', '65'),
('65b9d792e7430', 'o', '65'),
('65b9d792e7430', '', '65'),
('65b9d792e7430', '', '65'),
('65b9d792e7430', '', '65'),
('65ba65021b07c', 'Very Nice', '65'),
('65ba65021b07c', 'Nice', '65'),
('65ba65021b07c', 'Excelent ', '65'),
('65ba65021b07c', 'All Of The Above', '65'),
('65ba65022e6cd', 'Excelent ', '65'),
('65ba65022e6cd', 'Good', '65'),
('65ba65022e6cd', 'very good', '65'),
('65ba65022e6cd', 'All Of Above', '65'),
('65bbaec89c80f', 'Excellent', '65bbaec89df64'),
('65bbaec89c80f', 'Very Good', '65bbaec89dfc7'),
('65bbaec89c80f', 'Good', '65bbaec89dfc9'),
('65bbaec89c80f', 'Fantastic ', '65bbaec89dfca'),
('65bbaec8a3970', 'Excellent', '65bbaec8a463e'),
('65bbaec8a3970', 'Very Nice', '65bbaec8a4643'),
('65bbaec8a3970', 'Nice', '65bbaec8a4644'),
('65bbaec8a3970', 'Very Attractive', '65bbaec8a4645'),
('65e30772c5ff4', 'df', '65e30772c6ac0'),
('65e30772c5ff4', 'fb', '65e30772c6ac7'),
('65e30772c5ff4', 'cvbc', '65e30772c6ac8'),
('65e30772c5ff4', 'xf', '65e30772c6ac9'),
('65e3079160480', '', '65e3079160e73'),
('65e3079160480', '', '65e3079160e9f'),
('65e3079160480', '', '65e3079160ea1'),
('65e3079160480', '', '65e3079160ea2'),
('65e3081c6a13c', '', '65e3081c6aec1'),
('65e3081c6a13c', '', '65e3081c6aec5'),
('65e3081c6a13c', '', '65e3081c6aec6'),
('65e3081c6a13c', '', '65e3081c6aec7'),
('65e31c4e4455e', '1', '65e31c4e466d2'),
('65e31c4e4455e', '2', '65e31c4e466d8'),
('65e31c4e4455e', '3', '65e31c4e466d9'),
('65e31c4e4455e', '4', '65e31c4e466da'),
('65e31cdb758f2', 'option 1', '65e31cdb76b33'),
('65e31cdb758f2', 'option 2', '65e31cdb76b3c'),
('65e31cdb758f2', 'option 3 ', '65e31cdb76b3e'),
('65e31cdb758f2', 'option 4', '65e31cdb76b40'),
('65e31e27dd9a6', 'p', '65e31e27de8ca'),
('65e31e27dd9a6', 'q', '65e31e27de8d4'),
('65e31e27dd9a6', 'r', '65e31e27de8d6'),
('65e31e27dd9a6', 's', '65e31e27de8d8'),
('65e31faa5c47f', 'a', '65e31faa5d20b'),
('65e31faa5c47f', 'b', '65e31faa5d217'),
('65e31faa5c47f', 'c', '65e31faa5d218'),
('65e31faa5c47f', 'd', '65e31faa5d21a'),
('65e327723e66a', 'a', '65e3277240118'),
('65e327723e66a', 'b', '65e327724011f'),
('65e327723e66a', 'c', '65e3277240120'),
('65e327723e66a', 'd', '65e3277240121'),
('65e348c56c7e6', 'a', '65e348c56d241'),
('65e348c56c7e6', 'b', '65e348c56d26c'),
('65e348c56c7e6', 'c', '65e348c56d26d'),
('65e348c56c7e6', 'd', '65e348c56d26e');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('65b2976a27831', '65b6487e2b2ba', 'what is c++ ?', 4, 1),
('65b2976a27831', '65b649f1e057b', 'what is c++ ?', 4, 1),
('65b2976a27831', '65b64a8b96558', 'what is c++ ?', 4, 1),
('65b796cb2f769', '65b79720abd1a', 'This is question no.1', 4, 1),
('65b796cb2f769', '65b79720b96b8', 'This is question 2', 4, 2),
('65b79756e8168', '65b79770c1a72', 'This is question 1', 4, 1),
('65b797a53cc45', '65b797b35a07d', 'klfjsklfkljjskjj', 4, 1),
('65b79b6084b0f', '65b79b87494b1', 'This is question 1', 4, 1),
('65b79d6ef4157', '65b79e1d0c700', 'This Is Question 1', 4, 1),
('65b7a1ca07462', '65b7a1ec07ca7', 'This is question 1', 4, 1),
('65b9bb0c5ec0b', '65b9bb4fd447f', 'This is question first ', 4, 1),
('65b9bb0c5ec0b', '65b9bb4fdcdeb', 'how our project is ?', 4, 2),
('65b9bb81c81be', '65b9bbf0d5720', 'What you feel about our project?', 4, 1),
('65b9bb81c81be', '65b9bbf0df249', 'Do You Like Our Project ?', 4, 2),
('65b9d1ae3cc3b', '65b9d202db014', 'This is question no 1?', 4, 1),
('65b9d1ae3cc3b', '65b9d20302328', 'How was our website?', 4, 2),
('65b9d75c015fa', '65b9d792dc1c7', 'This is Question no 1', 4, 1),
('65b9d75c015fa', '65b9d792e7430', 'This is question 2', 4, 2),
('65ba64797542d', '65ba65021b07c', 'How Our Project Is ', 4, 1),
('65ba64797542d', '65ba65022e6cd', 'How Was The Design Of Our Project ', 4, 2),
('65bbad7e388a7', '65bbaec89c80f', 'What You Feel About Our Project ?', 4, 1),
('65bbad7e388a7', '65bbaec8a3970', 'How Was Our Project?', 4, 2),
('65e3076659a8b', '65e30772c5ff4', 'fgfbdh', 4, 1),
('65e3076659a8b', '65e3079160480', '', 4, 2),
('65e3076659a8b', '65e3081c6a13c', '', 4, 3),
('65e3076659a8b', '65e31c4e4455e', 'update', 4, 4),
('65e31cca05224', '65e31cdb758f2', 'tesesr ', 4, 1),
('65e31cca05224', '65e31e27dd9a6', 'insert', 4, 2),
('65e31cca05224', '65e31faa5c47f', 'abcd', 4, 3),
('65e31cca05224', '65e327723e66a', 'this is demo test ', 4, 4),
('65e31cca05224', '65e348c56c7e6', 'the teacher is updated test ', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `correct` varchar(40) NOT NULL,
  `wrong` varchar(40) NOT NULL,
  `total` varchar(40) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` varchar(100) NOT NULL,
  `date` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `correct`, `wrong`, `total`, `time`, `intro`, `date`) VALUES
('65e3076659a8b', 'Demo Exam', '4', '1', '1', 1, 'xvxvc', '2024-03-02 16:33:02'),
('65e31cca05224', 'Fgfg', '4', '1', '5', 1, 'dsfgfs', '2024-03-02 18:04:18');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('sophie@example.com', 160, '2024-02-03 08:00:00'),
('michael@example.com', 204, '2024-02-05 15:28:04'),
('olivia@example.com', 175, '2024-02-05 05:45:00'),
('daniel@example.com', 195, '2024-02-06 12:00:00'),
('emma@example.com', 180, '2024-02-07 04:15:00'),
('jklsa@gmail.com', -151, '2024-03-02 15:47:15');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `name` varchar(100) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(500) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` varchar(13) NOT NULL,
  `password` varchar(20) NOT NULL,
  `cpassword` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`name`, `gender`, `college`, `email`, `mob`, `password`, `cpassword`) VALUES
('Sophie Miller', 'Fe', 'LMN Institute', 'sophie@example.com', '1231234567', 'securepass123', 'securepass123'),
('Michael Brown', 'Ma', 'OPQ University', 'michael@example.com', '9876549876', 'pass5678', 'pass5678'),
('Olivia White', 'Fe', 'RST College', 'olivia@example.com', '2223334444', 'secret123', 'secret123'),
('Emma Davis', 'Fe', 'XYZ College', 'emma@example.com', '1112223333', 'testpass', 'testpass'),
('Daniel Johnson', 'Ma', 'UVW Institute', 'daniel@example.com', '5555555555', 'mypassword', 'mypassword'),
('Name', 'M', 'deogir', 'tjsoff@gmail.com', '124563987', '12345678', '12345789'),
('Rocky1', 'Male', 'Devgiri', 'jklsa@gmail.com', '45632145', '12345678', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `name` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `cpassword` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`name`, `lname`, `email`, `password`, `cpassword`) VALUES
('Rocky', 'Kanhere', 'teacher@gmail.com', '12345', '12345'),
('jfskldfj', 'kldsfjdk', 'cognubeste@gufum.com', '1234', '1234'),
('dsad', 'sdaas', 'miteyap751@usoplay.com', '1234', '1234'),
('jfsljlj', 'sdfljj', 'ladarac364@jucatyo.com', '123', '123'),
('First Name', 'Last Name', '2teacher@gmail.com', '12345', '12345'),
('sads', 'dsfds', 'sijarol746@giratex.com', 'R2\"HThg9*4DNQkz', 'R2\"HThg9*4DNQkz'),
('Last ', 'teacher', 'jfjslf@gmail.com', '12345', '12345'),
('First', 'last', 'sljfsd@gmail.com', '12345', '12345'),
('wqw', 'wer', 'weef@gmail.com', '12345678', '12345678'),
('jklsfk', 'jkfl', 'jdk@gmail.com', '1234', '1234');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
