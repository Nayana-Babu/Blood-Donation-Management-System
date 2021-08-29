-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2021 at 02:14 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloodbank2021`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add bank', 7, 'add_bank'),
(26, 'Can change bank', 7, 'change_bank'),
(27, 'Can delete bank', 7, 'delete_bank'),
(28, 'Can view bank', 7, 'view_bank'),
(29, 'Can add camps', 8, 'add_camps'),
(30, 'Can change camps', 8, 'change_camps'),
(31, 'Can delete camps', 8, 'delete_camps'),
(32, 'Can view camps', 8, 'view_camps'),
(33, 'Can add contacts', 9, 'add_contacts'),
(34, 'Can change contacts', 9, 'change_contacts'),
(35, 'Can delete contacts', 9, 'delete_contacts'),
(36, 'Can view contacts', 9, 'view_contacts'),
(37, 'Can add request', 10, 'add_request'),
(38, 'Can change request', 10, 'change_request'),
(39, 'Can delete request', 10, 'delete_request'),
(40, 'Can view request', 10, 'view_request'),
(41, 'Can add login', 11, 'add_login'),
(42, 'Can change login', 11, 'change_login'),
(43, 'Can delete login', 11, 'delete_login'),
(44, 'Can view login', 11, 'view_login'),
(45, 'Can add userdb', 12, 'add_userdb'),
(46, 'Can change userdb', 12, 'change_userdb'),
(47, 'Can delete userdb', 12, 'delete_userdb'),
(48, 'Can view userdb', 12, 'view_userdb'),
(49, 'Can add campregister', 13, 'add_campregister'),
(50, 'Can change campregister', 13, 'change_campregister'),
(51, 'Can delete campregister', 13, 'delete_campregister'),
(52, 'Can view campregister', 13, 'view_campregister');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'Projectapp', 'bank'),
(13, 'Projectapp', 'campregister'),
(8, 'Projectapp', 'camps'),
(9, 'Projectapp', 'contacts'),
(11, 'Projectapp', 'login'),
(10, 'Projectapp', 'request'),
(12, 'Projectapp', 'userdb'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-07-28 07:07:08.918838'),
(2, 'auth', '0001_initial', '2021-07-28 07:07:09.434617'),
(3, 'admin', '0001_initial', '2021-07-28 07:07:09.544024'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-07-28 07:07:09.559658'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-07-28 07:07:09.575287'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-07-28 07:07:09.653434'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-07-28 07:07:09.715952'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-07-28 07:07:09.731581'),
(9, 'auth', '0004_alter_user_username_opts', '2021-07-28 07:07:09.747211'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-07-28 07:07:09.794100'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-07-28 07:07:09.794100'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-07-28 07:07:09.809732'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-07-28 07:07:09.825359'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-07-28 07:07:09.856621'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-07-28 07:07:09.872252'),
(16, 'auth', '0011_update_proxy_permissions', '2021-07-28 07:07:09.887880'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-07-28 07:07:09.903510'),
(18, 'sessions', '0001_initial', '2021-07-28 07:07:09.950399'),
(19, 'Projectapp', '0001_initial', '2021-07-28 07:07:35.426833'),
(20, 'Projectapp', '0002_campregister', '2021-07-29 05:55:25.337521'),
(21, 'Projectapp', '0003_campregister_campname', '2021-07-29 10:16:51.734680');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4iqfvtnod01mf3om6lgfpo5ia6av40e2', 'eyJsb2dpbmlkIjo2LCJ1bmFtZSI6Im5pcHUifQ:1m8iN9:enfJj7Auqeq1TNAFLPiqCyUgDVPenfAUZsoGoaC0ml4', '2021-08-11 12:09:15.961236');

-- --------------------------------------------------------

--
-- Table structure for table `projectapp_bank`
--

CREATE TABLE `projectapp_bank` (
  `id` bigint(20) NOT NULL,
  `Bankname` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Email` varchar(254) NOT NULL,
  `Apositive` int(11) NOT NULL,
  `Anegative` int(11) NOT NULL,
  `Bpositive` int(11) NOT NULL,
  `Bnegative` int(11) NOT NULL,
  `ABpositive` int(11) NOT NULL,
  `ABnegative` int(11) NOT NULL,
  `Opositive` int(11) NOT NULL,
  `Onegative` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projectapp_bank`
--

INSERT INTO `projectapp_bank` (`id`, `Bankname`, `Address`, `Phone`, `Email`, `Apositive`, `Anegative`, `Bpositive`, `Bnegative`, `ABpositive`, `ABnegative`, `Opositive`, `Onegative`) VALUES
(1, 'Idukki bloodbank', 'idukki town,near girls gov school', '7994135807', 'idukkibloodbank@gmail.com', 400, 400, 354, 350, 400, 400, 400, 400),
(2, 'Alappuzha bloodbank', 'alappey muncipal townhall,near main bustop', '9123456789', 'alappeybloodbank@yahoo.com', 500, 500, 400, 450, 400, 500, 500, 500),
(3, 'Ernakulam bloodbank', 'ernakulam nagar ,kochi', '9123541782', 'ernakulam@yahoo.com', 401, 400, 500, 355, 100, 20, 399, 0),
(5, 'Thrissur bloodbank', 'thrissur town,near abad plaza', '7994135807', 'joker@gmail.com', 400, 234, 321, 65, 456, 678, 65, 45);

-- --------------------------------------------------------

--
-- Table structure for table `projectapp_campregister`
--

CREATE TABLE `projectapp_campregister` (
  `id` bigint(20) NOT NULL,
  `Donorname` varchar(100) NOT NULL,
  `Bloodgroup` varchar(100) NOT NULL,
  `Age` int(11) NOT NULL,
  `Allergic` varchar(100) NOT NULL,
  `Medication` varchar(100) NOT NULL,
  `Donateddate` date NOT NULL,
  `Campname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projectapp_campregister`
--

INSERT INTO `projectapp_campregister` (`id`, `Donorname`, `Bloodgroup`, `Age`, `Allergic`, `Medication`, `Donateddate`, `Campname`) VALUES
(1, 'nipu', 'o+', 34, 'no', 'no', '2021-01-29', 'kalady'),
(2, 'tenson', 'b-', 24, 'no', 'no', '2021-03-09', 'muttil bloodbank'),
(3, 'nithin', 'b+', 33, 'yes', 'no', '2021-07-23', 'aluva');

-- --------------------------------------------------------

--
-- Table structure for table `projectapp_camps`
--

CREATE TABLE `projectapp_camps` (
  `id` bigint(20) NOT NULL,
  `Campname` varchar(100) NOT NULL,
  `Venue` varchar(100) NOT NULL,
  `Photo` varchar(100) NOT NULL,
  `CampDate` date NOT NULL,
  `Details` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projectapp_camps`
--

INSERT INTO `projectapp_camps` (`id`, `Campname`, `Venue`, `Photo`, `CampDate`, `Details`) VALUES
(1, 'kalady ,aluva', 'kalady girls school', 'images/camp1_558tK0I.jpg', '2021-08-08', 'Intrested donors please register'),
(2, 'aluva blood camp', 'jevass cmi central school campus', 'images/camp3_mLUFJAz.jpg', '2021-08-06', 'intrested please register'),
(3, 'edapally MAJ hospital', 'MAJ Hospital', 'images/camp5_zAANMcm.png', '2021-07-31', 'if intrested register and arrive at 3 pm'),
(5, 'muttil bloodcamp', 'muncipal townhall', 'images/camp4_c3tOPUD.jpg', '2021-08-06', 'be on time if intrested'),
(6, 'test', 'munnar', 'images/camel.jpg', '0000-00-00', 'come 4 blood');

-- --------------------------------------------------------

--
-- Table structure for table `projectapp_contacts`
--

CREATE TABLE `projectapp_contacts` (
  `id` bigint(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobilenumber` varchar(50) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projectapp_contacts`
--

INSERT INTO `projectapp_contacts` (`id`, `name`, `email`, `mobilenumber`, `message`) VALUES
(1, 'rajeev', 'rajeev@gmail.com', '9012312345', 'how it works'),
(2, 'latha', 'latha@yahoo.com', '6789121212', 'like to know whether any donors available'),
(3, 'jijo', 'jijo', '9098098789', 'hello kerala bloodbank');

-- --------------------------------------------------------

--
-- Table structure for table `projectapp_login`
--

CREATE TABLE `projectapp_login` (
  `id` bigint(20) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projectapp_login`
--

INSERT INTO `projectapp_login` (`id`, `username`, `password`, `role`) VALUES
(1, 'babu', 'babu', 'donor'),
(2, 'baby', 'baby', 'patient'),
(3, 'admin', 'admin', 'admin'),
(4, 'xavi', 'xavi', 'donor'),
(5, 'omana', 'omana', 'patient'),
(6, 'nipu', 'nipu', 'donor'),
(7, 'nisha', 'nisha', 'patient'),
(8, 'roy', 'roy', 'donor'),
(9, 'daly', 'daly', 'patient'),
(10, 'romy', 'romy', 'donor'),
(11, 'mini', 'mini', 'patient'),
(12, 'robin', 'robin', 'donor'),
(13, 'remya', 'remya', 'patient'),
(14, 'sarun', 'sarun', 'donor'),
(15, 'ruby', 'ruby', 'patient'),
(16, 'aug', 'aug', 'donor'),
(17, 'any', 'any', 'patient'),
(18, 'sony', 'sony', 'donor'),
(19, 'soumya', 'soumya', 'patient'),
(20, 'tenson', 'tenson', 'donor'),
(21, 'bindhu', 'bindhu', 'patient'),
(22, 'jerad', 'jerad', 'donor'),
(23, 'jessica', 'jessica', 'patient'),
(24, 'shambu', 'shambu', 'donor'),
(25, 'anjali', 'anjali', 'patient'),
(26, 'anoop', 'anoop', 'donor'),
(27, 'anooja', 'anooja', 'patient'),
(28, 'alex', 'alex', 'donor'),
(29, 'elsa', 'elsa', 'patient'),
(30, 'arun', 'arun', 'donor'),
(31, 'nimmy', 'nimmy', 'patient'),
(32, 'nikil', 'nikil', 'donor'),
(33, 'ann', 'ann', 'patient'),
(34, 'evan', 'evan', 'donor'),
(35, 'boni', 'boni', 'patient'),
(36, 'bala', 'bala', 'donor'),
(37, 'deepthi', 'deepthi', 'patient'),
(38, 'paul', 'paul', 'donor'),
(39, 'suja', 'suja', 'patient'),
(40, 'nithin', 'nithin', 'donor'),
(42, 'nunu', 'nunu', 'donor'),
(43, 'hai', 'hai', 'donor');

-- --------------------------------------------------------

--
-- Table structure for table `projectapp_request`
--

CREATE TABLE `projectapp_request` (
  `id` bigint(20) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Age` int(11) NOT NULL,
  `MobileNumber` varchar(20) NOT NULL,
  `BloodGroup` varchar(100) NOT NULL,
  `Email` varchar(254) NOT NULL,
  `RequiredDate` date NOT NULL,
  `Details` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projectapp_request`
--

INSERT INTO `projectapp_request` (`id`, `Name`, `Gender`, `Age`, `MobileNumber`, `BloodGroup`, `Email`, `RequiredDate`, `Details`) VALUES
(1, 'bindhu', 'female', 23, '9876548961', 'b-', 'bin@gmail.com', '2021-08-07', 'need confirmation'),
(2, 'remya', 'female', 33, '6789123412', 'o-', 'remya@yahoo.com', '2021-08-08', 'need  o negative blood'),
(3, 'appu', 'male', 2, '223432423', 'b+', 'joker@gmail.com', '2021-08-01', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `projectapp_userdb`
--

CREATE TABLE `projectapp_userdb` (
  `id` bigint(20) NOT NULL,
  `Fullname` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Gender` varchar(30) NOT NULL,
  `Bloodbank` varchar(100) NOT NULL,
  `Age` int(11) NOT NULL,
  `Email` varchar(254) NOT NULL,
  `Mobilenumber` varchar(10) NOT NULL,
  `Bloodgroup` varchar(20) NOT NULL,
  `Category` varchar(30) NOT NULL,
  `login_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projectapp_userdb`
--

INSERT INTO `projectapp_userdb` (`id`, `Fullname`, `Address`, `Gender`, `Bloodbank`, `Age`, `Email`, `Mobilenumber`, `Bloodgroup`, `Category`, `login_id`) VALUES
(1, 'babu', 'babu address', 'male', 'Idukki', 49, 'babu@gmail.com', '9812345678', 'a+', 'donor', 1),
(2, 'baby', 'baby address', 'female', 'Idukki', 30, 'babymail@gmail.com', '6789067890', 'a+', 'patient', 2),
(3, 'nayana', 'nayana', 'female', 'ernakulam', 30, 'nayana1992@gmail.com', '9812123412', 'a-', 'admin', 3),
(4, 'xavi', 'xavi address', 'male', 'thrissur', 34, 'xavi@gmail.com', '9123123412', 'o-', 'donor', 4),
(5, 'omana', 'omana address', 'female', 'thrissur', 45, 'omana@gmail.com', '9876567656', 'o-', 'patient', 5),
(6, 'nipu', 'nipu address', 'male', 'alappuzha', 45, 'nipu@gmail.com', '8790654321', 'o+', 'donor', 6),
(7, 'nisha', 'nisha address', 'female', 'alappuzha', 23, 'nisha@gmail.com', '6789543212', 'o+', 'patient', 7),
(8, 'roy', 'roy address', 'male', 'ernakulam', 42, 'roy@gmail.com', '8123123451', 'ab-', 'donor', 8),
(9, 'daly', 'daly address', 'female', 'alappuzha', 34, 'daly@yahoo.com', '7890789065', 'ab-', 'patient', 9),
(10, 'romy', 'romy address', 'male', 'ernakulam', 23, 'romy@gmail.com', '9871267543', 'ab+', 'donor', 10),
(11, 'mini', 'mini address', 'female', 'ernakulam', 53, 'mini@gmail.com', '8901234563', 'ab+', 'patient', 11),
(12, 'robin', 'robin address', 'male', 'Idukki', 34, 'robin@gmail.com', '7890987089', 'o-', 'donor', 12),
(13, 'remya', 'remya', 'female', 'Idukki', 33, 'remya@yahoo.com', '6789123412', 'o-', 'patient', 13),
(14, 'sarun', 'sarun address', 'male', 'alappuzha', 45, 'sarun@rediffmail.com', '7834565645', 'o+', 'donor', 14),
(15, 'ruby', 'ruby address', 'female', 'alappuzha', 28, 'ruby@yahoo.com', '9089078909', 'o+', 'patient', 15),
(16, 'augustine', 'augustine', 'male', 'ernakulam', 45, 'aug12@gmail.com', '7834565643', 'ab-', 'donor', 16),
(17, 'any', 'any address', 'female', 'ernakulam', 34, 'any@gmail.com', '9089098765', 'ab-', 'patient', 17),
(18, 'sony', 'sony address', 'male', 'thrissur', 45, 'sony@gmail.com', '7656765678', 'ab+', 'donor', 18),
(19, 'soumya', 'soumya', 'female', 'thrissur', 34, 'so12@yahoo.com', '7865456789', 'ab+', 'patient', 19),
(20, 'tenson', 'tenson address', 'male', 'Idukki', 24, 'ten@yahoo.com', '8912345671', 'b-', 'donor', 20),
(21, 'bindhu', 'bindhu address', 'female', 'Idukki', 23, 'bin@gmail.com', '9876548961', 'b-', 'patient', 21),
(22, 'jerad', 'jerad', 'male', 'Idukki', 23, 'jerard@yahoo.com', '7895675678', 'o-', 'donor', 22),
(23, 'jessica', 'jessica address', 'female', 'alappuzha', 20, 'jessi@gmail.com', '9802345671', 'o-', 'patient', 23),
(24, 'shambu', 'shambu', 'male', 'alappuzha', 34, 'shambu@yahoo.com', '9809087678', 'a+', 'donor', 24),
(25, 'anjali', 'anjali addree', 'female', 'alappuzha', 45, 'anjali@gmail.com', '8901231234', 'a+', 'patient', 25),
(26, 'anoop', 'anoop address', 'male', 'ernakulam', 35, 'anoop@yahoo.com', '8923432345', 'a-', 'donor', 26),
(27, 'anooja', 'anooja address', 'female', 'alappuzha', 28, 'anooja@rediffmail.com', '6789012345', 'a-', 'patient', 27),
(28, 'alex', 'alex address', 'male', 'ernakulam', 37, 'alex@yahoo.com', '8909890768', 'b+', 'donor', 28),
(29, 'elsa', 'elsa address', 'female', 'ernakulam', 23, 'elsa@gmail.com', '6789056789', 'b+', 'patient', 29),
(30, 'arun', 'arun address', 'male', 'thrissur', 39, 'arun@rediffmail.com', '6784676786', 'b-', 'donor', 30),
(31, 'nimmy', 'nimmy address', 'female', 'thrissur', 32, 'nimmy@gmail.com', '8909089089', 'b-', 'patient', 31),
(32, 'nikil', 'nikil address', 'male', 'Idukki', 24, 'nikil@gmail.com', '6789067890', 'ab+', 'donor', 32),
(33, 'ann', 'ann address', 'female', 'Idukki', 35, 'ann@gmail.com', '8907890678', 'ab+', 'patient', 33),
(34, 'evan', 'evan', 'male', 'alappuzha', 46, 'evan@gmail.com', '9012345123', 'ab-', 'donor', 34),
(35, 'boni', 'boni address', 'female', 'ernakulam', 37, 'boni@yahoo.com', '8790675456', 'ab-', 'patient', 35),
(36, 'bala', 'bala address', 'male', 'thrissur', 25, 'bala@gmail.com', '8667667896', 'o+', 'donor', 36),
(37, 'deepthi', 'deepthi address', 'female', 'alappuzha', 46, 'deppthi@yahoo.com', '6786786789', 'o+', 'patient', 37),
(38, 'paul', 'paul address', 'male', 'alappuzha', 40, 'paul@gmail.com', '6767678678', 'o-', 'donor', 38),
(39, 'suja', 'suja', 'female', 'alappuzha', 30, 'suja@yahoo.com', '7890098090', 'o-', 'patient', 39),
(40, 'nithin', 'aluva', 'male', 'ernakulam', 33, 'nithin@yahoo.com', '66577888', 'b+', 'donor', 40),
(42, 'nunu', 'nunu address', 'female', 'Idukki', 34, 'nunu@gmail.com', '9090890890', 'o-', 'donor', 42),
(43, 'hai', 'hello', 'female', 'alappuzha', 34, 'hai@gmail.com', '7689543271', 'o-', 'donor', 43);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `projectapp_bank`
--
ALTER TABLE `projectapp_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectapp_campregister`
--
ALTER TABLE `projectapp_campregister`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectapp_camps`
--
ALTER TABLE `projectapp_camps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectapp_contacts`
--
ALTER TABLE `projectapp_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectapp_login`
--
ALTER TABLE `projectapp_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectapp_request`
--
ALTER TABLE `projectapp_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectapp_userdb`
--
ALTER TABLE `projectapp_userdb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Projectapp_userdb_login_id_294a8c0d_fk_Projectapp_login_id` (`login_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `projectapp_bank`
--
ALTER TABLE `projectapp_bank`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `projectapp_campregister`
--
ALTER TABLE `projectapp_campregister`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projectapp_camps`
--
ALTER TABLE `projectapp_camps`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `projectapp_contacts`
--
ALTER TABLE `projectapp_contacts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projectapp_login`
--
ALTER TABLE `projectapp_login`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `projectapp_request`
--
ALTER TABLE `projectapp_request`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projectapp_userdb`
--
ALTER TABLE `projectapp_userdb`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `projectapp_userdb`
--
ALTER TABLE `projectapp_userdb`
  ADD CONSTRAINT `Projectapp_userdb_login_id_294a8c0d_fk_Projectapp_login_id` FOREIGN KEY (`login_id`) REFERENCES `projectapp_login` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
