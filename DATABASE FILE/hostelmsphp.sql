-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2023 at 11:27 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostelmsphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'admin@mail.com', 'D00F5D5217896FB7FD601412CB890830', '2023-05-09 20:31:45', '2023-05-09');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) NOT NULL,
  `course_sn` varchar(255) NOT NULL,
  `course_fn` varchar(255) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(1, 'BTH123', 'B.Tech', 'Bachelor  Of Technology', '2023-04-23 00:45:13'),
(2, 'BCOM18', 'B.Com', 'Bachelor Of Commerce ', '2023-04-23 00:45:13'),
(3, 'BSC296', 'BSC', 'Bachelor  of Science', '2023-04-23 00:45:13'),
(4, 'BCOA55', 'BCA', 'Bachelor Of Computer Application', '2023-04-23 00:45:13'),
(5, 'MCA001', 'MCA', 'Master of Computer Application', '2023-04-23 00:47:13'),
(6, 'MBA777', 'MBA', 'Master In Business Administration', '2023-04-23 00:54:13'),
(7, 'BE069', 'BE', 'Bachelor of Engineering', '2023-04-23 00:59:13'),
(8, 'BIT353', 'BIT', 'Bachelors In Information Technology', '2023-04-07 06:59:05'),
(9, 'MIT005', 'MIT', 'Master of Information Technology', '2023-04-03 13:03:19');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `roomno` int(11) NOT NULL,
  `seater` int(11) NOT NULL,
  `feespm` int(11) NOT NULL,
  `foodstatus` int(11) NOT NULL,
  `stayfrom` date NOT NULL,
  `duration` int(11) NOT NULL,
  `course` varchar(500) NOT NULL,
  `regno` varchar(255) NOT NULL,
  `firstName` varchar(500) NOT NULL,
  `middleName` varchar(500) NOT NULL,
  `lastName` varchar(500) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `emailid` varchar(500) NOT NULL,
  `egycontactno` bigint(11) NOT NULL,
  `guardianName` varchar(500) NOT NULL,
  `guardianRelation` varchar(500) NOT NULL,
  `guardianContactno` bigint(11) NOT NULL,
  `corresAddress` varchar(500) NOT NULL,
  `corresCIty` varchar(500) NOT NULL,
  `corresState` varchar(500) NOT NULL,
  `corresPincode` int(11) NOT NULL,
  `pmntAddress` varchar(500) NOT NULL,
  `pmntCity` varchar(500) NOT NULL,
  `pmnatetState` varchar(500) NOT NULL,
  `pmntPincode` int(11) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `seater`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `course`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`) VALUES
(15, 200, 2, 910, 1, '2023-04-07', 12, 'Bachelors In Information Technology', 'CA018', 'Mary', 'A.', 'Martin', 'female', 7455558855, 'marym@mail.com', 7412589650, 'James Martin', 'Father', 7896666600, '20 Patterson Street', 'Houston', '', 70067, '20 Patterson Street', 'Houston', '', 70067, '2023-04-02 17:06:43', ''),
(16, 112, 3, 1300, 1, '2023-04-04', 12, 'Master of Computer Application', 'CA003', 'Richard', 'J.', 'Summers', 'Male', 1325658800, 'richards@mail.com', 4785555500, 'Maren Summers', 'Father', 4125478555, '48 Wilkinson Street', 'Nashville', '', 32701, '48 Wilkinson Street', 'Nashville', '', 32701, '2023-04-03 13:16:45', ''),
(17, 132, 5, 1990, 0, '2023-04-04', 6, 'Master In Business Administration', 'CA006', 'Jennifer', 'J.', 'Frye', 'Female', 7895555544, 'jennifer@mail.com', 2224445585, 'Beverly Frye', 'Mother', 1478569888, '18 Hanifan Lane', 'Stone Mountain', '', 38803, '18 Hanifan Lane', 'Stone Mountain', '', 38803, '2023-04-03 14:37:56', ''),
(18, 269, 2, 910, 1, '2023-04-03', 12, 'Bachelor of Engineering', 'CA002', 'Bruce', 'E.', 'Murphy', 'Male', 1346565650, 'bruce@mail.com', 7850001450, 'Ellen Murphy', 'Mother', 7850001010, '25 Yorkie Lane', 'Savannah', '', 34001, '25 Yorkie Lane', 'Savannah', '', 34001, '2023-04-03 14:47:31', ''),
(19, 100, 5, 1990, 0, '2023-04-17', 8, 'Bachelor Of Commerce ', 'CA009', 'Nancy', 'W.', 'Vasquez', 'Female', 3547777770, 'nancy@mail.com', 4445554470, 'Jude Vasquez', 'Father', 4785698555, '109 Prudence Street', 'Dearborn', '', 44550, '109 Prudence Street', 'Dearborn', '', 44550, '2023-04-03 15:02:15', ''),
(20, 310, 1, 750, 0, '2023-04-10', 12, 'Master of Information Technology', 'CA014', 'Liam', 'K.', 'Moore', 'Male', 7854441014, 'liamoore@mail.com', 7412585500, 'Christine L. Moore', 'Mother', 7458888888, '77 Test Address', 'Democity', '', 70001, '77 Test Address', 'Democity', '', 70001, '2023-04-03 15:53:07', ''),
(21, 201, 4, 1650, 0, '2023-05-09', 2, 'Bachelor Of Computer Application', 'PS001', 'Abdelrahman', 'M.', 'Ghannam', 'Male', 11365984, 'abdosh.acc@gmail.com', 11223344, 'Levi', 'Friend', 55649871, 'Bahcelievler mah.', 'Ankara', '', 6830, 'Bahcelievler mah.', 'Ankara', '', 6830, '2023-05-09 13:46:40', '');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `seater` int(11) NOT NULL,
  `room_no` int(11) NOT NULL,
  `fees` int(11) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `seater`, `room_no`, `fees`, `posting_date`) VALUES
(1, 5, 100, 1990, '2023-04-20 04:24:06'),
(2, 4, 201, 1650, '2023-04-20 04:24:06'),
(3, 2, 200, 910, '2023-04-20 04:33:06'),
(4, 3, 112, 1300, '2023-04-20 04:33:30'),
(5, 5, 132, 1990, '2023-04-20 04:28:52'),
(6, 4, 11, 1650, '2023-04-07 05:01:02'),
(7, 2, 269, 910, '2023-04-03 14:39:22'),
(8, 1, 310, 750, '2023-04-03 14:41:36'),
(9, 1, 330, 750, '2023-04-03 14:41:53');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `State` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `State`) VALUES
(1, 'Alabama'),
(2, 'Alaska'),
(3, 'Arizona'),
(4, 'Arkansas'),
(5, 'California'),
(6, 'Colorado'),
(7, 'Connecticut'),
(8, 'Delaware'),
(9, 'Florida'),
(10, 'Georgia'),
(11, 'Hawaii'),
(12, 'Idaho'),
(13, 'Illinois'),
(14, 'Iowa'),
(15, 'Kansas'),
(16, 'Kentucky'),
(17, 'Louisiana'),
(18, 'Maine'),
(19, 'Marryland'),
(20, 'Massachusetts'),
(21, 'Michigan'),
(22, 'Minnesota'),
(23, 'Mississippi'),
(24, 'Missouri'),
(25, 'Nevada'),
(26, 'New Jersey'),
(27, 'New York'),
(28, 'North Carolina'),
(29, 'North Dakota'),
(30, 'Ohio'),
(31, 'Oklahoma'),
(32, 'South Carolina'),
(33, 'South Dakota'),
(34, 'Texas'),
(35, 'Virginia'),
(36, 'Washington');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(9, 10, 'terry@mail.com', 0x3a3a31, '', '', '2023-03-05 04:12:00'),
(10, 10, 'terry@mail.com', 0x3a3a31, '', '', '2023-03-05 04:14:44'),
(11, 21, 'ross@mail.com', 0x3a3a31, '', '', '2023-03-05 04:19:52'),
(12, 21, 'ross@mail.com', 0x3a3a31, '', '', '2023-03-05 08:53:33'),
(13, 21, 'ross@mail.com', 0x3a3a31, '', '', '2023-03-05 17:35:34'),
(14, 21, 'ross@mail.com', 0x3a3a31, '', '', '2023-03-06 02:43:01'),
(15, 21, 'ross@mail.com', 0x3a3a31, '', '', '2023-03-06 15:18:49'),
(16, 21, 'ross@mail.com', 0x3a3a31, '', '', '2023-03-07 09:35:23'),
(17, 21, 'ross@mail.com', 0x3a3a31, '', '', '2023-03-07 09:59:55'),
(18, 22, 'colin@gmail.com', 0x3a3a31, '', '', '2023-04-16 14:51:24'),
(19, 22, 'colin@gmail.com', 0x3a3a31, '', '', '2023-04-12 15:31:50'),
(20, 22, 'colin@gmail.com', 0x3a3a31, '', '', '2023-04-02 16:01:31'),
(21, 21, 'ross@mail.com', 0x3a3a31, '', '', '2023-04-02 16:52:47'),
(22, 20, 'richards@mail.com', 0x3a3a31, '', '', '2023-04-03 13:15:00'),
(23, 24, 'jennifer@mail.com', 0x3a3a31, '', '', '2023-04-03 14:32:09'),
(24, 24, 'jennifer@mail.com', 0x3a3a31, '', '', '2023-04-03 14:34:17'),
(25, 19, 'bruce@mail.com', 0x3a3a31, '', '', '2023-04-03 14:44:31'),
(26, 27, 'nancy@mail.com', 0x3a3a31, '', '', '2023-04-03 15:00:46'),
(27, 32, 'liamoore@mail.com', 0x3a3a31, '', '', '2023-04-03 15:48:35'),
(28, 32, 'liamoore@mail.com', 0x3a3a31, '', '', '2023-04-03 15:51:34'),
(29, 33, 'abdosh.acc@gmail.com', 0x3a3a31, '', '', '2023-05-09 13:42:47'),
(30, 33, 'abdosh.acc@gmail.com', 0x3a3a31, '', '', '2023-05-09 13:43:46'),
(31, 33, 'abdosh.acc@gmail.com', 0x3a3a31, '', '', '2023-05-09 13:50:16'),
(32, 33, 'abdosh.acc@gmail.com', 0x3a3a31, '', '', '2023-05-09 14:14:49'),
(33, 33, 'abdosh.acc@gmail.com', 0x3a3a31, '', '', '2023-05-09 14:46:13'),
(34, 33, 'abdosh.acc@gmail.com', 0x3a3a31, '', '', '2023-06-04 09:19:42'),
(35, 33, 'abdosh.acc@gmail.com', 0x3a3a31, '', '', '2023-06-04 09:20:14'),
(36, 33, 'abdosh.acc@gmail.com', 0x3a3a31, '', '', '2023-06-04 09:22:39');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `regNo` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contactNo` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(45) NOT NULL,
  `passUdateDate` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(19, 'CA002', 'Bruce', 'E.', 'Murphy', 'Male', 1346565650, 'bruce@mail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-04-05 04:46:33', '', ''),
(20, 'CA003', 'Richard', 'J.', 'Summers', 'Male', 1325658800, 'richards@mail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-04-05 04:54:33', '', ''),
(21, 'CA004', 'Ross', 'S.', 'Daniels', 'Male', 6958545850, 'ross@mail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-04-05 04:19:44', '06-03-2021 10:15:29', '06-03-2021 10:35:38'),
(22, 'CA005', 'Colin', 'B', 'Greenwood', 'Male', 7541112050, 'colin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-04-06 16:29:57', '', ''),
(24, 'CA006', 'Jennifer', 'J.', 'Frye', 'Female', 7895555544, 'jennifer@mail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-04-03 14:31:50', '', '03-04-2022 08:21:07'),
(25, 'CA007', 'Bonnie', 'J.', 'Lamar', 'Female', 4580001014, 'bonnie@mail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-04-03 14:51:00', '', ''),
(26, 'CA008', 'Adam', 'A.', 'Rios', 'Male', 4785690010, 'adam@mail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-04-03 14:52:28', '', ''),
(27, 'CA009', 'Nancy', 'W.', 'Vasquez', 'Female', 3547777770, 'nancy@mail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-04-03 14:53:19', '', ''),
(28, 'CA010', 'Jerry', 'A.', 'Burdine', 'Male', 8520001450, 'jerry@mail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-04-03 14:53:58', '', ''),
(29, 'CA011', 'James', 'K.', 'Fischer', 'Male', 4785470014, 'jamesf@mail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-04-03 14:54:44', '', ''),
(30, 'CA012', 'Darlene', 'D.', 'Kenyon', 'Female', 3547896580, 'darlene@mail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-04-03 14:57:04', '', ''),
(31, 'CA013', 'Joseph', 'H.', 'Peterson', 'Male', 4587450010, 'joseph@mail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-04-03 14:57:51', '', ''),
(32, 'CA014', 'Liam', 'K.', 'Moore', 'Male', 7854441014, 'liamoore@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2023-04-03 15:00:04', '', ''),
(33, 'PS001', 'Abdelrahman', 'M.', 'Ghannam', 'Male', 11365984, 'abdosh.acc@gmail.com', '8658af43a25ec8f801ac26f9ce118542', '2023-05-09 13:40:33', '04-06-2023 04:22:45', '04-06-2023 04:20:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
