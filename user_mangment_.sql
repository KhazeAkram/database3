-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2023 at 08:10 PM
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
-- Database: `user_mangment.`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `C_ID` int(11) NOT NULL,
  `Name` varchar(15) NOT NULL,
  `Degree` varchar(15) NOT NULL,
  `Department` varchar(15) NOT NULL,
  `Teaching courses` varchar(1) NOT NULL,
  `Working time` varchar(15) NOT NULL,
  `Contact information` varchar(20) NOT NULL,
  `StudentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`C_ID`, `Name`, `Degree`, `Department`, `Teaching courses`, `Working time`, `Contact information`, `StudentID`) VALUES
(1, 'Computer Scienc', '8', '8', '1', '8', 'xyz', 1),
(2, 'Software ENG', '7', '7', '1', '8', 'abc', 1),
(3, 'AI', '7', '7', '1', '8', 'xyz', 2),
(4, 'Data Science', '6', '6', '7', '8', 'xyz', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `course_student`
-- (See below for the actual view)
--
CREATE TABLE `course_student` (
`C_ID` int(11)
,`S_ID` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `Employees ID` int(10) NOT NULL,
  `Name` varchar(10) NOT NULL,
  `Father Name` varchar(10) NOT NULL,
  `Age` varchar(2) NOT NULL,
  `Gender` varchar(2) NOT NULL,
  `Address` text NOT NULL,
  `Phone No.` bigint(11) NOT NULL,
  `Data of Joining` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`Employees ID`, `Name`, `Father Name`, `Age`, `Gender`, `Address`, `Phone No.`, `Data of Joining`) VALUES
(1, 'Samad', 'Ali', '36', '1', 'xyz', 92787898890, 'xyz'),
(2, 'Kamran', 'Saad', '29', '1', 'a block', 923167072544, ''),
(3, 'Ali', 'Saad', '21', '1', 'A block 5', 92254645545, 'abc'),
(4, 'Abdul', 'Khishi', '25', '1', 'xyz', 9236784556, 'xyz');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `S_ID` int(11) NOT NULL,
  `Name` varchar(16) NOT NULL COMMENT 'First Last',
  `Father_Name` varchar(16) NOT NULL COMMENT 'First Last',
  `Date_of_Birth` date NOT NULL COMMENT 'DD/MM/YYYY',
  `Roll#` varchar(15) NOT NULL,
  `CNIC` varchar(15) NOT NULL COMMENT '00000-0000000-0',
  `Gender` tinyint(2) NOT NULL,
  `Address` text NOT NULL,
  `Phone_No` varchar(15) NOT NULL COMMENT '03000000000',
  `Total_Course` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`S_ID`, `Name`, `Father_Name`, `Date_of_Birth`, `Roll#`, `CNIC`, `Gender`, `Address`, `Phone_No`, `Total_Course`) VALUES
(1, 'Ahmad', 'Hassan', '0000-00-00', 'f21bseen1e02044', '36000-000000', 1, 'xyz', '0300-123456', 6),
(2, 'Ali', 'Hassan', '0000-00-00', 'f21bseen1e02021', '36000-000000', 1, 'abc', '0300-123457', 6),
(3, 'Khaze Akram', 'Khurshid Akram', '0000-00-00', 'F21BSEEN1E02045', '00000-0000000-0', 0, 'GriGang bazar ,Bahawalpur', '03082882100', 6),
(4, 'sameer ahmad', 'm nadeem', '0000-00-00', 'f21bseen1e02044', '00000-0000000-0', 1, 'hostel ', '', 0),
(5, 'muzamil', 'Ali', '0000-00-00', 'f21bseen1e02023', '36000-000000', 1, 'xyz', '0300-123455', 6);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `Teacher_ID` varchar(1) NOT NULL,
  `Name` varchar(8) NOT NULL,
  `Gender` int(1) NOT NULL,
  `Address` text NOT NULL,
  `Classes` bigint(15) NOT NULL,
  `Courses` bigint(15) NOT NULL,
  `Contact` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`Teacher_ID`, `Name`, `Gender`, `Address`, `Classes`, `Courses`, `Contact`) VALUES
('1', 'Ali', 1, 'xyz', 6, 6, '0300-16788909'),
('2', 'Samad', 1, 'abc', 7, 5, '0300-12337786'),
('3', 'Shan', 1, 'xyz ', 6, 6, '0302-56547356'),
('4', 'Khaze', 1, 'a block', 7, 6, '0303-67734674');

-- --------------------------------------------------------

--
-- Stand-in structure for view `teacher_course`
-- (See below for the actual view)
--
CREATE TABLE `teacher_course` (
`Teacher_ID` varchar(1)
,`Name` varchar(8)
,`C_ID` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `Vendor ID` int(1) NOT NULL,
  `Name` varchar(8) NOT NULL,
  `Field` varchar(15) NOT NULL,
  `Services` text NOT NULL,
  `Loan` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`Vendor ID`, `Name`, `Field`, `Services`, `Loan`) VALUES
(1, 'Ahmad', 'Electirical', '5', 200000),
(2, 'sameer a', 'Software ENG', '10', 120),
(3, 'Khaze', 'Camara', '4', 100000),
(4, 'Kamran', 'Autos', '15', 10000);

-- --------------------------------------------------------

--
-- Structure for view `course_student`
--
DROP TABLE IF EXISTS `course_student`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `course_student`  AS SELECT `courses`.`C_ID` AS `C_ID`, `student`.`S_ID` AS `S_ID` FROM (`courses` join `student`)  ;

-- --------------------------------------------------------

--
-- Structure for view `teacher_course`
--
DROP TABLE IF EXISTS `teacher_course`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `teacher_course`  AS SELECT `teacher`.`Teacher_ID` AS `Teacher_ID`, `teacher`.`Name` AS `Name`, `courses`.`C_ID` AS `C_ID` FROM (`teacher` left join `courses` on(`teacher`.`Teacher_ID` = `courses`.`C_ID`))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`C_ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`S_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `C_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `S_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
