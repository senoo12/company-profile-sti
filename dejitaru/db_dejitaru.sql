-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2024 at 01:36 PM
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
-- Database: `db_dejitaru`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add category', 1, 'add_category'),
(2, 'Can change category', 1, 'change_category'),
(3, 'Can delete category', 1, 'delete_category'),
(4, 'Can view category', 1, 'view_category'),
(5, 'Can add collaboration', 2, 'add_collaboration'),
(6, 'Can change collaboration', 2, 'change_collaboration'),
(7, 'Can delete collaboration', 2, 'delete_collaboration'),
(8, 'Can view collaboration', 2, 'view_collaboration'),
(9, 'Can add project', 3, 'add_project'),
(10, 'Can change project', 3, 'change_project'),
(11, 'Can delete project', 3, 'delete_project'),
(12, 'Can view project', 3, 'view_project'),
(13, 'Can add log entry', 4, 'add_logentry'),
(14, 'Can change log entry', 4, 'change_logentry'),
(15, 'Can delete log entry', 4, 'delete_logentry'),
(16, 'Can view log entry', 4, 'view_logentry'),
(17, 'Can add permission', 5, 'add_permission'),
(18, 'Can change permission', 5, 'change_permission'),
(19, 'Can delete permission', 5, 'delete_permission'),
(20, 'Can view permission', 5, 'view_permission'),
(21, 'Can add group', 6, 'add_group'),
(22, 'Can change group', 6, 'change_group'),
(23, 'Can delete group', 6, 'delete_group'),
(24, 'Can view group', 6, 'view_group'),
(25, 'Can add user', 7, 'add_user'),
(26, 'Can change user', 7, 'change_user'),
(27, 'Can delete user', 7, 'delete_user'),
(28, 'Can view user', 7, 'view_user'),
(29, 'Can add content type', 8, 'add_contenttype'),
(30, 'Can change content type', 8, 'change_contenttype'),
(31, 'Can delete content type', 8, 'delete_contenttype'),
(32, 'Can view content type', 8, 'view_contenttype'),
(33, 'Can add session', 9, 'add_session'),
(34, 'Can change session', 9, 'change_session'),
(35, 'Can delete session', 9, 'delete_session'),
(36, 'Can view session', 9, 'view_session');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$NXz19MRKvu7ezi4widCGUs$Y8x9EMmFSlZKiLXzco7rs9wnLLJJ2HhV31WQP0x18Qo=', '2024-12-29 08:17:17.548561', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2024-12-29 01:46:46.536066');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) NOT NULL,
  `name_of_category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name_of_category`) VALUES
(1, 'Website Development'),
(2, 'Mobile Development'),
(3, 'Big Data');

-- --------------------------------------------------------

--
-- Table structure for table `collaboration`
--

CREATE TABLE `collaboration` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `name_of_organization` varchar(150) NOT NULL,
  `message` varchar(200) NOT NULL,
  `service_category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `collaboration`
--

INSERT INTO `collaboration` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `name_of_organization`, `message`, `service_category_id`) VALUES
(1, 'Hammam', 'Zaidan', 'hammamzaidan@gmail.com', '08212313112', 'UNJ', 'Memiliki keperluan untuk kolaborasi di bidang mobile', 2);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-12-29 03:13:22.093822', '1', 'Website', 1, '[{\"added\": {}}]', 1, 1),
(2, '2024-12-29 03:13:31.278585', '2', 'Mobile Development', 1, '[{\"added\": {}}]', 1, 1),
(3, '2024-12-29 03:13:35.140324', '3', 'Big Data', 1, '[{\"added\": {}}]', 1, 1),
(4, '2024-12-29 03:13:47.294314', '1', 'Website Development', 2, '[{\"changed\": {\"fields\": [\"Name of category\"]}}]', 1, 1),
(5, '2024-12-29 03:38:42.565635', '1', 'Project object (1)', 1, '[{\"added\": {}}]', 3, 1),
(6, '2024-12-29 03:39:27.843317', '2', 'Project object (2)', 1, '[{\"added\": {}}]', 3, 1),
(7, '2024-12-29 03:41:55.563577', '3', 'Project object (3)', 1, '[{\"added\": {}}]', 3, 1),
(8, '2024-12-29 03:42:21.951341', '4', 'Project object (4)', 1, '[{\"added\": {}}]', 3, 1),
(9, '2024-12-29 03:44:02.802356', '5', 'Project object (5)', 1, '[{\"added\": {}}]', 3, 1),
(10, '2024-12-29 03:44:46.686983', '6', 'Project object (6)', 1, '[{\"added\": {}}]', 3, 1),
(11, '2024-12-29 11:22:27.186903', '6', 'Project object (6)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 3, 1),
(12, '2024-12-29 11:22:52.755140', '5', 'Project object (5)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 3, 1),
(13, '2024-12-29 11:23:08.539018', '4', 'Project object (4)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 3, 1),
(14, '2024-12-29 11:23:29.343210', '3', 'Project object (3)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 3, 1),
(15, '2024-12-29 11:23:41.387574', '2', 'Project object (2)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 3, 1),
(16, '2024-12-29 11:23:55.374487', '1', 'Project object (1)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(4, 'admin', 'logentry'),
(6, 'auth', 'group'),
(5, 'auth', 'permission'),
(7, 'auth', 'user'),
(8, 'contenttypes', 'contenttype'),
(1, 'product', 'category'),
(2, 'product', 'collaboration'),
(3, 'product', 'project'),
(9, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-12-29 01:46:24.561998'),
(2, 'auth', '0001_initial', '2024-12-29 01:46:25.420288'),
(3, 'admin', '0001_initial', '2024-12-29 01:46:25.641972'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-12-29 01:46:25.655944'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-12-29 01:46:25.666239'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-12-29 01:46:25.753294'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-12-29 01:46:25.820999'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-12-29 01:46:25.841064'),
(9, 'auth', '0004_alter_user_username_opts', '2024-12-29 01:46:25.851615'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-12-29 01:46:25.915766'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-12-29 01:46:25.918274'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-12-29 01:46:25.926323'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-12-29 01:46:25.952309'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-12-29 01:46:25.974679'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-12-29 01:46:26.004564'),
(16, 'auth', '0011_update_proxy_permissions', '2024-12-29 01:46:26.018608'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-12-29 01:46:26.044529'),
(18, 'product', '0001_initial', '2024-12-29 01:46:26.294217'),
(19, 'product', '0002_alter_project_category', '2024-12-29 01:46:28.185086'),
(20, 'product', '0003_alter_collaboration_email', '2024-12-29 01:46:28.198241'),
(21, 'product', '0004_alter_collaboration_table', '2024-12-29 01:46:28.216356'),
(22, 'product', '0005_category_foto_alter_project_foto', '2024-12-29 01:46:28.246763'),
(23, 'sessions', '0001_initial', '2024-12-29 01:46:28.301729'),
(24, 'product', '0006_remove_category_foto', '2024-12-29 02:36:45.495694');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('i7jx4y0vc4tzaa0dhdiigfvef8svldwz', '.eJxVjMEOgjAQRP-lZ9NQ2YXFo3e_odluF4uaNqFwMv67kHDQ22Tem3kbz-uS_Fp19lM0F-PM6bcLLE_NO4gPzvdipeRlnoLdFXvQam8l6ut6uH8HiWva1iAKw9BphyDUOBoFsUcNJGfALSOqo0a0HbVnJG4jO4rAIk5FIJjPF90aOGw:1tRoU9:b8birChS2QTi3XiLwFlibIHFKUuUbBPWINJcQK-Y2AE', '2025-01-12 08:17:17.551539'),
('vkokf76zghvpg4uewi9c0k0gri6ig3p9', '.eJxVjMEOgjAQRP-lZ9NQ2YXFo3e_odluF4uaNqFwMv67kHDQ22Tem3kbz-uS_Fp19lM0F-PM6bcLLE_NO4gPzvdipeRlnoLdFXvQam8l6ut6uH8HiWva1iAKw9BphyDUOBoFsUcNJGfALSOqo0a0HbVnJG4jO4rAIk5FIJjPF90aOGw:1tRiOV:0A66CVW44i8zH1ZSeOA82A3ehugMGPzlDR_7E_olsh4', '2025-01-12 01:47:03.534304');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `title`, `description`, `url`, `foto`, `category_id`) VALUES
(1, 'Website E-Commerce', 'Platform online untuk menjual berbagai jenis sepatu dengan fitur katalog produk, filter pencarian, checkout mudah, notifikasi diskon, dan layanan pelanggan.', 'www.ecommerce.com', 'media/content/E-Commerce_Website.png', 1),
(2, 'Website Podcast', 'Situs yang menyediakan streaming podcast dari berbagai topik dengan fitur player terintegrasi, kategori topik, subscribe ke channel favorit, dan profil host.', 'www.podcast.com', 'media/content/Podcast_Website.png', 1),
(3, 'Aplikasi Bank Mini', 'Aplikasi sederhana untuk simulasi layanan perbankan, termasuk fitur pembuatan akun, cek saldo, transfer antar akun, pencatatan transaksi, dan pengelolaan rekening.', 'www.bankmini.com', 'media/content/Bank_Mini_Application.png', 2),
(4, 'Aplikasi To-Do List', 'Aplikasi untuk membantu mengatur tugas harian dengan fitur seperti penambahan tugas, pengeditan, penghapusan, pengingat, dan kategorisasi berdasarkan prioritas.', 'www.todolist.com', 'media/content/To_Do_List_Application.png', 2),
(5, 'Big Data Digital Company', 'Platform analitik yang dirancang untuk perusahaan digital, menampilkan metrik penting seperti trafik pengguna, performa kampanye iklan, engagement media sosial, dan analisis sentimen pelanggan.', 'www.bigdatadigitalcompany.com', 'media/content/Big_Data_Digital_Company.png', 3),
(6, 'Big Data Finance Company', 'Dashboard yang mengelola data keuangan skala besar, menampilkan laporan keuangan, analisis risiko, prediksi investasi, dan performa portofolio.', 'www.bigdatafinancecompany.com', 'media/content/Big_Data_Finance_Company.png', 3);

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
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collaboration`
--
ALTER TABLE `collaboration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_service_category_id_30271ff5_fk_category_id` (`service_category_id`);

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
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_category_id_75b05e89` (`category_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `collaboration`
--
ALTER TABLE `collaboration`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- Constraints for table `collaboration`
--
ALTER TABLE `collaboration`
  ADD CONSTRAINT `product_service_category_id_30271ff5_fk_category_id` FOREIGN KEY (`service_category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_category_id_75b05e89_fk_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
