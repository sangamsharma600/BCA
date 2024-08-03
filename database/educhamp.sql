-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 22, 2024 at 04:56 PM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bls`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

DROP TABLE IF EXISTS `about_us`;
CREATE TABLE IF NOT EXISTS `about_us` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slider_img` varchar(100) NOT NULL,
  `title1` varchar(255) NOT NULL,
  `text1` text NOT NULL,
  `img` varchar(100) NOT NULL,
  `title2` varchar(255) NOT NULL,
  `text2` text NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `slider_img`, `title1`, `text1`, `img`, `title2`, `text2`, `status`, `created_at`, `updated_at`) VALUES
(3, 'slidermessage1633081657.jpg', 'About Us', 'EduChamp is one of the best inclusive computer training institutes in Kathmandu, Nepal. Established in 2008, our professional IT Training and Development center has been employing experts in this field to impart professional education to trainees. We offer well-structured complete professional training in various Programming Languages, Graphics & Multimedia, Web Designing as well as Development Training that is based upon the current recruitment needs in the IT market.', 'webshutterstock331439570-15659-2104-6403-1565945289_1200x01633081719.jpg', 'Facilities', 'Since establishment, we have successfully established and maintained network with more than fifty IT and other companies which has made us able to offer and provide our students with internship and job opportunities.', 1, '2021-09-18 14:42:11', '2021-09-18 14:42:11'),
(4, 'iconbls1655744967.jpg', 'Veritatis et est ni', 'Vel eiusmod ipsum no', 'capture1656009872.JPG', 'Facere exercitatione', 'Reprehenderit perfer', 1, '2022-06-26 16:57:43', '2022-06-26 16:57:43'),
(5, 'iconbls1655744967.jpg', 'Non commodi lorem om', 'Dolore nesciunt ali', '11656010177.jpeg', 'Amet explicabo Har', 'Nobis officia cupidi', 1, '2022-06-26 16:59:13', '2022-06-26 16:59:13');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `confirm_password` varchar(255) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `confirm_password`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Ram Thapa', 'ram@gmail.com', '202cb962ac59075b964b07152d234b70', '', 1, '2021-09-08 10:43:05', '2021-09-08 10:43:05'),
(2, 'Sita Pun', 'sita@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', 1, '2021-09-10 10:28:52', '2021-09-10 10:28:52'),
(4, 'Dammar Khadayat', 'dammar@gmail.com', '202cb962ac59075b964b07152d234b70', '', 1, '2021-09-19 08:09:14', '2022-06-17 13:12:07'),
(5, 'Malachi Guy', 'kulycov@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 1, '2022-06-17 15:55:46', '2022-06-17 15:55:46');

-- --------------------------------------------------------

--
-- Table structure for table `admission_form`
--

DROP TABLE IF EXISTS `admission_form`;
CREATE TABLE IF NOT EXISTS `admission_form` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `course` varchar(255) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admission_form`
--

INSERT INTO `admission_form` (`id`, `fname`, `lname`, `address`, `dob`, `phone_number`, `email`, `gender`, `course`, `status`, `created_at`, `updated_at`) VALUES
(1, 's', 'sd', 'sads', '2021-10-01', '212321', 's@gmail.com', 'Male', 'Technology', 1, '2021-10-04 07:05:19', '2021-10-04 07:05:19'),
(2, 'Serina Barton', 'Reed Day', 'Quia a iure sint com', '2000-09-25', '6213113924', 'hywucy@mailinator.com', 'Male', 'Hospital', 1, '2022-06-23 18:51:32', '2022-06-23 18:51:32'),
(3, 'May Bass', 'Adena Bartlett', 'Fuga Non molestiae ', '2021-06-06', '4579025353', 'josegow@mailinator.com', 'Female', 'Please Select Your Course', 1, '2022-06-26 17:09:54', '2022-06-26 17:09:54');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `content`, `img`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Ut rem ut quia molli', 'Occaecat optio sit ', 'bls-logopng1655744939.png', 1, '2022-06-22 16:30:14', '2022-06-22 16:30:14'),
(7, 'Magna qui at similiq', 'Pokhara is a city on Phewa Lake, in central Nepal. Itâ€™s known as a gateway to the Annapurna Circuit, a popular trail in the Himalayas. Tal Barahi Temple, a 2-story pagoda, sits on an island in the lake. \r\n\r\nOn the eastern shore, the Lakeside district has yoga centers and restaurants. In the cityâ€™s south, the International Mountain Museum has exhibits on the history of mountaineering and the people of the Himalayas.', 'bls-logopng1655744954.png', 1, '2022-06-22 16:31:13', '2022-06-22 16:31:13'),
(8, 'Veniam consequuntur', 'Velit nisi culpa it', 'bls-logopng1655744939.png', 1, '2022-06-22 17:00:54', '2022-06-22 17:00:54'),
(9, 'Velit et rerum aliqu', 'Dolor tempor qui dol', 'iconbls1655744967.jpg', 1, '2022-06-23 18:24:13', '2022-06-23 18:24:13'),
(10, 'Ratione fugiat occae', 'Eiusmod nihil ut ani', 'iconbls1655744967.jpg', 1, '2022-06-26 17:00:52', '2022-06-26 17:00:52');

-- --------------------------------------------------------

--
-- Table structure for table `bsignup`
--

DROP TABLE IF EXISTS `bsignup`;
CREATE TABLE IF NOT EXISTS `bsignup` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirm_password` varchar(255) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bsignup`
--

INSERT INTO `bsignup` (`id`, `username`, `password`, `confirm_password`, `status`, `created_at`, `updated_at`) VALUES
(1, 'corobete', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 1, '2022-06-18 09:43:23', '2022-06-18 09:43:23'),
(2, 'zovugy', 'c20ad4d76fe97759aa27a0c99bff6710', 'c20ad4d76fe97759aa27a0c99bff6710', 1, '2022-06-18 09:43:34', '2022-06-18 09:43:34'),
(3, 'dammar', 'c20ad4d76fe97759aa27a0c99bff6710', 'c20ad4d76fe97759aa27a0c99bff6710', 1, '2022-06-18 10:12:05', '2022-06-18 10:12:05'),
(4, 'dammar', '202cb962ac59075b964b07152d234b70', '202cb962ac59075b964b07152d234b70', 1, '2022-06-18 10:12:43', '2022-06-18 10:12:43'),
(5, 'xdezo', '202cb962ac59075b964b07152d234b70', '202cb962ac59075b964b07152d234b70', 1, '2022-06-19 18:07:42', '2022-06-19 18:07:42'),
(6, 'BCoNepal', '202cb962ac59075b964b07152d234b70', '202cb962ac59075b964b07152d234b70', 1, '2022-06-19 18:10:52', '2022-06-19 18:10:52');

-- --------------------------------------------------------

--
-- Table structure for table `businesslists`
--

DROP TABLE IF EXISTS `businesslists`;
CREATE TABLE IF NOT EXISTS `businesslists` (
  `id` int NOT NULL AUTO_INCREMENT,
  `business_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `business_category` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `zip_code` int NOT NULL,
  `business_email` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `businesslists`
--

INSERT INTO `businesslists` (`id`, `business_name`, `address`, `mobile`, `business_category`, `logo`, `country`, `province`, `district`, `zip_code`, `business_email`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(55, 'Ali Blackburn', 'Sit quis natus dolor', '2938247361', 'college', 'logoblue1655744920.png', 'country', 'karnali', 'Bajhang', 88449, 'hedevogo@mailinator.com', 'Atque blanditiis ab ', 1, '2022-06-22 14:05:20', '2022-06-22 14:05:20', NULL),
(54, 'Ezekiel Townsend', 'Dolore enim velit s', '6811753737', 'college', 'iconbls1655744967.jpg', 'china', 'karnali', 'Choose district', 51496, 'qyvyjyk@mailinator.com', 'Quia id eligendi quo', 1, '2022-06-22 14:05:10', '2022-06-22 14:05:10', NULL),
(53, 'Wylie Hester', 'Rerum cum aut necess', '1577653438', 'training center', 'bls-logopng1655744954.png', 'nepal', 'suderpachim', 'Choose district', 51219, 'ryfim@mailinator.com', 'Fugiat consequuntur', 1, '2022-06-22 14:05:02', '2022-06-22 14:05:02', NULL),
(52, 'bcoNepal1', 'Voluptates et proide', '4966595796', 'training center', 'logoblue1655744920.png', 'china', 'suderpachim', 'Kaski', 10646, 'cupuxica@mailinator.com', 'Vel fugit et mollit', 1, '2022-06-22 14:03:55', '2022-06-22 14:03:55', NULL),
(51, 'Xaviera Mcdonald', 'Aspernatur consectet', '9931150647', 'training center', 'iconbls1655744967.jpg', 'nepal', 'karnali', 'Choose district', 80783, 'vova@mailinator.com', 'Placeat molestias c', 1, '2022-06-21 12:11:03', '2022-06-21 12:11:03', NULL),
(50, 'Jane Owens', 'Mollitia non excepte', '9461943639', 'Business Category', 'iconbls1655744967.jpg', 'country', 'karnali', 'Choose district', 84318, 'tozohi@mailinator.com', 'Sint et mollitia lau', 1, '2022-06-21 12:10:55', '2022-06-21 12:10:55', NULL),
(49, 'Debra Campos', 'Voluptatem aliquam o', '2203247035', 'Business Category', 'bls-logopng1655744939.png', 'country', 'Choose Proviece', 'Kaski', 10136, 'nykiryhav@mailinator.com', 'Iusto non excepteur ', 1, '2022-06-21 12:10:48', '2022-06-21 12:10:48', NULL),
(46, 'xdezo', 'Cillum esse quod al', '7508690969', 'bancking', '2dxfwtp7qg554cxg1633516507.jpg', 'nepal', 'karnali', 'Kaski', 51976, 'piqejo@mailinator.com', 'Cillum odit iste dol', 1, '2022-06-19 17:54:27', '2022-06-19 17:54:27', NULL),
(47, 'Cameran Morris', 'Eum eos fuga A aute', '2619524664', 'training center', 'mainfavicon1634574896.png', 'india', 'Choose Proviece', 'Bajhang', 90732, 'ryjoje@mailinator.com', 'Adipisci et in asper', 1, '2022-06-19 17:58:50', '2022-06-19 17:58:50', NULL),
(48, 'bcoNepal', 'Explicabo Ut molest', '0595510796', 'Business Category', 'mainfavicon1634574896.png', 'china', 'gamdaki', 'Bajhang', 57051, 'hoqypatudu@mailinator.com', 'Enim repellendus Ni', 1, '2022-06-19 18:09:48', '2022-06-19 18:09:48', NULL),
(56, 'Yuli Pollard', 'Aliquid ut sunt haru', '6101696746', 'training center', 'bls-logopng1655744954.png', 'country', 'Choose Proviece', 'Choose district', 61175, 'deryhaweko@mailinator.com', 'Et officia ad assume', 1, '2022-06-22 18:58:49', '2022-06-22 18:58:49', NULL),
(57, 'Garrison Gomez', 'Id id ad Nam nemo r', '6022566725', 'college', 'bls-logopng1655744954.png', 'nepal', 'suderpachim', 'Bajhang', 28807, 'cezutyj@mailinator.com', 'Consequatur Suscipi', 1, '2022-06-22 19:05:59', '2022-06-22 19:05:59', NULL),
(58, 'Bee Farm', 'Pokhara', '7046313152', 'college', 'logoblue1655744920.png', 'nepal', 'gamdaki', 'Kaski', 66588, 'dytomac@mailinator.com', 'Deleniti optio eius', 1, '2022-06-23 01:27:12', '2022-06-23 01:27:12', NULL),
(59, 'Leo Herman', 'Consequatur voluptat', '3515227933', 'training center', 'bls-logopng1655744954.png', 'india', 'karnali', 'Bajhang', 86931, 'ticaja@mailinator.com', 'Aliquip praesentium ', 1, '2022-06-23 16:10:13', '2022-06-23 16:10:13', NULL),
(60, 'LGIC', 'Ex beatae nobis volu', '4867157460', 'college', 'bls-logopng1655744954.png', 'nepal', 'gamdaki', 'Kaski', 93073, 'galysij@mailinator.com', 'In esse voluptas ess', 1, '2022-06-23 16:11:48', '2022-06-23 16:11:48', NULL),
(61, 'Bethany Hamilton', 'Et eum voluptatem pr', '0489712395', 'Gandaki', 'bls-logopng1655744954.png', ' nepal', 'gandaki', 'parbat', 61487, 'nijuty@mailinator.com', 'Eaque quod excepturi', 1, '2022-06-23 18:35:39', '2022-06-23 18:35:39', NULL),
(62, 'New BCoNepal', 'Quia irure nulla obc', '7864758881', 'Gandaki', 'bls-logopng1655744939.png', ' nepal', 'gandaki', 'parbat', 84172, 'bujovo@mailinator.com', 'Reprehenderit corrup', 1, '2022-06-24 01:33:30', '2022-06-24 01:33:30', NULL),
(63, 'Maxine Huber', 'Placeat non ducimus', '6858120514', 'Gandaki', 'capture1656009872.JPG', 'China', 'Gandaki', 'Bhaktapur', 43669, 'tafujihuw@mailinator.com', 'Maiores autem totam ', 1, '2022-06-24 05:13:16', '2022-06-24 05:13:16', NULL),
(64, 'Scarlet Keith', 'Enim in laboris debi', '0750922103', 'Business', 'logoblue1655744828.png', 'Nepal', 'Gandaki', 'Bajhang', 94545, 'titukusenu@mailinator.com', 'A ut ut corrupti ul', 1, '2022-06-26 17:36:15', '2022-06-26 17:36:15', NULL),
(65, 'Blythe Johnston', 'Omnis architecto off', '6976807549', 'Business', 'bls-logopng1655744954.png', 'China', 'Sudurpachima', 'Chitwan', 32681, 'rutolygiq@mailinator.com', 'Eu fuga Excepturi e', 1, '2022-06-26 17:37:58', '2022-06-26 17:37:58', NULL),
(66, 'Dorian Cardenas', 'Enim quisquam quia d', '9524683981', 'IT', 'logoblue1655744828.png', 'China', 'Gandaki', 'Bhaktapur', 72307, 'halizafa@mailinator.com', 'Veniam suscipit in ', 1, '2022-06-26 17:40:44', '2022-06-26 17:40:44', NULL),
(67, 'Chloe Ellison', 'Et nihil adipisicing', '2247474316', 'IT', 'bls-logopng1655744939.png', 'Nepal', 'Sudurpachima', 'Bajhang', 83470, 'gocirepub@mailinator.com', 'Dignissimos voluptas', 1, '2022-07-02 05:36:16', '2022-07-02 05:36:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `blogs_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `blogs_id`, `name`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 'Samuel', 'Interesting blog. It  is very infromative.', 1, '2021-10-19 07:09:56', '2021-10-19 07:09:56'),
(2, 3, 'Binod Pun ', 'Enjoyed reading it.', 1, '2021-10-24 08:32:23', '2021-10-24 08:32:23');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact_content`
--

DROP TABLE IF EXISTS `contact_content`;
CREATE TABLE IF NOT EXISTS `contact_content` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slider_img` varchar(255) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `btn_text` varchar(100) NOT NULL,
  `map` varchar(255) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_content`
--

INSERT INTO `contact_content` (`id`, `slider_img`, `title`, `description`, `btn_text`, `map`, `status`, `created_at`, `updated_at`) VALUES
(1, 'sdsad', 'sdasdasd', 'sadsad', 'ASAsa', 'SDSAD', 1, '2021-09-12 06:02:39', '2021-09-12 06:02:39');

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

DROP TABLE IF EXISTS `counter`;
CREATE TABLE IF NOT EXISTS `counter` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `count` varchar(100) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` (`id`, `title`, `count`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Completed Projects', '300', 1, '2021-10-21 09:31:48', '2021-10-21 09:31:48'),
(2, 'Happy Clients', '1000', 1, '2021-10-21 09:46:43', '2021-10-21 09:46:43'),
(3, 'Questioned Answers', '2000', 1, '2021-10-21 09:57:59', '2021-10-21 09:57:59'),
(4, 'Available Courses', '5', 1, '2021-10-21 09:58:45', '2021-10-21 09:58:45');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_category_id` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `course_category_id`, `title`, `content`, `img`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 'Introduction to Structures', 'The structure and architecture be may related through a variety of methods which includes a full range of priority of the structure over architecture to the structural requirements ignorance in determining the shape and beauty of the building. In this study we are determined to first examine the relationship between structure and architecture as two monotonous elements and consider the position of high-tech architecture in the same tone as well as the structural position in creating space and especially architectural space. This study is an analytical study in which the library method is used for data collection. It is concluded from the various studies in the area that although in the past the building structure must had been remained hidden and covered and the had to be no traces of structure within or outside of the buildings but with the development of science and technology the role and position of structures have changed as far as the structure itself creates architectural space and gives identity. At first glance structure only provides stability of the building, and it cannot be the creator of architectural space. But, such an approach creates the border between structure and architecture. In the past, due to lack of coordination between structures and architecture and due to the structural limitation many buildings did not finish and in fact architecture had lost its identity and become a horizontal and vertical cover to the building structure.', '2dxfwtp7qg554cxg1633516507.jpg', 1, '2021-10-04 08:47:35', '2021-10-04 08:47:35'),
(4, 1, 'Urban Design', 'Urban design is about a great variety of places: whether town and city centres, residential neighbourhoods and suburbs, grassy fields on the edge of villages, down-at-heel industrial estates, or unloved and overlooked areas around train stations, rivers and canals. Urban design defines the nature of buildings and the spaces between them, and how the design itself should be worked out: design processes and outcomes. Urban design inspires, illustrates and defines how a place could be improved or protected to bring benefits to investors, developers and wider society.', 'best-architecture-company-in-bihar1633516501.jpg', 1, '2021-10-06 09:00:19', '2021-10-06 09:00:19'),
(5, 2, 'Business Basics', 'The term business refers to an organization or enterprising entity engaged in commercial, industrial, or professional activities. Businesses can be for-profit entities or they can be non-profit organizations that operate to fulfill a charitable mission or further a social cause. Businesses range in scale from sole proprietorships to international corporations and can range in size from small to large. The term business can also be used to define the efforts and activities of individuals to produce and sell goods and services for profit.', '11569046-3x2-700x4671633516511.jpg', 1, '2021-10-06 09:18:17', '2021-10-06 09:18:17'),
(6, 2, 'Financial Management', 'Financial Management is a vital activity in any organization. It is the process of planning, organizing, controlling and monitoring financial resources with a view to achieve organizational goals and objectives. It is an ideal practice for controlling the financial activities of an organization such as procurement of funds, utilization of funds, accounting, payments, risk assessment and every other thing related to money. In other terms, Financial Management is the application of general principles of management to the financial possessions of an enterprise. Proper management of an organization’s finance provides quality fuel and regular service to ensure efficient functioning. If finances are not properly dealt with an organization will face barriers that may have severe repercussions on its growth and development.', 'financial-awareness-model1633516529.png', 1, '2021-10-06 09:18:55', '2021-10-06 09:18:55'),
(7, 2, 'Marketing Practices', 'Good marketing practice in section 1 remains a central standard to be met by all businesses in consideration for consumers and general public interest. The requirements set out in the general clause entail a positive commitment on the part of the business in that business and trade in the future must exercise good marketing practice with reference to consumers, other businesses and public interests. Previously section 1 simply read that business and trade should not act in breach of good marketing practices. This change of wording does not alter substantially the legal position of business and trade; rather the purpose of the new formulation is to emphasize the importance of actively taking a stand on good marketing practices in general and make sure that the rules are being observed.', 'online_marketing_1140644148-1080x6271633516533.jpg', 1, '2021-10-06 09:19:54', '2021-10-06 09:19:54'),
(8, 3, 'Introduction to Tourism', 'Tourism is a social, cultural and economic phenomenon which entails the movement of people to countries or places outside their usual environment for personal or business/professional purposes. Tourism is a dynamic and competitive industry that requires the ability to adapt constantly to customers’ changing needs and desires, as the customer’s satisfaction, safety and enjoyment are particularly the focus of tourism businesses. In simple terms, a tourist is a person travelling to another location, away from their usual social environment, for business, pleasure or social reasons.', 'world-tourism-1-15358720161633516537.jpg', 1, '2021-10-06 09:23:18', '2021-10-06 09:23:18'),
(9, 3, ' Demand for Tourism', 'Tourism demand is the total number of persons who travel or wish to travel to use the tourist facilities away from their places of work and residence. Tourism is a dynamic field. It varies on the number of factors related to the tourists; the country of destination, the market from which the tourists emerge, and market of the destination. The tourism managers and researchers study a lot about tourists’ motivations and cultures, their changing behavior, and the driving and affecting factors of tourism. They also study the destinations investigating the amenities and attractions they provide or any prospective ways to attract the tourists.', 'blogpost1633516541.jpg', 1, '2021-10-06 09:23:58', '2021-10-06 09:23:58'),
(10, 4, 'Web programming', 'Web programming refers to the writing, markup and coding involved in Web development, which includes Web content, Web client and server scripting and network security. The most common languages used for Web programming are XML, HTML, JavaScript, Perl 5 and PHP. Web programming is different from just programming, which requires interdisciplinary knowledge on the application area, client and server scripting, and database technology. ', '15362384091533896513blog-sco21633516544.jpg', 1, '2021-10-06 09:25:09', '2021-10-06 09:25:09'),
(11, 5, 'Introduction to Digital Media', 'This chapter introduces readers to the vast and rich world of digital media. It provides a strong starting point for understanding digital media’s social and political significance to our culture and the culture of others—drawing on an emergent and increasingly rich set of empirical and theoretical studies on the role and development of digital media in contemporary societies. Touching on the core points behind the discipline, the book addresses a wide range of topics, including media economics, online cooperation, open source, social media, software production, globalization, brands, marketing, the cultural industry, labor, and consumption.', 'images-socialmedia1633516548.jpg', 1, '2021-10-06 09:28:24', '2021-10-06 09:28:24'),
(12, 5, 'Audio visual communication', 'Audiovisual communication takes place by using both sound and pictures. It is based on both audio and visual communication. Audiovisual communication is a combination of sight and sound i.e. It uses audible and visual techniques both for transmitting message, information, or idea to create a meaningful picture that is communicative. For example, when an advertisement for a product or service is displayed on TV intent of picture and sound we can know the product and get interested in buying it. So, the audiovisual aspect makes a great impression on the mind of the audience.  Live telecasts, short films, cinema screens, and videotapes are the most powerful media for audiovisual communication. ', 'csm_videokonferenz-solutions-audiovisuellekommunikation_893fc7fcc81633516551.jpg', 1, '2021-10-06 09:29:31', '2021-10-06 09:29:31'),
(13, 2, 'Amet esse ut exerc', 'Nobis eu consequuntu', '11656010177.jpeg', 1, '2022-06-26 17:24:53', '2022-06-26 17:24:53'),
(14, 1, 'Minim ipsa consequa', 'Temporibus animi om', 'iconbls1655744967.jpg', 1, '2022-06-26 17:30:02', '2022-06-26 17:30:02');

-- --------------------------------------------------------

--
-- Table structure for table `course_category`
--

DROP TABLE IF EXISTS `course_category`;
CREATE TABLE IF NOT EXISTS `course_category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_category`
--

INSERT INTO `course_category` (`category_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Architecture', 1, '2021-10-01 07:20:37', '2021-10-01 07:20:37'),
(2, 'Business', 1, '2021-10-01 07:21:22', '2021-10-01 07:21:22'),
(3, 'Tourism', 1, '2021-10-01 07:21:45', '2021-10-01 07:21:45'),
(4, 'IT', 1, '2021-10-01 07:21:57', '2021-10-01 07:21:57'),
(5, 'Multimedia', 1, '2021-10-01 07:22:15', '2021-10-01 07:22:15'),
(6, 'Hospital', 1, '2022-06-23 18:21:38', '2022-06-23 18:21:38'),
(7, 'Consultancy', 1, '2022-06-23 18:22:43', '2022-06-23 18:22:43'),
(8, 'Hardware', 1, '2022-06-24 01:38:59', '2022-06-24 01:38:59');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `img` varchar(255) NOT NULL,
  `eventDate` date DEFAULT NULL,
  `venue` varchar(100) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `content`, `img`, `eventDate`, `venue`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Nominations Open for Sixth ICT Award', 'The online nomination (application) of the sixth edition of the ICT Award, established as a prestigious award in the field of Information and Communication Technology, has started from Ashar 8, 2078 (June 22, 2021). Award nominations in 11 different categories have been opened for the ICT Award 2021 organized by Living with ICT and in collaboration with various government and private organizations. The online nominations for the ICT Awards 2021 had been postponed due to the surge in the second wave of COVID- 19. Despite the postponement of most events during the transition period of the first wave last year, the winners of 12 categories were honored at a special event at the Soaltee Hotel on December 23, 2020, advancing the nomination and selection process of the ICT Awards 2020 through virtual medium.', 'startup-fest21633503355.jpg', '2021-10-31', 'Sinamangal, Kathmandu', 1, '2021-10-06 06:17:54', '2021-10-06 06:17:54'),
(2, 'National Conference on Economics and Finance', 'Nepal Rastra Bank (NRB), the Central Bank of Nepal calls for papers of a national level Conference on Economics and Finance. The Conference is scheduled to be held in April 2022 in Kathmandu, Nepal. This event is expected to bring Nepalese policy makers, practitioners and researchers together to discuss Nepalese economic and financial sector issues. The Conference also aims to create a platform for researchers to present and discuss their most recent researches done to explore the impact of COVID-19 on the national economy and policy responses thereof.', 'nrb1634892634.jpg', '2021-11-03', 'Old Baneshwor, Kathmandu', 1, '2021-10-06 06:34:51', '2021-10-06 06:34:51'),
(3, 'Conference on Cyber Crime and Security', 'Cybercrime can be committed against an individual or a group; it can also be committed against government and private organizations. It may be intended to harm someoneâ€™s reputation, physical harm, or even mental harm. Cyber security is a potential activity by which information and other communication systems are protected from and/or defended against the unauthorized use or modification or exploitation or even theft.', 'unr-mscy-cybersecurity-careers-image1633503347.jpg', '2021-10-26', 'Bagar, Pokhara', 1, '2021-10-06 06:51:48', '2021-10-06 06:51:48'),
(4, 'IDP Virtual Event', 'We are as concerned about your study abroad dreams as you are, and hence, hereâ€™s a list of all the virtual fair we have planned for you in the coming month. These Fairs will be held online so you can access them easily using your mobile phones, desktops or laptops. Browse through the list and register for the one most convenient to you! if you need any help, weâ€™re just a call/WhatsApp away! Free online pre-counselling with our international education experts', 'study-abroad-mobile-img1633503342.jpg', '2021-11-10', 'New Road, Pokhara', 1, '2021-10-06 06:53:42', '2021-10-06 06:53:42'),
(5, '09-Apr-1971', 'Ducimus ducimus etewkfbkwefwefwefluiwefjwenfkwefnjkwe f.kjwenfkw kchws djsv', 'capture1656009872.JPG', '1979-09-28', '28-Mar-1985', 1, '2022-06-23 18:47:59', '2022-06-23 18:47:59');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

DROP TABLE IF EXISTS `facilities`;
CREATE TABLE IF NOT EXISTS `facilities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `title`, `content`, `img`, `status`, `created_at`, `updated_at`) VALUES
(2, 'IT Training', 'Providing quality IT training to the aspiring IT professionals. Availability of highly qualified and experienced instructors.', 'training1633241464.png', 1, '2021-10-03 05:47:24', '2021-10-03 05:47:24'),
(3, 'Experienced Teachers', 'Assigning project works as per the nature of the courses. Identifying trainees\' skills and knowledge gaps.', 'teacher1633241460.png', 1, '2021-10-03 05:59:40', '2021-10-03 05:59:40'),
(4, 'Internship', 'Providing internship and job placement facilities to the trainees. Building long-term trustful relationship with the trainees', 'working-woman1633241455.png', 1, '2021-10-03 06:00:27', '2021-10-03 06:00:27'),
(5, 'Scholarship', 'We offer various scholarships to deserving and needy students. We firmly believe that any studentâ€™s desire and passion for learning counts more than his/her ability to pay.', 'graduation1633241450.png', 1, '2021-10-03 06:04:04', '2021-10-03 06:04:04'),
(6, 'Est illo deserunt ex', 'Fuga Dolor dolor co', '11656010177.jpeg', 1, '2022-06-23 18:50:57', '2022-06-23 18:50:57'),
(7, 'Doloribus voluptas e', 'Iusto aliquid nesciu', 'iconbls1655744967.jpg', 1, '2022-06-26 16:58:52', '2022-06-26 16:58:52');

-- --------------------------------------------------------

--
-- Table structure for table `filemanager`
--

DROP TABLE IF EXISTS `filemanager`;
CREATE TABLE IF NOT EXISTS `filemanager` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `filelink` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `filemanager`
--

INSERT INTO `filemanager` (`id`, `name`, `filelink`, `type`, `status`, `created_at`, `updated_at`) VALUES
(69, 'bls-logopng', 'bls-logopng1655744939.png', 'Brandon Pace', 1, '2022-06-20 17:08:59', '2022-06-20 17:08:59'),
(70, 'bls-logopng', 'bls-logopng1655744954.png', 'Bevis Head', 1, '2022-06-20 17:09:14', '2022-06-20 17:09:14'),
(71, 'iconbls', 'iconbls1655744967.jpg', 'Sarah Bright', 1, '2022-06-20 17:09:27', '2022-06-20 17:09:27'),
(67, 'logoblue', 'logoblue1655744828.png', 'Hyacinth Houston', 1, '2022-06-20 17:07:08', '2022-06-20 17:07:08'),
(72, 'Capture', 'capture1656009872.JPG', 'Dakota Page', 1, '2022-06-23 18:44:32', '2022-06-23 18:44:32'),
(73, '1', '11656010177.jpeg', 'Sandra Daniels', 1, '2022-06-23 18:49:37', '2022-06-23 18:49:37');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `img`, `status`, `created_at`, `updated_at`) VALUES
(1, 'capture1656009872.JPG', 1, '2022-06-26 17:18:50', '2022-06-26 17:18:50');

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

DROP TABLE IF EXISTS `home`;
CREATE TABLE IF NOT EXISTS `home` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slider1` varchar(255) NOT NULL,
  `slider2` varchar(255) NOT NULL,
  `title1` varchar(50) NOT NULL,
  `text1` text NOT NULL,
  `title2` varchar(50) NOT NULL,
  `text2` text NOT NULL,
  `btn_link` varchar(50) NOT NULL,
  `title3` varchar(50) NOT NULL,
  `title4` varchar(50) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id`, `slider1`, `slider2`, `title1`, `text1`, `title2`, `text2`, `btn_link`, `title3`, `title4`, `status`, `created_at`, `updated_at`) VALUES
(1, 'slide11634817566.jpg', 'slide21634817573.jpg', 'Welcome To EduChamp', 'Explore new skills, deepen existing passions, and get lost in creativity. What you find just might surprise and inspire you.', 'Learn a new skill online', 'With so much to explore, real projects to create, and the support of fellow-creatives, Educhamp online learning platform empowers you to learn new skills and accomplish real growth.  Join us and move your creative journey forward without putting life on hold. Educhamp short online classes help you find inspiration that fits your routine.', 'admission.php', 'Upcoming Events', 'Recent News', 1, '2021-10-22 07:21:19', '2021-10-22 07:21:19');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slider_img` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `img` varchar(100) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `slider_img`, `title`, `text`, `img`, `status`, `created_at`, `updated_at`) VALUES
(2, 'dsdfdsf.png', 'Message', 'EduChamp is and will be dedicated to develop and impart quality IT training and service to all; achieving excellence in creative, innovative and up to-date teaching-learning, facilitating effective interactions among faculty, management and students and acting as a contributing institution for the employees, society and all stakeholders. To empower the nation through generation of computer literates and competent IT professionals who could serve as valuable resource and responsible innovative citizens.', 'office1633248493.jpg', 1, '2021-09-20 06:12:25', '2021-09-20 06:12:25'),
(3, 'Quibusdam minus quib', 'Quis fugit ea cillu', 'Commodi inventore el', 'iconbls1655744967.jpg', 1, '2022-06-26 17:19:57', '2022-06-26 17:19:57');

-- --------------------------------------------------------

--
-- Table structure for table `newmanager`
--

DROP TABLE IF EXISTS `newmanager`;
CREATE TABLE IF NOT EXISTS `newmanager` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filelink` varchar(255) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newmanager`
--

INSERT INTO `newmanager` (`id`, `name`, `filelink`, `status`, `created_at`, `updated_at`) VALUES
(6, 'tslcscholorshipresultNetSummry', 'tslcscholorshipresultnetsummry1633068338.pdf', 1, '2021-10-01 06:05:38', '2021-10-01 06:05:38'),
(10, 'cvKRmcykzlq6dAoo-1629348972', 'cvkrmcykzlq6daoo-16293489721633255176.pdf', 1, '2021-10-03 09:59:36', '2021-10-03 09:59:36'),
(11, 'SWQBbTXW8qcUIJOF-1628921843', 'swqbbtxw8qcuijof-16289218431633255587.pdf', 1, '2021-10-03 10:06:27', '2021-10-03 10:06:27');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `img`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Valley authorities reopening of schools', 'The district administrations of the Kathmandu Valley have further eased the Covid-19 restrictions allowing conditional reopening of schools. The District Administration Office, Kathmandu in a notice on Wednesday said local administrations after obtaining permission from the District Covid-19 Crisis Management Centre may allow schools under their jurisdictions to reopen. The notice however says school reopenings should be guided by the concept of â€˜smart lockdownâ€™, which allows local administrations to impose different levels of restrictions in different areas depending upon the severity of the Covid-19 situation. Public health experts see the government decision being at fault every time and there is a lack of coordination between their own bodies.', 'rentree20201633251054.jpg', 1, '2021-09-26 08:47:52', '2021-09-26 08:47:52'),
(4, 'Above 18 students to get jabbed soon', 'With the arrival of 4.4 million doses of Vero Cell vaccine from China, the Ministry of Health and Population has decided to immunise all students above 18 years old. The Ministry has also decided to jab all people above 18 years old in 10 districts. Once vaccination is completed in the ten districts, the number of fully immunised districts will reach 13. All eligible people from Manang, Mustang and Rukum East districts have already been immunised with the coronavirus vaccine. The vaccine will be provided to all people above 40 years in all three districts of the Kathmandu Valleyâ€”Kathmandu, Lalitpur and Bhaktapur, and Makawanpur, Ramechhap, Sarlahi, and Achham districts. The rest of the districts will provide the vaccine to all people above 45 years old, according to Dahal.', 'nepal_vaccine1633251059.jpg', 1, '2021-10-03 08:18:05', '2021-10-03 08:18:05'),
(5, 'Students afraid over exams set amid Covid', 'Candidates are calling for alternative modes of testing but officials say itâ€™s not feasible as all students donâ€™t have proper devices. Sujan Basnet, a first-year student of Bachelor of Business Studies from Kathmandu, was surprised to see the crowd when he reached Shanker Dev Campus at Putalisadak on Monday for his exam. Many say the decision to hold in-person exams amid a fresh surge in Covid-19 cases could put the lives of students at risk. Students are already in fear.', 'the-coronavirus-test-nt-21634881140.jpg', 1, '2021-10-22 05:38:47', '2021-10-22 05:38:47'),
(6, 'Dolorem dolorum amet', 'Obcaecati sunt hic r', 'capture1656009872.JPG', 1, '2022-06-23 18:46:40', '2022-06-23 18:46:40');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
CREATE TABLE IF NOT EXISTS `notice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `title`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'SEE 2078 Exam Application noticeslfk;jsdf', 'Government of Nepal, National Examination Board, Office of the Controller of Examination, Sanothimi, Bhaktapur, has published Examination form fill up notice to participate in the Secondary Education Examination (SEE) Exam 2078. Examination form fill up Deadline : 15 Ashwin 2078 to Kartik Last, 2078. Students should have completed 14 years of age on 2078 Chaitra. (Date of birth of up to 2064 Chaitra last). ', 1, '2021-10-04 10:57:54', '2021-10-04 10:57:54'),
(2, 'SEE 2079 Registration notice', 'Government of Nepal, National Examination Board, Office of the Controller of Examination, Sanothimi, Bhaktapur published registration form fill up notice for students to participate in the Secondary Education Exam (SEE) exam 2079. The Registration form fee per student is Rs. 300. This notice is issued for the students who are studying in class nine in the academic year-2078. To participate in the SEE exam those students have to fill the registration form from within Ashwin 15, 2078 to Kartik, Last 2078.', 1, '2021-10-06 06:00:47', '2021-10-06 06:00:47'),
(3, 'Qui sint ad eligendi', 'Architecto aut quide', 1, '2022-06-26 17:20:13', '2022-06-26 17:20:13');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
CREATE TABLE IF NOT EXISTS `options` (
  `id` int NOT NULL AUTO_INCREMENT,
  `district` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `district`, `province`, `country`, `city`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bajhang', 'Gandaki', 'Nepal', 'Pokhara', 1, '2021-10-04 10:57:54', '2021-10-04 10:57:54'),
(2, 'Chitwan', 'Bagmati', 'India', 'KTM', 1, '2021-10-04 10:57:54', '2021-10-04 10:57:54'),
(3, 'Bhaktapur', 'Sudurpachima', 'China', 'Butwal', 1, '2021-10-04 10:57:54', '2021-10-04 10:57:54');

-- --------------------------------------------------------

--
-- Table structure for table `otp_expiry`
--

DROP TABLE IF EXISTS `otp_expiry`;
CREATE TABLE IF NOT EXISTS `otp_expiry` (
  `id` int NOT NULL,
  `otp` varchar(10) NOT NULL,
  `is_expired` int NOT NULL,
  `create_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `planning`
--

DROP TABLE IF EXISTS `planning`;
CREATE TABLE IF NOT EXISTS `planning` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slider_img` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `img` varchar(100) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `planning`
--

INSERT INTO `planning` (`id`, `slider_img`, `title`, `text`, `img`, `status`, `created_at`, `updated_at`) VALUES
(2, 'dsdasd', 'Planning', 'Our core objective is to train people who are keen to start professional IT career and learn job related skills in order to turn them into effective and efficient IT professionals who will then be using computing technology to develop effective information systems for solving real life problems in diverse organizational environments.', 'home-office11633248878.jpeg', 1, '2021-10-01 06:09:52', '2021-10-01 06:09:52'),
(3, 'Reprehenderit culpa', 'Voluptatem Nemo eni', 'Est incidunt volupt', 'bls-logopng1655744939.png', 1, '2022-06-23 18:48:32', '2022-06-23 18:48:32');

-- --------------------------------------------------------

--
-- Table structure for table `registered_users`
--

DROP TABLE IF EXISTS `registered_users`;
CREATE TABLE IF NOT EXISTS `registered_users` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
CREATE TABLE IF NOT EXISTS `result` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `title`, `content`, `link`, `status`, `created_at`, `updated_at`) VALUES
(16, 'Result of Technology Group', 'EduChamp has finally published the Technology Group result of 2021. The examination was conducted in 2021 August 10th. Click on below link to see result.', 'tslcscholorshipresultnetsummry1633068338.pdf', 1, '2021-10-01 06:07:33', '2021-10-01 06:07:33'),
(17, 'Result of Education Group', 'EduChamp has published result of Education Group of year 2021. The examination took place on August 1, 2021. Click on below link to see result.', 'cvkrmcykzlq6daoo-16293489721633255176.pdf', 1, '2021-10-03 10:01:03', '2021-10-03 10:01:03'),
(18, 'Result of Development Group', 'EduChamp has finally published the Development Group result of 2021. The examination was conducted in 2021 August 15th. Click on below link to see result.', 'swqbbtxw8qcuijof-16289218431633255587.pdf', 1, '2021-10-03 10:06:53', '2021-10-03 10:06:53'),
(19, 'Rerum odio quo sed h', 'Cupiditate itaque at', 'tslcscholorshipresultnetsummry1633068338.pdf', 1, '2022-06-26 17:20:42', '2022-06-26 17:20:42');

-- --------------------------------------------------------

--
-- Table structure for table `siteconfig`
--

DROP TABLE IF EXISTS `siteconfig`;
CREATE TABLE IF NOT EXISTS `siteconfig` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slider_img` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fb_link` varchar(255) NOT NULL,
  `google_link` varchar(255) NOT NULL,
  `linkedin_link` varchar(255) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `home_bg` varchar(255) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `siteconfig`
--

INSERT INTO `siteconfig` (`id`, `slider_img`, `phone`, `email`, `fb_link`, `google_link`, `linkedin_link`, `heading`, `logo`, `favicon`, `home_bg`, `status`, `created_at`, `updated_at`) VALUES
(1, 'banner31634617834.jpg', '9816135109', 'info@educhamp.com', 'www.facebook.com', 'www.google.com', 'www.linkedin.com', 'EduChamp : Online Learning Platform', 'logo-white1634618009.png', 'mainfavicon1634574896.png', 'bg11634813243.jpg', 1, '2021-10-18 15:43:26', '2021-10-18 15:43:26');

-- --------------------------------------------------------

--
-- Table structure for table `superusers`
--

DROP TABLE IF EXISTS `superusers`;
CREATE TABLE IF NOT EXISTS `superusers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `superusers`
--

INSERT INTO `superusers` (`id`, `name`, `email`, `phone`, `password`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(26, 'Dmmar Khadayat', 'dammar@gmail.com', '9848247653', 'c20ad4d76fe97759aa27a0c99bff6710', 1, '2022-06-20 04:58:32', '2022-06-20 04:58:32', '2022-06-20 04:58:32'),
(27, 'Dmmar Khadayat', 'dammar@gmail.com', '9848247653', 'c20ad4d76fe97759aa27a0c99bff6710', 1, '2022-06-20 04:58:57', '2022-06-20 04:58:57', '2022-06-20 04:58:57'),
(28, 'Garrett Huber', 'test@gmail.com', '8037461938', '202cb962ac59075b964b07152d234b70', 1, '2022-06-20 07:07:50', '2022-06-20 07:07:50', '2022-06-20 07:07:50'),
(29, 'Ruby Montoya', 't@gmail.com', '7071427317', 'c20ad4d76fe97759aa27a0c99bff6710', 1, '2022-06-20 07:20:10', '2022-06-20 07:20:10', '2022-06-20 07:20:10'),
(30, 'Dammar', 'm@m.com', '1212121212', '202cb962ac59075b964b07152d234b70', 1, '2022-06-20 12:04:50', '2022-06-20 12:04:50', '2022-06-20 12:04:50'),
(31, 'Carl Morton', 'test@gmail.com', '5316696684', 'c20ad4d76fe97759aa27a0c99bff6710', 1, '2022-06-21 12:09:31', '2022-06-21 12:09:31', '2022-06-21 12:09:31'),
(32, 'Dammar', 'dammar1@gmail.com', '1111111111', '202cb962ac59075b964b07152d234b70', 1, '2022-06-21 17:26:18', '2022-06-21 17:26:18', '2022-06-21 17:26:18'),
(33, 'Ram', 'ram@gmail.com', '7685586662', 'c20ad4d76fe97759aa27a0c99bff6710', 1, '2022-06-21 18:33:58', '2022-06-21 18:33:58', '2022-06-21 18:33:58'),
(34, 'Megan Miller', 'j@gmail.com', '8710762542', 'c20ad4d76fe97759aa27a0c99bff6710', 1, '2022-06-22 18:34:51', '2022-06-22 18:34:51', '2022-06-22 18:34:51'),
(35, 'Daphne Baxter', 'wotuhu@mailinator.com', '5618179875', '13ddd7922dd1fbabd73264a772470a1a', 1, '2022-06-22 19:07:05', '2022-06-22 19:07:05', '2022-06-22 19:07:05'),
(36, 'Jeremy Cabrera', 'julof@mailinator.com', '4862605951', '063ea0ea8971bf75b9083c53ea749cf5', 1, '2022-06-22 19:07:14', '2022-06-22 19:07:14', '2022-06-22 19:07:14'),
(37, 'Dieter Lara', 'size@mailinator.com', '7863497328', 'ef685e98c8b0b337fe7c8ce1490df5ba', 1, '2022-06-22 19:07:50', '2022-06-22 19:07:50', '2022-06-22 19:07:50');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
CREATE TABLE IF NOT EXISTS `teachers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slider_img` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `slider_img`, `name`, `subject`, `img`, `status`, `created_at`, `updated_at`) VALUES
(1, 'sdsdad.jpg', 'Serena Lewis', 'Education', 'new_teacher1633256154.jpeg', 1, '2021-09-20 09:11:56', '2021-09-20 09:11:56'),
(2, 'dsdsad.jpg', 'John Brandon', 'Development', 'senior-professor1633258509.jpg', 1, '2021-10-03 10:19:10', '2021-10-03 10:19:10'),
(3, 'dssa', 'Erica Thomas', 'Technology', 'unnameteacher1633256186.jpg', 1, '2021-10-03 10:26:38', '2021-10-03 10:26:38'),
(4, 'sdas', 'Peter Edward', 'Electronic', 'bigstock-portrait-of-a-young-male-teach-324671239-e15847006492361633256138.jpg', 1, '2021-10-03 10:27:33', '2021-10-03 10:27:33'),
(5, 'Vero deserunt magnam', 'Kasimir Mckenzie', 'Sint fugit voluptat', 'capture1656009872.JPG', 1, '2022-06-26 17:23:25', '2022-06-26 17:23:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `password`, `status`, `created_at`, `updated_at`) VALUES
(97, 'Adhip', '9848247653     ', 'dammar@gmail.com', '202cb962ac59075b964b07152d234b70', 1, '2022-06-22 19:10:28', '2022-06-22 19:10:28'),
(98, 'jeevan', '1234567891', 'hey123@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 1, '2022-06-24 01:21:09', '2022-06-24 01:21:09'),
(99, 'Grady Bradley', '7658736196', 'a@a.com', '202cb962ac59075b964b07152d234b70', 1, '2022-07-20 10:57:42', '2022-07-20 10:57:42');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
