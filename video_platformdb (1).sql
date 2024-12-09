-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2024 at 06:09 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `video_platformdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_table`
--

CREATE TABLE `access_table` (
  `accessID` int(11) NOT NULL,
  `studentID` int(11) DEFAULT NULL,
  `teacherID` int(11) DEFAULT NULL,
  `lessonID` int(11) DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `expireDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `access_table`
--

INSERT INTO `access_table` (`accessID`, `studentID`, `teacherID`, `lessonID`, `startDate`, `expireDate`) VALUES
(3, 3, 3, 3, '2024-11-03', '2024-11-22'),
(4, 4, 4, 4, '2024-11-04', '2024-12-04'),
(5, 5, 5, 5, '2024-11-05', '2024-11-28'),
(7, 2, 2, 2, '2024-11-24', '2024-11-25');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminID` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telNo` varchar(15) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminID`, `name`, `email`, `telNo`, `password`) VALUES
(1, 'Admin1', 'admin1@example.com', '5556789012', 'adminpass123'),
(2, 'Admin2', 'admin2@example.com', '5557890123', 'adminpass456'),
(3, 'Admin3', 'admin3@example.com', '5558901234', 'adminpass789'),
(4, 'Admin4', 'admin4@example.com', '5559012345', 'adminpass101'),
(5, 'Admin5', 'admin5@example.com', '5550123456', 'adminpass202');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartID` int(11) NOT NULL,
  `studentID` int(11) DEFAULT NULL,
  `lessonID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartID`, `studentID`, `lessonID`) VALUES
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `lessonID` int(11) NOT NULL,
  `price` varchar(30) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `teacherID` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `thumbnailPicture` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`lessonID`, `price`, `name`, `date`, `teacherID`, `description`, `thumbnailPicture`) VALUES
(2, '2000', 'Science Experiments', '2024-11-02', 2, 'Hands-on science experiments', 'Upload/lessonThumbnailPic/1732331128_Screenshot 2024-06-29 114603.png'),
(3, '150', 'World History', '2024-11-03', 3, 'Overview of world history', 'history_thumbnail.jpg'),
(4, '180', 'English Grammar', '2024-11-04', 4, 'Learn the basics of English grammar', 'english_thumbnail.jpg'),
(5, '250', 'Art Techniques', '2024-11-05', 5, 'Introduction to various art techniques', 'art_thumbnail.jpg'),
(23, '100', 'sdcfsd', '2024-11-21', 6, 'srvr', 'Upload/lessonThumbnailPic/1732615379_Screenshot 2024-04-13 162014.png'),
(24, '100', 'sdcfsd', '2024-11-21', 6, 'asc', 'Upload/lessonThumbnailPic/1732615386_Screenshot 2024-05-01 201532.png'),
(30, '100', 'New lesson', '2024-11-23', 2, 'new lesson pass paper', 'Upload/lessonThumbnailPic/Screenshot 2024-07-02 112230.png'),
(31, '1000', 'New lesson', '2024-11-26', 6, 'sfbdtgn', 'Upload/lessonThumbnailPic/1732615430_Screenshot 2024-05-01 131124.png');

-- --------------------------------------------------------

--
-- Table structure for table `lessonrate`
--

CREATE TABLE `lessonrate` (
  `lessonRate` int(11) NOT NULL,
  `studentID` int(11) DEFAULT NULL,
  `lessonID` int(11) DEFAULT NULL,
  `rate` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lessonrate`
--

INSERT INTO `lessonrate` (`lessonRate`, `studentID`, `lessonID`, `rate`) VALUES
(2, 2, 2, 5.00),
(3, 3, 3, 4.00),
(4, 4, 4, 4.80),
(5, 5, 5, 4.70);

-- --------------------------------------------------------

--
-- Table structure for table `lesson_content`
--

CREATE TABLE `lesson_content` (
  `contentID` int(11) NOT NULL,
  `lessonID` int(11) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `contentPicture` varchar(255) DEFAULT NULL,
  `contentDescription` varchar(255) NOT NULL,
  `pdfFile` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lesson_content`
--

INSERT INTO `lesson_content` (`contentID`, `lessonID`, `video`, `contentPicture`, `contentDescription`, `pdfFile`) VALUES
(2, 2, 'science_video.mp4', 'science_content.jpg', 'Science experiments video content', 'science_content.pdf'),
(3, 3, 'history_video.mp4', 'history_content.jpg', 'World history video content', 'history_content.pdf'),
(4, 4, 'english_video.mp4', 'english_content.jpg', 'English grammar video content', 'english_content.pdf'),
(5, 5, 'art_video.mp4', 'art_content.jpg', 'Art techniques video content', 'art_content.pdf'),
(9, 2, 'Upload/LessonContent/video/1732337366_upload.mp4', 'Upload/LessonContent/picture/1732337366_Screenshot 2024-04-13 143140.png', 'pass paper', 'Upload/LessonContent/pdfFile/1732337366_e-learning platform.pdf'),
(12, 30, 'Upload/LessonContent/video/1732457607_upload.mp4', 'Upload/LessonContent/picture/1732457607_Screenshot 2024-05-01 131043.png', 'description ', 'Upload/LessonContent/pdfFile/1732457607_e-learning platform.pdf'),
(17, 23, 'Upload/LessonContent/video/1732615583_upload.mp4', 'Upload/LessonContent/picture/1732615583_Screenshot 2024-04-13 120818.png', 'rthrt', 'Upload/LessonContent/pdfFile/1732615583_e-learning platform.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `messageadminteacher`
--

CREATE TABLE `messageadminteacher` (
  `messageID` int(11) NOT NULL,
  `teacherID` int(11) DEFAULT NULL,
  `adminID` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `time` varchar(40) DEFAULT NULL,
  `owner` varchar(5) DEFAULT NULL,
  `isNew` varchar(4) DEFAULT NULL,
  `isNewAdmin` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messageadminteacher`
--

INSERT INTO `messageadminteacher` (`messageID`, `teacherID`, `adminID`, `message`, `date`, `time`, `owner`, `isNew`, `isNewAdmin`) VALUES
(2, 2, 2, 'Reminder: Submit your report by end of the day.', '2024-11-02', '10:00', '1', NULL, NULL),
(3, 3, 3, 'Issue with lesson schedule for next month.', '2024-11-03', '11:30', '0', NULL, NULL),
(4, 4, 4, 'Update: Teacher’s leave approval.', '2024-11-04', '12:00', '1', NULL, NULL),
(5, 5, 5, 'Important: New school policy update.', '2024-11-05', '13:00', '0', NULL, NULL),
(6, 2, NULL, 'hi', '2024-11-24', '21:43:47', '1', NULL, NULL),
(7, 2, NULL, 'how are you', '2024-11-24', '21:43:53', '1', NULL, NULL),
(8, 2, NULL, 'hi', '2024-11-24', '22:08:14', '1', NULL, NULL),
(9, 2, NULL, 'hey bro', '2024-11-24', '22:18:53', '1', NULL, NULL),
(10, NULL, 1, 'hey', '2024-11-25', '06:49:46', '0', NULL, NULL),
(11, 2, 1, 'hi bro', '2024-11-25', '06:57:24', '0', NULL, NULL),
(12, 2, 1, 'hey', '2024-11-25', '07:07:10', '0', NULL, NULL),
(13, 2, 1, 'hi', '2024-11-25', '07:08:33', '0', NULL, NULL),
(14, 2, 1, 'hey\r\n', '2024-11-25', '07:16:21', '0', NULL, NULL),
(15, 2, 1, 'hey', '2024-11-25', '07:16:33', '0', NULL, NULL),
(16, NULL, 1, 'hey', '2024-11-25', '07:24:04', '0', NULL, NULL),
(17, NULL, 1, 'hey', '2024-11-25', '07:25:22', '0', NULL, NULL),
(18, NULL, NULL, 'hey', '2024-11-25', '07:28:00', '0', NULL, NULL),
(19, NULL, NULL, 'hey teacher', '2024-11-25', '07:30:24', '0', NULL, NULL),
(20, NULL, NULL, 'hey', '2024-11-25', '07:30:30', '0', NULL, NULL),
(21, NULL, NULL, 'hey', '2024-11-25', '07:30:42', '0', NULL, NULL),
(22, NULL, NULL, 'hey', '2024-11-25', '07:31:05', '0', NULL, NULL),
(25, 6, NULL, 'hey', '2024-11-25', '07:40:38', '0', '0', NULL),
(26, 6, NULL, 'hey dinil', '2024-11-25', '07:42:01', '0', '0', NULL),
(27, 6, NULL, 'bro', '2024-11-25', '07:42:48', '0', '0', NULL),
(28, 6, NULL, 'yo whtup man', '2024-11-25', '07:54:20', '1', '0', NULL),
(29, 6, NULL, 'nicee', '2024-11-25', '07:54:47', '0', NULL, NULL),
(30, 6, NULL, 'hey', '2024-11-25', '19:05:09', '1', NULL, NULL),
(31, 6, NULL, 'man', '2024-11-25', '19:05:17', '1', NULL, NULL),
(32, 6, NULL, 'hey machan dinil', '2024-11-25', '19:10:18', '0', NULL, NULL),
(33, 6, NULL, 'bro', '2024-11-25', '19:10:56', '0', NULL, NULL),
(34, 6, NULL, 'bro', '2024-11-25', '19:12:22', '0', NULL, NULL),
(35, 6, NULL, 'hey', '2024-11-25', '19:50:47', '1', '0', NULL),
(36, 6, NULL, 'new one', '2024-11-25', '19:51:48', '1', '0', NULL),
(37, 2, NULL, 'hey', '2024-11-26', '07:42:39', '1', NULL, NULL),
(38, 2, NULL, 'dinil', '2024-11-26', '07:43:00', '1', NULL, NULL),
(39, 2, NULL, 'whatsup', '2024-11-26', '07:43:45', '0', '0', NULL),
(40, 2, NULL, 'dinil dulneth', '2024-11-26', '07:46:22', '0', '0', NULL),
(41, 2, NULL, 'nothing mchn', '2024-11-26', '07:48:33', '1', '0', NULL),
(42, 2, NULL, 'hey', '2024-11-26', '07:57:11', '0', NULL, NULL),
(43, 2, NULL, 'bro hey', '2024-11-26', '07:57:20', '1', '0', NULL),
(44, 2, NULL, 'whsp ', '2024-11-26', '08:00:40', '1', '0', NULL),
(45, 2, NULL, 'sfnvusr', '2024-11-26', '08:00:44', '1', '0', NULL),
(46, 2, NULL, 'nice', '2024-11-26', '08:01:14', '0', NULL, NULL),
(47, 2, NULL, 'hey', '2024-11-26', '08:14:24', '1', '0', NULL),
(48, 2, NULL, 'whtsup man', '2024-11-26', '08:14:37', '1', '0', NULL),
(49, 2, NULL, 'hey admin', '2024-11-26', '08:19:38', '1', NULL, '0'),
(50, 2, NULL, 'hey dinil(teacher)', '2024-11-26', '08:19:53', '0', '0', NULL),
(51, 2, NULL, 'bro', '2024-11-26', '08:24:37', '0', '0', '0'),
(52, 6, NULL, 'admin, need a help', '2024-11-26', '08:58:16', '1', '0', '1'),
(53, 2, NULL, 'why bro', '2024-11-26', '11:10:01', '1', NULL, '0');

-- --------------------------------------------------------

--
-- Table structure for table `messagestudentteacher`
--

CREATE TABLE `messagestudentteacher` (
  `messageID` int(11) NOT NULL,
  `teacherID` int(11) DEFAULT NULL,
  `studentID` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `time` varchar(40) DEFAULT NULL,
  `owner` varchar(5) DEFAULT NULL,
  `isNew` varchar(4) DEFAULT NULL,
  `isNewStd` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messagestudentteacher`
--

INSERT INTO `messagestudentteacher` (`messageID`, `teacherID`, `studentID`, `message`, `date`, `time`, `owner`, `isNew`, `isNewStd`) VALUES
(2, 2, 2, 'Reminder: Science project is due soon.', '2024-11-02', '11:45', '1', NULL, NULL),
(3, 3, 3, 'Please review the history chapter for the test.', '2024-11-03', '12:30', '0', NULL, NULL),
(4, 4, 4, 'Don’t forget to submit your essay.', '2024-11-04', '14:00', '1', NULL, NULL),
(5, 5, 5, 'Please prepare for the upcoming art exhibition.', '2024-11-05', '15:45', '0', NULL, NULL),
(6, 2, 8, 'hi', '2024', '22:18:32', '1', NULL, NULL),
(7, 2, 8, 'hey', '2024', '22:21:28', '1', NULL, NULL),
(8, 2, 8, 'hey bro', '2024', '22:24:06', '1', NULL, NULL),
(9, 2, 8, 'hey dinil', '2024', '22:24:18', '1', NULL, NULL),
(10, NULL, 8, 'hey', '2024-11-26', '15:23:01', '0', '0', '0'),
(11, NULL, 8, 'hey', '2024-11-26', '15:23:51', '0', '0', '0'),
(12, NULL, 8, 'hi teacher', '2024-11-26', '15:24:32', '0', '0', '0'),
(13, NULL, 8, 'hi', '2024-11-26', '15:35:50', '0', '0', '0'),
(14, 2, 8, 'hi', '2024', '15:36:10', '1', NULL, NULL),
(15, 2, 8, 'dinil dulneth', '2024', '15:36:25', '1', NULL, NULL),
(16, NULL, 8, 'dinil dulneth', '2024-11-26', '15:36:47', '0', '0', '0'),
(17, 2, 8, 'hey', '2024', '16:05:31', '1', NULL, NULL),
(18, 2, 8, 'brooooooooo', '2024', '16:05:38', '1', NULL, NULL),
(19, 2, 8, 'hi teacher ', '2024-11-26', '16:12:35', '0', '0', '0'),
(20, 2, 8, 'hey student', '2024', '16:17:22', '1', NULL, NULL),
(21, 2, 8, 'hi', '2024-11-26', '16:21:53', '1', NULL, '0'),
(22, 2, 8, 'yes please', '2024-11-26', '16:22:28', '0', '0', NULL),
(23, 2, 8, 'nothing', '2024-11-26', '16:22:35', '1', NULL, '0'),
(24, 2, 8, 'ok', '2024-11-26', '16:24:07', '1', NULL, '0'),
(25, 2, 8, 'hi', '2024-11-26', '16:34:16', '1', NULL, '0'),
(26, 2, 8, 'hey', '2024-11-26', '16:35:28', '1', NULL, '0'),
(27, 2, 8, 'im dinil', '2024-11-26', '16:42:06', '0', '0', NULL),
(28, 2, 8, 'ok im dinil', '2024-11-26', '16:43:22', '1', NULL, '0'),
(29, 2, 8, 'new', '2024-11-26', '16:44:43', '0', '0', NULL),
(30, 2, 8, 'hey', '2024-11-26', '16:52:45', '1', NULL, '0'),
(31, 2, 8, 'why', '2024-11-26', '16:53:02', '0', '0', NULL),
(32, 2, 8, 'hi teacher', '2024-11-26', '17:19:11', '0', '0', NULL),
(33, 2, 8, 'hey student dinil', '2024-11-26', '17:31:30', '1', NULL, '0');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentID` int(11) NOT NULL,
  `studentID` int(11) DEFAULT NULL,
  `teacherID` int(11) DEFAULT NULL,
  `lessonID` int(11) DEFAULT NULL,
  `lessonPrice` varchar(30) DEFAULT NULL,
  `paymentSlip` varchar(255) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `isNew` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentID`, `studentID`, `teacherID`, `lessonID`, `lessonPrice`, `paymentSlip`, `date`, `time`, `isNew`) VALUES
(2, 2, 2, 2, '200', 'payment2_slip.jpg', '2024-11-02', '11:30', '0'),
(3, 3, 3, 3, '150', 'payment3_slip.jpg', '2024-11-03', '13:00', '0'),
(4, 4, 4, 4, '180', 'payment4_slip.jpg', '2024-11-04', '14:30', '0'),
(5, 5, 5, 5, '250', 'payment5_slip.jpg', '2024-11-05', '15:30', '0');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `rateID` int(11) NOT NULL,
  `studentID` int(11) DEFAULT NULL,
  `teacherID` int(11) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `rate` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`rateID`, `studentID`, `teacherID`, `date`, `comment`, `rate`) VALUES
(2, 2, 2, '2024-11-02', 'Very knowledgeable.', 5.00),
(3, 3, 3, '2024-11-03', 'Explains clearly.', 4.00),
(4, 4, 4, '2024-11-04', 'Good at motivating students.', 4.80),
(5, 5, 5, '2024-11-05', 'Very creative in teaching.', 4.70);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentID` int(11) NOT NULL,
  `teacherID` int(11) DEFAULT NULL,
  `fName` varchar(50) DEFAULT NULL,
  `lName` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telNo` varchar(15) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `device1` varchar(255) DEFAULT NULL,
  `device2` varchar(255) DEFAULT NULL,
  `device3` varchar(255) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `school` varchar(100) DEFAULT NULL,
  `profilePicture` varchar(255) DEFAULT NULL,
  `permission` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentID`, `teacherID`, `fName`, `lName`, `password`, `email`, `telNo`, `level`, `date`, `device1`, `device2`, `device3`, `subject`, `address`, `school`, `profilePicture`, `permission`) VALUES
(2, 2, 'Bob', 'Green', 'student456', 'bob.green@example.com', '5552345678', 'Grade 11', '2024-11-02', 'ff7cb4d7e9894b05025c1e3830e0c23a', 'Phone', 'Smartwatch', 'Science', '456 Oak St', 'XYZ High School', 'bob_profile.jpg', 0),
(3, 3, 'Charlie', 'Black', 'student789', 'charlie.black@example.com', '5553456789', 'Grade 12', '2024-11-03', 'Laptop', 'Tablet', 'Smartwatch', 'History', '789 Pine St', 'DEF College', 'charlie_profile.jpg', 1),
(4, 4, 'Diana', 'Blue', 'student101', 'diana.blue@example.com', '5554567890', 'Grade 10', '2024-11-04', 'Phone', 'Laptop', 'Tablet', 'English', '123 Maple St', 'GHI Middle School', 'diana_profile.jpg', 1),
(5, 5, 'Eve', 'Red', 'student202', 'eve.red@example.com', '5555678901', 'Grade 11', '2024-11-05', 'Desktop', 'Laptop', 'Smartwatch', 'Art', '234 Birch St', 'JKL High School', 'eve_profile.jpg', 1),
(7, 2, 'fname', 'lname', '123', 'dinil@gmail.com', '01111', 'ol', '2003-04-11', 'device1', NULL, NULL, 'maths', 'a391', 'dns', 'img.jpg', 1),
(8, 2, 'Dinil', 'Dulneth', 'dinildinil', 'dinildulneth123@gmail.com', '0717488137', 'O/L', '2024-11-21', 'ff7cb4d7e9894b05025c1e3830e0c23a', NULL, NULL, 'maths', 'A391/Galpatha\r\nRuwanwella', 'dns', 'Upload/studentProfilePicture/IMG_1326-04.jpeg.jpg', 1),
(9, 2, 'dinil', 'Dulneth', 'dinildinil', 'dinildulneth124@gmail.com', '0717488137', 'O/L', '2024-11-26', 'ff7cb4d7e9894b05025c1e3830e0c23a', NULL, NULL, 'maths', 'A391/Galpatha\r\nRuwanwella', 'RCC', 'Upload/studentProfilePicture/photo_2023-06-16_10-50-55.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `studentloginhistory`
--

CREATE TABLE `studentloginhistory` (
  `loginID` int(11) NOT NULL,
  `studentID` int(11) DEFAULT NULL,
  `loginDate` varchar(40) DEFAULT NULL,
  `time` varchar(40) DEFAULT NULL,
  `deviceFingerprint` varchar(255) DEFAULT NULL,
  `deviceInfo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studentloginhistory`
--

INSERT INTO `studentloginhistory` (`loginID`, `studentID`, `loginDate`, `time`, `deviceFingerprint`, `deviceInfo`) VALUES
(2, 2, '2024-11-02', '11:30', '00:15:23:02:9g:32', 'iPhone 12'),
(3, 3, '2024-11-03', '13:00', '00:16:24:03:9h:33', 'Android Tablet'),
(4, 4, '2024-11-04', '14:00', '00:17:25:04:9i:34', 'MacBook Pro'),
(5, 5, '2024-11-05', '15:30', '00:18:26:05:9j:35', 'Samsung Galaxy'),
(6, NULL, '2024-11-21', '18:30:43', 'ff7cb4d7e9894b05025c1e3830e0c23a', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(7, NULL, '2024-11-21', '18:30:58', 'ff7cb4d7e9894b05025c1e3830e0c23a', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(8, NULL, '2024-11-21', '18:31:53', 'ff7cb4d7e9894b05025c1e3830e0c23a', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(9, NULL, '2024-11-21', '18:32:07', 'ff7cb4d7e9894b05025c1e3830e0c23a', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(10, NULL, '2024-11-21', '18:32:32', 'ff7cb4d7e9894b05025c1e3830e0c23a', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(11, NULL, '2024-11-21', '18:34:11', 'ff7cb4d7e9894b05025c1e3830e0c23a', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(12, NULL, '2024-11-22', '17:21:59', 'ff7cb4d7e9894b05025c1e3830e0c23a', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(13, NULL, '2024-11-22', '17:23:29', 'ff7cb4d7e9894b05025c1e3830e0c23a', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(14, NULL, '2024-11-22', '17:27:58', 'ff7cb4d7e9894b05025c1e3830e0c23a', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(15, NULL, '2024-11-22', '17:30:02', 'ff7cb4d7e9894b05025c1e3830e0c23a', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(16, NULL, '2024-11-22', '17:32:14', 'ff7cb4d7e9894b05025c1e3830e0c23a', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(17, NULL, '2024-11-22', '17:33:25', 'ff7cb4d7e9894b05025c1e3830e0c23a', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(18, NULL, '2024-11-22', '17:35:01', 'ff7cb4d7e9894b05025c1e3830e0c23a', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(19, NULL, '2024-11-22', '17:36:49', 'ff7cb4d7e9894b05025c1e3830e0c23a', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(20, NULL, '2024-11-22', '17:37:18', 'ff7cb4d7e9894b05025c1e3830e0c23a', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(21, 2, '2024-11-22', '17:39:28', 'ff7cb4d7e9894b05025c1e3830e0c23a', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(22, 8, '2024-11-22', '17:39:43', 'ff7cb4d7e9894b05025c1e3830e0c23a', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(23, 9, '2024-11-26', '13:49:56', 'ff7cb4d7e9894b05025c1e3830e0c23a', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(24, 9, '2024-11-26', '13:52:02', 'ff7cb4d7e9894b05025c1e3830e0c23a', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(25, 9, '2024-11-26', '14:03:12', 'ff7cb4d7e9894b05025c1e3830e0c23a', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(26, 8, '2024-11-26', '14:34:01', 'ff7cb4d7e9894b05025c1e3830e0c23a', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(27, 8, '2024-11-26', '14:34:32', 'ff7cb4d7e9894b05025c1e3830e0c23a', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(28, 8, '2024-11-26', '14:35:31', 'ff7cb4d7e9894b05025c1e3830e0c23a', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(29, 8, '2024-11-26', '14:35:58', 'ff7cb4d7e9894b05025c1e3830e0c23a', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(30, 8, '2024-11-26', '14:36:08', 'ff7cb4d7e9894b05025c1e3830e0c23a', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(31, 8, '2024-11-26', '14:37:57', 'ff7cb4d7e9894b05025c1e3830e0c23a', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(32, 8, '2024-11-26', '14:42:28', 'ff7cb4d7e9894b05025c1e3830e0c23a', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(33, 8, '2024-11-26', '16:35:55', 'ff7cb4d7e9894b05025c1e3830e0c23a', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(34, 8, '2024-11-26', '17:28:38', 'ff7cb4d7e9894b05025c1e3830e0c23a', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacherID` int(11) NOT NULL,
  `fName` varchar(50) DEFAULT NULL,
  `lName` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telNo` varchar(15) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `profilePicture` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `school` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `permission` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacherID`, `fName`, `lName`, `subject`, `email`, `telNo`, `level`, `profilePicture`, `description`, `date`, `school`, `password`, `permission`) VALUES
(2, 'Jane', 'Smith new', 'Science', 'jane.smith@example.com', '0987654321', 'High School', 'Upload/teacherProfilePicture/user-account-circle-flat-design-long-shadow-glyph-icon-user-profile-picture-userpic-silhouette-illustration-vector.jpg', 'Experienced science teacher', '2024-11-02', 'XYZ High School', 'password456', 1),
(3, 'David', 'Brown', 'History', 'david.brown@example.com', '1122334455', 'College', 'david_profile.jpg', 'History expert', '2024-11-03', 'DEF College', 'password789', 1),
(4, 'Emily', 'Clark', 'English', 'emily.clark@example.com', '2233445566', 'Middle School', 'emily_profile.jpg', 'English literature teacher', '2024-11-04', 'GHI Middle School', 'password101', 1),
(5, 'Michael', 'Johnson', 'Art', 'michael.johnson@example.com', '3344556677', 'High School', 'michael_profile.jpg', 'Art teacher with a passion for creativity', '2024-11-05', 'JKL High School', 'password202', 1),
(6, 'L.A.Dinil', 'Dulneth', 'Maths', 'dinildulneth123@gmail.com', '0717488137', 'A/L', 'Upload/teacherProfilePicture/IMG_1326-04.jpeg.jpg', 'im maths teacher', '2024-11-21', 'dinil', 'dinildinil', 1),
(8, 'dinil', 'Dulneth', 'physics', 'dinildulneth124@gmail.com', '0717488137', 'A/L', 'Upload/teacherProfilePicture/Screenshot 2024-05-01 131124.png', 'im maths teacher', '2024-11-26', 'RCC', 'dinildinil', 1),
(9, 'dinil', 'Dulneth', 'physics', 'dinildulneth@gmail.com', '0717488137', 'A/L', 'Upload/teacherProfilePicture/Screenshot 2024-04-13 154314.png', 'im physics teacher', '2024-11-26', 'RCC', '12345678', 1),
(11, 'dinil', 'Dulneth', 'physics', 'dinildulneth1234@gmail.com', '0717488137', 'A/L', 'Upload/teacherProfilePicture/Screenshot 2024-04-13 154314.png', 'asfv', '2024-11-26', 'RCC', 'dinildinil', 1);

-- --------------------------------------------------------

--
-- Table structure for table `teacherloginhistory`
--

CREATE TABLE `teacherloginhistory` (
  `loginID` int(11) NOT NULL,
  `teacherID` int(11) DEFAULT NULL,
  `loginDate` varchar(40) DEFAULT NULL,
  `time` varchar(40) DEFAULT NULL,
  `deviceFingerprint` varchar(255) DEFAULT NULL,
  `deviceInfo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacherloginhistory`
--

INSERT INTO `teacherloginhistory` (`loginID`, `teacherID`, `loginDate`, `time`, `deviceFingerprint`, `deviceInfo`) VALUES
(2, 2, '2024-11-02', '10:30', '00:12:22:02:9f:12', 'iPad'),
(3, 3, '2024-11-03', '11:45', '00:13:23:03:9f:13', 'Desktop Computer'),
(4, 4, '2024-11-04', '13:00', '00:14:24:04:9f:14', 'MacBook Air'),
(5, 5, '2024-11-05', '14:30', '00:15:25:05:9f:15', 'Surface Pro'),
(6, 6, '2024-11-21', '18:48:42', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(7, 6, '2024-11-21', '18:49:34', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(8, 6, '2024-11-22', '17:20:05', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(9, 6, '2024-11-22', '17:40:20', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(10, 2, '2024-11-22', '17:41:52', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(11, 6, '2024-11-22', '17:52:46', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(12, 2, '2024-11-22', '18:06:22', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(13, 2, '2024-11-23', '02:09:18', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(14, 2, '2024-11-23', '02:34:24', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(15, 2, '2024-11-23', '02:36:25', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(16, 2, '2024-11-23', '02:36:59', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(17, 2, '2024-11-23', '04:16:14', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(18, 2, '2024-11-23', '04:17:18', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(19, 6, '2024-11-23', '04:27:38', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(20, 2, '2024-11-23', '04:29:14', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(21, 2, '2024-11-23', '04:30:26', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(22, 6, '2024-11-23', '04:30:38', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(23, 6, '2024-11-23', '04:31:51', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(24, 2, '2024-11-23', '04:31:55', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(25, 6, '2024-11-23', '05:01:49', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(26, 2, '2024-11-23', '05:08:15', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(27, 2, '2024-11-23', '05:21:00', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(28, 2, '2024-11-23', '05:39:35', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(29, 2, '2024-11-23', '05:42:48', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(30, 2, '2024-11-23', '06:40:11', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(31, 2, '2024-11-24', '05:13:25', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(32, 2, '2024-11-24', '05:38:26', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(33, 2, '2024-11-24', '06:29:56', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(34, 2, '2024-11-24', '14:51:08', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(35, 2, '2024-11-24', '15:04:42', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(36, 2, '2024-11-24', '16:02:52', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(37, 2, '2024-11-24', '16:03:26', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(38, 2, '2024-11-24', '19:15:06', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(39, 2, '2024-11-24', '19:56:03', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(40, 2, '2024-11-24', '20:00:42', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(41, 2, '2024-11-24', '20:01:37', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(42, 2, '2024-11-24', '21:55:23', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(43, 2, '2024-11-24', '22:17:18', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(44, 2, '2024-11-24', '22:24:40', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(45, 2, '2024-11-25', '05:46:22', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(46, 6, '2024-11-25', '07:54:04', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(47, 2, '2024-11-25', '08:06:49', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(48, 2, '2024-11-25', '08:09:12', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(49, 2, '2024-11-25', '15:19:45', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(50, 2, '2024-11-25', '17:33:22', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(51, 6, '2024-11-25', '19:03:06', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(52, 2, '2024-11-26', '07:42:30', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(53, 6, '2024-11-26', '08:57:57', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(54, 2, '2024-11-26', '09:14:58', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(55, 2, '2024-11-26', '09:19:14', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(56, 6, '2024-11-26', '09:27:37', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(57, 6, '2024-11-26', '09:29:22', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(58, 6, '2024-11-26', '09:46:54', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(59, 6, '2024-11-26', '10:04:30', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(60, 6, '2024-11-26', '10:11:34', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(61, 2, '2024-11-26', '10:43:39', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(62, 6, '2024-11-26', '10:45:13', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(63, 6, '2024-11-26', '10:49:49', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(64, 6, '2024-11-26', '11:02:49', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(65, 2, '2024-11-26', '11:07:17', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(66, 2, '2024-11-26', '11:25:16', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(67, 11, '2024-11-26', '11:42:26', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(68, 2, '2024-11-26', '14:27:09', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(69, 2, '2024-11-26', '15:25:24', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(70, 2, '2024-11-26', '16:42:39', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(71, 2, '2024-11-26', '17:08:00', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
(72, 2, '2024-11-26', '17:31:12', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0');

-- --------------------------------------------------------

--
-- Table structure for table `videoviewhistory`
--

CREATE TABLE `videoviewhistory` (
  `viewDevice` varchar(255) DEFAULT NULL,
  `lessonID` int(11) DEFAULT NULL,
  `contactID` int(11) DEFAULT NULL,
  `studentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videoviewhistory`
--

INSERT INTO `videoviewhistory` (`viewDevice`, `lessonID`, `contactID`, `studentID`) VALUES
('Phone', 2, 2, 2),
('Tablet', 3, 3, 3),
('Desktop', 4, 4, 4),
('Smartwatch', 5, 5, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_table`
--
ALTER TABLE `access_table`
  ADD PRIMARY KEY (`accessID`),
  ADD KEY `studentID` (`studentID`),
  ADD KEY `teacherID` (`teacherID`),
  ADD KEY `lessonID` (`lessonID`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartID`),
  ADD KEY `studentID` (`studentID`),
  ADD KEY `lessonID` (`lessonID`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`lessonID`),
  ADD KEY `teacherID` (`teacherID`);

--
-- Indexes for table `lessonrate`
--
ALTER TABLE `lessonrate`
  ADD PRIMARY KEY (`lessonRate`),
  ADD KEY `studentID` (`studentID`),
  ADD KEY `lessonID` (`lessonID`);

--
-- Indexes for table `lesson_content`
--
ALTER TABLE `lesson_content`
  ADD PRIMARY KEY (`contentID`),
  ADD KEY `lessonID` (`lessonID`);

--
-- Indexes for table `messageadminteacher`
--
ALTER TABLE `messageadminteacher`
  ADD PRIMARY KEY (`messageID`),
  ADD KEY `teacherID` (`teacherID`),
  ADD KEY `adminID` (`adminID`);

--
-- Indexes for table `messagestudentteacher`
--
ALTER TABLE `messagestudentteacher`
  ADD PRIMARY KEY (`messageID`),
  ADD KEY `teacherID` (`teacherID`),
  ADD KEY `studentID` (`studentID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentID`),
  ADD KEY `studentID` (`studentID`),
  ADD KEY `teacherID` (`teacherID`),
  ADD KEY `lessonID` (`lessonID`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rateID`),
  ADD KEY `studentID` (`studentID`),
  ADD KEY `teacherID` (`teacherID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentID`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `teacherID` (`teacherID`);

--
-- Indexes for table `studentloginhistory`
--
ALTER TABLE `studentloginhistory`
  ADD PRIMARY KEY (`loginID`),
  ADD KEY `studentID` (`studentID`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacherID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `teacherloginhistory`
--
ALTER TABLE `teacherloginhistory`
  ADD PRIMARY KEY (`loginID`),
  ADD KEY `teacherID` (`teacherID`);

--
-- Indexes for table `videoviewhistory`
--
ALTER TABLE `videoviewhistory`
  ADD KEY `lessonID` (`lessonID`),
  ADD KEY `studentID` (`studentID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_table`
--
ALTER TABLE `access_table`
  MODIFY `accessID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `lessonID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `lessonrate`
--
ALTER TABLE `lessonrate`
  MODIFY `lessonRate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lesson_content`
--
ALTER TABLE `lesson_content`
  MODIFY `contentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `messageadminteacher`
--
ALTER TABLE `messageadminteacher`
  MODIFY `messageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `messagestudentteacher`
--
ALTER TABLE `messagestudentteacher`
  MODIFY `messageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `paymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `rateID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `studentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `studentloginhistory`
--
ALTER TABLE `studentloginhistory`
  MODIFY `loginID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacherID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `teacherloginhistory`
--
ALTER TABLE `teacherloginhistory`
  MODIFY `loginID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `access_table`
--
ALTER TABLE `access_table`
  ADD CONSTRAINT `access_table_ibfk_1` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `access_table_ibfk_2` FOREIGN KEY (`teacherID`) REFERENCES `teacher` (`teacherID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `access_table_ibfk_3` FOREIGN KEY (`lessonID`) REFERENCES `lesson` (`lessonID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`lessonID`) REFERENCES `lesson` (`lessonID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `lesson_ibfk_1` FOREIGN KEY (`teacherID`) REFERENCES `teacher` (`teacherID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lessonrate`
--
ALTER TABLE `lessonrate`
  ADD CONSTRAINT `lessonrate_ibfk_1` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lessonrate_ibfk_2` FOREIGN KEY (`lessonID`) REFERENCES `lesson` (`lessonID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lesson_content`
--
ALTER TABLE `lesson_content`
  ADD CONSTRAINT `lesson_content_ibfk_1` FOREIGN KEY (`lessonID`) REFERENCES `lesson` (`lessonID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `messageadminteacher`
--
ALTER TABLE `messageadminteacher`
  ADD CONSTRAINT `messageadminteacher_ibfk_1` FOREIGN KEY (`teacherID`) REFERENCES `teacher` (`teacherID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `messageadminteacher_ibfk_2` FOREIGN KEY (`adminID`) REFERENCES `admin` (`adminID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `messagestudentteacher`
--
ALTER TABLE `messagestudentteacher`
  ADD CONSTRAINT `messagestudentteacher_ibfk_1` FOREIGN KEY (`teacherID`) REFERENCES `teacher` (`teacherID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `messagestudentteacher_ibfk_2` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`teacherID`) REFERENCES `teacher` (`teacherID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payment_ibfk_3` FOREIGN KEY (`lessonID`) REFERENCES `lesson` (`lessonID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`teacherID`) REFERENCES `teacher` (`teacherID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`teacherID`) REFERENCES `teacher` (`teacherID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `studentloginhistory`
--
ALTER TABLE `studentloginhistory`
  ADD CONSTRAINT `studentloginhistory_ibfk_1` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teacherloginhistory`
--
ALTER TABLE `teacherloginhistory`
  ADD CONSTRAINT `teacherloginhistory_ibfk_1` FOREIGN KEY (`teacherID`) REFERENCES `teacher` (`teacherID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `videoviewhistory`
--
ALTER TABLE `videoviewhistory`
  ADD CONSTRAINT `videoviewhistory_ibfk_1` FOREIGN KEY (`lessonID`) REFERENCES `lesson` (`lessonID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `videoviewhistory_ibfk_2` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
