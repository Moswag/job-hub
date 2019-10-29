-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2019 at 03:00 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jhub`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_emailaddress`
--

CREATE TABLE `account_emailaddress` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_emailconfirmation`
--

CREATE TABLE `account_emailconfirmation` (
  `id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `sent` datetime(6) DEFAULT NULL,
  `key` varchar(64) NOT NULL,
  `email_address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `authtoken_token`
--

CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `id` int(11) NOT NULL,
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
(25, 'Can add resume', 7, 'add_resume'),
(26, 'Can change resume', 7, 'change_resume'),
(27, 'Can delete resume', 7, 'delete_resume'),
(28, 'Can view resume', 7, 'view_resume'),
(29, 'Can add competencies', 8, 'add_competencies'),
(30, 'Can change competencies', 8, 'change_competencies'),
(31, 'Can delete competencies', 8, 'delete_competencies'),
(32, 'Can view competencies', 8, 'view_competencies'),
(33, 'Can add measurable results', 9, 'add_measurableresults'),
(34, 'Can change measurable results', 9, 'change_measurableresults'),
(35, 'Can delete measurable results', 9, 'delete_measurableresults'),
(36, 'Can view measurable results', 9, 'view_measurableresults'),
(37, 'Can add resume details', 10, 'add_resumedetails'),
(38, 'Can change resume details', 10, 'change_resumedetails'),
(39, 'Can delete resume details', 10, 'delete_resumedetails'),
(40, 'Can view resume details', 10, 'view_resumedetails'),
(41, 'Can add user details', 11, 'add_userdetails'),
(42, 'Can change user details', 11, 'change_userdetails'),
(43, 'Can delete user details', 11, 'delete_userdetails'),
(44, 'Can view user details', 11, 'view_userdetails'),
(45, 'Can add file', 12, 'add_file'),
(46, 'Can change file', 12, 'change_file'),
(47, 'Can delete file', 12, 'delete_file'),
(48, 'Can view file', 12, 'view_file'),
(49, 'Can add job', 13, 'add_job'),
(50, 'Can change job', 13, 'change_job'),
(51, 'Can delete job', 13, 'delete_job'),
(52, 'Can view job', 13, 'view_job'),
(53, 'Can add user', 14, 'add_user'),
(54, 'Can change user', 14, 'change_user'),
(55, 'Can delete user', 14, 'delete_user'),
(56, 'Can view user', 14, 'view_user'),
(57, 'Can add Token', 15, 'add_token'),
(58, 'Can change Token', 15, 'change_token'),
(59, 'Can delete Token', 15, 'delete_token'),
(60, 'Can view Token', 15, 'view_token'),
(61, 'Can add site', 16, 'add_site'),
(62, 'Can change site', 16, 'change_site'),
(63, 'Can delete site', 16, 'delete_site'),
(64, 'Can view site', 16, 'view_site'),
(65, 'Can add social account', 17, 'add_socialaccount'),
(66, 'Can change social account', 17, 'change_socialaccount'),
(67, 'Can delete social account', 17, 'delete_socialaccount'),
(68, 'Can view social account', 17, 'view_socialaccount'),
(69, 'Can add social application', 18, 'add_socialapp'),
(70, 'Can change social application', 18, 'change_socialapp'),
(71, 'Can delete social application', 18, 'delete_socialapp'),
(72, 'Can view social application', 18, 'view_socialapp'),
(73, 'Can add social application token', 19, 'add_socialtoken'),
(74, 'Can change social application token', 19, 'change_socialtoken'),
(75, 'Can delete social application token', 19, 'delete_socialtoken'),
(76, 'Can view social application token', 19, 'view_socialtoken'),
(77, 'Can add email address', 20, 'add_emailaddress'),
(78, 'Can change email address', 20, 'change_emailaddress'),
(79, 'Can delete email address', 20, 'delete_emailaddress'),
(80, 'Can view email address', 20, 'view_emailaddress'),
(81, 'Can add email confirmation', 21, 'add_emailconfirmation'),
(82, 'Can change email confirmation', 21, 'change_emailconfirmation'),
(83, 'Can delete email confirmation', 21, 'delete_emailconfirmation'),
(84, 'Can view email confirmation', 21, 'view_emailconfirmation');

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
  `first_name` varchar(30) NOT NULL,
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
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
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
  `action_flag` smallint(5) UNSIGNED NOT NULL,
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
(20, 'account', 'emailaddress'),
(21, 'account', 'emailconfirmation'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(15, 'authtoken', 'token'),
(5, 'contenttypes', 'contenttype'),
(8, 'parser_app', 'competencies'),
(12, 'parser_app', 'file'),
(13, 'parser_app', 'job'),
(9, 'parser_app', 'measurableresults'),
(7, 'parser_app', 'resume'),
(10, 'parser_app', 'resumedetails'),
(14, 'parser_app', 'user'),
(11, 'parser_app', 'userdetails'),
(6, 'sessions', 'session'),
(16, 'sites', 'site'),
(17, 'socialaccount', 'socialaccount'),
(18, 'socialaccount', 'socialapp'),
(19, 'socialaccount', 'socialtoken');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-10-27 13:14:45.656940'),
(2, 'auth', '0001_initial', '2019-10-27 13:14:48.474941'),
(3, 'account', '0001_initial', '2019-10-27 13:15:04.541470'),
(4, 'account', '0002_email_max_length', '2019-10-27 13:15:08.954709'),
(5, 'admin', '0001_initial', '2019-10-27 13:15:09.622627'),
(6, 'admin', '0002_logentry_remove_auto_add', '2019-10-27 13:15:16.544024'),
(7, 'admin', '0003_logentry_add_action_flag_choices', '2019-10-27 13:15:16.695981'),
(8, 'contenttypes', '0002_remove_content_type_name', '2019-10-27 13:15:18.361045'),
(9, 'auth', '0002_alter_permission_name_max_length', '2019-10-27 13:15:20.511762'),
(10, 'auth', '0003_alter_user_email_max_length', '2019-10-27 13:15:20.925494'),
(11, 'auth', '0004_alter_user_username_opts', '2019-10-27 13:15:21.027213'),
(12, 'auth', '0005_alter_user_last_login_null', '2019-10-27 13:15:22.305692'),
(13, 'auth', '0006_require_contenttypes_0002', '2019-10-27 13:15:22.357676'),
(14, 'auth', '0007_alter_validators_add_error_messages', '2019-10-27 13:15:22.429650'),
(15, 'auth', '0008_alter_user_username_max_length', '2019-10-27 13:15:22.713773'),
(16, 'auth', '0009_alter_user_last_name_max_length', '2019-10-27 13:15:23.205242'),
(17, 'auth', '0010_alter_group_name_max_length', '2019-10-27 13:15:23.471051'),
(18, 'auth', '0011_update_proxy_permissions', '2019-10-27 13:15:23.653193'),
(19, 'authtoken', '0001_initial', '2019-10-27 13:15:24.286850'),
(20, 'authtoken', '0002_auto_20160226_1747', '2019-10-27 13:15:33.123330'),
(21, 'parser_app', '0001_initial', '2019-10-27 13:15:34.320037'),
(22, 'parser_app', '0002_auto_20181229_1358', '2019-10-27 13:15:37.936202'),
(23, 'parser_app', '0003_auto_20181229_1401', '2019-10-27 13:15:43.294979'),
(24, 'parser_app', '0004_auto_20181229_1433', '2019-10-27 13:15:44.345814'),
(25, 'parser_app', '0005_auto_20181229_1444', '2019-10-27 13:15:45.157328'),
(26, 'parser_app', '0006_auto_20181229_1447', '2019-10-27 13:15:47.244684'),
(27, 'parser_app', '0007_resume_uploaded_on', '2019-10-27 13:15:47.684809'),
(28, 'parser_app', '0008_auto_20181230_0303', '2019-10-27 13:15:48.235990'),
(29, 'parser_app', '0009_resume_experience', '2019-10-27 13:15:48.407935'),
(30, 'parser_app', '0010_resume_competencies', '2019-10-27 13:15:48.732163'),
(31, 'parser_app', '0011_auto_20190419_0453', '2019-10-27 13:15:57.254252'),
(32, 'parser_app', '0012_auto_20190419_0507', '2019-10-27 13:16:10.404638'),
(33, 'parser_app', '0013_auto_20190517_0239', '2019-10-27 13:16:10.866231'),
(34, 'parser_app', '0014_file', '2019-10-27 13:16:11.509167'),
(35, 'parser_app', '0015_auto_20191027_1514', '2019-10-27 13:16:26.282229'),
(36, 'sessions', '0001_initial', '2019-10-27 13:16:26.881161'),
(37, 'sites', '0001_initial', '2019-10-27 13:16:29.295089'),
(38, 'sites', '0002_alter_domain_unique', '2019-10-27 13:16:30.408800'),
(39, 'socialaccount', '0001_initial', '2019-10-27 13:16:38.255181'),
(40, 'socialaccount', '0002_token_max_lengths', '2019-10-27 13:16:57.670156'),
(41, 'socialaccount', '0003_extra_data_default_dict', '2019-10-27 13:16:57.750133');

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
('3l2c6b99xgded5dhaunndavlg747kfiu', 'ZTRmMTc1ODMyNjU4Yzc1YmVkOTlkYmYwZGNiNjI1Yzg2YmMzNGU1ODp7ImlkIjoxLCJuYW1lIjoiVGFrdWUiLCJzdXJuYW1lIjoiTWFrb3RvcmUiLCJhY2Nlc3MiOiJBZG1pbiIsImVtYWlsIjoibWFrb3RvcmVAZ21haWwuY29tIn0=', '2019-11-11 01:49:38.528294'),
('fnwahbxoeyjc28be5o1xtv1g0jxiaqq3', 'YzlkNTJmZTNiOGU0NDk3ZjZiY2MyNmUyZTZhMjc5Njk5YjRkZWE0NTp7ImlkIjo5LCJuYW1lIjoiQnJvIiwic3VybmFtZSI6Ik1vcyIsImFjY2VzcyI6IkFkbWluIiwiZW1haWwiOiJsb0BnbWFpbC5jb20ifQ==', '2019-11-10 18:33:06.991365');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

-- --------------------------------------------------------

--
-- Table structure for table `parser_app_competencies`
--

CREATE TABLE `parser_app_competencies` (
  `id` int(11) NOT NULL,
  `competency` varchar(1000) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parser_app_competencies`
--

INSERT INTO `parser_app_competencies` (`id`, `competency`, `user_id`) VALUES
(1, 'score', 1);

-- --------------------------------------------------------

--
-- Table structure for table `parser_app_file`
--

CREATE TABLE `parser_app_file` (
  `id` int(11) NOT NULL,
  `file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `parser_app_job`
--

CREATE TABLE `parser_app_job` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `skills` varchar(255) NOT NULL,
  `due_date` varchar(255) NOT NULL,
  `added_by` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parser_app_job`
--

INSERT INTO `parser_app_job` (`id`, `title`, `description`, `skills`, `due_date`, `added_by`, `created_at`, `updated_at`) VALUES
(8, 'Programmer', 'We want a programmer with 5 years experience', 'Java', '2019-10-26', 'makotore@gmail.com', '2019-10-28 01:47:40.845404', '2019-10-28 01:47:40.994627');

-- --------------------------------------------------------

--
-- Table structure for table `parser_app_measurableresults`
--

CREATE TABLE `parser_app_measurableresults` (
  `id` int(11) NOT NULL,
  `measurable_result` varchar(1000) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parser_app_measurableresults`
--

INSERT INTO `parser_app_measurableresults` (`id`, `measurable_result`, `user_id`) VALUES
(1, 'score', 1);

-- --------------------------------------------------------

--
-- Table structure for table `parser_app_resume`
--

CREATE TABLE `parser_app_resume` (
  `id` int(11) NOT NULL,
  `resume` varchar(100) NOT NULL,
  `last_uploaded_on` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parser_app_resume`
--

INSERT INTO `parser_app_resume` (`id`, `resume`, `last_uploaded_on`, `user_id`) VALUES
(19, 'resumes/kudzayi_mashonganyika_cv_gdsW2hH.docx', '2019-10-28 01:45:40.402360', 1),
(20, 'resumes/attachment.docx', '2019-10-28 01:49:16.445551', 1);

-- --------------------------------------------------------

--
-- Table structure for table `parser_app_resumedetails`
--

CREATE TABLE `parser_app_resumedetails` (
  `id` int(11) NOT NULL,
  `page_nos` int(11) DEFAULT NULL,
  `resume_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parser_app_resumedetails`
--

INSERT INTO `parser_app_resumedetails` (`id`, `page_nos`, `resume_id`) VALUES
(14, NULL, 20);

-- --------------------------------------------------------

--
-- Table structure for table `parser_app_user`
--

CREATE TABLE `parser_app_user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `access` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parser_app_user`
--

INSERT INTO `parser_app_user` (`id`, `first_name`, `last_name`, `email`, `sex`, `dob`, `access`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Takue', 'Makotore', 'makotore@gmail.com', 'Male', '2019-10-23', 'Admin', '25d55ad283aa400af464c76d713c07ad', '2019-10-27 14:06:52.461248', '2019-10-27 14:06:52.577182'),
(10, 'Rumbi', 'Mubobo', 'mubobo@gmail.com', 'Female', '2019-10-22', 'User', '25d55ad283aa400af464c76d713c07ad', '2019-10-27 17:44:07.969535', '2019-10-27 17:44:08.177475'),
(11, 'Tari', 'Mapu', 'mapu@gmail.com', 'Male', '2019-10-07', 'User', '25d55ad283aa400af464c76d713c07ad', '2019-10-28 01:48:30.601380', '2019-10-28 01:48:30.775426');

-- --------------------------------------------------------

--
-- Table structure for table `parser_app_userdetails`
--

CREATE TABLE `parser_app_userdetails` (
  `id` int(11) NOT NULL,
  `mobile_number` int(11) DEFAULT NULL,
  `skills` varchar(1000) DEFAULT NULL,
  `years_of_exp` double DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `logged_email` varchar(255) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `job_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parser_app_userdetails`
--

INSERT INTO `parser_app_userdetails` (`id`, `mobile_number`, `skills`, `years_of_exp`, `email`, `name`, `created_at`, `logged_email`, `updated_at`, `job_id`) VALUES
(14, 2147483647, 'Mobile, Psychology, Gmail, Research, Email, English', 0, 'rudoptaruvinga@gmail.com', 'CURRICULUM VITAE', '2019-10-28 01:49:17.843360', 'mapu@gmail.com', '2019-10-28 01:49:17.843360', '(\'8\',)');

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialaccount`
--

CREATE TABLE `socialaccount_socialaccount` (
  `id` int(11) NOT NULL,
  `provider` varchar(30) NOT NULL,
  `uid` varchar(191) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialapp`
--

CREATE TABLE `socialaccount_socialapp` (
  `id` int(11) NOT NULL,
  `provider` varchar(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  `client_id` varchar(191) NOT NULL,
  `secret` varchar(191) NOT NULL,
  `key` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialapp_sites`
--

CREATE TABLE `socialaccount_socialapp_sites` (
  `id` int(11) NOT NULL,
  `socialapp_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialtoken`
--

CREATE TABLE `socialaccount_socialtoken` (
  `id` int(11) NOT NULL,
  `token` longtext NOT NULL,
  `token_secret` longtext NOT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `account_emailaddress_user_id_2c513194_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` (`email_address_id`);

--
-- Indexes for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `user_id` (`user_id`);

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
-- Indexes for table `django_site`
--
ALTER TABLE `django_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`);

--
-- Indexes for table `parser_app_competencies`
--
ALTER TABLE `parser_app_competencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parser_app_competencies_user_id_1a3adab2_fk_parser_app_user_id` (`user_id`);

--
-- Indexes for table `parser_app_file`
--
ALTER TABLE `parser_app_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parser_app_job`
--
ALTER TABLE `parser_app_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parser_app_measurableresults`
--
ALTER TABLE `parser_app_measurableresults`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parser_app_measurabl_user_id_d416854a_fk_parser_ap` (`user_id`);

--
-- Indexes for table `parser_app_resume`
--
ALTER TABLE `parser_app_resume`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parser_app_resume_user_id_5aad3d99_fk_parser_app_user_id` (`user_id`);

--
-- Indexes for table `parser_app_resumedetails`
--
ALTER TABLE `parser_app_resumedetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parser_app_resumedet_resume_id_856bd254_fk_parser_ap` (`resume_id`);

--
-- Indexes for table `parser_app_user`
--
ALTER TABLE `parser_app_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parser_app_userdetails`
--
ALTER TABLE `parser_app_userdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialaccount_provider_uid_fc810c6e_uniq` (`provider`,`uid`),
  ADD KEY `socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialapp_sites_socialapp_id_site_id_71a9a768_uniq` (`socialapp_id`,`site_id`),
  ADD KEY `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` (`site_id`);

--
-- Indexes for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq` (`app_id`,`account_id`),
  ADD KEY `socialaccount_social_account_id_951f210e_fk_socialacc` (`account_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `django_site`
--
ALTER TABLE `django_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `parser_app_competencies`
--
ALTER TABLE `parser_app_competencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `parser_app_file`
--
ALTER TABLE `parser_app_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parser_app_job`
--
ALTER TABLE `parser_app_job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `parser_app_measurableresults`
--
ALTER TABLE `parser_app_measurableresults`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `parser_app_resume`
--
ALTER TABLE `parser_app_resume`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `parser_app_resumedetails`
--
ALTER TABLE `parser_app_resumedetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `parser_app_user`
--
ALTER TABLE `parser_app_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `parser_app_userdetails`
--
ALTER TABLE `parser_app_userdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD CONSTRAINT `account_emailaddress_user_id_2c513194_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD CONSTRAINT `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` FOREIGN KEY (`email_address_id`) REFERENCES `account_emailaddress` (`id`);

--
-- Constraints for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

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
-- Constraints for table `parser_app_competencies`
--
ALTER TABLE `parser_app_competencies`
  ADD CONSTRAINT `parser_app_competencies_user_id_1a3adab2_fk_parser_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `parser_app_user` (`id`);

--
-- Constraints for table `parser_app_measurableresults`
--
ALTER TABLE `parser_app_measurableresults`
  ADD CONSTRAINT `parser_app_measurabl_user_id_d416854a_fk_parser_ap` FOREIGN KEY (`user_id`) REFERENCES `parser_app_user` (`id`);

--
-- Constraints for table `parser_app_resume`
--
ALTER TABLE `parser_app_resume`
  ADD CONSTRAINT `parser_app_resume_user_id_5aad3d99_fk_parser_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `parser_app_user` (`id`);

--
-- Constraints for table `parser_app_resumedetails`
--
ALTER TABLE `parser_app_resumedetails`
  ADD CONSTRAINT `parser_app_resumedet_resume_id_856bd254_fk_parser_ap` FOREIGN KEY (`resume_id`) REFERENCES `parser_app_resume` (`id`);

--
-- Constraints for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD CONSTRAINT `socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  ADD CONSTRAINT `socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc` FOREIGN KEY (`socialapp_id`) REFERENCES `socialaccount_socialapp` (`id`),
  ADD CONSTRAINT `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- Constraints for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD CONSTRAINT `socialaccount_social_account_id_951f210e_fk_socialacc` FOREIGN KEY (`account_id`) REFERENCES `socialaccount_socialaccount` (`id`),
  ADD CONSTRAINT `socialaccount_social_app_id_636a42d7_fk_socialacc` FOREIGN KEY (`app_id`) REFERENCES `socialaccount_socialapp` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
