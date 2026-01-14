-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 12, 2026 lúc 12:40 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `appointment_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `auth_permission`
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
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add patient', 7, 'add_patient'),
(26, 'Can change patient', 7, 'change_patient'),
(27, 'Can delete patient', 7, 'delete_patient'),
(28, 'Can view patient', 7, 'view_patient'),
(29, 'Can add doctor', 8, 'add_doctor'),
(30, 'Can change doctor', 8, 'change_doctor'),
(31, 'Can delete doctor', 8, 'delete_doctor'),
(32, 'Can view doctor', 8, 'view_doctor'),
(33, 'Can add appointment', 9, 'add_appointment'),
(34, 'Can change appointment', 9, 'change_appointment'),
(35, 'Can delete appointment', 9, 'delete_appointment'),
(36, 'Can view appointment', 9, 'view_appointment'),
(37, 'Can add PayPal IPN', 10, 'add_paypalipn'),
(38, 'Can change PayPal IPN', 10, 'change_paypalipn'),
(39, 'Can delete PayPal IPN', 10, 'delete_paypalipn'),
(40, 'Can view PayPal IPN', 10, 'view_paypalipn'),
(41, 'Can add prescription', 11, 'add_prescription'),
(42, 'Can change prescription', 11, 'change_prescription'),
(43, 'Can delete prescription', 11, 'delete_prescription'),
(44, 'Can view prescription', 11, 'view_prescription'),
(45, 'Can add prescription detail', 12, 'add_prescriptiondetail'),
(46, 'Can change prescription detail', 12, 'change_prescriptiondetail'),
(47, 'Can delete prescription detail', 12, 'delete_prescriptiondetail'),
(48, 'Can view prescription detail', 12, 'view_prescriptiondetail'),
(49, 'Can add doctor schedule', 13, 'add_doctorschedule'),
(50, 'Can change doctor schedule', 13, 'change_doctorschedule'),
(51, 'Can delete doctor schedule', 13, 'delete_doctorschedule'),
(52, 'Can view doctor schedule', 13, 'view_doctorschedule'),
(53, 'Can add specialty', 14, 'add_specialty'),
(54, 'Can change specialty', 14, 'change_specialty'),
(55, 'Can delete specialty', 14, 'delete_specialty'),
(56, 'Can view specialty', 14, 'view_specialty'),
(57, 'Can add doctor slot', 15, 'add_doctorslot'),
(58, 'Can change doctor slot', 15, 'change_doctorslot'),
(59, 'Can delete doctor slot', 15, 'delete_doctorslot'),
(60, 'Can view doctor slot', 15, 'view_doctorslot');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ;

--
-- Đang đổ dữ liệu cho bảng `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2025-08-02 04:31:20.913250', '3', 'levantuan (doctor)', 2, '[{\"changed\": {\"fields\": [\"Username\", \"Role\", \"Email\"]}}]', 6, 1),
(2, '2025-08-02 04:31:39.441331', '3', 'levantuan (doctor)', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 6, 1),
(3, '2025-08-02 04:32:20.833056', '4', 'tranthiminh (doctor)', 2, '[{\"changed\": {\"fields\": [\"Username\", \"First name\", \"Last name\", \"Role\", \"Email\"]}}]', 6, 1),
(4, '2025-08-02 04:33:20.401088', '2', 'trang (patient)', 2, '[{\"changed\": {\"fields\": [\"Role\"]}}]', 6, 1),
(5, '2025-08-02 09:45:45.211551', '4', 'tranthiminh (doctor)', 2, '[]', 6, 1),
(6, '2025-08-02 09:45:51.643282', '3', 'levantuan (doctor)', 2, '[]', 6, 1),
(7, '2025-08-02 09:47:15.362025', '2', 'trang (doctor)', 2, '[{\"changed\": {\"fields\": [\"Role\"]}}]', 6, 1),
(8, '2025-08-02 09:47:18.765143', '2', 'trang (doctor)', 2, '[]', 6, 1),
(9, '2025-08-02 09:48:02.125060', '4', 'tranthiminh (patient)', 2, '[{\"changed\": {\"fields\": [\"Role\"]}}]', 6, 1),
(10, '2025-08-02 09:48:37.032792', '3', 'levantuan (patient)', 2, '[{\"changed\": {\"fields\": [\"Role\"]}}]', 6, 1),
(11, '2025-08-02 10:51:14.746114', '4', 'tranthiminh (doctor)', 2, '[{\"changed\": {\"fields\": [\"Role\"]}}]', 6, 1),
(12, '2025-08-02 10:51:38.974591', '5', 'ewqeq (doctor)', 3, '', 6, 1),
(13, '2025-08-02 10:51:46.843852', '3', 'levantuan (doctor)', 2, '[{\"changed\": {\"fields\": [\"Role\"]}}]', 6, 1),
(14, '2025-08-03 09:40:06.692220', '2', 'trang (doctor)', 2, '[]', 6, 1),
(15, '2025-08-03 09:40:59.791262', '2', 'trang (doctor)', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 6, 1),
(16, '2025-08-03 09:44:59.270848', '2', 'trang (patient)', 2, '[{\"changed\": {\"fields\": [\"Role\"]}}]', 6, 1),
(17, '2025-08-03 09:45:28.970386', '2', 'trang (doctor)', 2, '[{\"changed\": {\"fields\": [\"Role\"]}}]', 6, 1),
(18, '2025-08-03 17:55:53.951988', '6', 'linda (patient)', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 6, 1),
(19, '2025-08-04 15:45:40.922122', '8', 'kimha (doctor)', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Avatar\"]}}]', 6, 1),
(20, '2025-08-04 16:02:54.557390', '8', 'kimha (doctor)', 3, '', 6, 1),
(21, '2025-08-04 16:03:52.988785', '9', 'nhatanh (doctor)', 3, '', 6, 1),
(22, '2025-08-04 16:38:19.092480', '10', 'nhatha (doctor)', 3, '', 6, 1),
(23, '2025-08-04 16:38:34.395592', '12', 'kimanhnhi (patient)', 3, '', 6, 1),
(24, '2025-08-04 16:38:47.125128', '11', 'kimanh (doctor)', 3, '', 6, 1),
(25, '2025-08-05 04:08:22.795858', '13', 'minhanh (doctor)', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 6, 1),
(26, '2025-08-05 04:08:47.724157', '14', 'minhan (doctor)', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 6, 1),
(27, '2025-08-05 04:09:14.789972', '4', 'tranthiminh (doctor)', 2, '[{\"changed\": {\"fields\": [\"Avatar\"]}}]', 6, 1),
(28, '2025-08-05 04:09:28.575006', '3', 'levantuan (doctor)', 2, '[{\"changed\": {\"fields\": [\"Avatar\"]}}]', 6, 1),
(29, '2025-08-05 04:09:39.750896', '2', 'trang (patient)', 2, '[{\"changed\": {\"fields\": [\"Role\"]}}]', 6, 1),
(30, '2025-08-05 04:10:16.652784', '2', 'trang (patient)', 3, '', 6, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(10, 'ipn', 'paypalipn'),
(5, 'sessions', 'session'),
(9, 'userauths', 'appointment'),
(8, 'userauths', 'doctor'),
(13, 'userauths', 'doctorschedule'),
(15, 'userauths', 'doctorslot'),
(7, 'userauths', 'patient'),
(11, 'userauths', 'prescription'),
(12, 'userauths', 'prescriptiondetail'),
(14, 'userauths', 'specialty'),
(6, 'userauths', 'user');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-08-01 13:25:42.825880'),
(2, 'contenttypes', '0002_remove_content_type_name', '2025-08-01 13:25:42.909414'),
(3, 'auth', '0001_initial', '2025-08-01 13:25:43.225511'),
(4, 'auth', '0002_alter_permission_name_max_length', '2025-08-01 13:25:43.309292'),
(5, 'auth', '0003_alter_user_email_max_length', '2025-08-01 13:25:43.325174'),
(6, 'auth', '0004_alter_user_username_opts', '2025-08-01 13:25:43.340008'),
(7, 'auth', '0005_alter_user_last_login_null', '2025-08-01 13:25:43.357704'),
(8, 'auth', '0006_require_contenttypes_0002', '2025-08-01 13:25:43.364660'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2025-08-01 13:25:43.396395'),
(10, 'auth', '0008_alter_user_username_max_length', '2025-08-01 13:25:43.399852'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2025-08-01 13:25:43.421602'),
(12, 'auth', '0010_alter_group_name_max_length', '2025-08-01 13:25:43.444981'),
(13, 'auth', '0011_update_proxy_permissions', '2025-08-01 13:25:43.467258'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2025-08-01 13:25:43.480093'),
(15, 'userauths', '0001_initial', '2025-08-01 13:25:44.143711'),
(16, 'admin', '0001_initial', '2025-08-01 13:25:44.258329'),
(17, 'admin', '0002_logentry_remove_auto_add', '2025-08-01 13:25:44.274298'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2025-08-01 13:25:44.301102'),
(19, 'sessions', '0001_initial', '2025-08-01 13:25:44.342749'),
(20, 'userauths', '0002_remove_patient_date_of_birth', '2025-08-01 13:46:21.287244'),
(21, 'userauths', '0003_appointment_status', '2025-08-04 09:32:52.683953'),
(22, 'userauths', '0004_alter_appointment_status', '2025-08-04 09:37:18.931484'),
(23, 'userauths', '0005_user_avatar', '2025-08-04 15:18:46.029552'),
(24, 'userauths', '0006_alter_user_avatar_alter_user_role', '2025-08-08 15:58:16.943639'),
(25, 'ipn', '0001_initial', '2025-08-16 14:06:43.253045'),
(26, 'ipn', '0002_paypalipn_mp_id', '2025-08-16 14:06:43.288386'),
(27, 'ipn', '0003_auto_20141117_1647', '2025-08-16 14:06:43.500610'),
(28, 'ipn', '0004_auto_20150612_1826', '2025-08-16 14:06:46.765644'),
(29, 'ipn', '0005_auto_20151217_0948', '2025-08-16 14:06:46.922157'),
(30, 'ipn', '0006_auto_20160108_1112', '2025-08-16 14:06:47.186045'),
(31, 'ipn', '0007_auto_20160219_1135', '2025-08-16 14:06:47.201460'),
(32, 'ipn', '0008_auto_20181128_1032', '2025-08-16 14:06:47.221928'),
(33, 'ipn', '0009_alter_paypalipn_id', '2025-09-04 12:30:52.033166'),
(34, 'userauths', '0007_prescription_prescriptiondetail', '2025-09-04 12:30:52.391655'),
(35, 'userauths', '0008_prescription_diagnosis_prescriptiondetail_quantity', '2025-09-07 08:06:48.619404'),
(36, 'userauths', '0009_doctorschedule', '2025-09-10 10:18:47.119076'),
(37, 'userauths', '0010_specialty_remove_doctor_specialization_doctorslot_and_more', '2025-12-11 08:27:26.677593'),
(38, 'userauths', '0011_doctorslot_date', '2025-12-11 19:54:10.893709'),
(39, 'userauths', '0012_remove_appointment_slot_delete_doctorslot', '2025-12-12 01:50:16.214855'),
(40, 'userauths', '0007_remove_doctor_specialization', '2026-01-12 03:59:49.877050'),
(41, 'userauths', '0008_doctor_specialization', '2026-01-12 04:02:53.684833');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2tdoj6i67ogdsipkz281zf82hwmuxv5r', '.eJxVjMsOgjAUBf-la9P0IRfq0r3fQO4LQU2bUFgZ_11IWOj2zMx5mx7XZezXqnM_ibkYMKffjZCfmncgD8z3YrnkZZ7I7oo9aLW3Ivq6Hu7fwYh13GpNnmJA6SAkojYKptSSGxxrBG58o4NslFt2Kp6TgA-AqsrcEHRn8_kCCJM5Kg:1uiq5H:5Bi4-61UGcp_Ev4BgOAeCXvvsNVeVhSJvrxCaYKrMX8', '2025-08-18 07:58:15.587610'),
('5qrqdg63oaetdxxfu9knnugtm451c6n9', '.eJxVjDsOwjAQBe_iGln-ZhNK-pwhWtu7OIBsKU4qxN2RpRTQvpl5b7HgseflaLQtaxJXocXldwsYn1Q6SA8s9ypjLfu2BtkVedIm55rodTvdv4OMLffaKYM6eXDRwEAIyCooz4w8gdMwIFhwo1HRWtATsfdujEiGCMAGFp8v3Ok32A:1ukPqh:nnCeJoVqvnMEU1Qkhe7AcSZ4Znxf6dHtGjEjAC6z-rQ', '2025-08-22 16:21:43.268503'),
('5xkaf7rc08dyfse4ydqfkctwj0znpn71', 'e30:1uwHBv:yeShd-cicmXzXxJBa4EHrDQfgZPOZrZi-b2js0DqGiA', '2025-09-24 09:32:39.803574'),
('75zrktp8k600astodyg77b4gj2seypdr', '.eJxVjMsOgjAUBf-la9P0IRfq0r3fQO4LQU2bUFgZ_11IWOj2zMx5mx7XZezXqnM_ibkYMKffjZCfmncgD8z3YrnkZZ7I7oo9aLW3Ivq6Hu7fwYh13GpNnmJA6SAkojYKptSSGxxrBG58o4NslFt2Kp6TgA-AqsrcEHRn8_kCCJM5Kg:1vTdLp:PAKfNxEyllSwEsH4axgZFQFwstHby6i0FRZKmSNf4OE', '2025-12-25 09:52:45.588445'),
('79uoze21diaxooba015ys5frowiriz4m', '.eJxVjDsOgzAQRO_iOrL8ZZeU6TmDtfaamCQyEoYqyt0DEkVSjTTvzbxFoG0tYWt5CROLq9AoLr9lpPTM9SD8oHqfZZrrukxRHoo8aZPDzPl1O92_g0Kt7GvTAxjSbnR7GlDRd85CUgTIij1aVNopraFjzhpHQyZFsJb7aD0mFJ8vyTo2uA:1v3340:Gi_80qHvG7xjX8NoTJcd-yC4MiiaonLRkIPxn4qbKOM', '2025-10-13 01:52:28.025254'),
('dflxhmxj0snqoiu8ekw1crtw7pgcqnr3', '.eJxVjEEOwiAQRe_C2hCGDnXq0n3PQAYGpGpoUtqV8e7apAvd_vfefynP21r81tLiJ1EXBU6dfsfA8ZHqTuTO9TbrONd1mYLeFX3QpsdZ0vN6uH8HhVv51mwGE0kyIZo-9xaDNdi5M0EEzNYmAsuY8oBOHAWbSVigCwxkHJik3h_pkDdk:1utoWL:6Kh9rgxaGzl-9fR1GnwuMm33XXa3Z-6KMfZ9K5ruASY', '2025-09-17 14:31:33.155112'),
('fem24zok6cpyirabei0qhojsshyvu80i', '.eJxVjMsOgjAUBf-la9P0IRfq0r3fQO4LQU2bUFgZ_11IWOj2zMx5mx7XZezXqnM_ibkYMKffjZCfmncgD8z3YrnkZZ7I7oo9aLW3Ivq6Hu7fwYh13GpNnmJA6SAkojYKptSSGxxrBG58o4NslFt2Kp6TgA-AqsrcEHRn8_kCCJM5Kg:1vTdFU:qfkqr5wsuYUktwRruFb70UqrB41AJPz2A0f286BOKq8', '2025-12-25 09:46:12.477859'),
('guf3y795g0vw2uwhrzv41x5trhtlr6v8', '.eJxVjDsOwjAQBe_iGln-ZhNK-pwhWtu7OIBsKU4qxN2RpRTQvpl5b7HgseflaLQtaxJXocXldwsYn1Q6SA8s9ypjLfu2BtkVedIm55rodTvdv4OMLffaKYM6eXDRwEAIyCooz4w8gdMwIFhwo1HRWtATsfdujEiGCMAGFp8v3Ok32A:1uhpoK:9P26WL5vDwnFKJLo3r4faDIuAnF9rhn57N-RAypj1Q8', '2025-08-15 13:28:36.809817'),
('gxa5p61dcyk4r0t4yf7i6h8gtmfo65qm', 'e30:1uiPj6:dTAJenUTDrwSjo9b4UuLw4u7IYB2rx88K6kKD0XsVaU', '2025-08-17 03:49:36.965175'),
('kmhu291sqquj994edialcgvapv8ivzd7', '.eJxVjMsOwiAQRf-FtSFAebp07zeQYQakaiAp7cr479qkC93ec859sQjbWuM28hJnYmcmLTv9jgnwkdtO6A7t1jn2ti5z4rvCDzr4tVN-Xg7376DCqN_aG-dNQGkQjHZCykxBWYEiFYXkbKKpUAGXypQ9aQmT0sZAIWGlVsGz9wcDvTgG:1v29OU:sXRc8-8xtYF4MciDbhNxcemeBQ8gn6BTRVeeERm4q18', '2025-10-10 14:25:54.388417'),
('n2e3m5diloso5dujigqph2pqcdztw130', '.eJxVjMsOwiAQAP-FsyG86lKP3vsNDbsLUjWQlPZk_Hcl6UGvM5N5iTnsW573Ftd5YXER2orTL8RAj1i64Xsotyqplm1dUPZEHrbJqXJ8Xo_2b5BDy_2bwDhWRmtHZxzcCJG9QhgMA7KzqC3gCI5itOB8SGmgL_SMKpEiI94f9cY4Kg:1umldV:WGVBWuw_pC3GUZGibAUkVZLZM7ihXuqcbMkTHcspC1k', '2025-08-29 04:01:49.728697'),
('o0iqobsbv1kj05iwswmatf9de9rrzjrl', '.eJxVjMsOgjAUBf-la9P0IRfq0r3fQO4LQU2bUFgZ_11IWOj2zMx5mx7XZezXqnM_ibkYMKffjZCfmncgD8z3YrnkZZ7I7oo9aLW3Ivq6Hu7fwYh13GpNnmJA6SAkojYKptSSGxxrBG58o4NslFt2Kp6TgA-AqsrcEHRn8_kCCJM5Kg:1uiPk3:I7uWYSr-agMbe0XbDnmisPRtOUoeQvn3LLnzp1fWHUo', '2025-08-17 03:50:35.526822'),
('oi10ez0otnas75ae1k7wjel6807baxs0', '.eJxVjMsOwiAQAP-FsyG86lKP3vsNDbsLUjWQlPZk_Hcl6UGvM5N5iTnsW573Ftd5YXER2orTL8RAj1i64Xsotyqplm1dUPZEHrbJqXJ8Xo_2b5BDy_2bwDhWRmtHZxzcCJG9QhgMA7KzqC3gCI5itOB8SGmgL_SMKpEiI94f9cY4Kg:1urBQE:7vq0kq3Z6_nwyJpOIIgdK_QUuUwhG0GMUQgacp1q6Io', '2025-09-10 08:22:22.846588'),
('p8n7qvft449kt6xeqtfwa8hhedyudbxx', '.eJxVjDsOwjAQBe_iGln-ZhNK-pwhWtu7OIBsKU4qxN2RpRTQvpl5b7HgseflaLQtaxJXocXldwsYn1Q6SA8s9ypjLfu2BtkVedIm55rodTvdv4OMLffaKYM6eXDRwEAIyCooz4w8gdMwIFhwo1HRWtATsfdujEiGCMAGFp8v3Ok32A:1uwHHj:rgXdtI3Pnk28pf_5eZa0HzMD0bx3MApEQhdlKGH2R3s', '2025-09-24 09:38:39.407344'),
('sebpa9j3saee6osgrx2wq2mdxuasyxlm', 'e30:1uiPig:IFrgVmR8bXPGAgjU7T0YNw8JEn8sxIz_NeUKjjN7ITw', '2025-08-17 03:49:10.758489'),
('sro3wj3q4fuhmlb45pn5h07e7pzxc600', '.eJxVjEEOwiAQRe_CWhsGhCku3XsGMsyArZpiSo0L492tiZtu_3vvv1V8UGuvOkucc8tLXOotT-qoRE9DrfvgSkDwiMSB0bmDt6VYsb1ojd4ktVORnssQny3PcZS1hO2WiNfHH5ArTZfacZ2WeUzdT-n-tHXnKvl--rubg4HasNZFCDWAAUd9ZstojGhbWHxIUsAyeCFvyeh8IOLkIVjA5PrSJzTC6vMFrXdM9A:1vTbSO:o5_Totb1I9C3SMOzOc7XMc9pMlWlyNSRQqzUOgabUNA', '2025-12-25 07:51:24.309923'),
('ss363aozz4vbgf00estxq0gxr4b75egm', '.eJxVjEEOwiAQRe_C2hBKBwou3fcMzQwzSNXQpLQr491Nky50-997_60m3Lcy7U3WaWZ1VaAuvxtheko9AD-w3hedlrqtM-lD0SdtelxYXrfT_Tso2MpRu-QEUDxjBy4N3iFDB8R2oOhzj1ZMjD5xjgE6H8QY6CmH7MSBJaM-X_inOAs:1v16IC:lTampH_b8sJEguPA64BQ9YUrz2MmxqRK1XMvmtHleq0', '2025-10-07 16:55:04.023283'),
('unnrlr52i2j4zcspld33a3y1npnzz3b5', '.eJxVjEEOwiAQRe_C2hAGLFCX7nsGMsyAVA0kpV0Z765NutDtf-_9lwi4rSVsPS1hZnERIE6_W0R6pLoDvmO9NUmtrssc5a7Ig3Y5NU7P6-H-HRTs5VtnRqcANAzoExlyWrMymdiOkTMYAstoDWqVzogULYwGXBx89tFpJvH-APTgOHM:1vALHq:IIvtwbWGOPoQ2RkdURGmLXcce7rTe4cA12CeZbETEXo', '2025-11-02 04:44:54.273518'),
('vrbwuqpzensqfmwclqyc985i3zwywuum', '.eJxVjDsOwjAQBe_iGln-ZhNK-pwhWtu7OIBsKU4qxN2RpRTQvpl5b7HgseflaLQtaxJXocXldwsYn1Q6SA8s9ypjLfu2BtkVedIm55rodTvdv4OMLffaKYM6eXDRwEAIyCooz4w8gdMwIFhwo1HRWtATsfdujEiGCMAGFp8v3Ok32A:1uixMt:14D33F-898T5r5s6gVghkuROj2Nyym9eUBIuBTUNQZk', '2025-08-18 15:44:55.900235'),
('w1im0bi4j6ciqiummleiu5oax5gzch7b', '.eJxVjEEOwiAQRe_C2pACZQCX7j0DGZhBqoYmpV0Z765NutDtf-_9l4i4rTVunZc4kTgLBeL0OybMD247oTu22yzz3NZlSnJX5EG7vM7Ez8vh_h1U7PVbgwuIHLIlnUiVks3o2dhAnB2SNdoNfgCwTpfC4LOBYtPowBAUnZwS7w8iszhV:1unTlo:UTpSibxN0QeidxoSzjIFEYJLKLkmmo0afXr90VckKhY', '2025-08-31 03:09:20.430901'),
('xcnerphzxtld36hcgzeuqomau2nhtxdk', '.eJxVjMsOwiAQAP-FsyG86lKP3vsNDbsLUjWQlPZk_Hcl6UGvM5N5iTnsW573Ftd5YXER2orTL8RAj1i64Xsotyqplm1dUPZEHrbJqXJ8Xo_2b5BDy_2bwDhWRmtHZxzcCJG9QhgMA7KzqC3gCI5itOB8SGmgL_SMKpEiI94f9cY4Kg:1v9RrV:bOrORUveSspD_OOgCEsXpjeAcfinE5LicDRhkoFLKmI', '2025-10-30 17:34:01.000211'),
('y6xgv9iqddzv0y0ajxlhq16dlgyx9ppv', '.eJxVjDsOwjAQBe_iGln-ZhNK-pwhWtu7OIBsKU4qxN2RpRTQvpl5b7HgseflaLQtaxJXocXldwsYn1Q6SA8s9ypjLfu2BtkVedIm55rodTvdv4OMLffaKYM6eXDRwEAIyCooz4w8gdMwIFhwo1HRWtATsfdujEiGCMAGFp8v3Ok32A:1ukPt2:GfO97xLIHEd8RiF5TaYi0lbajsatYKPLzaQVpZWBYNo', '2025-08-22 16:24:08.555056'),
('zcxomguu41kox9ir2v4ndy968yxxpkis', 'e30:1uwHDx:u_O6Hfyvm5wgV873jFD6lPb3qj9pTYfHVy9t9NvDBhU', '2025-09-24 09:34:45.179173');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `userauths_appointment`
--

CREATE TABLE `userauths_appointment` (
  `id` bigint(20) NOT NULL,
  `appointment_time` datetime(6) NOT NULL,
  `notes` longtext DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `doctor_id` bigint(20) NOT NULL,
  `patient_id` bigint(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `userauths_appointment`
--

INSERT INTO `userauths_appointment` (`id`, `appointment_time`, `notes`, `price`, `payment_method`, `doctor_id`, `patient_id`, `status`) VALUES
(1, '2025-08-04 09:00:00.000000', 'đau răng nhiều ngày', 0.00, 'cash', 1, 3, 'cancelled'),
(2, '2025-07-30 08:00:00.000000', 'vệ sinh răng miệng', 500.00, 'cash', 1, 3, 'completed'),
(3, '2025-08-04 08:00:00.000000', 'vệ sinh răng miệng', 100.00, 'cash', 1, 3, 'cancelled'),
(4, '2025-05-04 12:00:00.000000', 'sâfwwr', 200.00, 'cash', 1, 3, 'completed'),
(5, '2025-08-04 12:00:00.000000', 'sâfwwr', 0.00, 'cash', 1, 3, 'cancelled'),
(6, '2025-06-06 13:00:00.000000', 'rewre', 0.00, 'cash', 1, 3, 'cancelled'),
(7, '2025-05-08 13:00:00.000000', 'eweq', 0.00, 'cash', 1, 3, 'cancelled'),
(8, '2025-05-08 13:00:00.000000', 'eweq', 0.00, 'cash', 1, 3, 'cancelled'),
(9, '2025-04-04 12:00:00.000000', '4324324', 0.00, 'cash', 1, 3, 'cancelled'),
(10, '2025-08-04 12:00:00.000000', '4324324', 0.00, 'cash', 1, 3, 'cancelled'),
(11, '2025-04-06 11:00:00.000000', 'rewrwr', 0.00, 'cash', 1, 3, 'cancelled'),
(12, '2025-08-06 11:00:00.000000', 'ewewq', 0.00, 'cash', 1, 3, 'cancelled'),
(13, '2025-08-06 13:00:00.000000', 'eweq', 400.00, 'cash', 1, 3, 'completed'),
(14, '2025-08-04 11:00:00.000000', 'ewqe', 100.00, 'cash', 1, 3, 'cancelled'),
(15, '2025-08-06 11:00:00.000000', 'dsad', 200.00, 'cash', 1, 3, 'cancelled'),
(16, '2025-05-04 12:00:00.000000', 'eweqeq', 400.00, 'cash', 1, 3, 'completed'),
(17, '2025-06-08 13:00:00.000000', 'rwet', 500.00, 'cash', 1, 3, 'completed'),
(18, '2025-07-07 15:00:00.000000', 'fewe', 0.00, 'cash', 1, 3, 'cancelled'),
(19, '2025-05-04 12:00:00.000000', 'dsads', 0.00, 'cash', 1, 3, 'cancelled'),
(20, '2025-07-05 10:00:00.000000', 'fdgewrqe', 0.00, 'cash', 1, 3, 'cancelled'),
(21, '2025-06-07 13:00:00.000000', 'rêrrq', 0.00, 'cash', 1, 3, 'cancelled'),
(22, '2025-08-05 14:00:00.000000', 'Muốn làm trắng răng', 100.00, 'cash', 9, 3, 'cancelled'),
(23, '2025-08-06 11:00:00.000000', 'Kiểm tra độ trắng của răng', 100.00, 'cash', 9, 3, 'cancelled'),
(24, '2025-09-12 13:00:00.000000', 'Tôi muốn làm trắng răng', 100.00, 'cash', 9, 3, 'cancelled'),
(25, '2025-08-21 14:00:00.000000', 'dưqrrqr', 100.00, 'cash', 11, 6, 'cancelled'),
(26, '2025-08-22 09:00:00.000000', 'ccccxzxz', 100.00, 'momo', 11, 6, 'cancelled'),
(27, '2025-08-20 10:00:00.000000', 'sfgdga', 100.00, 'cash', 11, 6, 'cancelled'),
(28, '2025-08-16 09:00:00.000000', 'nvc', 100.00, 'cash', 11, 6, 'cancelled'),
(29, '2025-08-19 11:00:00.000000', 'fds', 100.00, 'momo', 11, 6, 'cancelled'),
(30, '2025-08-19 11:00:00.000000', 'fds', 100.00, 'momo', 11, 6, 'cancelled'),
(31, '2025-08-20 12:00:00.000000', 'rưq', 100.00, 'momo', 11, 6, 'cancelled'),
(32, '2025-08-20 12:00:00.000000', 'rưq', 100.00, 'momo', 11, 6, 'cancelled'),
(33, '2025-08-20 12:00:00.000000', 'rưq', 100.00, 'momo', 11, 6, 'cancelled'),
(34, '2025-08-18 12:00:00.000000', 'rẻw', 100.00, 'momo', 9, 6, 'completed'),
(35, '2025-08-18 12:00:00.000000', 'rẻw', 100.00, 'momo', 9, 6, 'cancelled'),
(36, '2025-08-21 10:00:00.000000', 'ca', 100.00, 'cash', 9, 6, 'cancelled'),
(37, '2025-08-17 11:00:00.000000', 'sadsad', 100.00, 'momo', 9, 6, 'cancelled'),
(38, '2025-08-20 11:00:00.000000', 'rewrwe', 100.00, 'momo', 9, 6, 'cancelled'),
(39, '2025-08-20 11:00:00.000000', 'rewrwe', 100.00, 'momo', 9, 6, 'cancelled'),
(40, '2025-08-21 11:00:00.000000', 'fsa', 100.00, 'momo', 9, 6, 'completed'),
(41, '2025-08-21 11:00:00.000000', 'fsa', 100.00, 'momo', 9, 6, 'cancelled'),
(42, '2025-08-20 10:00:00.000000', 'ewqewqe', 100.00, 'momo', 9, 6, 'cancelled'),
(43, '2025-08-20 10:00:00.000000', 'ewqewqe', 100.00, 'momo', 9, 6, 'cancelled'),
(44, '2025-08-20 10:00:00.000000', 'ewqewqe', 100.00, 'momo', 9, 6, 'cancelled'),
(45, '2025-08-20 13:00:00.000000', 'dsa', 100.00, 'momo', 9, 6, 'completed'),
(46, '2025-08-20 13:00:00.000000', 'dsa', 100.00, 'momo', 9, 6, 'cancelled'),
(47, '2025-08-17 13:00:00.000000', 'dsa', 100.00, 'momo', 9, 6, 'cancelled'),
(48, '2025-08-20 11:00:00.000000', 'rew', 100.00, 'momo', 1, 6, 'cancelled'),
(49, '2025-08-20 12:00:00.000000', '52', 100000.00, 'momo', 9, 6, 'cancelled'),
(50, '2025-08-20 13:00:00.000000', 'NDJFWE', 100000.00, 'momo', 11, 7, 'cancelled'),
(51, '2025-08-22 11:00:00.000000', 'GFDGBD', 100000.00, 'momo', 11, 7, 'cancelled'),
(52, '2025-08-21 11:00:00.000000', 'dá', 100000.00, 'cash', 11, 7, 'cancelled'),
(53, '2025-08-04 09:00:00.000000', 't', 100000.00, 'cash', 11, 7, 'cancelled'),
(54, '2025-08-20 08:00:00.000000', 'CV', 100000.00, 'momo', 11, 7, 'cancelled'),
(55, '2025-08-23 09:00:00.000000', 'NDJFWE', 100000.00, 'momo', 11, 7, 'cancelled'),
(56, '2025-08-22 15:00:00.000000', 'tr', 100000.00, 'momo', 1, 7, 'cancelled'),
(57, '2025-08-20 13:00:00.000000', 'NDJFWE', 100000.00, 'cash', 2, 7, 'cancelled'),
(58, '2025-08-04 09:00:00.000000', 'NDJFWE', 100000.00, 'momo', 2, 7, 'cancelled'),
(59, '2025-08-22 14:00:00.000000', 'NDJFWE', 100000.00, 'momo', 2, 7, 'cancelled'),
(60, '2025-08-23 14:00:00.000000', 'NDJFWE', 100000.00, 'momo', 11, 7, 'cancelled'),
(61, '2025-08-20 13:00:00.000000', 'Kiểm tra implant ', 100000.00, 'momo', 1, 7, 'cancelled'),
(62, '2025-08-30 10:00:00.000000', 'sá', 100000.00, 'cash', 9, 7, 'cancelled'),
(63, '2025-09-12 11:00:00.000000', 'jnkkmk', 100000.00, 'cash', 9, 3, 'cancelled'),
(72, '2025-09-21 08:00:00.000000', 'ewewq', 100000.00, 'momo', 1, 3, 'cancelled'),
(73, '2025-09-21 08:00:00.000000', 'ewewq', 100000.00, 'momo', 1, 3, 'cancelled'),
(74, '2025-09-23 10:00:00.000000', 'hvjv', 100000.00, 'momo', 2, 3, 'cancelled'),
(75, '2025-09-21 09:00:00.000000', 'qưewqeqw', 100000.00, 'momo', 1, 3, 'completed'),
(76, '2025-09-22 07:00:00.000000', 'kkkkkkk', 100000.00, 'momo', 2, 3, 'cancelled'),
(77, '2025-09-22 09:00:00.000000', 'hhhhhhh', 100000.00, 'momo', 2, 3, 'cancelled'),
(83, '2025-09-22 08:00:00.000000', 'fffffff', 100000.00, 'cash', 2, 7, 'cancelled'),
(91, '2025-09-21 07:00:00.000000', 'xxxxxxx', 100000.00, 'momo', 1, 7, 'completed'),
(92, '2025-09-24 07:00:00.000000', 'tttttt', 100000.00, 'momo', 2, 7, 'completed'),
(93, '2025-09-24 09:00:00.000000', 'aaaaa', 100000.00, 'momo', 1, 7, 'completed'),
(94, '2025-09-27 08:00:00.000000', 'ttttt', 100000.00, 'momo', 2, 7, 'completed'),
(95, '2025-09-27 07:00:00.000000', 'gggg', 100000.00, 'momo', 2, 7, 'completed'),
(96, '2025-09-27 09:00:00.000000', 'kkkkk', 100000.00, 'momo', 2, 7, 'completed'),
(97, '2025-09-28 07:00:00.000000', 'jjjjj', 100000.00, 'momo', 2, 7, 'completed'),
(98, '2025-12-12 07:00:00.000000', 'njnj', 100000.00, 'cash', 1, 3, 'cancelled'),
(99, '2025-12-11 07:00:00.000000', 'r3243', 100000.00, 'cash', 1, 3, 'cancelled'),
(100, '2025-12-12 14:00:00.000000', 'ẻwerrewr', 100000.00, 'cash', 2, 3, 'cancelled'),
(101, '2025-12-13 08:00:00.000000', 'rewrewrwre', 100000.00, 'cash', 2, 3, 'cancelled'),
(102, '2025-12-12 09:00:00.000000', 'rtrtteter', 100000.00, 'cash', 2, 3, 'cancelled'),
(103, '2025-12-12 09:00:00.000000', '4344342', 100000.00, 'cash', 9, 3, 'cancelled'),
(104, '2025-12-12 09:00:00.000000', 'fdfsfsf', 100000.00, 'cash', 9, 3, 'cancelled'),
(105, '2025-12-12 10:00:00.000000', 'rrwewre', 100000.00, 'cash', 2, 3, 'cancelled'),
(106, '2026-01-13 08:00:00.000000', 'Bị điên', 100000.00, 'cash', 1, 9, 'pending');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `userauths_doctor`
--

CREATE TABLE `userauths_doctor` (
  `id` bigint(20) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `specialization` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `userauths_doctor`
--

INSERT INTO `userauths_doctor` (`id`, `price`, `user_id`, `specialization`) VALUES
(1, 100000.00, 4, ''),
(2, 100000.00, 3, ''),
(9, 100000.00, 13, ''),
(11, 100000.00, 14, ''),
(12, 10000.00, 19, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `userauths_doctorschedule`
--

CREATE TABLE `userauths_doctorschedule` (
  `id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(10) NOT NULL,
  `doctor_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `userauths_doctorschedule`
--

INSERT INTO `userauths_doctorschedule` (`id`, `date`, `status`, `doctor_id`) VALUES
(1, '2025-09-11', 'work', 1),
(2, '2025-09-21', 'work', 1),
(3, '2025-09-22', 'work', 1),
(4, '2025-09-23', 'work', 1),
(5, '2025-09-24', 'work', 1),
(6, '2025-09-22', 'work', 2),
(7, '2025-09-23', 'work', 2),
(8, '2025-09-10', 'work', 2),
(9, '2025-09-24', 'work', 2),
(10, '2025-09-25', 'work', 2),
(11, '2025-09-26', 'work', 2),
(12, '2025-09-27', 'work', 2),
(13, '2025-09-28', 'work', 2),
(14, '2025-12-11', 'work', 1),
(15, '2025-12-12', 'work', 1),
(16, '2025-12-13', 'work', 1),
(17, '2025-12-12', 'work', 2),
(18, '2025-12-13', 'work', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `userauths_doctor_specialties`
--

CREATE TABLE `userauths_doctor_specialties` (
  `id` bigint(20) NOT NULL,
  `doctor_id` bigint(20) NOT NULL,
  `specialty_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `userauths_doctor_specialties`
--

INSERT INTO `userauths_doctor_specialties` (`id`, `doctor_id`, `specialty_id`) VALUES
(8, 1, 2),
(6, 2, 1),
(7, 2, 2),
(5, 9, 1),
(4, 9, 2),
(3, 11, 2),
(1, 12, 2),
(2, 12, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `userauths_patient`
--

CREATE TABLE `userauths_patient` (
  `id` bigint(20) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `userauths_patient`
--

INSERT INTO `userauths_patient` (`id`, `phone_number`, `user_id`) VALUES
(1, '', 4),
(3, '', 6),
(4, '987654321', 7),
(6, '0987654321', 15),
(7, '032456789', 16),
(9, '0397556616', 21);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `userauths_prescription`
--

CREATE TABLE `userauths_prescription` (
  `id` bigint(20) NOT NULL,
  `note` longtext DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `appointment_id` bigint(20) NOT NULL,
  `doctor_id` bigint(20) NOT NULL,
  `patient_id` bigint(20) NOT NULL,
  `diagnosis` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `userauths_prescription`
--

INSERT INTO `userauths_prescription` (`id`, `note`, `created_at`, `appointment_id`, `doctor_id`, `patient_id`, `diagnosis`) VALUES
(1, 'Không có', '2025-09-07 08:40:51.341767', 40, 9, 6, 'răng đang chữa tủy'),
(2, 'tái khám thêm', '2025-09-07 08:43:39.677727', 34, 9, 6, 'răng đang chữa tủy ( tái khám)'),
(4, 'Không có', '2025-09-07 08:53:19.307162', 45, 9, 6, 'răng đang chữa tủy ( tái khám 2)'),
(5, '', '2025-09-24 01:59:37.332347', 91, 1, 7, 'răng đang chữa tủy'),
(6, '', '2025-09-25 08:00:03.565855', 93, 1, 7, 'răng đang chữa tủy');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `userauths_prescriptiondetail`
--

CREATE TABLE `userauths_prescriptiondetail` (
  `id` bigint(20) NOT NULL,
  `medication_name` varchar(100) NOT NULL,
  `dosage` varchar(100) DEFAULT NULL,
  `usage` varchar(255) DEFAULT NULL,
  `prescription_id` bigint(20) NOT NULL,
  `quantity` bigint(20) UNSIGNED NOT NULL
) ;

--
-- Đang đổ dữ liệu cho bảng `userauths_prescriptiondetail`
--

INSERT INTO `userauths_prescriptiondetail` (`id`, `medication_name`, `dosage`, `usage`, `prescription_id`, `quantity`) VALUES
(1, 'dssd', '2 viên/ngày', 'Uống sau ăn', 1, 20),
(2, 'nnas', '2 viên/ngày', 'Uống sau ăn', 2, 10),
(3, 'dssd', '2 viên/ngày', 'Uống sau ăn', 4, 20),
(5, 'dssd', '2 viên/ngày', 'Uống sau ăn', 5, 10),
(6, 'dssd', '2 viên/ngày', 'Uống sau ăn', 6, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `userauths_specialty`
--

CREATE TABLE `userauths_specialty` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `userauths_specialty`
--

INSERT INTO `userauths_specialty` (`id`, `name`) VALUES
(2, 'Khoa ngoại'),
(3, 'Khoa nhi'),
(1, 'Khoa nội');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `userauths_user`
--

CREATE TABLE `userauths_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `role` varchar(10) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `userauths_user`
--

INSERT INTO `userauths_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `is_staff`, `is_active`, `date_joined`, `role`, `email`, `phone_number`, `avatar`) VALUES
(1, 'pbkdf2_sha256$600000$FhzRNAc8iJfh7wiKQekdXm$pvJhjqe2LfHDiLNjL9A7gb68C3lghVivPfIfhp7e40o=', '2026-01-12 11:04:21.673165', 1, 'khanhtrang', '', '', 1, 1, '2025-08-01 13:28:10.717427', 'admin', 'trangpk.22it@vku.udn.vn', '0367102804', 'avatars/testimonial-1_1uHsQC1.jpg'),
(3, 'pbkdf2_sha256$600000$GaVi4s6SFfo5LAKl8DZGNt$PMX+0yb06fv0PgFBfyf6WdfblY1KL2ErnFBPUCLnNQk=', NULL, 0, 'levantuan', 'Lê', 'Văn Tuấn', 0, 1, '2025-08-01 14:17:04.000000', 'doctor', 'levantuan@gmail.com', '43155', 'avatars/team-5.jpg'),
(4, 'pbkdf2_sha256$600000$P3uJt9gDuZkfyBcsdkYw2H$GMiIU3qc4wXDYfN05lglFpgpVjDEKAF0N24jdjgqEdY=', '2025-09-23 16:55:04.017601', 0, 'tranthiminh', 'TrầnThịMinh', '', 0, 1, '2025-08-01 15:15:11.000000', 'doctor', 'tranthiminh@gmail.com', '123456789', 'avatars/thiminh_loUYija.jpg'),
(6, 'pbkdf2_sha256$600000$WHHIKdxREFwB16Kb88hyec$JZGPzKkOE2GN79hxSZSOf9TM8pRlbU+yoEMcaaGPL5Y=', '2025-12-11 09:52:45.588445', 0, 'linda', 'Alex', 'Linda', 0, 1, '2025-08-03 03:48:30.000000', 'patient', 'linda@gmail.com', '987654321', NULL),
(7, 'pbkdf2_sha256$600000$5GznCXDw2Gpy8crGVYcJYu$yPLMaDlRhjSPnBQtZZE3n7j7ucK3tQZ31k6vZEcUGnM=', NULL, 0, 'nhung', '', '', 0, 1, '2025-08-03 16:30:24.500209', 'patient', 'n@gmail.com', '987654321', NULL),
(13, 'pbkdf2_sha256$600000$20KychMFhUmpKpU0jc6bPW$TysnFkBm4JcxpObwOZJCALvF7qyRhbhyHfmh3jpowwM=', '2025-10-16 17:34:00.857712', 0, 'minhanh', 'Lê', 'Minh Anh', 0, 1, '2025-08-04 16:39:43.000000', 'doctor', 'minhanh@gmail.com', '234567891', 'avatars/avatar_ry8ERvh.avif'),
(14, 'pbkdf2_sha256$600000$cl2pj6t4NnuT50dZ84e1Ys$WZD80oimIcj3mvlcSoIcDT6acf1IHUWwBJnh85MR5/E=', NULL, 0, 'minhan', 'Mai', 'Minh An', 0, 1, '2025-08-04 16:40:56.000000', 'doctor', 'minhan@gmail.com', '4213123456', 'avatars/team-3.jpg'),
(15, 'pbkdf2_sha256$600000$wUS2Ei13SrgU9MegGFTOhH$wRI+dMWFMAQsbFgtrPT1WYG/I9GEMV67lkFuU2Wsmv0=', '2025-09-03 14:31:33.144939', 0, 'trungnguyen', 'Nguyễn', 'Trung Nguyên', 0, 1, '2025-08-16 13:11:33.041725', 'patient', 'nguyen@gmail.com', '0987654321', ''),
(16, 'pbkdf2_sha256$600000$xfKFDDKeKEuzyjLsT1QA4w$pYkYOUQZQ4Ot+fx5jo36W5JeNNr5KsAAOZD/4JeGFGI=', '2025-09-26 14:25:54.384408', 0, 'tranggg', 'Phạm Khánh', 'Trang', 0, 1, '2025-08-17 03:09:06.243153', 'patient', 'phamkhanhtrang2804@gmail.com', '032456789', ''),
(18, 'pbkdf2_sha256$600000$1AkhZsMJO6dEQWUInfWInn$rWrIDELZHCreJmwxHjbSHsD5ilF5jF/qvNpVPDosCoI=', '2025-09-29 01:52:28.012375', 1, 'nguyen', '', '', 1, 1, '2025-09-29 01:50:56.609925', '', 'trungnguyen@gmail.com', NULL, 'avatars/team-3.jpg'),
(19, 'pbkdf2_sha256$600000$5GwpgndPDsMqrurnni7r8h$1Du3xNsj85PYdcfp0Bu3h4scZ7BOpH9lRBvuM7jRp24=', '2026-01-12 11:05:59.104005', 0, 'nguyen123', 'Nguyễn Trung', 'Nguyên', 0, 1, '2025-12-11 09:40:56.633845', 'doctor', 'nguyen123@gmail.com', '123456789', 'avatars/team-3.jpg'),
(21, 'pbkdf2_sha256$600000$zXHB8eWSgeSqHUXu57029S$mt4A2I7uMRG8TFJMqv34/sURoJB1oGcCBuzOXYAipRo=', '2026-01-12 11:19:24.521769', 0, 'ntnguyenpro055', 'Nguyễn Trung', 'Nguyên', 0, 1, '2026-01-12 10:58:19.385209', 'patient', 'nguyenkun555@gmail.com', '0397556616', '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Chỉ mục cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_userauths_user_id` (`user_id`);

--
-- Chỉ mục cho bảng `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Chỉ mục cho bảng `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Chỉ mục cho bảng `userauths_appointment`
--
ALTER TABLE `userauths_appointment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userauths_appointment_doctor_id_de9f7e49_fk_userauths_doctor_id` (`doctor_id`),
  ADD KEY `userauths_appointmen_patient_id_ea3e7845_fk_userauths` (`patient_id`);

--
-- Chỉ mục cho bảng `userauths_doctor`
--
ALTER TABLE `userauths_doctor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `userauths_doctorschedule`
--
ALTER TABLE `userauths_doctorschedule`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userauths_doctorschedule_doctor_id_date_5614a30a_uniq` (`doctor_id`,`date`);

--
-- Chỉ mục cho bảng `userauths_doctor_specialties`
--
ALTER TABLE `userauths_doctor_specialties`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userauths_doctor_special_doctor_id_specialty_id_a3b4fb23_uniq` (`doctor_id`,`specialty_id`),
  ADD KEY `userauths_doctor_spe_specialty_id_1dcb059b_fk_userauths` (`specialty_id`);

--
-- Chỉ mục cho bảng `userauths_patient`
--
ALTER TABLE `userauths_patient`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `userauths_prescription`
--
ALTER TABLE `userauths_prescription`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `appointment_id` (`appointment_id`),
  ADD KEY `userauths_prescription_doctor_id_f71e5b61_fk_userauths_doctor_id` (`doctor_id`),
  ADD KEY `userauths_prescripti_patient_id_4d261557_fk_userauths` (`patient_id`);

--
-- Chỉ mục cho bảng `userauths_prescriptiondetail`
--
ALTER TABLE `userauths_prescriptiondetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userauths_prescripti_prescription_id_5a87a238_fk_userauths` (`prescription_id`);

--
-- Chỉ mục cho bảng `userauths_specialty`
--
ALTER TABLE `userauths_specialty`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `userauths_user`
--
ALTER TABLE `userauths_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `userauths_appointment`
--
ALTER TABLE `userauths_appointment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT cho bảng `userauths_doctor`
--
ALTER TABLE `userauths_doctor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `userauths_doctorschedule`
--
ALTER TABLE `userauths_doctorschedule`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `userauths_doctor_specialties`
--
ALTER TABLE `userauths_doctor_specialties`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `userauths_patient`
--
ALTER TABLE `userauths_patient`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `userauths_prescription`
--
ALTER TABLE `userauths_prescription`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `userauths_prescriptiondetail`
--
ALTER TABLE `userauths_prescriptiondetail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `userauths_specialty`
--
ALTER TABLE `userauths_specialty`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `userauths_user`
--
ALTER TABLE `userauths_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Các ràng buộc cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_userauths_user_id` FOREIGN KEY (`user_id`) REFERENCES `userauths_user` (`id`);

--
-- Các ràng buộc cho bảng `userauths_appointment`
--
ALTER TABLE `userauths_appointment`
  ADD CONSTRAINT `userauths_appointmen_patient_id_ea3e7845_fk_userauths` FOREIGN KEY (`patient_id`) REFERENCES `userauths_patient` (`id`),
  ADD CONSTRAINT `userauths_appointment_doctor_id_de9f7e49_fk_userauths_doctor_id` FOREIGN KEY (`doctor_id`) REFERENCES `userauths_doctor` (`id`);

--
-- Các ràng buộc cho bảng `userauths_doctor`
--
ALTER TABLE `userauths_doctor`
  ADD CONSTRAINT `userauths_doctor_user_id_084fa060_fk_userauths_user_id` FOREIGN KEY (`user_id`) REFERENCES `userauths_user` (`id`);

--
-- Các ràng buộc cho bảng `userauths_doctorschedule`
--
ALTER TABLE `userauths_doctorschedule`
  ADD CONSTRAINT `userauths_doctorsche_doctor_id_31caf128_fk_userauths` FOREIGN KEY (`doctor_id`) REFERENCES `userauths_doctor` (`id`);

--
-- Các ràng buộc cho bảng `userauths_doctor_specialties`
--
ALTER TABLE `userauths_doctor_specialties`
  ADD CONSTRAINT `userauths_doctor_spe_doctor_id_434d9f90_fk_userauths` FOREIGN KEY (`doctor_id`) REFERENCES `userauths_doctor` (`id`),
  ADD CONSTRAINT `userauths_doctor_spe_specialty_id_1dcb059b_fk_userauths` FOREIGN KEY (`specialty_id`) REFERENCES `userauths_specialty` (`id`);

--
-- Các ràng buộc cho bảng `userauths_patient`
--
ALTER TABLE `userauths_patient`
  ADD CONSTRAINT `userauths_patient_user_id_782e9138_fk_userauths_user_id` FOREIGN KEY (`user_id`) REFERENCES `userauths_user` (`id`);

--
-- Các ràng buộc cho bảng `userauths_prescription`
--
ALTER TABLE `userauths_prescription`
  ADD CONSTRAINT `userauths_prescripti_appointment_id_ec6a3c19_fk_userauths` FOREIGN KEY (`appointment_id`) REFERENCES `userauths_appointment` (`id`),
  ADD CONSTRAINT `userauths_prescripti_patient_id_4d261557_fk_userauths` FOREIGN KEY (`patient_id`) REFERENCES `userauths_patient` (`id`),
  ADD CONSTRAINT `userauths_prescription_doctor_id_f71e5b61_fk_userauths_doctor_id` FOREIGN KEY (`doctor_id`) REFERENCES `userauths_doctor` (`id`);

--
-- Các ràng buộc cho bảng `userauths_prescriptiondetail`
--
ALTER TABLE `userauths_prescriptiondetail`
  ADD CONSTRAINT `userauths_prescripti_prescription_id_5a87a238_fk_userauths` FOREIGN KEY (`prescription_id`) REFERENCES `userauths_prescription` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
