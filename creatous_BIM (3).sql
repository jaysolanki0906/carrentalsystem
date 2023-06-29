-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 03, 2019 at 12:22 PM
-- Server version: 5.5.61-38.13-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `creatous_BIM`
--

-- --------------------------------------------------------

--
-- Table structure for table `vbs_aboutus`
--

CREATE TABLE `vbs_aboutus` (
  `id` int(11) NOT NULL,
  `name` varchar(512) NOT NULL,
  `description` text NOT NULL,
  `meta_tag` varchar(512) NOT NULL,
  `meta_description` varchar(512) NOT NULL,
  `seo_keywords` varchar(500) NOT NULL,
  `is_bottom` enum('0','1') DEFAULT NULL,
  `sort_order` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vbs_aboutus`
--

INSERT INTO `vbs_aboutus` (`id`, `name`, `description`, `meta_tag`, `meta_description`, `seo_keywords`, `is_bottom`, `sort_order`, `parent_id`, `status`) VALUES
(5, 'User Features', '<ul>\r\n	<li>User friendly Interface.</li>\r\n	<li>Simple registration, login process.</li>\r\n	<li>3 step booking process.</li>\r\n	<li>Google locations.</li>\r\n	<li>Route map, distance and cost calculations for given source and destination.</li>\r\n	<li>Waiting time option for return journey.</li>\r\n	<li>Bookings history.</li>\r\n	<li>Email support for booking status.</li>\r\n	<li>Profile settings.</li>\r\n	<li>Multi language support.</li>\r\n</ul>\r\n', 'Advanced Car Booking System, Vehicle Booking System, Online Vehicle Booking System, Easy Cab Booking Application, Travel Booking System, Online Travel Booking System, Taxi Dispatch System, Taxi Online Booking Application, Cabs Management Software Application, Taxi Management System, Taxi Cab Website Booking System', 'Advanced Car Booking System, Vehicle Booking System, Online Vehicle Booking System, Easy Cab Booking Application, Travel Booking System, Online Travel Booking System, Taxi Dispatch System, Taxi Online Booking Application, Cabs Management Software Application, Taxi Management System, Taxi Cab Website Booking System.', 'Advanced Car Booking System, Vehicle Booking System, Online Vehicle Booking System, Easy Cab Booking Application, Travel Booking System, Online Travel Booking System, Taxi Dispatch System, Taxi Online Booking Application, Cabs Management Software Application, Taxi Management System, Taxi Cab Website Booking System', '1', 3, 1, 'Inactive'),
(4, 'Executive Features', '<ul>\n	<li>Add bookings.</li>\n	<li>Bookings can be handled by just one click (Confirmation/Cancellation).</li>\n	<li>Current day bookings.</li>\n	<li>Search bookings.</li>\n	<li>Overall bookings.</li>\n	<li>Notifications for unread/new bookings.</li>\n	<li>Multi language support.</li>\n</ul>\n', 'Advanced Car Booking System, Vehicle Booking System, Online Vehicle Booking System, Easy Cab Booking Application, Travel Booking System, Online Travel Booking System, Taxi Dispatch System, Taxi Online Booking Application, Cabs Management Software Application, Taxi Management System, Taxi Cab Website Booking System', '', 'Advanced Car Booking System, Vehicle Booking System, Online Vehicle Booking System, Easy Cab Booking Application, Travel Booking System, Online Travel Booking System, Taxi Dispatch System, Taxi Online Booking Application, Cabs Management Software Application, Taxi Management System, Taxi Cab Website Booking System', '1', 2, 1, 'Inactive'),
(3, 'Admin Features', '<ul>\r\n	<li>Categorize vehicles.</li>\r\n	<li>Add/Delete vehicle features.</li>\r\n	<li>Add/Delete vehicle &nbsp;with available features.</li>\r\n	<li>Day/Night&nbsp; time settings.</li>\r\n	<li>Day/Night cost settings for each individual vehicle.</li>\r\n	<li>Add booking.</li>\r\n	<li>Current day bookings.</li>\r\n	<li>Overall bookings.</li>\r\n	<li>Bookings can be handled by just one click (Confirmation/Cancellation).</li>\r\n	<li>Notifications for unread/new bookings.</li>\r\n	<li>Add/Delete packages.</li>\r\n	<li>Add/Delete airports.</li>\r\n	<li>Search bookings for customer query management.</li>\r\n	<li>Chart reports for Business status.</li>\r\n	<li>Add/Delete/Block Executives/Telecallers.</li>\r\n	<li>Add/Delete/Block Users.</li>\r\n	<li>Multi theme User Interface.</li>\r\n	<li>Support for currency settings.</li>\r\n	<li>Google locations for selected country.</li>\r\n	<li>Dynamic front end pages.</li>\r\n	<li>Profile settings.</li>\r\n	<li>Testimonial settings.</li>\r\n	<li>Social network settings.</li>\r\n	<li>Email settings.</li>\r\n	<li>Paypal settings.</li>\r\n	<li>Waiting time settings.</li>\r\n	<li>FAQ&rsquo;S&nbsp;</li>\r\n	<li>Multi language support.</li>\r\n</ul>\r\n', 'Advanced Car Booking System, Vehicle Booking System, Online Vehicle Booking System, Easy Cab Booking Application, Travel Booking System, Online Travel Booking System, Taxi Dispatch System, Taxi Online Booking Application, Cabs Management Software Application, Taxi Management System, Taxi Cab Website Booking System', '', 'Advanced Car Booking System, Vehicle Booking System, Online Vehicle Booking System, Easy Cab Booking Application, Travel Booking System, Online Travel Booking System, Taxi Dispatch System, Taxi Online Booking Application, Cabs Management Software Application, Taxi Management System, Taxi Cab Website Booking System', '', 1, 1, 'Inactive'),
(2, 'System Features', '<ul>\r\n	<li>Easy installation.</li>\r\n	<li>Easy booking process In 3 steps.</li>\r\n	<li>SEO friendly.</li>\r\n	<li>Multi language support.</li>\r\n	<li>Multi theme support.</li>\r\n	<li>Beautifully organized dashboards for Users, Executives and Admins.</li>\r\n	<li>Easy navigation without confusions.</li>\r\n	<li>Well documented.</li>\r\n	<li>24/7 support from Digital Vidya Team.</li>\r\n	<li>Secure and valid code, where user can customize as per requirements.</li>\r\n	<li>Android IOS Mobile Apps with source code</li>\r\n</ul>\r\n\r\n<p style=\"margin-left:18pt\">Not enough? Just drop us a feature we will happen it for you</p>\r\n', 'System Features', 'asdfasdfasd', 'Advanced Car Booking System, Vehicle Booking System, Online Vehicle Booking System, Easy Cab Booking Application, Travel Booking System, Online Travel Booking System, Taxi Dispatch System, Taxi Online Booking Application, Cabs Management Software Application, Taxi Management System, Taxi Cab Website Booking System', '1', 1, 1, 'Inactive'),
(1, 'Features', '<p>sdfsdfsfsdfsdf</p>\r\n', 'Pages', '', '', NULL, 0, 0, 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `vbs_airports`
--

CREATE TABLE `vbs_airports` (
  `id` int(11) NOT NULL,
  `airport_name` varchar(512) NOT NULL,
  `airport_google_address` varchar(512) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vbs_airports`
--

INSERT INTO `vbs_airports` (`id`, `airport_name`, `airport_google_address`, `status`) VALUES
(1, 'TEST', '', 'Active'),
(2, 'Shamshabad Airport', '', 'Active'),
(3, 'Begumpet Airport', '', 'Active'),
(4, 'Chennai Airport', '', 'Active'),
(5, 'Coimbatore Airport', '', 'Active'),
(6, 'Cochin Airport', '', 'Active'),
(7, 'Banglore Airport', '', 'Active'),
(8, 'Mysore Airport', '', 'Active'),
(9, 'Vizag Airport', '', 'Active'),
(10, 'Goa Airport', '', 'Active'),
(11, 'Tirupati Airport', '', 'Active'),
(12, 'Vijayawada Airport', '', 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `vbs_assign_cars_driver`
--

CREATE TABLE `vbs_assign_cars_driver` (
  `id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vbs_bookings`
--

CREATE TABLE `vbs_bookings` (
  `id` int(25) NOT NULL,
  `user_id` int(25) UNSIGNED NOT NULL,
  `booking_ref` varchar(512) NOT NULL,
  `pick_date` date NOT NULL,
  `pick_time` varchar(512) NOT NULL,
  `pick_point` varchar(512) NOT NULL DEFAULT '',
  `drop_point` varchar(512) NOT NULL DEFAULT '',
  `distance` float NOT NULL,
  `distance_type` varchar(512) NOT NULL DEFAULT '',
  `total_time` varchar(50) DEFAULT NULL,
  `vehicle_selected` int(11) NOT NULL,
  `only_booking_cost` float(10,2) DEFAULT NULL COMMENT 'Only booking cost exclude tax , coupon etc',
  `cost_of_journey` float NOT NULL,
  `payment_type` enum('cash','paypal','credit card','stripe','payu') NOT NULL DEFAULT 'cash',
  `payment_received` float NOT NULL DEFAULT '0',
  `is_conformed` enum('pending','confirm','cancelled','refund') NOT NULL DEFAULT 'pending',
  `bookdate` date NOT NULL,
  `return_journey` enum('Yes','No') DEFAULT NULL,
  `waiting_time` varchar(10) DEFAULT NULL,
  `waiting_cost` float(10,2) DEFAULT NULL,
  `registered_name` varchar(512) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `email` varchar(512) NOT NULL,
  `transaction_id` varchar(512) NOT NULL,
  `payer_id` varchar(512) NOT NULL,
  `payer_email` varchar(512) NOT NULL,
  `package_type` int(11) NOT NULL,
  `info_to_drivers` varchar(512) NOT NULL,
  `payer_name` varchar(512) NOT NULL,
  `is_new` int(11) NOT NULL,
  `coupon_applied` enum('Yes','No') DEFAULT NULL,
  `coupon_code` varchar(50) DEFAULT NULL,
  `coupon_discount_amount` float(10,2) DEFAULT NULL,
  `tax_applied` enum('Yes','No') DEFAULT NULL,
  `tax_amount` float(10,2) DEFAULT NULL,
  `invoice_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vbs_bookings`
--

INSERT INTO `vbs_bookings` (`id`, `user_id`, `booking_ref`, `pick_date`, `pick_time`, `pick_point`, `drop_point`, `distance`, `distance_type`, `total_time`, `vehicle_selected`, `only_booking_cost`, `cost_of_journey`, `payment_type`, `payment_received`, `is_conformed`, `bookdate`, `return_journey`, `waiting_time`, `waiting_cost`, `registered_name`, `phone`, `email`, `transaction_id`, `payer_id`, `payer_email`, `package_type`, `info_to_drivers`, `payer_name`, `is_new`, `coupon_applied`, `coupon_code`, `coupon_discount_amount`, `tax_applied`, `tax_amount`, `invoice_file`) VALUES
(7, 0, '171221125636', '1970-01-01', '12 : 56 : PM', '\"Andhra Pradesh, India\"', '\"Pune, Maharashtra, India\"', 867, 'Km', '15 hours 8 mins (Approx)', 1, NULL, 10424, 'cash', 0, 'pending', '2017-12-21', 'No', NULL, NULL, 'test', 1212121212, 'testtest@t.com', '', '', '', 0, '', '', 1, NULL, NULL, NULL, NULL, NULL, ''),
(8, 0, '171221134949', '1970-01-01', '01 : 49 : PM', '\"Qutab Rd, New Delhi, Delhi, India\"', '\"Pimpri-Chinchwad, Maharashtra, India\"', 1432, 'Km', '1 day 1 hour (Approx)', 1, NULL, 14350, 'cash', 0, 'pending', '2017-12-21', 'No', NULL, NULL, 'testt', 7418523695, 'test@t.com', '', '', '', 0, '', '', 1, NULL, NULL, NULL, NULL, NULL, ''),
(9, 0, '171221140605', '2017-12-22', '02 : 06 : PM', '\"Qutab Rd, New Delhi, Delhi, India\"', '\"Rajasthan, India\"', 446, 'Km', '7 hours 53 mins (Approx)', 1, NULL, 4490, 'cash', 0, 'pending', '2017-12-21', 'No', NULL, NULL, 'test', 7412528935, 'test@tt.com', '', '', '', 0, '', '', 1, NULL, NULL, NULL, NULL, NULL, ''),
(10, 0, '171221140725', '2017-12-29', '02 : 07 : PM', '\"Qutab Rd, New Delhi, Delhi, India\"', '\"Pune, Maharashtra, India\"', 1443, 'Km', '1 day 1 hour (Approx)', 2, NULL, 5816, 'cash', 0, 'pending', '2017-12-21', 'No', NULL, NULL, 'sdfsdf', 4758757754545, 'rwerewre@gmail.com', '', '', '', 0, '', '', 0, NULL, NULL, NULL, NULL, NULL, ''),
(16, 36, '180102232704', '2018-01-03', '11 : 27 : PM', '\"West Bengal, India\"', '\"New Delhi, Delhi, India\"', 1397, 'Km', '23 hours 16 mins (Approx)', 2, 5632.00, 5652, 'cash', 0, 'pending', '2018-01-02', 'No', NULL, NULL, 'navani test', 7412589635, 'navani.ande152@gmail.com', '', '', '', 0, 'Hello...please be there on time..', '', 1, 'No', NULL, NULL, 'Yes', 20.00, ''),
(24, 7, '190315215201', '2019-03-16', '09 : 52 : PM', '\"Amdabad, Maharashtra 431104, India\"', '\"Nadiad, Gujarat, India\"', 493, 'Km', '10 hours 55 mins (Approx)', 2, 2016.00, 2036, 'cash', 0, 'pending', '2019-03-15', 'No', NULL, NULL, 'Customer One', 91, 'customer@customer.com', '', '', '', 0, '', '', 0, 'No', NULL, NULL, 'Yes', 20.00, ''),
(27, 7, '190316031541', '2019-03-17', '03 : 15 : AM', '\"Dakor, Gujarat, India\"', '\"Nadiad, Gujarat, India\"', 35.1, 'Km', '1 hour 1 min (Approx)', 1, 452.00, 462, 'cash', 0, 'confirm', '2019-03-16', 'No', NULL, NULL, 'Customer One', 91, 'customer@customer.com', '', '', '', 0, '', '', 1, 'Yes', 'extra coupon', 10.00, 'Yes', 20.00, ''),
(29, 41, '190319033150', '2019-03-20', '03 : 31 : AM', '\"Nadiad, Gujarat, India\"', '\"Dakor, Gujarat, India\"', 36, 'Km', '58 mins (Approx)', 8, 5810.00, 5830, 'cash', 0, 'pending', '2019-03-19', 'No', NULL, NULL, 'nishita rajani', 8200346189, 'nishitarajani123@gmail.com', '', '', '', 0, '', '', 1, 'No', NULL, NULL, 'Yes', 20.00, ''),
(30, 7, '190320124325', '2019-03-21', '12 : 43 : AM', 'Ahmednagar, Maharashtra, India', '-', 150, 'Km', '5   Hours', 5, 160.00, 180, 'payu', 1, 'pending', '2019-03-20', 'No', NULL, NULL, 'Customer One', 91, 'customer@customer.com', '190320124325', '403993715519137909', 'customer@customer.com', 2, '', 'Customer One ', 1, 'No', NULL, NULL, 'Yes', 20.00, ''),
(31, 7, '190320012825', '2019-03-21', '01 : 28 : AM', 'Andhra Pradesh, India', '-', 90, 'Km', '3   Hours', 4, 100.00, 120, 'payu', 1, 'cancelled', '2019-03-20', 'No', NULL, NULL, 'Customer One', 91, 'customer@customer.com', '190320012825', '403993715519138164', 'customer@customer.com', 1, '', 'Customer One ', 1, 'No', NULL, NULL, 'Yes', 20.00, ''),
(32, 0, '190322031850', '2019-03-27', '04 : 49 : PM', '\"Nadiad, Gujarat, India\"', '\"Ahmedabad, Gujarat, India\"', 56, 'Km', '1 hour 6 mins (Approx)', 2, 546.00, 546, 'cash', 0, 'refund', '2019-03-22', 'Yes', '20Mins', 10.00, 'riya', 9988997745, 'riya@gmail.com', '', '', '', 0, '', '', 1, 'No', NULL, NULL, 'No', NULL, ''),
(33, 0, '190322043011', '2019-03-23', '04 : 30 : AM', '\"Ahmedabad, Gujarat, India\"', '\"Nadiad, Gujarat, India\"', 59, 'Km', '1 hour 12 mins (Approx)', 4, 490.00, 500, 'cash', 0, 'refund', '2019-03-22', 'No', NULL, NULL, 'nishita', 9999999999, 'nishitarajani123@gmail.com', '', '', '', 0, 'please, be on time', '', 1, 'Yes', 'extra coupon', 10.00, 'Yes', 20.00, ''),
(34, 0, '190322164724', '2019-03-23', '04 : 47 : PM', '\"Nadiad, Gujarat, India\"', '\"Dakor, Gujarat, India\"', 35, 'Km', '59 mins (Approx)', 8, 4600.00, 4620, 'cash', 0, 'confirm', '2019-03-22', 'No', NULL, NULL, 'jenil', 8200346189, 'jhrajani29@gmail.com', '', '', '', 0, 'be on time', '', 1, 'No', NULL, NULL, 'Yes', 20.00, ''),
(35, 0, '190322170047', '2019-03-23', '06 : 31 : AM', '\"Dakor, Gujarat, India\"', '\"Nadiad, Gujarat, India\"', 36, 'Km', '1 hour 2 mins (Approx)', 8, 4730.00, 4750, 'cash', 0, 'pending', '2019-03-22', 'No', NULL, NULL, 'jenil', 8200346189, 'jhrajani123@gmil.com', '', '', '', 0, '', '', 0, 'No', NULL, NULL, 'Yes', 20.00, ''),
(36, 0, '190322170417', '2019-03-23', '04 : 47 : PM', '\"Dakor, Gujarat, India\"', '\"Nadiad, Gujarat, India\"', 36, 'Km', '1 hour 2 mins (Approx)', 8, 4730.00, 4750, 'cash', 0, 'pending', '2019-03-22', 'No', NULL, NULL, 'jenil', 7777777777, 'nishitarajani123@gmail.com', '', '', '', 0, '', '', 1, 'No', NULL, NULL, 'Yes', 20.00, ''),
(38, 56, '190328083301', '2019-03-29', '08 : 33 : PM', 'Nadiad, Gujarat, India', '-', 200, 'Km', '4   Hours', 7, 250.00, 270, 'cash', 0, 'cancelled', '2019-03-28', 'No', NULL, NULL, 'nishita rajani', 8200346189, 'nishitarajani123@gmail.com', '', '', '', 4, '', '', 1, 'No', NULL, NULL, 'Yes', 20.00, ''),
(41, 7, '190328102334', '2019-03-29', '10 : 23 : PM', 'Rajkot, Gujarat, India', '-', 150, 'Km', '5   Hours', 5, 160.00, 180, 'cash', 0, 'pending', '2019-03-28', 'No', NULL, NULL, 'Customer One', 91, 'customer@customer.com', '', '', '', 2, '', '', 1, 'No', NULL, NULL, 'Yes', 20.00, ''),
(42, 59, '190331001956', '2019-04-01', '12 : 19 : AM', '\"Ahmedabad, Gujarat, India\"', '\"Nadiad, Gujarat, India\"', 59, 'Km', '1 hour 11 mins (Approx)', 2, 280.00, 300, 'cash', 0, 'refund', '2019-03-31', 'No', NULL, NULL, 'customer one', 7621857688, 'customer@customer.com', '', '', '', 0, '', '', 1, 'No', NULL, NULL, 'Yes', 20.00, ''),
(44, 0, '190331043857', '2019-04-01', '06 : 09 : PM', '\"Nadiad, Gujarat, India\"', '\"Kathlal, Gujarat, India\"', 28, 'Km', '45 mins (Approx)', 2, 322.00, 322, 'cash', 0, 'pending', '2019-03-31', 'Yes', '20Mins', 10.00, 'Pooja', 7016660914, 'ps9345488@gmail.com', '', '', '', 0, '', '', 1, 'No', NULL, NULL, 'No', NULL, ''),
(46, 59, '190401040545', '2019-04-02', '04 : 05 : AM', '\"Vadodara, Gujarat, India\"', '\"Nadiad, Gujarat, India\"', 60, 'Km', '1 hour 12 mins (Approx)', 3, 7500.00, 7520, 'cash', 0, 'pending', '2019-04-01', 'No', NULL, NULL, 'customer one', 7621857688, 'customer@customer.com', '', '', '', 0, '', '', 0, 'No', NULL, NULL, 'Yes', 20.00, '190401040545'),
(47, 62, '190402002547', '2019-04-03', '12 : 25 : AM', '\"Mahudha, Gujarat 387335, India\"', '\"Kathlal, Gujarat, India\"', 11, 'Km', '19 mins (Approx)', 2, 3998.00, 3868, 'cash', 0, 'cancelled', '2019-04-02', 'Yes', '20Mins', 10.00, 'pooja shah', 7016660914, 'shahpooja3876@gmail.com', '', '', '', 0, 'please, be on time', '', 1, 'Yes', 'NY123', 150.00, 'Yes', 20.00, '190402002547'),
(49, 59, '190402034409', '0000-00-00', '', '', '', 0, '', NULL, 0, NULL, 9000, 'payu', 1, 'pending', '2019-04-02', NULL, NULL, NULL, 'customer one', 7621857688, 'customer@customer.com', '190402034409', '403993715519190091', 'customer@customer.com', 0, '', 'customer one ', 0, 'No', NULL, NULL, NULL, NULL, ''),
(50, 0, '190402090702', '2019-04-03', '11 : 55 : PM', 'Anand, Gujarat, India', '-', 90, 'Km', '3   Hours', 4, 1500.00, 1490, 'cash', 0, 'pending', '2019-04-02', 'No', NULL, NULL, 'Prem', 9879186991, 'ps9345488@gmail.com', '', '', '', 1, 'please, be on time. ', '', 1, 'Yes', 'CP079', 30.00, 'Yes', 20.00, '190402090702'),
(51, 63, '190402162400', '0000-00-00', '', '', '', 0, '', NULL, 0, NULL, 10000, 'payu', 1, 'pending', '2019-04-02', NULL, NULL, NULL, 'nishita rajani', 8200346189, 'nishi.ddu@gmail.com', '190402162400', '403993715519191772', 'nishi.ddu@gmail.com', 0, '', 'nishita rajani ', 0, 'No', NULL, NULL, NULL, NULL, ''),
(52, 63, '190402163400', '0000-00-00', '', '', '', 0, '', NULL, 0, NULL, 20000, 'payu', 1, 'pending', '2019-04-02', NULL, NULL, NULL, 'nishita rajani', 8200346189, 'nishi.ddu@gmail.com', '190402163400', '403993715519191774', 'nishi.ddu@gmail.com', 0, '', 'nishita rajani ', 0, 'No', NULL, NULL, NULL, NULL, ''),
(53, 59, '190402233212', '0000-00-00', '', '', '', 0, '', NULL, 0, NULL, 18999, 'payu', 1, 'pending', '2019-04-02', NULL, NULL, NULL, 'customer one', 7621857688, 'customer@customer.com', '190402233212', '403993715519193156', 'customer@customer.com', 0, '', 'customer one ', 0, 'No', NULL, NULL, NULL, NULL, ''),
(54, 59, '190402234015', '0000-00-00', '', '', '', 0, '', NULL, 0, NULL, 41950, 'payu', 1, 'pending', '2019-04-02', NULL, NULL, NULL, 'customer one', 7621857688, 'customer@customer.com', '190402234015', '403993715519193242', 'customer@customer.com', 0, '', 'customer one ', 0, 'No', NULL, NULL, NULL, NULL, ''),
(55, 59, '190402234252', '0000-00-00', '', '', '', 0, '', NULL, 0, NULL, 19599, 'payu', 1, 'pending', '2019-04-02', NULL, NULL, NULL, 'customer one', 7621857688, 'customer@customer.com', '190402234252', '403993715519193297', 'customer@customer.com', 0, '', 'customer one ', 0, 'No', NULL, NULL, NULL, NULL, ''),
(56, 59, '190402114947', '2019-04-03', '11 : 49 : PM', 'Tamil Nadu, India', '-', 150, 'Km', '5   Hours', 5, 1600.00, 1620, 'payu', 1, 'pending', '2019-04-02', 'No', NULL, NULL, 'customer one', 7621857688, 'customer@customer.com', '190402114947', '403993715519193308', 'customer@customer.com', 2, '', 'customer one ', 0, 'No', NULL, NULL, 'Yes', 20.00, ''),
(57, 0, '', '0000-00-00', '', '', '', 0, '', NULL, 0, NULL, 0, 'payu', 1, 'pending', '0000-00-00', NULL, NULL, NULL, '', 0, '', '190402114947', '403993715519193308', 'customer@customer.com', 0, '', 'customer one ', 0, NULL, NULL, NULL, NULL, NULL, ''),
(58, 59, '190402235555', '0000-00-00', '', '', '', 0, '', NULL, 0, NULL, 19599, 'payu', 1, 'pending', '2019-04-02', NULL, NULL, NULL, 'customer one', 7621857688, 'customer@customer.com', '190402235555', '403993715519193354', 'customer@customer.com', 0, '', 'customer one ', 0, 'No', NULL, NULL, NULL, NULL, ''),
(59, 59, '190403120234', '2019-04-04', '12 : 02 : AM', 'Nadiad, Gujarat, India', '-', 150, 'Km', '5   Hours', 5, 1600.00, 1620, 'payu', 1, 'pending', '2019-04-03', 'No', NULL, NULL, 'customer one', 7621857688, 'customer@customer.com', '190403120234', '403993715519193400', 'customer@customer.com', 2, '', 'customer one ', 0, 'No', NULL, NULL, 'Yes', 20.00, '');

-- --------------------------------------------------------

--
-- Table structure for table `vbs_calendar|timezones`
--

CREATE TABLE `vbs_calendar|timezones` (
  `CountryCode` char(2) NOT NULL,
  `Coordinates` char(15) NOT NULL,
  `TimeZone` char(32) NOT NULL,
  `Comments` varchar(85) NOT NULL,
  `UTC offset` char(8) NOT NULL,
  `UTC DST offset` char(8) NOT NULL,
  `Notes` varchar(79) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vbs_calendar|timezones`
--

INSERT INTO `vbs_calendar|timezones` (`CountryCode`, `Coordinates`, `TimeZone`, `Comments`, `UTC offset`, `UTC DST offset`, `Notes`) VALUES
('CI', '+0519-00402', 'Africa/Abidjan', '', '+00:00', '+00:00', ''),
('GH', '+0533-00013', 'Africa/Accra', '', '+00:00', '+00:00', ''),
('ET', '+0902+03842', 'Africa/Addis_Ababa', '', '+03:00', '+03:00', ''),
('DZ', '+3647+00303', 'Africa/Algiers', '', '+01:00', '+01:00', ''),
('ER', '+1520+03853', 'Africa/Asmara', '', '+03:00', '+03:00', ''),
('', '', 'Africa/Asmera', '', '+03:00', '+03:00', 'Link to Africa/Asmara'),
('ML', '+1239-00800', 'Africa/Bamako', '', '+00:00', '+00:00', ''),
('CF', '+0422+01835', 'Africa/Bangui', '', '+01:00', '+01:00', ''),
('GM', '+1328-01639', 'Africa/Banjul', '', '+00:00', '+00:00', ''),
('GW', '+1151-01535', 'Africa/Bissau', '', '+00:00', '+00:00', ''),
('MW', '-1547+03500', 'Africa/Blantyre', '', '+02:00', '+02:00', ''),
('CG', '-0416+01517', 'Africa/Brazzaville', '', '+01:00', '+01:00', ''),
('BI', '-0323+02922', 'Africa/Bujumbura', '', '+02:00', '+02:00', ''),
('EG', '+3003+03115', 'Africa/Cairo', '', '+02:00', '+02:00', 'DST has been canceled since 2011'),
('MA', '+3339-00735', 'Africa/Casablanca', '', '+00:00', '+01:00', ''),
('ES', '+3553-00519', 'Africa/Ceuta', 'Ceuta & Melilla', '+01:00', '+02:00', ''),
('GN', '+0931-01343', 'Africa/Conakry', '', '+00:00', '+00:00', ''),
('SN', '+1440-01726', 'Africa/Dakar', '', '+00:00', '+00:00', ''),
('TZ', '-0648+03917', 'Africa/Dar_es_Salaam', '', '+03:00', '+03:00', ''),
('DJ', '+1136+04309', 'Africa/Djibouti', '', '+03:00', '+03:00', ''),
('CM', '+0403+00942', 'Africa/Douala', '', '+01:00', '+01:00', ''),
('EH', '+2709-01312', 'Africa/El_Aaiun', '', '+00:00', '+00:00', ''),
('SL', '+0830-01315', 'Africa/Freetown', '', '+00:00', '+00:00', ''),
('BW', '-2439+02555', 'Africa/Gaborone', '', '+02:00', '+02:00', ''),
('ZW', '-1750+03103', 'Africa/Harare', '', '+02:00', '+02:00', ''),
('ZA', '-2615+02800', 'Africa/Johannesburg', '', '+02:00', '+02:00', ''),
('SS', '+0451+03136', 'Africa/Juba', '', '+03:00', '+03:00', ''),
('UG', '+0019+03225', 'Africa/Kampala', '', '+03:00', '+03:00', ''),
('SD', '+1536+03232', 'Africa/Khartoum', '', '+03:00', '+03:00', ''),
('RW', '-0157+03004', 'Africa/Kigali', '', '+02:00', '+02:00', ''),
('CD', '-0418+01518', 'Africa/Kinshasa', 'west Dem. Rep. of Congo', '+01:00', '+01:00', ''),
('NG', '+0627+00324', 'Africa/Lagos', '', '+01:00', '+01:00', ''),
('GA', '+0023+00927', 'Africa/Libreville', '', '+01:00', '+01:00', ''),
('TG', '+0608+00113', 'Africa/Lome', '', '+00:00', '+00:00', ''),
('AO', '-0848+01314', 'Africa/Luanda', '', '+01:00', '+01:00', ''),
('CD', '-1140+02728', 'Africa/Lubumbashi', 'east Dem. Rep. of Congo', '+02:00', '+02:00', ''),
('ZM', '-1525+02817', 'Africa/Lusaka', '', '+02:00', '+02:00', ''),
('GQ', '+0345+00847', 'Africa/Malabo', '', '+01:00', '+01:00', ''),
('MZ', '-2558+03235', 'Africa/Maputo', '', '+02:00', '+02:00', ''),
('LS', '-2928+02730', 'Africa/Maseru', '', '+02:00', '+02:00', ''),
('SZ', '-2618+03106', 'Africa/Mbabane', '', '+02:00', '+02:00', ''),
('SO', '+0204+04522', 'Africa/Mogadishu', '', '+03:00', '+03:00', ''),
('LR', '+0618-01047', 'Africa/Monrovia', '', '+00:00', '+00:00', ''),
('KE', '-0117+03649', 'Africa/Nairobi', '', '+03:00', '+03:00', ''),
('TD', '+1207+01503', 'Africa/Ndjamena', '', '+01:00', '+01:00', ''),
('NE', '+1331+00207', 'Africa/Niamey', '', '+01:00', '+01:00', ''),
('MR', '+1806-01557', 'Africa/Nouakchott', '', '+00:00', '+00:00', ''),
('BF', '+1222-00131', 'Africa/Ouagadougou', '', '+00:00', '+00:00', ''),
('BJ', '+0629+00237', 'Africa/Porto-Novo', '', '+01:00', '+01:00', ''),
('ST', '+0020+00644', 'Africa/Sao_Tome', '', '+00:00', '+00:00', ''),
('', '', 'Africa/Timbuktu', '', '+00:00', '+00:00', 'Link to Africa/Bamako'),
('LY', '+3254+01311', 'Africa/Tripoli', '', '+01:00', '+02:00', ''),
('TN', '+3648+01011', 'Africa/Tunis', '', '+01:00', '+01:00', ''),
('NA', '-2234+01706', 'Africa/Windhoek', '', '+01:00', '+02:00', ''),
('', '', 'AKST9AKDT', '', '−09:00', '−08:00', 'Link to America/Anchorage'),
('US', '+515248-1763929', 'America/Adak', 'Aleutian Islands', '−10:00', '−09:00', ''),
('US', '+611305-1495401', 'America/Anchorage', 'Alaska Time', '−09:00', '−08:00', ''),
('AI', '+1812-06304', 'America/Anguilla', '', '−04:00', '−04:00', ''),
('AG', '+1703-06148', 'America/Antigua', '', '−04:00', '−04:00', ''),
('BR', '-0712-04812', 'America/Araguaina', 'Tocantins', '−03:00', '−03:00', ''),
('AR', '-3436-05827', 'America/Argentina/Buenos_Aires', 'Buenos Aires (BA, CF)', '−03:00', '−03:00', ''),
('AR', '-2828-06547', 'America/Argentina/Catamarca', 'Catamarca (CT), Chubut (CH)', '−03:00', '−03:00', ''),
('', '', 'America/Argentina/ComodRivadavia', '', '−03:00', '−03:00', 'Link to America/Argentina/Catamarca'),
('AR', '-3124-06411', 'America/Argentina/Cordoba', 'most locations (CB, CC, CN, ER, FM, MN, SE, SF)', '−03:00', '−03:00', ''),
('AR', '-2411-06518', 'America/Argentina/Jujuy', 'Jujuy (JY)', '−03:00', '−03:00', ''),
('AR', '-2926-06651', 'America/Argentina/La_Rioja', 'La Rioja (LR)', '−03:00', '−03:00', ''),
('AR', '-3253-06849', 'America/Argentina/Mendoza', 'Mendoza (MZ)', '−03:00', '−03:00', ''),
('AR', '-5138-06913', 'America/Argentina/Rio_Gallegos', 'Santa Cruz (SC)', '−03:00', '−03:00', ''),
('AR', '-2447-06525', 'America/Argentina/Salta', '(SA, LP, NQ, RN)', '−03:00', '−03:00', ''),
('AR', '-3132-06831', 'America/Argentina/San_Juan', 'San Juan (SJ)', '−03:00', '−03:00', ''),
('AR', '-3319-06621', 'America/Argentina/San_Luis', 'San Luis (SL)', '−03:00', '−03:00', ''),
('AR', '-2649-06513', 'America/Argentina/Tucuman', 'Tucuman (TM)', '−03:00', '−03:00', ''),
('AR', '-5448-06818', 'America/Argentina/Ushuaia', 'Tierra del Fuego (TF)', '−03:00', '−03:00', ''),
('AW', '+1230-06958', 'America/Aruba', '', '−04:00', '−04:00', ''),
('PY', '-2516-05740', 'America/Asuncion', '', '−04:00', '−03:00', ''),
('CA', '+484531-0913718', 'America/Atikokan', 'Eastern Standard Time - Atikokan, Ontario and Southampton I, Nunavut', '−05:00', '−05:00', ''),
('', '', 'America/Atka', '', '−10:00', '−09:00', 'Link to America/Adak'),
('BR', '-1259-03831', 'America/Bahia', 'Bahia', '−03:00', '−03:00', ''),
('MX', '+2048-10515', 'America/Bahia_Banderas', 'Mexican Central Time - Bahia de Banderas', '−06:00', '−05:00', ''),
('BB', '+1306-05937', 'America/Barbados', '', '−04:00', '−04:00', ''),
('BR', '-0127-04829', 'America/Belem', 'Amapa, E Para', '−03:00', '−03:00', ''),
('BZ', '+1730-08812', 'America/Belize', '', '−06:00', '−06:00', ''),
('CA', '+5125-05707', 'America/Blanc-Sablon', 'Atlantic Standard Time - Quebec - Lower North Shore', '−04:00', '−04:00', ''),
('BR', '+0249-06040', 'America/Boa_Vista', 'Roraima', '−04:00', '−04:00', ''),
('CO', '+0436-07405', 'America/Bogota', '', '−05:00', '−05:00', ''),
('US', '+433649-1161209', 'America/Boise', 'Mountain Time - south Idaho & east Oregon', '−07:00', '−06:00', ''),
('', '', 'America/Buenos_Aires', '', '−03:00', '−03:00', 'Link to America/Argentina/Buenos_Aires'),
('CA', '+690650-1050310', 'America/Cambridge_Bay', 'Mountain Time - west Nunavut', '−07:00', '−06:00', ''),
('BR', '-2027-05437', 'America/Campo_Grande', 'Mato Grosso do Sul', '−04:00', '−03:00', ''),
('MX', '+2105-08646', 'America/Cancun', 'Central Time - Quintana Roo', '−06:00', '−05:00', ''),
('VE', '+1030-06656', 'America/Caracas', '', '−04:30', '−04:30', ''),
('', '', 'America/Catamarca', '', '−03:00', '−03:00', 'Link to America/Argentina/Catamarca'),
('GF', '+0456-05220', 'America/Cayenne', '', '−03:00', '−03:00', ''),
('KY', '+1918-08123', 'America/Cayman', '', '−05:00', '−05:00', ''),
('US', '+415100-0873900', 'America/Chicago', 'Central Time', '−06:00', '−05:00', ''),
('MX', '+2838-10605', 'America/Chihuahua', 'Mexican Mountain Time - Chihuahua away from US border', '−07:00', '−06:00', ''),
('', '', 'America/Coral_Harbour', '', '−05:00', '−05:00', 'Link to America/Atikokan'),
('', '', 'America/Cordoba', '', '−03:00', '−03:00', 'Link to America/Argentina/Cordoba'),
('CR', '+0956-08405', 'America/Costa_Rica', '', '−06:00', '−06:00', ''),
('CA', '+4906-11631', 'America/Creston', 'Mountain Standard Time - Creston, British Columbia', '−07:00', '−07:00', ''),
('BR', '-1535-05605', 'America/Cuiaba', 'Mato Grosso', '−04:00', '−03:00', ''),
('CW', '+1211-06900', 'America/Curacao', '', '−04:00', '−04:00', ''),
('GL', '+7646-01840', 'America/Danmarkshavn', 'east coast, north of Scoresbysund', '+00:00', '+00:00', ''),
('CA', '+6404-13925', 'America/Dawson', 'Pacific Time - north Yukon', '−08:00', '−07:00', ''),
('CA', '+5946-12014', 'America/Dawson_Creek', 'Mountain Standard Time - Dawson Creek & Fort Saint John, British Columbia', '−07:00', '−07:00', ''),
('US', '+394421-1045903', 'America/Denver', 'Mountain Time', '−07:00', '−06:00', ''),
('US', '+421953-0830245', 'America/Detroit', 'Eastern Time - Michigan - most locations', '−05:00', '−04:00', ''),
('DM', '+1518-06124', 'America/Dominica', '', '−04:00', '−04:00', ''),
('CA', '+5333-11328', 'America/Edmonton', 'Mountain Time - Alberta, east British Columbia & west Saskatchewan', '−07:00', '−06:00', ''),
('BR', '-0640-06952', 'America/Eirunepe', 'W Amazonas', '−04:00', '−04:00', ''),
('SV', '+1342-08912', 'America/El_Salvador', '', '−06:00', '−06:00', ''),
('', '', 'America/Ensenada', '', '−08:00', '−07:00', 'Link to America/Tijuana'),
('BR', '-0343-03830', 'America/Fortaleza', 'NE Brazil (MA, PI, CE, RN, PB)', '−03:00', '−03:00', ''),
('', '', 'America/Fort_Wayne', '', '−05:00', '−04:00', 'Link to America/Indiana/Indianapolis'),
('CA', '+4612-05957', 'America/Glace_Bay', 'Atlantic Time - Nova Scotia - places that did not observe DST 1966-1971', '−04:00', '−03:00', ''),
('GL', '+6411-05144', 'America/Godthab', 'most locations', '−03:00', '−02:00', ''),
('CA', '+5320-06025', 'America/Goose_Bay', 'Atlantic Time - Labrador - most locations', '−04:00', '−03:00', ''),
('TC', '+2128-07108', 'America/Grand_Turk', '', '−05:00', '−04:00', ''),
('GD', '+1203-06145', 'America/Grenada', '', '−04:00', '−04:00', ''),
('GP', '+1614-06132', 'America/Guadeloupe', '', '−04:00', '−04:00', ''),
('GT', '+1438-09031', 'America/Guatemala', '', '−06:00', '−06:00', ''),
('EC', '-0210-07950', 'America/Guayaquil', 'mainland', '−05:00', '−05:00', ''),
('GY', '+0648-05810', 'America/Guyana', '', '−04:00', '−04:00', ''),
('CA', '+4439-06336', 'America/Halifax', 'Atlantic Time - Nova Scotia (most places), PEI', '−04:00', '−03:00', ''),
('CU', '+2308-08222', 'America/Havana', '', '−05:00', '−04:00', ''),
('MX', '+2904-11058', 'America/Hermosillo', 'Mountain Standard Time - Sonora', '−07:00', '−07:00', ''),
('US', '+394606-0860929', 'America/Indiana/Indianapolis', 'Eastern Time - Indiana - most locations', '−05:00', '−04:00', ''),
('US', '+411745-0863730', 'America/Indiana/Knox', 'Central Time - Indiana - Starke County', '−06:00', '−05:00', ''),
('US', '+382232-0862041', 'America/Indiana/Marengo', 'Eastern Time - Indiana - Crawford County', '−05:00', '−04:00', ''),
('US', '+382931-0871643', 'America/Indiana/Petersburg', 'Eastern Time - Indiana - Pike County', '−05:00', '−04:00', ''),
('US', '+375711-0864541', 'America/Indiana/Tell_City', 'Central Time - Indiana - Perry County', '−06:00', '−05:00', ''),
('US', '+384452-0850402', 'America/Indiana/Vevay', 'Eastern Time - Indiana - Switzerland County', '−05:00', '−04:00', ''),
('US', '+384038-0873143', 'America/Indiana/Vincennes', 'Eastern Time - Indiana - Daviess, Dubois, Knox & Martin Counties', '−05:00', '−04:00', ''),
('US', '+410305-0863611', 'America/Indiana/Winamac', 'Eastern Time - Indiana - Pulaski County', '−05:00', '−04:00', ''),
('', '', 'America/Indianapolis', '', '−05:00', '−04:00', 'Link to America/Indiana/Indianapolis'),
('CA', '+682059-1334300', 'America/Inuvik', 'Mountain Time - west Northwest Territories', '−07:00', '−06:00', ''),
('CA', '+6344-06828', 'America/Iqaluit', 'Eastern Time - east Nunavut - most locations', '−05:00', '−04:00', ''),
('JM', '+1800-07648', 'America/Jamaica', '', '−05:00', '−05:00', ''),
('', '', 'America/Jujuy', '', '−03:00', '−03:00', 'Link to America/Argentina/Jujuy'),
('US', '+581807-1342511', 'America/Juneau', 'Alaska Time - Alaska panhandle', '−09:00', '−08:00', ''),
('US', '+381515-0854534', 'America/Kentucky/Louisville', 'Eastern Time - Kentucky - Louisville area', '−05:00', '−04:00', ''),
('US', '+364947-0845057', 'America/Kentucky/Monticello', 'Eastern Time - Kentucky - Wayne County', '−05:00', '−04:00', ''),
('', '', 'America/Knox_IN', '', '−06:00', '−05:00', 'Link to America/Indiana/Knox'),
('BQ', '+120903-0681636', 'America/Kralendijk', '', '−04:00', '−04:00', 'Link to America/Curacao'),
('BO', '-1630-06809', 'America/La_Paz', '', '−04:00', '−04:00', ''),
('PE', '-1203-07703', 'America/Lima', '', '−05:00', '−05:00', ''),
('US', '+340308-1181434', 'America/Los_Angeles', 'Pacific Time', '−08:00', '−07:00', ''),
('', '', 'America/Louisville', '', '−05:00', '−04:00', 'Link to America/Kentucky/Louisville'),
('SX', '+180305-0630250', 'America/Lower_Princes', '', '−04:00', '−04:00', 'Link to America/Curacao'),
('BR', '-0940-03543', 'America/Maceio', 'Alagoas, Sergipe', '−03:00', '−03:00', ''),
('NI', '+1209-08617', 'America/Managua', '', '−06:00', '−06:00', ''),
('BR', '-0308-06001', 'America/Manaus', 'E Amazonas', '−04:00', '−04:00', ''),
('MF', '+1804-06305', 'America/Marigot', '', '−04:00', '−04:00', 'Link to America/Guadeloupe'),
('MQ', '+1436-06105', 'America/Martinique', '', '−04:00', '−04:00', ''),
('MX', '+2550-09730', 'America/Matamoros', 'US Central Time - Coahuila, Durango, Nuevo León, Tamaulipas near US border', '−06:00', '−05:00', ''),
('MX', '+2313-10625', 'America/Mazatlan', 'Mountain Time - S Baja, Nayarit, Sinaloa', '−07:00', '−06:00', ''),
('', '', 'America/Mendoza', '', '−03:00', '−03:00', 'Link to America/Argentina/Mendoza'),
('US', '+450628-0873651', 'America/Menominee', 'Central Time - Michigan - Dickinson, Gogebic, Iron & Menominee Counties', '−06:00', '−05:00', ''),
('MX', '+2058-08937', 'America/Merida', 'Central Time - Campeche, Yucatán', '−06:00', '−05:00', ''),
('US', '+550737-1313435', 'America/Metlakatla', 'Metlakatla Time - Annette Island', '−08:00', '−08:00', ''),
('MX', '+1924-09909', 'America/Mexico_City', 'Central Time - most locations', '−06:00', '−05:00', ''),
('PM', '+4703-05620', 'America/Miquelon', '', '−03:00', '−02:00', ''),
('CA', '+4606-06447', 'America/Moncton', 'Atlantic Time - New Brunswick', '−04:00', '−03:00', ''),
('MX', '+2540-10019', 'America/Monterrey', 'Mexican Central Time - Coahuila, Durango, Nuevo León, Tamaulipas away from US border', '−06:00', '−05:00', ''),
('UY', '-3453-05611', 'America/Montevideo', '', '−03:00', '−02:00', ''),
('CA', '+4531-07334', 'America/Montreal', 'Eastern Time - Quebec - most locations', '−05:00', '−04:00', ''),
('MS', '+1643-06213', 'America/Montserrat', '', '−04:00', '−04:00', ''),
('BS', '+2505-07721', 'America/Nassau', '', '−05:00', '−04:00', ''),
('US', '+404251-0740023', 'America/New_York', 'Eastern Time', '−05:00', '−04:00', ''),
('CA', '+4901-08816', 'America/Nipigon', 'Eastern Time - Ontario & Quebec - places that did not observe DST 1967-1973', '−05:00', '−04:00', ''),
('US', '+643004-1652423', 'America/Nome', 'Alaska Time - west Alaska', '−09:00', '−08:00', ''),
('BR', '-0351-03225', 'America/Noronha', 'Atlantic islands', '−02:00', '−02:00', ''),
('US', '+471551-1014640', 'America/North_Dakota/Beulah', 'Central Time - North Dakota - Mercer County', '−06:00', '−05:00', ''),
('US', '+470659-1011757', 'America/North_Dakota/Center', 'Central Time - North Dakota - Oliver County', '−06:00', '−05:00', ''),
('US', '+465042-1012439', 'America/North_Dakota/New_Salem', 'Central Time - North Dakota - Morton County (except Mandan area)', '−06:00', '−05:00', ''),
('MX', '+2934-10425', 'America/Ojinaga', 'US Mountain Time - Chihuahua near US border', '−07:00', '−06:00', ''),
('PA', '+0858-07932', 'America/Panama', '', '−05:00', '−05:00', ''),
('CA', '+6608-06544', 'America/Pangnirtung', 'Eastern Time - Pangnirtung, Nunavut', '−05:00', '−04:00', ''),
('SR', '+0550-05510', 'America/Paramaribo', '', '−03:00', '−03:00', ''),
('US', '+332654-1120424', 'America/Phoenix', 'Mountain Standard Time - Arizona', '−07:00', '−07:00', ''),
('HT', '+1832-07220', 'America/Port-au-Prince', '', '−05:00', '−04:00', ''),
('', '', 'America/Porto_Acre', '', '−04:00', '−04:00', 'Link to America/Rio_Branco'),
('BR', '-0846-06354', 'America/Porto_Velho', 'Rondonia', '−04:00', '−04:00', ''),
('TT', '+1039-06131', 'America/Port_of_Spain', '', '−04:00', '−04:00', ''),
('PR', '+182806-0660622', 'America/Puerto_Rico', '', '−04:00', '−04:00', ''),
('CA', '+4843-09434', 'America/Rainy_River', 'Central Time - Rainy River & Fort Frances, Ontario', '−06:00', '−05:00', ''),
('CA', '+624900-0920459', 'America/Rankin_Inlet', 'Central Time - central Nunavut', '−06:00', '−05:00', ''),
('BR', '-0803-03454', 'America/Recife', 'Pernambuco', '−03:00', '−03:00', ''),
('CA', '+5024-10439', 'America/Regina', 'Central Standard Time - Saskatchewan - most locations', '−06:00', '−06:00', ''),
('CA', '+744144-0944945', 'America/Resolute', 'Central Standard Time - Resolute, Nunavut', '−06:00', '−05:00', ''),
('BR', '-0958-06748', 'America/Rio_Branco', 'Acre', '−04:00', '−04:00', ''),
('', '', 'America/Rosario', '', '−03:00', '−03:00', 'Link to America/Argentina/Cordoba'),
('BR', '-0226-05452', 'America/Santarem', 'W Para', '−03:00', '−03:00', ''),
('MX', '+3018-11452', 'America/Santa_Isabel', 'Mexican Pacific Time - Baja California away from US border', '−08:00', '−07:00', ''),
('CL', '-3327-07040', 'America/Santiago', 'most locations', '−04:00', '−03:00', ''),
('DO', '+1828-06954', 'America/Santo_Domingo', '', '−04:00', '−04:00', ''),
('BR', '-2332-04637', 'America/Sao_Paulo', 'S & SE Brazil (GO, DF, MG, ES, RJ, SP, PR, SC, RS)', '−03:00', '−02:00', ''),
('GL', '+7029-02158', 'America/Scoresbysund', 'Scoresbysund / Ittoqqortoormiit', '−01:00', '+00:00', ''),
('US', '+364708-1084111', 'America/Shiprock', 'Mountain Time - Navajo', '−07:00', '−06:00', 'Link to America/Denver'),
('US', '+571035-1351807', 'America/Sitka', 'Alaska Time - southeast Alaska panhandle', '−09:00', '−08:00', ''),
('BL', '+1753-06251', 'America/St_Barthelemy', '', '−04:00', '−04:00', 'Link to America/Guadeloupe'),
('CA', '+4734-05243', 'America/St_Johns', 'Newfoundland Time, including SE Labrador', '−03:30', '−02:30', ''),
('KN', '+1718-06243', 'America/St_Kitts', '', '−04:00', '−04:00', ''),
('LC', '+1401-06100', 'America/St_Lucia', '', '−04:00', '−04:00', ''),
('VI', '+1821-06456', 'America/St_Thomas', '', '−04:00', '−04:00', ''),
('VC', '+1309-06114', 'America/St_Vincent', '', '−04:00', '−04:00', ''),
('CA', '+5017-10750', 'America/Swift_Current', 'Central Standard Time - Saskatchewan - midwest', '−06:00', '−06:00', ''),
('HN', '+1406-08713', 'America/Tegucigalpa', '', '−06:00', '−06:00', ''),
('GL', '+7634-06847', 'America/Thule', 'Thule / Pituffik', '−04:00', '−03:00', ''),
('CA', '+4823-08915', 'America/Thunder_Bay', 'Eastern Time - Thunder Bay, Ontario', '−05:00', '−04:00', ''),
('MX', '+3232-11701', 'America/Tijuana', 'US Pacific Time - Baja California near US border', '−08:00', '−07:00', ''),
('CA', '+4339-07923', 'America/Toronto', 'Eastern Time - Ontario - most locations', '−05:00', '−04:00', ''),
('VG', '+1827-06437', 'America/Tortola', '', '−04:00', '−04:00', ''),
('CA', '+4916-12307', 'America/Vancouver', 'Pacific Time - west British Columbia', '−08:00', '−07:00', ''),
('', '', 'America/Virgin', '', '−04:00', '−04:00', 'Link to America/St_Thomas'),
('CA', '+6043-13503', 'America/Whitehorse', 'Pacific Time - south Yukon', '−08:00', '−07:00', ''),
('CA', '+4953-09709', 'America/Winnipeg', 'Central Time - Manitoba & west Ontario', '−06:00', '−05:00', ''),
('US', '+593249-1394338', 'America/Yakutat', 'Alaska Time - Alaska panhandle neck', '−09:00', '−08:00', ''),
('CA', '+6227-11421', 'America/Yellowknife', 'Mountain Time - central Northwest Territories', '−07:00', '−06:00', ''),
('AQ', '-6617+11031', 'Antarctica/Casey', 'Casey Station, Bailey Peninsula', '+11:00', '+08:00', ''),
('AQ', '-6835+07758', 'Antarctica/Davis', 'Davis Station, Vestfold Hills', '+05:00', '+07:00', ''),
('AQ', '-6640+14001', 'Antarctica/DumontDUrville', 'Dumont-d\'Urville Station, Terre Adelie', '+10:00', '+10:00', ''),
('AQ', '-5430+15857', 'Antarctica/Macquarie', 'Macquarie Island Station, Macquarie Island', '+11:00', '+11:00', ''),
('AQ', '-6736+06253', 'Antarctica/Mawson', 'Mawson Station, Holme Bay', '+05:00', '+05:00', ''),
('AQ', '-7750+16636', 'Antarctica/McMurdo', 'McMurdo Station, Ross Island', '+12:00', '+13:00', ''),
('AQ', '-6448-06406', 'Antarctica/Palmer', 'Palmer Station, Anvers Island', '−04:00', '−03:00', ''),
('AQ', '-6734-06808', 'Antarctica/Rothera', 'Rothera Station, Adelaide Island', '−03:00', '−03:00', ''),
('AQ', '-9000+00000', 'Antarctica/South_Pole', 'Amundsen-Scott Station, South Pole', '+12:00', '+13:00', 'Link to Antarctica/McMurdo'),
('AQ', '-690022+0393524', 'Antarctica/Syowa', 'Syowa Station, E Ongul I', '+03:00', '+03:00', ''),
('AQ', '-7824+10654', 'Antarctica/Vostok', 'Vostok Station, Lake Vostok', '+06:00', '+06:00', ''),
('SJ', '+7800+01600', 'Arctic/Longyearbyen', '', '+01:00', '+02:00', 'Link to Europe/Oslo'),
('YE', '+1245+04512', 'Asia/Aden', '', '+03:00', '+03:00', ''),
('KZ', '+4315+07657', 'Asia/Almaty', 'most locations', '+06:00', '+06:00', ''),
('JO', '+3157+03556', 'Asia/Amman', '', '+03:00', '+03:00', ''),
('RU', '+6445+17729', 'Asia/Anadyr', 'Moscow+08 - Bering Sea', '+12:00', '+12:00', ''),
('KZ', '+4431+05016', 'Asia/Aqtau', 'Atyrau (Atirau, Gur\'yev), Mangghystau (Mankistau)', '+05:00', '+05:00', ''),
('KZ', '+5017+05710', 'Asia/Aqtobe', 'Aqtobe (Aktobe)', '+05:00', '+05:00', ''),
('TM', '+3757+05823', 'Asia/Ashgabat', '', '+05:00', '+05:00', ''),
('', '', 'Asia/Ashkhabad', '', '+05:00', '+05:00', 'Link to Asia/Ashgabat'),
('IQ', '+3321+04425', 'Asia/Baghdad', '', '+03:00', '+03:00', ''),
('BH', '+2623+05035', 'Asia/Bahrain', '', '+03:00', '+03:00', ''),
('AZ', '+4023+04951', 'Asia/Baku', '', '+04:00', '+05:00', ''),
('TH', '+1345+10031', 'Asia/Bangkok', '', '+07:00', '+07:00', ''),
('LB', '+3353+03530', 'Asia/Beirut', '', '+02:00', '+03:00', ''),
('KG', '+4254+07436', 'Asia/Bishkek', '', '+06:00', '+06:00', ''),
('BN', '+0456+11455', 'Asia/Brunei', '', '+08:00', '+08:00', ''),
('', '', 'Asia/Calcutta', '', '+05:30', '+05:30', 'Link to Asia/Kolkata'),
('MN', '+4804+11430', 'Asia/Choibalsan', 'Dornod, Sukhbaatar', '+08:00', '+08:00', ''),
('CN', '+2934+10635', 'Asia/Chongqing', 'central China - Sichuan, Yunnan, Guangxi, Shaanxi, Guizhou, etc.', '+08:00', '+08:00', 'Covering historic Kansu-Szechuan time zone.'),
('', '', 'Asia/Chungking', '', '+08:00', '+08:00', 'Link to Asia/Chongqing'),
('LK', '+0656+07951', 'Asia/Colombo', '', '+05:30', '+05:30', ''),
('', '', 'Asia/Dacca', '', '+06:00', '+06:00', 'Link to Asia/Dhaka'),
('SY', '+3330+03618', 'Asia/Damascus', '', '+02:00', '+03:00', ''),
('BD', '+2343+09025', 'Asia/Dhaka', '', '+06:00', '+06:00', ''),
('TL', '-0833+12535', 'Asia/Dili', '', '+09:00', '+09:00', ''),
('AE', '+2518+05518', 'Asia/Dubai', '', '+04:00', '+04:00', ''),
('TJ', '+3835+06848', 'Asia/Dushanbe', '', '+05:00', '+05:00', ''),
('PS', '+3130+03428', 'Asia/Gaza', 'Gaza Strip', '+02:00', '+03:00', ''),
('CN', '+4545+12641', 'Asia/Harbin', 'Heilongjiang (except Mohe), Jilin', '+08:00', '+08:00', 'Covering historic Changpai time zone.'),
('PS', '+313200+0350542', 'Asia/Hebron', 'West Bank', '+02:00', '+03:00', ''),
('HK', '+2217+11409', 'Asia/Hong_Kong', '', '+08:00', '+08:00', ''),
('MN', '+4801+09139', 'Asia/Hovd', 'Bayan-Olgiy, Govi-Altai, Hovd, Uvs, Zavkhan', '+07:00', '+07:00', ''),
('VN', '+1045+10640', 'Asia/Ho_Chi_Minh', '', '+07:00', '+07:00', ''),
('RU', '+5216+10420', 'Asia/Irkutsk', 'Moscow+05 - Lake Baikal', '+09:00', '+09:00', ''),
('', '', 'Asia/Istanbul', '', '+02:00', '+03:00', 'Link to Europe/Istanbul'),
('ID', '-0610+10648', 'Asia/Jakarta', 'Java & Sumatra', '+07:00', '+07:00', ''),
('ID', '-0232+14042', 'Asia/Jayapura', 'west New Guinea (Irian Jaya) & Malukus (Moluccas)', '+09:00', '+09:00', ''),
('IL', '+3146+03514', 'Asia/Jerusalem', '', '+02:00', '+03:00', ''),
('AF', '+3431+06912', 'Asia/Kabul', '', '+04:30', '+04:30', ''),
('RU', '+5301+15839', 'Asia/Kamchatka', 'Moscow+08 - Kamchatka', '+12:00', '+12:00', ''),
('PK', '+2452+06703', 'Asia/Karachi', '', '+05:00', '+05:00', ''),
('CN', '+3929+07559', 'Asia/Kashgar', 'west Tibet & Xinjiang', '+08:00', '+08:00', 'Covering historic Kunlun time zone.'),
('NP', '+2743+08519', 'Asia/Kathmandu', '', '+05:45', '+05:45', ''),
('', '', 'Asia/Katmandu', '', '+05:45', '+05:45', 'Link to Asia/Kathmandu'),
('IN', '+2232+08822', 'Asia/Kolkata', '', '+05:30', '+05:30', 'Note: Different zones in history, see Time in India.'),
('RU', '+5601+09250', 'Asia/Krasnoyarsk', 'Moscow+04 - Yenisei River', '+08:00', '+08:00', ''),
('MY', '+0310+10142', 'Asia/Kuala_Lumpur', 'peninsular Malaysia', '+08:00', '+08:00', ''),
('MY', '+0133+11020', 'Asia/Kuching', 'Sabah & Sarawak', '+08:00', '+08:00', ''),
('KW', '+2920+04759', 'Asia/Kuwait', '', '+03:00', '+03:00', ''),
('', '', 'Asia/Macao', '', '+08:00', '+08:00', 'Link to Asia/Macau'),
('MO', '+2214+11335', 'Asia/Macau', '', '+08:00', '+08:00', ''),
('RU', '+5934+15048', 'Asia/Magadan', 'Moscow+08 - Magadan', '+12:00', '+12:00', ''),
('ID', '-0507+11924', 'Asia/Makassar', 'east & south Borneo, Sulawesi (Celebes), Bali, Nusa Tenggara, west Timor', '+08:00', '+08:00', ''),
('PH', '+1435+12100', 'Asia/Manila', '', '+08:00', '+08:00', ''),
('OM', '+2336+05835', 'Asia/Muscat', '', '+04:00', '+04:00', ''),
('CY', '+3510+03322', 'Asia/Nicosia', '', '+02:00', '+03:00', ''),
('RU', '+5345+08707', 'Asia/Novokuznetsk', 'Moscow+03 - Novokuznetsk', '+07:00', '+07:00', ''),
('RU', '+5502+08255', 'Asia/Novosibirsk', 'Moscow+03 - Novosibirsk', '+07:00', '+07:00', ''),
('RU', '+5500+07324', 'Asia/Omsk', 'Moscow+03 - west Siberia', '+07:00', '+07:00', ''),
('KZ', '+5113+05121', 'Asia/Oral', 'West Kazakhstan', '+05:00', '+05:00', ''),
('KH', '+1133+10455', 'Asia/Phnom_Penh', '', '+07:00', '+07:00', ''),
('ID', '-0002+10920', 'Asia/Pontianak', 'west & central Borneo', '+07:00', '+07:00', ''),
('KP', '+3901+12545', 'Asia/Pyongyang', '', '+09:00', '+09:00', ''),
('QA', '+2517+05132', 'Asia/Qatar', '', '+03:00', '+03:00', ''),
('KZ', '+4448+06528', 'Asia/Qyzylorda', 'Qyzylorda (Kyzylorda, Kzyl-Orda)', '+06:00', '+06:00', ''),
('MM', '+1647+09610', 'Asia/Rangoon', '', '+06:30', '+06:30', ''),
('SA', '+2438+04643', 'Asia/Riyadh', '', '+03:00', '+03:00', ''),
('', '', 'Asia/Saigon', '', '+07:00', '+07:00', 'Link to Asia/Ho_Chi_Minh'),
('RU', '+4658+14242', 'Asia/Sakhalin', 'Moscow+07 - Sakhalin Island', '+11:00', '+11:00', ''),
('UZ', '+3940+06648', 'Asia/Samarkand', 'west Uzbekistan', '+05:00', '+05:00', ''),
('KR', '+3733+12658', 'Asia/Seoul', '', '+09:00', '+09:00', ''),
('CN', '+3114+12128', 'Asia/Shanghai', 'east China - Beijing, Guangdong, Shanghai, etc.', '+08:00', '+08:00', 'Covering historic Chungyuan time zone.'),
('SG', '+0117+10351', 'Asia/Singapore', '', '+08:00', '+08:00', ''),
('TW', '+2503+12130', 'Asia/Taipei', '', '+08:00', '+08:00', ''),
('UZ', '+4120+06918', 'Asia/Tashkent', 'east Uzbekistan', '+05:00', '+05:00', ''),
('GE', '+4143+04449', 'Asia/Tbilisi', '', '+04:00', '+04:00', ''),
('IR', '+3540+05126', 'Asia/Tehran', '', '+03:30', '+04:30', ''),
('', '', 'Asia/Tel_Aviv', '', '+02:00', '+03:00', 'Link to Asia/Jerusalem'),
('', '', 'Asia/Thimbu', '', '+06:00', '+06:00', 'Link to Asia/Thimphu'),
('BT', '+2728+08939', 'Asia/Thimphu', '', '+06:00', '+06:00', ''),
('JP', '+353916+1394441', 'Asia/Tokyo', '', '+09:00', '+09:00', ''),
('', '', 'Asia/Ujung_Pandang', '', '+08:00', '+08:00', 'Link to Asia/Makassar'),
('MN', '+4755+10653', 'Asia/Ulaanbaatar', 'most locations', '+08:00', '+08:00', ''),
('', '', 'Asia/Ulan_Bator', '', '+08:00', '+08:00', 'Link to Asia/Ulaanbaatar'),
('CN', '+4348+08735', 'Asia/Urumqi', 'most of Tibet & Xinjiang', '+08:00', '+08:00', 'Covering historic Sinkiang-Tibet time zone.'),
('LA', '+1758+10236', 'Asia/Vientiane', '', '+07:00', '+07:00', ''),
('RU', '+4310+13156', 'Asia/Vladivostok', 'Moscow+07 - Amur River', '+11:00', '+11:00', ''),
('RU', '+6200+12940', 'Asia/Yakutsk', 'Moscow+06 - Lena River', '+10:00', '+10:00', ''),
('RU', '+5651+06036', 'Asia/Yekaterinburg', 'Moscow+02 - Urals', '+06:00', '+06:00', ''),
('AM', '+4011+04430', 'Asia/Yerevan', '', '+04:00', '+04:00', ''),
('PT', '+3744-02540', 'Atlantic/Azores', 'Azores', '−01:00', '+00:00', ''),
('BM', '+3217-06446', 'Atlantic/Bermuda', '', '−04:00', '−03:00', ''),
('ES', '+2806-01524', 'Atlantic/Canary', 'Canary Islands', '+00:00', '+01:00', ''),
('CV', '+1455-02331', 'Atlantic/Cape_Verde', '', '−01:00', '−01:00', ''),
('', '', 'Atlantic/Faeroe', '', '+00:00', '+01:00', 'Link to Atlantic/Faroe'),
('FO', '+6201-00646', 'Atlantic/Faroe', '', '+00:00', '+01:00', ''),
('', '', 'Atlantic/Jan_Mayen', '', '+01:00', '+02:00', 'Link to Europe/Oslo'),
('PT', '+3238-01654', 'Atlantic/Madeira', 'Madeira Islands', '+00:00', '+01:00', ''),
('IS', '+6409-02151', 'Atlantic/Reykjavik', '', '+00:00', '+00:00', ''),
('GS', '-5416-03632', 'Atlantic/South_Georgia', '', '−02:00', '−02:00', ''),
('FK', '-5142-05751', 'Atlantic/Stanley', '', '−03:00', '−03:00', ''),
('SH', '-1555-00542', 'Atlantic/St_Helena', '', '+00:00', '+00:00', ''),
('', '', 'Australia/ACT', '', '+10:00', '+11:00', 'Link to Australia/Sydney'),
('AU', '-3455+13835', 'Australia/Adelaide', 'South Australia', '+09:30', '+10:30', ''),
('AU', '-2728+15302', 'Australia/Brisbane', 'Queensland - most locations', '+10:00', '+10:00', ''),
('AU', '-3157+14127', 'Australia/Broken_Hill', 'New South Wales - Yancowinna', '+09:30', '+10:30', ''),
('', '', 'Australia/Canberra', '', '+10:00', '+11:00', 'Link to Australia/Sydney'),
('AU', '-3956+14352', 'Australia/Currie', 'Tasmania - King Island', '+10:00', '+11:00', ''),
('AU', '-1228+13050', 'Australia/Darwin', 'Northern Territory', '+09:30', '+09:30', ''),
('AU', '-3143+12852', 'Australia/Eucla', 'Western Australia - Eucla area', '+08:45', '+08:45', ''),
('AU', '-4253+14719', 'Australia/Hobart', 'Tasmania - most locations', '+10:00', '+11:00', ''),
('', '', 'Australia/LHI', '', '+10:30', '+11:00', 'Link to Australia/Lord_Howe'),
('AU', '-2016+14900', 'Australia/Lindeman', 'Queensland - Holiday Islands', '+10:00', '+10:00', ''),
('AU', '-3133+15905', 'Australia/Lord_Howe', 'Lord Howe Island', '+10:30', '+11:00', ''),
('AU', '-3749+14458', 'Australia/Melbourne', 'Victoria', '+10:00', '+11:00', ''),
('', '', 'Australia/North', '', '+09:30', '+09:30', 'Link to Australia/Darwin'),
('', '', 'Australia/NSW', '', '+10:00', '+11:00', 'Link to Australia/Sydney'),
('AU', '-3157+11551', 'Australia/Perth', 'Western Australia - most locations', '+08:00', '+08:00', ''),
('', '', 'Australia/Queensland', '', '+10:00', '+10:00', 'Link to Australia/Brisbane'),
('', '', 'Australia/South', '', '+09:30', '+10:30', 'Link to Australia/Adelaide'),
('AU', '-3352+15113', 'Australia/Sydney', 'New South Wales - most locations', '+10:00', '+11:00', ''),
('', '', 'Australia/Tasmania', '', '+10:00', '+11:00', 'Link to Australia/Hobart'),
('', '', 'Australia/Victoria', '', '+10:00', '+11:00', 'Link to Australia/Melbourne'),
('', '', 'Australia/West', '', '+08:00', '+08:00', 'Link to Australia/Perth'),
('', '', 'Australia/Yancowinna', '', '+09:30', '+10:30', 'Link to Australia/Broken_Hill'),
('', '', 'Brazil/Acre', '', '−04:00', '−04:00', 'Link to America/Rio_Branco'),
('', '', 'Brazil/DeNoronha', '', '−02:00', '−02:00', 'Link to America/Noronha'),
('', '', 'Brazil/East', '', '−03:00', '−02:00', 'Link to America/Sao_Paulo'),
('', '', 'Brazil/West', '', '−04:00', '−04:00', 'Link to America/Manaus'),
('', '', 'Canada/Atlantic', '', '−04:00', '−03:00', 'Link to America/Halifax'),
('', '', 'Canada/Central', '', '−06:00', '−05:00', 'Link to America/Winnipeg'),
('', '', 'Canada/East-Saskatchewan', '', '−06:00', '−06:00', 'Link to America/Regina'),
('', '', 'Canada/Eastern', '', '−05:00', '−04:00', 'Link to America/Toronto'),
('', '', 'Canada/Mountain', '', '−07:00', '−06:00', 'Link to America/Edmonton'),
('', '', 'Canada/Newfoundland', '', '−03:30', '−02:30', 'Link to America/St_Johns'),
('', '', 'Canada/Pacific', '', '−08:00', '−07:00', 'Link to America/Vancouver'),
('', '', 'Canada/Saskatchewan', '', '−06:00', '−06:00', 'Link to America/Regina'),
('', '', 'Canada/Yukon', '', '−08:00', '−07:00', 'Link to America/Whitehorse'),
('', '', 'CET', '', '+01:00', '+02:00', ''),
('', '', 'Chile/Continental', '', '−04:00', '−03:00', 'Link to America/Santiago'),
('', '', 'Chile/EasterIsland', '', '−06:00', '−05:00', 'Link to Pacific/Easter'),
('', '', 'CST6CDT', '', '−06:00', '−05:00', ''),
('', '', 'Cuba', '', '−05:00', '−04:00', 'Link to America/Havana'),
('', '', 'EET', '', '+02:00', '+03:00', ''),
('', '', 'Egypt', '', '+02:00', '+02:00', 'Link to Africa/Cairo'),
('', '', 'Eire', '', '+00:00', '+01:00', 'Link to Europe/Dublin'),
('', '', 'EST', '', '−05:00', '−05:00', ''),
('', '', 'EST5EDT', '', '−05:00', '−04:00', ''),
('', '', 'Etc./GMT', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Etc./GMT+0', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Etc./UCT', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Etc./Universal', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Etc./UTC', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Etc./Zulu', '', '+00:00', '+00:00', 'Link to UTC'),
('NL', '+5222+00454', 'Europe/Amsterdam', '', '+01:00', '+02:00', ''),
('AD', '+4230+00131', 'Europe/Andorra', '', '+01:00', '+02:00', ''),
('GR', '+3758+02343', 'Europe/Athens', '', '+02:00', '+03:00', ''),
('', '', 'Europe/Belfast', '', '+00:00', '+01:00', 'Link to Europe/London'),
('RS', '+4450+02030', 'Europe/Belgrade', '', '+01:00', '+02:00', ''),
('DE', '+5230+01322', 'Europe/Berlin', '', '+01:00', '+02:00', 'In 1945, the Trizone did not follow Berlin\'s switch to DST, see Time in Germany'),
('SK', '+4809+01707', 'Europe/Bratislava', '', '+01:00', '+02:00', 'Link to Europe/Prague'),
('BE', '+5050+00420', 'Europe/Brussels', '', '+01:00', '+02:00', ''),
('RO', '+4426+02606', 'Europe/Bucharest', '', '+02:00', '+03:00', ''),
('HU', '+4730+01905', 'Europe/Budapest', '', '+01:00', '+02:00', ''),
('MD', '+4700+02850', 'Europe/Chisinau', '', '+02:00', '+03:00', ''),
('DK', '+5540+01235', 'Europe/Copenhagen', '', '+01:00', '+02:00', ''),
('IE', '+5320-00615', 'Europe/Dublin', '', '+00:00', '+01:00', ''),
('GI', '+3608-00521', 'Europe/Gibraltar', '', '+01:00', '+02:00', ''),
('GG', '+4927-00232', 'Europe/Guernsey', '', '+00:00', '+01:00', 'Link to Europe/London'),
('FI', '+6010+02458', 'Europe/Helsinki', '', '+02:00', '+03:00', ''),
('IM', '+5409-00428', 'Europe/Isle_of_Man', '', '+00:00', '+01:00', 'Link to Europe/London'),
('TR', '+4101+02858', 'Europe/Istanbul', '', '+02:00', '+03:00', ''),
('JE', '+4912-00207', 'Europe/Jersey', '', '+00:00', '+01:00', 'Link to Europe/London'),
('RU', '+5443+02030', 'Europe/Kaliningrad', 'Moscow-01 - Kaliningrad', '+03:00', '+03:00', ''),
('UA', '+5026+03031', 'Europe/Kiev', 'most locations', '+02:00', '+03:00', ''),
('PT', '+3843-00908', 'Europe/Lisbon', 'mainland', '+00:00', '+01:00', ''),
('SI', '+4603+01431', 'Europe/Ljubljana', '', '+01:00', '+02:00', 'Link to Europe/Belgrade'),
('GB', '+513030-0000731', 'Europe/London', '', '+00:00', '+01:00', ''),
('LU', '+4936+00609', 'Europe/Luxembourg', '', '+01:00', '+02:00', ''),
('ES', '+4024-00341', 'Europe/Madrid', 'mainland', '+01:00', '+02:00', ''),
('MT', '+3554+01431', 'Europe/Malta', '', '+01:00', '+02:00', ''),
('AX', '+6006+01957', 'Europe/Mariehamn', '', '+02:00', '+03:00', 'Link to Europe/Helsinki'),
('BY', '+5354+02734', 'Europe/Minsk', '', '+03:00', '+03:00', ''),
('MC', '+4342+00723', 'Europe/Monaco', '', '+01:00', '+02:00', ''),
('RU', '+5545+03735', 'Europe/Moscow', 'Moscow+00 - west Russia', '+04:00', '+04:00', ''),
('', '', 'Europe/Nicosia', '', '+02:00', '+03:00', 'Link to Asia/Nicosia'),
('NO', '+5955+01045', 'Europe/Oslo', '', '+01:00', '+02:00', ''),
('FR', '+4852+00220', 'Europe/Paris', '', '+01:00', '+02:00', ''),
('ME', '+4226+01916', 'Europe/Podgorica', '', '+01:00', '+02:00', 'Link to Europe/Belgrade'),
('CZ', '+5005+01426', 'Europe/Prague', '', '+01:00', '+02:00', ''),
('LV', '+5657+02406', 'Europe/Riga', '', '+02:00', '+03:00', ''),
('IT', '+4154+01229', 'Europe/Rome', '', '+01:00', '+02:00', ''),
('RU', '+5312+05009', 'Europe/Samara', 'Moscow+00 - Samara, Udmurtia', '+04:00', '+04:00', ''),
('SM', '+4355+01228', 'Europe/San_Marino', '', '+01:00', '+02:00', 'Link to Europe/Rome'),
('BA', '+4352+01825', 'Europe/Sarajevo', '', '+01:00', '+02:00', 'Link to Europe/Belgrade'),
('UA', '+4457+03406', 'Europe/Simferopol', 'central Crimea', '+02:00', '+03:00', ''),
('MK', '+4159+02126', 'Europe/Skopje', '', '+01:00', '+02:00', 'Link to Europe/Belgrade'),
('BG', '+4241+02319', 'Europe/Sofia', '', '+02:00', '+03:00', ''),
('SE', '+5920+01803', 'Europe/Stockholm', '', '+01:00', '+02:00', ''),
('EE', '+5925+02445', 'Europe/Tallinn', '', '+02:00', '+03:00', ''),
('AL', '+4120+01950', 'Europe/Tirane', '', '+01:00', '+02:00', ''),
('', '', 'Europe/Tiraspol', '', '+02:00', '+03:00', 'Link to Europe/Chisinau'),
('UA', '+4837+02218', 'Europe/Uzhgorod', 'Ruthenia', '+02:00', '+03:00', ''),
('LI', '+4709+00931', 'Europe/Vaduz', '', '+01:00', '+02:00', ''),
('VA', '+415408+0122711', 'Europe/Vatican', '', '+01:00', '+02:00', 'Link to Europe/Rome'),
('AT', '+4813+01620', 'Europe/Vienna', '', '+01:00', '+02:00', ''),
('LT', '+5441+02519', 'Europe/Vilnius', '', '+02:00', '+03:00', ''),
('RU', '+4844+04425', 'Europe/Volgograd', 'Moscow+00 - Caspian Sea', '+04:00', '+04:00', ''),
('PL', '+5215+02100', 'Europe/Warsaw', '', '+01:00', '+02:00', ''),
('HR', '+4548+01558', 'Europe/Zagreb', '', '+01:00', '+02:00', 'Link to Europe/Belgrade'),
('UA', '+4750+03510', 'Europe/Zaporozhye', 'Zaporozh\'ye, E Lugansk / Zaporizhia, E Luhansk', '+02:00', '+03:00', ''),
('CH', '+4723+00832', 'Europe/Zurich', '', '+01:00', '+02:00', ''),
('', '', 'GB', '', '+00:00', '+01:00', 'Link to Europe/London'),
('', '', 'GB-Eire', '', '+00:00', '+01:00', 'Link to Europe/London'),
('', '', 'GMT', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'GMT+0', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'GMT-0', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'GMT0', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Greenwich', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Hong Kong', '', '+08:00', '+08:00', 'Link to Asia/Hong_Kong'),
('', '', 'HST', '', '−10:00', '−10:00', ''),
('', '', 'Iceland', '', '+00:00', '+00:00', 'Link to Atlantic/Reykjavik'),
('MG', '-1855+04731', 'Indian/Antananarivo', '', '+03:00', '+03:00', ''),
('IO', '-0720+07225', 'Indian/Chagos', '', '+06:00', '+06:00', ''),
('CX', '-1025+10543', 'Indian/Christmas', '', '+07:00', '+07:00', ''),
('CC', '-1210+09655', 'Indian/Cocos', '', '+06:30', '+06:30', ''),
('KM', '-1141+04316', 'Indian/Comoro', '', '+03:00', '+03:00', ''),
('TF', '-492110+0701303', 'Indian/Kerguelen', '', '+05:00', '+05:00', ''),
('SC', '-0440+05528', 'Indian/Mahe', '', '+04:00', '+04:00', ''),
('MV', '+0410+07330', 'Indian/Maldives', '', '+05:00', '+05:00', ''),
('MU', '-2010+05730', 'Indian/Mauritius', '', '+04:00', '+04:00', ''),
('YT', '-1247+04514', 'Indian/Mayotte', '', '+03:00', '+03:00', ''),
('RE', '-2052+05528', 'Indian/Reunion', '', '+04:00', '+04:00', ''),
('', '', 'Iran', '', '+03:30', '+04:30', 'Link to Asia/Tehran'),
('', '', 'Israel', '', '+02:00', '+03:00', 'Link to Asia/Jerusalem'),
('', '', 'Jamaica', '', '−05:00', '−05:00', 'Link to America/Jamaica'),
('', '', 'Japan', '', '+09:00', '+09:00', 'Link to Asia/Tokyo'),
('', '', 'JST-9', '', '+09:00', '+09:00', 'Link to Asia/Tokyo'),
('', '', 'Kwajalein', '', '+12:00', '+12:00', 'Link to Pacific/Kwajalein'),
('', '', 'Libya', '', '+02:00', '+02:00', 'Link to Africa/Tripoli'),
('', '', 'MET', '', '+01:00', '+02:00', ''),
('', '', 'Mexico/BajaNorte', '', '−08:00', '−07:00', 'Link to America/Tijuana'),
('', '', 'Mexico/BajaSur', '', '−07:00', '−06:00', 'Link to America/Mazatlan'),
('', '', 'Mexico/General', '', '−06:00', '−05:00', 'Link to America/Mexico_City'),
('', '', 'MST', '', '−07:00', '−07:00', ''),
('', '', 'MST7MDT', '', '−07:00', '−06:00', ''),
('', '', 'Navajo', '', '−07:00', '−06:00', 'Link to America/Denver'),
('', '', 'NZ', '', '+12:00', '+13:00', 'Link to Pacific/Auckland'),
('', '', 'NZ-CHAT', '', '+12:45', '+13:45', 'Link to Pacific/Chatham'),
('WS', '-1350-17144', 'Pacific/Apia', '', '+13:00', '+14:00', ''),
('NZ', '-3652+17446', 'Pacific/Auckland', 'most locations', '+12:00', '+13:00', ''),
('NZ', '-4357-17633', 'Pacific/Chatham', 'Chatham Islands', '+12:45', '+13:45', ''),
('FM', '+0725+15147', 'Pacific/Chuuk', 'Chuuk (Truk) and Yap', '+10:00', '+10:00', ''),
('CL', '-2709-10926', 'Pacific/Easter', 'Easter Island & Sala y Gomez', '−06:00', '−05:00', ''),
('VU', '-1740+16825', 'Pacific/Efate', '', '+11:00', '+11:00', ''),
('KI', '-0308-17105', 'Pacific/Enderbury', 'Phoenix Islands', '+13:00', '+13:00', ''),
('TK', '-0922-17114', 'Pacific/Fakaofo', '', '+13:00', '+13:00', ''),
('FJ', '-1808+17825', 'Pacific/Fiji', '', '+12:00', '+13:00', ''),
('TV', '-0831+17913', 'Pacific/Funafuti', '', '+12:00', '+12:00', ''),
('EC', '-0054-08936', 'Pacific/Galapagos', 'Galapagos Islands', '−06:00', '−06:00', ''),
('PF', '-2308-13457', 'Pacific/Gambier', 'Gambier Islands', '−09:00', '−09:00', ''),
('SB', '-0932+16012', 'Pacific/Guadalcanal', '', '+11:00', '+11:00', ''),
('GU', '+1328+14445', 'Pacific/Guam', '', '+10:00', '+10:00', ''),
('US', '+211825-1575130', 'Pacific/Honolulu', 'Hawaii', '−10:00', '−10:00', ''),
('UM', '+1645-16931', 'Pacific/Johnston', 'Johnston Atoll', '−10:00', '−10:00', ''),
('KI', '+0152-15720', 'Pacific/Kiritimati', 'Line Islands', '+14:00', '+14:00', ''),
('FM', '+0519+16259', 'Pacific/Kosrae', 'Kosrae', '+11:00', '+11:00', ''),
('MH', '+0905+16720', 'Pacific/Kwajalein', 'Kwajalein', '+12:00', '+12:00', ''),
('MH', '+0709+17112', 'Pacific/Majuro', 'most locations', '+12:00', '+12:00', ''),
('PF', '-0900-13930', 'Pacific/Marquesas', 'Marquesas Islands', '−09:30', '−09:30', ''),
('UM', '+2813-17722', 'Pacific/Midway', 'Midway Islands', '−11:00', '−11:00', ''),
('NR', '-0031+16655', 'Pacific/Nauru', '', '+12:00', '+12:00', ''),
('NU', '-1901-16955', 'Pacific/Niue', '', '−11:00', '−11:00', ''),
('NF', '-2903+16758', 'Pacific/Norfolk', '', '+11:30', '+11:30', ''),
('NC', '-2216+16627', 'Pacific/Noumea', '', '+11:00', '+11:00', ''),
('AS', '-1416-17042', 'Pacific/Pago_Pago', '', '−11:00', '−11:00', ''),
('PW', '+0720+13429', 'Pacific/Palau', '', '+09:00', '+09:00', ''),
('PN', '-2504-13005', 'Pacific/Pitcairn', '', '−08:00', '−08:00', ''),
('FM', '+0658+15813', 'Pacific/Pohnpei', 'Pohnpei (Ponape)', '+11:00', '+11:00', ''),
('', '', 'Pacific/Ponape', '', '+11:00', '+11:00', 'Link to Pacific/Pohnpei'),
('PG', '-0930+14710', 'Pacific/Port_Moresby', '', '+10:00', '+10:00', ''),
('CK', '-2114-15946', 'Pacific/Rarotonga', '', '−10:00', '−10:00', ''),
('MP', '+1512+14545', 'Pacific/Saipan', '', '+10:00', '+10:00', ''),
('', '', 'Pacific/Samoa', '', '−11:00', '−11:00', 'Link to Pacific/Pago_Pago'),
('PF', '-1732-14934', 'Pacific/Tahiti', 'Society Islands', '−10:00', '−10:00', ''),
('KI', '+0125+17300', 'Pacific/Tarawa', 'Gilbert Islands', '+12:00', '+12:00', ''),
('TO', '-2110-17510', 'Pacific/Tongatapu', '', '+13:00', '+13:00', ''),
('', '', 'Pacific/Truk', '', '+10:00', '+10:00', 'Link to Pacific/Chuuk'),
('UM', '+1917+16637', 'Pacific/Wake', 'Wake Island', '+12:00', '+12:00', ''),
('WF', '-1318-17610', 'Pacific/Wallis', '', '+12:00', '+12:00', ''),
('', '', 'Pacific/Yap', '', '+10:00', '+10:00', 'Link to Pacific/Chuuk'),
('', '', 'Poland', '', '+01:00', '+02:00', 'Link to Europe/Warsaw'),
('', '', 'Portugal', '', '+00:00', '+01:00', 'Link to Europe/Lisbon'),
('', '', 'PRC', '', '+08:00', '+08:00', 'Link to Asia/Shanghai'),
('', '', 'PST8PDT', '', '−08:00', '−07:00', ''),
('', '', 'ROC', '', '+08:00', '+08:00', 'Link to Asia/Taipei'),
('', '', 'ROK', '', '+09:00', '+09:00', 'Link to Asia/Seoul'),
('', '', 'Singapore', '', '+08:00', '+08:00', 'Link to Asia/Singapore'),
('', '', 'Turkey', '', '+02:00', '+03:00', 'Link to Europe/Istanbul'),
('', '', 'UCT', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Universal', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'US/Alaska', '', '−09:00', '−08:00', 'Link to America/Anchorage'),
('', '', 'US/Aleutian', '', '−10:00', '−09:00', 'Link to America/Adak'),
('', '', 'US/Arizona', '', '−07:00', '−07:00', 'Link to America/Phoenix'),
('', '', 'US/Central', '', '−06:00', '−05:00', 'Link to America/Chicago'),
('', '', 'US/East-Indiana', '', '−05:00', '−04:00', 'Link to America/Indiana/Indianapolis'),
('', '', 'US/Eastern', '', '−05:00', '−04:00', 'Link to America/New_York'),
('', '', 'US/Hawaii', '', '−10:00', '−10:00', 'Link to Pacific/Honolulu'),
('', '', 'US/Indiana-Starke', '', '−06:00', '−05:00', 'Link to America/Indiana/Knox'),
('', '', 'US/Michigan', '', '−05:00', '−04:00', 'Link to America/Detroit'),
('', '', 'US/Mountain', '', '−07:00', '−06:00', 'Link to America/Denver'),
('', '', 'US/Pacific', '', '−08:00', '−07:00', 'Link to America/Los_Angeles'),
('', '', 'US/Pacific-New', '', '−08:00', '−07:00', 'Link to America/Los_Angeles'),
('', '', 'US/Samoa', '', '−11:00', '−11:00', 'Link to Pacific/Pago_Pago'),
('', '', 'UTC', '', '+00:00', '+00:00', ''),
('', '', 'W-SU', '', '+04:00', '+04:00', 'Link to Europe/Moscow'),
('', '', 'WET', '', '+00:00', '+01:00', ''),
('', '', 'Zulu', '', '+00:00', '+00:00', 'Link to UTC');

-- --------------------------------------------------------

--
-- Table structure for table `vbs_cost_type_values`
--

CREATE TABLE `vbs_cost_type_values` (
  `id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL DEFAULT '0',
  `type` enum('flat','incremental') NOT NULL DEFAULT 'flat',
  `day_flat_rate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `night_flat_rate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `from_distance_value` int(11) NOT NULL DEFAULT '0',
  `to_distance_value` int(11) NOT NULL DEFAULT '0',
  `day_cost` decimal(10,2) NOT NULL DEFAULT '0.00',
  `night_cost` decimal(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vbs_cost_type_values`
--

INSERT INTO `vbs_cost_type_values` (`id`, `vehicle_id`, `type`, `day_flat_rate`, `night_flat_rate`, `from_distance_value`, `to_distance_value`, `day_cost`, `night_cost`) VALUES
(99, 12, 'flat', '10.00', '20.00', 0, 0, '0.00', '0.00'),
(128, 5, 'flat', '80.00', '90.00', 0, 0, '0.00', '0.00'),
(140, 8, 'incremental', '0.00', '0.00', 30, 100, '130.00', '160.00'),
(142, 9, 'flat', '10.00', '12.00', 0, 0, '0.00', '0.00'),
(146, 11, 'flat', '10.00', '20.00', 0, 0, '0.00', '0.00'),
(148, 1, 'flat', '10.00', '12.00', 0, 0, '0.00', '0.00'),
(151, 7, 'flat', '90.00', '130.00', 0, 0, '0.00', '0.00'),
(152, 2, 'flat', '4.00', '4.00', 0, 0, '0.00', '0.00'),
(153, 4, 'flat', '7.00', '7.00', 0, 0, '0.00', '0.00'),
(154, 3, 'flat', '25.00', '25.00', 0, 0, '0.00', '0.00'),
(155, 10, 'flat', '9.00', '10.00', 0, 0, '0.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `vbs_country`
--

CREATE TABLE `vbs_country` (
  `country_code_alpha2` char(2) NOT NULL,
  `country_code_alpha3` char(3) NOT NULL,
  `country_code_numeric` varchar(3) NOT NULL,
  `country_name` varchar(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vbs_country`
--

INSERT INTO `vbs_country` (`country_code_alpha2`, `country_code_alpha3`, `country_code_numeric`, `country_name`) VALUES
('ao', 'ago', '024', 'Angola'),
('ai', 'aia', '660', 'Anguilla'),
('aq', 'ata', '010', 'Antarctica'),
('ag', 'atg', '028', 'Antigua and Barbuda'),
('ar', 'arg', '032', 'Argentina'),
('am', 'arm', '051', 'Armenia'),
('aw', 'abw', '533', 'Aruba'),
('au', 'aus', '036', 'Australia'),
('at', 'aut', '040', 'Austria'),
('az', 'aze', '031', 'Azerbaijan'),
('bs', 'bhs', '044', 'Bahamas'),
('bh', 'bhr', '048', 'Bahrain'),
('bd', 'bgd', '050', 'Bangladesh'),
('bb', 'brb', '052', 'Barbados'),
('by', 'blr', '112', 'Belarus'),
('be', 'bel', '056', 'Belgium'),
('bz', 'blz', '084', 'Belize'),
('bj', 'ben', '204', 'Benin'),
('bm', 'bmu', '060', 'Bermuda'),
('bt', 'btn', '064', 'Bhutan'),
('bo', 'bol', '068', 'Bolivia, Plurinational State of'),
('ba', 'bih', '070', 'Bosnia and Herzegovina'),
('bw', 'bwa', '072', 'Botswana'),
('bv', 'bvt', '074', 'Bouvet Island'),
('br', 'bra', '076', 'Brazil'),
('io', 'iot', '086', 'British Indian Ocean Territory'),
('bn', 'brn', '096', 'Brunei Darussalam'),
('bg', 'bgr', '100', 'Bulgaria'),
('bf', 'bfa', '854', 'Burkina Faso'),
('bi', 'bdi', '108', 'Burundi'),
('kh', 'khm', '116', 'Cambodia'),
('cm', 'cmr', '120', 'Cameroon'),
('ca', 'can', '124', 'Canada'),
('cv', 'cpv', '132', 'Cape Verde'),
('ky', 'cym', '136', 'Cayman Islands'),
('cf', 'caf', '140', 'Central African Republic'),
('td', 'tcd', '148', 'Chad'),
('cl', 'chl', '152', 'Chile'),
('cn', 'chn', '156', 'China'),
('cx', 'cxr', '162', 'Christmas Island'),
('cc', 'cck', '166', 'Cocos (Keeling) Islands'),
('co', 'col', '170', 'Colombia'),
('km', 'com', '174', 'Comoros'),
('cg', 'cog', '178', 'Congo'),
('cd', 'cod', '180', 'Congo, the Democratic Republic of the'),
('ck', 'cok', '184', 'Cook Islands'),
('cr', 'cri', '188', 'Costa Rica'),
('ci', 'civ', '384', 'Côte d\'Ivoire'),
('hr', 'hrv', '191', 'Croatia'),
('cu', 'cub', '192', 'Cuba'),
('cy', 'cyp', '196', 'Cyprus'),
('cz', 'cze', '203', 'Czech Republic'),
('dk', 'dnk', '208', 'Denmark'),
('dj', 'dji', '262', 'Djibouti'),
('dm', 'dma', '212', 'Dominica'),
('do', 'dom', '214', 'Dominican Republic'),
('ec', 'ecu', '218', 'Ecuador'),
('eg', 'egy', '818', 'Egypt'),
('sv', 'slv', '222', 'El Salvador'),
('gq', 'gnq', '226', 'Equatorial Guinea'),
('er', 'eri', '232', 'Eritrea'),
('ee', 'est', '233', 'Estonia'),
('et', 'eth', '231', 'Ethiopia'),
('fk', 'flk', '238', 'Falkland Islands (Malvinas)'),
('fo', 'fro', '234', 'Faroe Islands'),
('fj', 'fji', '242', 'Fiji'),
('fi', 'fin', '246', 'Finland'),
('fr', 'fra', '250', 'France'),
('gf', 'guf', '254', 'French Guiana'),
('pf', 'pyf', '258', 'French Polynesia'),
('tf', 'atf', '260', 'French Southern Territories'),
('ga', 'gab', '266', 'Gabon'),
('gm', 'gmb', '270', 'Gambia'),
('ge', 'geo', '268', 'Georgia'),
('de', 'deu', '276', 'Germany'),
('gh', 'gha', '288', 'Ghana'),
('gi', 'gib', '292', 'Gibraltar'),
('gr', 'grc', '300', 'Greece'),
('gl', 'grl', '304', 'Greenland'),
('gd', 'grd', '308', 'Grenada'),
('gp', 'glp', '312', 'Guadeloupe'),
('gu', 'gum', '316', 'Guam'),
('gt', 'gtm', '320', 'Guatemala'),
('gg', 'ggy', '831', 'Guernsey'),
('gn', 'gin', '324', 'Guinea'),
('gw', 'gnb', '624', 'Guinea-Bissau'),
('gy', 'guy', '328', 'Guyana'),
('ht', 'hti', '332', 'Haiti'),
('hm', 'hmd', '334', 'Heard Island and McDonald Islands'),
('va', 'vat', '336', 'Holy See (Vatican City State)'),
('hn', 'hnd', '340', 'Honduras'),
('hk', 'hkg', '344', 'Hong Kong'),
('hu', 'hun', '348', 'Hungary'),
('is', 'isl', '352', 'Iceland'),
('in', 'ind', '356', 'India'),
('id', 'idn', '360', 'Indonesia'),
('ir', 'irn', '364', 'Iran, Islamic Republic of'),
('iq', 'irq', '368', 'Iraq'),
('ie', 'irl', '372', 'Ireland'),
('im', 'imn', '833', 'Isle of Man'),
('il', 'isr', '376', 'Israel'),
('it', 'ita', '380', 'Italy'),
('jm', 'jam', '388', 'Jamaica'),
('jp', 'jpn', '392', 'Japan'),
('je', 'jey', '832', 'Jersey'),
('jo', 'jor', '400', 'Jordan'),
('kz', 'kaz', '398', 'Kazakhstan'),
('ke', 'ken', '404', 'Kenya'),
('ki', 'kir', '296', 'Kiribati'),
('kp', 'prk', '408', 'Korea, Democratic People\'s Republic of'),
('kr', 'kor', '410', 'Korea, Republic of'),
('kw', 'kwt', '414', 'Kuwait'),
('kg', 'kgz', '417', 'Kyrgyzstan'),
('la', 'lao', '418', 'Lao People\'s Democratic Republic'),
('lv', 'lva', '428', 'Latvia'),
('lb', 'lbn', '422', 'Lebanon'),
('ls', 'lso', '426', 'Lesotho'),
('lr', 'lbr', '430', 'Liberia'),
('ly', 'lby', '434', 'Libyan Arab Jamahiriya'),
('li', 'lie', '438', 'Liechtenstein'),
('lt', 'ltu', '440', 'Lithuania'),
('lu', 'lux', '442', 'Luxembourg'),
('mo', 'mac', '446', 'Macao'),
('mk', 'mkd', '807', 'Macedonia, the former Yugoslav Republic of'),
('mg', 'mdg', '450', 'Madagascar'),
('mw', 'mwi', '454', 'Malawi'),
('my', 'mys', '458', 'Malaysia'),
('mv', 'mdv', '462', 'Maldives'),
('ml', 'mli', '466', 'Mali'),
('mt', 'mlt', '470', 'Malta'),
('mh', 'mhl', '584', 'Marshall Islands'),
('mq', 'mtq', '474', 'Martinique'),
('mr', 'mrt', '478', 'Mauritania'),
('mu', 'mus', '480', 'Mauritius'),
('yt', 'myt', '175', 'Mayotte'),
('mx', 'mex', '484', 'Mexico'),
('fm', 'fsm', '583', 'Micronesia, Federated States of'),
('md', 'mda', '498', 'Moldova, Republic of'),
('mc', 'mco', '492', 'Monaco'),
('mn', 'mng', '496', 'Mongolia'),
('me', 'mne', '499', 'Montenegro'),
('ms', 'msr', '500', 'Montserrat'),
('ma', 'mar', '504', 'Morocco'),
('mz', 'moz', '508', 'Mozambique'),
('mm', 'mmr', '104', 'Myanmar'),
('na', 'nam', '516', 'Namibia'),
('nr', 'nru', '520', 'Nauru'),
('np', 'npl', '524', 'Nepal'),
('nl', 'nld', '528', 'Netherlands'),
('an', 'ant', '530', 'Netherlands Antilles'),
('nc', 'ncl', '540', 'New Caledonia'),
('nz', 'nzl', '554', 'New Zealand'),
('ni', 'nic', '558', 'Nicaragua'),
('ne', 'ner', '562', 'Niger'),
('ng', 'nga', '566', 'Nigeria'),
('nu', 'niu', '570', 'Niue'),
('nf', 'nfk', '574', 'Norfolk Island'),
('mp', 'mnp', '580', 'Northern Mariana Islands'),
('no', 'nor', '578', 'Norway'),
('om', 'omn', '512', 'Oman'),
('pk', 'pak', '586', 'Pakistan'),
('pw', 'plw', '585', 'Palau'),
('ps', 'pse', '275', 'Palestinian Territory, Occupied'),
('pa', 'pan', '591', 'Panama'),
('pg', 'png', '598', 'Papua New Guinea'),
('py', 'pry', '600', 'Paraguay'),
('pe', 'per', '604', 'Peru'),
('ph', 'phl', '608', 'Philippines'),
('pn', 'pcn', '612', 'Pitcairn'),
('pl', 'pol', '616', 'Poland'),
('pt', 'prt', '620', 'Portugal'),
('pr', 'pri', '630', 'Puerto Rico'),
('qa', 'qat', '634', 'Qatar'),
('re', 'reu', '638', 'Réunion'),
('ro', 'rou', '642', 'Romania'),
('ru', 'rus', '643', 'Russian Federation'),
('rw', 'rwa', '646', 'Rwanda'),
('bl', 'blm', '652', 'Saint Barthélemy'),
('sh', 'shn', '654', 'Saint Helena'),
('kn', 'kna', '659', 'Saint Kitts and Nevis'),
('lc', 'lca', '662', 'Saint Lucia'),
('mf', 'maf', '663', 'Saint Martin (French part)'),
('pm', 'spm', '666', 'Saint Pierre and Miquelon'),
('vc', 'vct', '670', 'Saint Vincent and the Grenadines'),
('ws', 'wsm', '882', 'Samoa'),
('sm', 'smr', '674', 'San Marino'),
('st', 'stp', '678', 'Sao Tome and Principe'),
('sa', 'sau', '682', 'Saudi Arabia'),
('sn', 'sen', '686', 'Senegal'),
('rs', 'srb', '688', 'Serbia'),
('sc', 'syc', '690', 'Seychelles'),
('sl', 'sle', '694', 'Sierra Leone'),
('sg', 'sgp', '702', 'Singapore'),
('sk', 'svk', '703', 'Slovakia'),
('si', 'svn', '705', 'Slovenia'),
('sb', 'slb', '090', 'Solomon Islands'),
('so', 'som', '706', 'Somalia'),
('za', 'zaf', '710', 'South Africa'),
('gs', 'sgs', '239', 'South Georgia and the South Sandwich Islands'),
('es', 'esp', '724', 'Spain'),
('lk', 'lka', '144', 'Sri Lanka'),
('sd', 'sdn', '736', 'Sudan'),
('sr', 'sur', '740', 'Suriname'),
('sj', 'sjm', '744', 'Svalbard and Jan Mayen'),
('sz', 'swz', '748', 'Swaziland'),
('se', 'swe', '752', 'Sweden'),
('ch', 'che', '756', 'Switzerland'),
('sy', 'syr', '760', 'Syrian Arab Republic'),
('tw', 'twn', '158', 'Taiwan, Province of China'),
('tj', 'tjk', '762', 'Tajikistan'),
('tz', 'tza', '834', 'Tanzania, United Republic of'),
('th', 'tha', '764', 'Thailand'),
('tl', 'tls', '626', 'Timor-Leste'),
('tg', 'tgo', '768', 'Togo'),
('tk', 'tkl', '772', 'Tokelau'),
('to', 'ton', '776', 'Tonga'),
('tt', 'tto', '780', 'Trinidad and Tobago'),
('tn', 'tun', '788', 'Tunisia'),
('tr', 'tur', '792', 'Turkey'),
('tm', 'tkm', '795', 'Turkmenistan'),
('tc', 'tca', '796', 'Turks and Caicos Islands'),
('tv', 'tuv', '798', 'Tuvalu'),
('ug', 'uga', '800', 'Uganda'),
('ua', 'ukr', '804', 'Ukraine'),
('ae', 'are', '784', 'United Arab Emirates'),
('gb', 'gbr', '826', 'United Kingdom'),
('us', 'usa', '840', 'United States'),
('um', 'umi', '581', 'United States Minor Outlying Islands'),
('uy', 'ury', '858', 'Uruguay'),
('uz', 'uzb', '860', 'Uzbekistan'),
('vu', 'vut', '548', 'Vanuatu'),
('ve', 'ven', '862', 'Venezuela, Bolivarian Republic of'),
('vn', 'vnm', '704', 'Viet Nam'),
('vg', 'vgb', '092', 'Virgin Islands, British'),
('vi', 'vir', '850', 'Virgin Islands, U.S.'),
('wf', 'wlf', '876', 'Wallis and Futuna'),
('eh', 'esh', '732', 'Western Sahara'),
('ye', 'yem', '887', 'Yemen'),
('zm', 'zmb', '894', 'Zambia'),
('zw', 'zwe', '716', 'Zimbabwe'),
('af', 'afg', '004', 'Afghanistan'),
('ax', 'ala', '248', 'Åland Islands'),
('al', 'alb', '008', 'Albania'),
('dz', 'dza', '012', 'Algeria'),
('as', 'asm', '016', 'American Samoa'),
('ad', 'and', '020', 'Andorra');

-- --------------------------------------------------------

--
-- Table structure for table `vbs_coupons`
--

CREATE TABLE `vbs_coupons` (
  `coupon_id` int(11) NOT NULL,
  `coupon_title` varchar(100) DEFAULT NULL,
  `coupon_code` varchar(20) DEFAULT NULL,
  `discount_amount` float(10,2) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vbs_coupons`
--

INSERT INTO `vbs_coupons` (`coupon_id`, `coupon_title`, `coupon_code`, `discount_amount`, `from_date`, `to_date`, `created`, `updated`, `status`) VALUES
(1, ' COUPON', 'CP079', 30.00, '2017-11-18', '2019-06-27', '2017-11-18 16:10:23', '2017-11-18 16:58:14', 'Active'),
(2, 'Christmas Coupon', 'CH123', 100.00, '2017-11-18', '2019-07-19', '2017-11-18 08:21:39', NULL, 'Active'),
(3, 'Newyear Coupon', 'NY123', 75.00, '2017-11-18', '2019-08-14', '2017-11-18 08:24:04', NULL, 'Active'),
(4, 'Discount Coupon', 'DC123', 100.00, '2017-11-18', '2019-09-19', '2017-11-18 08:26:06', NULL, 'Active'),
(5, 'Weekend Coupon', 'WC123', 40.00, '2017-11-18', '2019-07-12', '2017-11-18 08:28:03', NULL, 'Active'),
(6, 'Demo Coupon', 'DM123', 130.00, '2017-11-18', '2019-11-08', '2017-11-18 08:29:37', NULL, 'Active'),
(8, 'special coupon', 'Book@50', 20.00, '2019-03-16', '2019-07-19', NULL, NULL, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `vbs_currency`
--

CREATE TABLE `vbs_currency` (
  `currency_code_alpha` char(3) NOT NULL,
  `currency_code_numeric` varchar(3) DEFAULT NULL,
  `currency_name` varchar(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `vbs_currency`
--

INSERT INTO `vbs_currency` (`currency_code_alpha`, `currency_code_numeric`, `currency_name`) VALUES
('AFN', '971', 'Afghani'),
('DZD', '12', 'Algerian Dinar'),
('ARS', '32', 'Argentine Peso'),
('AMD', '51', 'Armenian Dram'),
('AWG', '533', 'Aruban Guilder'),
('AUD', '36', 'Australian Dollar'),
('AZN', '944', 'Azerbaijanian Manat'),
('BSD', '44', 'Bahamian Dollar'),
('BHD', '48', 'Bahraini Dinar'),
('THB', '764', 'Baht'),
('PAB', '590', 'Balboa'),
('BBD', '52', 'Barbados Dollar'),
('BYR', '974', 'Belarussian Ruble'),
('BZD', '84', 'Belize Dollar'),
('BMD', '60', 'Bermudian Dollar (customarily known as Bermuda Dollar)'),
('VEF', '937', 'Bolivar Fuerte'),
('BOB', '68', 'Boliviano'),
('XBA', '955', 'Bond Markets Units European Composite Unit (EURCO)'),
('BRL', '986', 'Brazilian Real'),
('BND', '96', 'Brunei Dollar'),
('BGN', '975', 'Bulgarian Lev'),
('BIF', '108', 'Burundi Franc'),
('CAD', '124', 'Canadian Dollar'),
('CVE', '132', 'Cape Verde Escudo'),
('KYD', '136', 'Cayman Islands Dollar'),
('GHS', '936', 'Cedi'),
('XOF', '952', 'CFA Franc BCEAO'),
('XAF', '950', 'CFA Franc BEAC'),
('XPF', '953', 'CFP Franc'),
('CLP', '152', 'Chilean Peso'),
('XTS', '963', 'Codes specifically reserved for testing purposes'),
('COP', '170', 'Colombian Peso'),
('KMF', '174', 'Comoro Franc'),
('CDF', '976', 'Congolese Franc'),
('BAM', '977', 'Convertible Marks'),
('NIO', '558', 'Cordoba Oro'),
('CRC', '188', 'Costa Rican Colon'),
('HRK', '191', 'Croatian Kuna'),
('CUP', '192', 'Cuban Peso'),
('CZK', '203', 'Czech Koruna'),
('GMD', '270', 'Dalasi'),
('DKK', '208', 'Danish Krone'),
('MKD', '807', 'Denar'),
('DJF', '262', 'Djibouti Franc'),
('STD', '678', 'Dobra'),
('DOP', '214', 'Dominican Peso'),
('VND', '704', 'Dong'),
('XCD', '951', 'East Caribbean Dollar'),
('EGP', '818', 'Egyptian Pound'),
('SVC', '222', 'El Salvador Colon'),
('ETB', '230', 'Ethiopian Birr'),
('EUR', '978', 'Euro'),
('XBB', '956', 'European Monetary Unit (E.M.U.-6)'),
('XBD', '958', 'European Unit of Account 17 (E.U.A.-17)'),
('XBC', '957', 'European Unit of Account 9 (E.U.A.-9)'),
('FKP', '238', 'Falkland Islands Pound'),
('FJD', '242', 'Fiji Dollar'),
('HUF', '348', 'Forint'),
('GIP', '292', 'Gibraltar Pound'),
('XAU', '959', 'Gold'),
('HTG', '332', 'Gourde'),
('PYG', '600', 'Guarani'),
('GNF', '324', 'Guinea Franc'),
('GWP', '624', 'Guinea-Bissau Peso'),
('GYD', '328', 'Guyana Dollar'),
('HKD', '344', 'Hong Kong Dollar'),
('UAH', '980', 'Hryvnia'),
('ISK', '352', 'Iceland Krona'),
('INR', '356', 'Indian Rupee'),
('IRR', '364', 'Iranian Rial'),
('IQD', '368', 'Iraqi Dinar'),
('JMD', '388', 'Jamaican Dollar'),
('JOD', '400', 'Jordanian Dinar'),
('KES', '404', 'Kenyan Shilling'),
('PGK', '598', 'Kina'),
('LAK', '418', 'Kip'),
('EEK', '233', 'Kroon'),
('KWD', '414', 'Kuwaiti Dinar'),
('MWK', '454', 'Kwacha'),
('AOA', '973', 'Kwanza'),
('MMK', '104', 'Kyat'),
('GEL', '981', 'Lari'),
('LVL', '428', 'Latvian Lats'),
('LBP', '422', 'Lebanese Pound'),
('ALL', '8', 'Lek'),
('HNL', '340', 'Lempira'),
('SLL', '694', 'Leone'),
('LRD', '430', 'Liberian Dollar'),
('LYD', '434', 'Libyan Dinar'),
('SZL', '748', 'Lilangeni'),
('LTL', '440', 'Lithuanian Litas'),
('LSL', '426', 'Loti'),
('MGA', '969', 'Malagasy Ariary'),
('MYR', '458', 'Malaysian Ringgit'),
('TMT', '934', 'Manat'),
('MUR', '480', 'Mauritius Rupee'),
('MZN', '943', 'Metical'),
('MXN', '484', 'Mexican Peso'),
('MXV', '979', 'Mexican Unidad de Inversion (UDI)'),
('MDL', '498', 'Moldovan Leu'),
('MAD', '504', 'Moroccan Dirham'),
('BOV', '984', 'Mvdol'),
('NGN', '566', 'Naira'),
('ERN', '232', 'Nakfa'),
('NAD', '516', 'Namibia Dollar'),
('NPR', '524', 'Nepalese Rupee'),
('ANG', '532', 'Netherlands Antillian Guilder'),
('ILS', '376', 'New Israeli Sheqel'),
('RON', '946', 'New Leu'),
('TWD', '901', 'New Taiwan Dollar'),
('NZD', '554', 'New Zealand Dollar'),
('BTN', '64', 'Ngultrum'),
('KPW', '408', 'North Korean Won'),
('NOK', '578', 'Norwegian Krone'),
('PEN', '604', 'Nuevo Sol'),
('MRO', '478', 'Ouguiya'),
('TOP', '776', 'Pa\'anga'),
('PKR', '586', 'Pakistan Rupee'),
('XPD', '964', 'Palladium'),
('MOP', '446', 'Pataca'),
('CUC', '931', 'Peso Convertible'),
('UYU', '858', 'Peso Uruguayo'),
('PHP', '608', 'Philippine Peso'),
('XPT', '962', 'Platinum'),
('GBP', '826', 'Pound Sterling'),
('BWP', '72', 'Pula'),
('QAR', '634', 'Qatari Rial'),
('GTQ', '320', 'Quetzal'),
('ZAR', '710', 'Rand'),
('OMR', '512', 'Rial Omani'),
('KHR', '116', 'Riel'),
('MVR', '462', 'Rufiyaa'),
('IDR', '360', 'Rupiah'),
('RUB', '643', 'Russian Ruble'),
('RWF', '646', 'Rwanda Franc'),
('SHP', '654', 'Saint Helena Pound'),
('SAR', '682', 'Saudi Riyal'),
('XDR', '960', 'SDR'),
('RSD', '941', 'Serbian Dinar'),
('SCR', '690', 'Seychelles Rupee'),
('XAG', '961', 'Silver'),
('SGD', '702', 'Singapore Dollar'),
('SBD', '90', 'Solomon Islands Dollar'),
('KGS', '417', 'Som'),
('SOS', '706', 'Somali Shilling'),
('TJS', '972', 'Somoni'),
('LKR', '144', 'Sri Lanka Rupee'),
('SDG', '938', 'Sudanese Pound'),
('SRD', '968', 'Surinam Dollar'),
('SEK', '752', 'Swedish Krona'),
('CHF', '756', 'Swiss Franc'),
('SYP', '760', 'Syrian Pound'),
('BDT', '50', 'Taka'),
('WST', '882', 'Tala'),
('TZS', '834', 'Tanzanian Shilling'),
('KZT', '398', 'Tenge'),
('XXX', '999', 'Codes assigned for transactions where no currency is involved'),
('TTD', '780', 'Trinidad and Tobago Dollar'),
('MNT', '496', 'Tugrik'),
('TND', '788', 'Tunisian Dinar'),
('TRY', '949', 'Turkish Lira'),
('AED', '784', 'UAE Dirham'),
('UGX', '800', 'Uganda Shilling'),
('XFU', NULL, 'UIC-Franc'),
('COU', '970', 'Unidad de Valor Real'),
('CLF', '990', 'Unidades de fomento'),
('UYI', '940', 'Uruguay Peso en Unidades Indexadas'),
('USD', '840', 'US Dollar'),
('USN', '997', 'US Dollar (Next day)'),
('USS', '998', 'US Dollar (Same day)'),
('UZS', '860', 'Uzbekistan Sum'),
('VUV', '548', 'Vatu'),
('CHE', '947', 'WIR Euro'),
('CHW', '948', 'WIR Franc'),
('KRW', '410', 'Won'),
('YER', '886', 'Yemeni Rial'),
('JPY', '392', 'Yen'),
('CNY', '156', 'Yuan Renminbi'),
('ZMK', '894', 'Zambian Kwacha'),
('ZWL', '932', 'Zimbabwe Dollar'),
('PLN', '985', 'Zloty');

-- --------------------------------------------------------

--
-- Table structure for table `vbs_drivers`
--

CREATE TABLE `vbs_drivers` (
  `id` int(11) NOT NULL,
  `photo` varchar(512) NOT NULL,
  `name` varchar(512) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vbs_email_settings`
--

CREATE TABLE `vbs_email_settings` (
  `id` int(11) NOT NULL,
  `smtp_host` varchar(512) CHARACTER SET utf8 NOT NULL,
  `smtp_port` int(11) NOT NULL,
  `smtp_user` varchar(512) CHARACTER SET utf8 NOT NULL,
  `smtp_password` varchar(512) CHARACTER SET utf8 NOT NULL,
  `api_key` varchar(512) CHARACTER SET utf8 NOT NULL,
  `mail_config` enum('webmail','mandrill') CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vbs_email_settings`
--

INSERT INTO `vbs_email_settings` (`id`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_password`, `api_key`, `mail_config`) VALUES
(1, '103.21.58.66', 587, 'trainee@creativewerkdesigns.com', '@trainee2019', 'Mandrill API Key', 'webmail');

-- --------------------------------------------------------

--
-- Table structure for table `vbs_email_templates`
--

CREATE TABLE `vbs_email_templates` (
  `id` int(11) UNSIGNED NOT NULL,
  `subject` varchar(512) NOT NULL,
  `email_template` varchar(10000) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vbs_email_templates`
--

INSERT INTO `vbs_email_templates` (`id`, `subject`, `email_template`, `status`) VALUES
(7, 'user_registration', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__SITE_LOGO__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Welcome to __SITE_TITLE__ </strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dear <strong>__USER__NAME__</strong>,&nbsp;</p>\r\n\r\n<p>You have successfully Registered in&nbsp;<strong>__SITE_TITLE__</strong></p>\r\n\r\n<p><strong>Your credentials</strong></p>\r\n\r\n<p>Email<strong>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;__EMAIL__</strong></p>\r\n\r\n<p>Password<strong>&nbsp; __PASSWORD__</strong></p>\r\n\r\n<p>We are really excited that you decide to try our services,welcome and thank you for the trust!!</p>\r\n\r\n<p>Please click this link for <strong>__ACCOUNT_ACTIVATOIN_LINK__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Regards,</strong>&nbsp;<br />\r\n<br />\r\n<strong>__SITE_TITLE__</strong> | &nbsp;Booking Invoice Manager</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Active'),
(8, 'fb_google_registration_template', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__SITE_LOGO__</strong> &nbsp; &nbsp;</p>\r\n\r\n<h2><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Welcome&nbsp;to&nbsp;__SITE_TITLE__</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Dear __USER_NAME__&nbsp;,</strong></p>\r\n\r\n<p>You have Successfully Registered in <strong>__SITE_TITLE__</strong></p>\r\n\r\n<p>Email &nbsp; &nbsp; &nbsp;: &nbsp;<strong>__EMAIL__</strong></p>\r\n\r\n<p>Password : <strong>__PASSWORD__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;</p>\r\n\r\n<p><strong>Regards,</strong></p>\r\n\r\n<p><strong>__SITE_TITLE__</strong>&nbsp;| Booking Invoice Manager</p>\r\n', 'Active'),
(57, 'when_user_done_booking_template_mail_to_user', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__SITE_LOGO__</strong></p>\r\n\r\n<h2><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Welcome&nbsp;to&nbsp;__SITE_TITLE__ </strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dear <strong>__USER_NAME__</strong>,&nbsp;</p>\r\n\r\n<p>You have successfully Booked vehicle in&nbsp;<strong>__SITE_TITLE__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>DETAILS</strong></p>\r\n\r\n<p>Booking Reference Number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__BOOKING_REF_NO__</strong></p>\r\n\r\n<p>Pick-Point&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__PICK_POINT__</strong></p>\r\n\r\n<p>Drop-Point&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__DROP_POINT__</strong></p>\r\n\r\n<p>Pick Date &amp; Time&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__DATE_TIME__</strong></p>\r\n\r\n<p>Return Journey Required&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__RETURN_JOURNEY__</strong></p>\r\n\r\n<p>Waiting Time &amp; Cost &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__WAITING_TIME__</strong></p>\r\n\r\n<p>Journey K.m./ Miles &amp; Time&nbsp;&nbsp; <strong>__MILES_TIME__</strong></p>\r\n\r\n<p>Car Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__CAR_TYPE__</strong></p>\r\n\r\n<p>Payment Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__PAYMENT_TYPE__</strong></p>\r\n\r\n<p>Amount&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__AMOUNT__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Message to Driver&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__DRIVER_MSG__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are really excited that you decide to try our services,welcome and thank you for the trust!!</p>\r\n\r\n<p>For any assistance or questions&nbsp;feel free to contact us at <strong>__CONTACT_US__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp;</p>\r\n\r\n<p><strong>Regards,</strong><br />\r\n<strong>__SITE_TITLE__</strong> | Booking Invoice Manager</p>\r\n', 'Active'),
(58, 'when_user_done_booking_template_mail_to_admin', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__SITE_LOGO__</strong></p>\r\n\r\n<h2><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Welcome&nbsp;to __SITE_TITLE__ </strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hello Dear Admin,&nbsp;</p>\r\n\r\n<p><strong>__USER_NAME__&nbsp;</strong>has&nbsp;successfully Booked vehicle</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>USER DETAILS</strong></p>\r\n\r\n<p>Name &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__USER_NAME__</strong></p>\r\n\r\n<p>Email &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__EMAIL__</strong></p>\r\n\r\n<p>Phone &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__PHONE__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>BOOKING DETAILS</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Booking Reference Number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__BOOKING_REF_NO__</strong></p>\r\n\r\n<p>Pick-Point&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__PICK_POINT__</strong></p>\r\n\r\n<p>Drop-Point&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__DROP_POINT__</strong></p>\r\n\r\n<p>Pick Date &amp; Time&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__DATE_TIME__</strong></p>\r\n\r\n<p>Return Journey Required&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__RETURN_JOURNEY__</strong></p>\r\n\r\n<p>Waiting Time &amp; Cost &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__WAITING_TIME__</strong></p>\r\n\r\n<p>Journey Miles &amp; Time&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__MILES_TIME__</strong></p>\r\n\r\n<p>Car Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__CAR_TYPE__</strong></p>\r\n\r\n<p>Payment Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__PAYMENT_TYPE__</strong></p>\r\n\r\n<p>Amount&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__AMOUNT__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Message to Driver&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__DRIVER_MSG__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are really excited that you decide to try our services,welcome and thank you for the trust!!</p>\r\n\r\n<p>For any assistance or questions&nbsp;feel free to contact us at <strong>__CONTACT_US__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Regards,</strong><br />\r\n<strong>__SITE_TITLE__</strong> |Booking Invoice Manager</p>\r\n', 'Active'),
(61, 'forgot_password', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__SITE_LOGO__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong>Welcome to __SITE_TITLE__</strong></h2>\r\n\r\n<p>A new password was requested for the user <strong>__EMAIL__</strong>,&nbsp;</p>\r\n\r\n<p>Please click on the link to set your&nbsp;password&nbsp;___RESET_YOUR_PASSWORD___</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Regards,</strong>&nbsp;<br />\r\n<br />\r\n<strong>__SITE_TITLE__</strong> |Booking Invoice Manager</p>\r\n', 'Active'),
(62, 'contact_query', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__SITE_LOGO__</strong></p>\r\n\r\n<p><strong>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></p>\r\n\r\n<h2><strong>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Welcome to __SITE_TITLE__</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hello Admin,</p>\r\n\r\n<p><strong>__USER__</strong>&nbsp;would like to contact you.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>USER DETAILS</strong></p>\r\n\r\n<p><strong>Name &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong><strong>__USER_NAME__</strong></p>\r\n\r\n<p><strong>Email</strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__EMAIL__</strong></p>\r\n\r\n<p><strong>Phone</strong>&nbsp; &nbsp; &nbsp; <strong>__PHONE__</strong></p>\r\n\r\n<p><strong>Booking Ref No&nbsp;&nbsp;&nbsp;&nbsp; __BOOKING_NO__</strong></p>\r\n\r\n<p><strong>Message</strong>&nbsp;&nbsp; &nbsp;&nbsp;<strong>__MESSAGE__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Regards,</strong>&nbsp;<br />\r\n<br />\r\n<strong>__SITE_TITLE__</strong> | Booking Invoice Manager</p>\r\n', 'Active'),
(64, 'executive_registration', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__SITE_LOGO__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Welcome to __SITE_TITLE__ </strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dear <strong>__USER__NAME__</strong>,&nbsp;</p>\r\n\r\n<p>You have successfully Registered in&nbsp;<strong>__SITE_TITLE__</strong> as Executive.</p>\r\n\r\n<p><strong>Your credentials</strong></p>\r\n\r\n<p>Email<strong>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;__EMAIL__</strong></p>\r\n\r\n<p>Password<strong>&nbsp; __PASSWORD__</strong></p>\r\n\r\n<p>We are really excited that you decide to try our services,welcome and thank you for the trust!!</p>\r\n\r\n<p>Please click this link for <strong>__ACCOUNT_ACTIVATOIN_LINK__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Regards,</strong>&nbsp;<br />\r\n<br />\r\n<strong>__SITE_TITLE__</strong> |Booking Invoice Manager</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Active'),
(65, 'when_admin_executive_confirm_cancel_delete_booking_template_mail_to_user', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__SITE_LOGO__</strong></p>\r\n\r\n<h2><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Welcome&nbsp;to&nbsp;__SITE_TITLE__ </strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dear <strong>__USER_NAME__</strong>,&nbsp;</p>\r\n\r\n<p><strong>__SITE_TITLE__</strong> Admin has <strong>__BOOKING_STATUS__</strong> your booking.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>DETAILS</strong></p>\r\n\r\n<p>Booking Reference Number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__BOOKING_REF_NO__</strong></p>\r\n\r\n<p>Pick-Point&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__PICK_POINT__</strong></p>\r\n\r\n<p>Drop-Point&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__DROP_POINT__</strong></p>\r\n\r\n<p>Pick Date &amp; Time&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__DATE_TIME__</strong></p>\r\n\r\n<p>Return Journey Required&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__RETURN_JOURNEY__</strong></p>\r\n\r\n<p>Waiting Time &amp; Cost &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__WAITING_TIME__</strong></p>\r\n\r\n<p>Journey K.m./ Miles &amp; Time&nbsp;&nbsp; <strong>__MILES_TIME__</strong></p>\r\n\r\n<p>Car Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__CAR_TYPE__</strong></p>\r\n\r\n<p>Payment Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__PAYMENT_TYPE__</strong></p>\r\n\r\n<p>Amount&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__AMOUNT__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Message to Driver&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__DRIVER_MSG__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are really excited that you decide to try our services,welcome and thank you for the trust!!</p>\r\n\r\n<p>For any assistance or questions&nbsp;feel free to contact us at <strong>__CONTACT_US__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp;</p>\r\n\r\n<p><strong>Regards,</strong><br />\r\n<strong>__SITE_TITLE__</strong> | Booking Invoice Manager</p>\r\n', 'Active'),
(66, 'when_user_cancel_booking_template_mail_to_admin', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__SITE_LOGO__</strong></p>\r\n\r\n<h2><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Welcome&nbsp;to&nbsp;__SITE_TITLE__ </strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dear Admin,&nbsp;</p>\r\n\r\n<p><strong>__USER_NAME__</strong> has <strong>Cancelled</strong> his booking.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>DETAILS</strong></p>\r\n\r\n<p>Booking Reference Number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__BOOKING_REF_NO__</strong></p>\r\n\r\n<p>Pick-Point&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__PICK_POINT__</strong></p>\r\n\r\n<p>Drop-Point&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__DROP_POINT__</strong></p>\r\n\r\n<p>Pick Date &amp; Time&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__DATE_TIME__</strong></p>\r\n\r\n<p>Return Journey Required&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__RETURN_JOURNEY__</strong></p>\r\n\r\n<p>Waiting Time &amp; Cost &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__WAITING_TIME__</strong></p>\r\n\r\n<p>Journey K.m./ Miles &amp; Time&nbsp;&nbsp; <strong>__MILES_TIME__</strong></p>\r\n\r\n<p>Car Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__CAR_TYPE__</strong></p>\r\n\r\n<p>Payment Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__PAYMENT_TYPE__</strong></p>\r\n\r\n<p>Amount&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>__AMOUNT__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Regards,</strong><br />\r\n<strong>__SITE_TITLE__</strong> | Booking Invoice Manager</p>\r\n', 'Active'),
(67, 'package_booking', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__SITE_LOGO__</strong></p>\r\n\r\n<h2><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Welcome&nbsp;to&nbsp;__SITE_TITLE__</strong></h2>\r\n\r\n<p>Dear&nbsp;<strong>__USER_NAME__</strong>,&nbsp;</p>\r\n\r\n<p>You have successfully Booked Tour Package&nbsp;in&nbsp;<strong>__SITE_TITLE__</strong></p>\r\n\r\n<p><strong>DETAILS</strong></p>\r\n\r\n<p>Booking Reference Number&nbsp;&nbsp;<strong>__BOOKING_REF_NO__</strong></p>\r\n\r\n<p>Departure Date&nbsp; &nbsp; &nbsp;&nbsp;<strong>__DEPT_DATE__</strong></p>\r\n\r\n<p>Arrival Date&nbsp; &nbsp; &nbsp; &nbsp;<strong>__ARRIVAL_DATE__</strong></p>\r\n\r\n<p>Arrival Time&nbsp; &nbsp; &nbsp;&nbsp;<strong>__ARRIVAL_TIME__</strong></p>\r\n\r\n<p>Payment Type&nbsp; &nbsp; &nbsp;&nbsp;<strong>__PAYMENT_TYPE__</strong></p>\r\n\r\n<p>Amount&nbsp; &nbsp; &nbsp; &nbsp;<strong>__AMOUNT__</strong></p>\r\n\r\n<p>We are really excited that you decide to try our services,welcome and thank you for the trust!!</p>\r\n\r\n<p>For any assistance or questions&nbsp;feel free to contact us at&nbsp;<strong>__CONTACT_US__</strong></p>\r\n\r\n<p><strong>Regards,</strong><br />\r\n<strong>__SITE_TITLE__</strong> | Booking Invoice Manager</p>\r\n', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `vbs_faqs`
--

CREATE TABLE `vbs_faqs` (
  `id` int(11) NOT NULL,
  `question` varchar(512) NOT NULL,
  `answer` varchar(512) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vbs_faqs`
--

INSERT INTO `vbs_faqs` (`id`, `question`, `answer`, `status`) VALUES
(1, 'How to login as customer?', 'First of all you have to register as customer by giving simple personal details.', 'Active'),
(2, 'Can I give an email ID for multiple users?', 'No, Email ID must be unique for each and every User.', 'Active'),
(4, 'How Do I Know That I Am Getting A Good, Safe And Qualified Sitter?', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Inactive'),
(5, 'How can I reserve sitter?', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Inactive'),
(6, 'I’m having difficulty booking – a credit card error or other technical problem. What do I do?', 'Having technical problems? Send us an email at trainee@creativewerkdesigns.com about your issue.', 'Active'),
(11, 'What type of payments do you accept?', 'We accept Credit Card, Debit Card  PayU Money or PayPal payments. \r\nYou may pay with your Credit Card PayU Money  or PayPal account.', 'Active'),
(7, 'What was your cancellation policy?', 'Lorem ipsum dolor sit amet, consectetur sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Inactive'),
(8, 'How do I know my booking is confirmed?', 'After you make an initial payment,an automated message will come to your registered email  id with confirmation of booking reference number.', 'Active'),
(9, 'I have forgotten my password. How do I login now?', 'Use the forgot password link on login screen to reset the password.', 'Active'),
(10, 'How Can I Book My Tour with You ?', 'If you are interested in booking any of our  tours,, You may simply send us an email giving us your details.', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `vbs_features`
--

CREATE TABLE `vbs_features` (
  `id` int(11) NOT NULL,
  `features` varchar(512) DEFAULT '',
  `status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vbs_features`
--

INSERT INTO `vbs_features` (`id`, `features`, `status`) VALUES
(2, 'Video Coach', 'Active'),
(3, 'Wifi', 'Active'),
(5, 'Non-AC', 'Active'),
(7, 'AC', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `vbs_files`
--

CREATE TABLE `vbs_files` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uploaded_on` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=Active, 0=Inactive',
  `p_id` int(11) NOT NULL COMMENT 'Package Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vbs_files`
--

INSERT INTO `vbs_files` (`id`, `file_name`, `uploaded_on`, `status`, `p_id`) VALUES
(30, 'bijapur.jpg', '2019-03-26 01:01:20', '1', 30),
(31, 'elephanta-cave.jpg', '2019-03-26 01:01:20', '1', 30),
(32, 'hospet.jpg', '2019-03-26 01:01:20', '1', 30),
(33, 'mecca-masjid.jpg', '2019-03-26 01:01:20', '1', 30),
(34, 'elephanta-cave1.jpg', '2019-03-26 01:03:51', '1', 18),
(35, 'gwalior-fort.jpg', '2019-03-26 01:03:51', '1', 18),
(36, 'mandu-tourism.jpg', '2019-03-26 01:03:51', '1', 18),
(37, 'omkareshwar-tourism.jpg', '2019-03-26 01:03:51', '1', 18),
(38, 'palitana_temples.jpg', '2019-03-26 01:03:51', '1', 18),
(39, 'sanchi.jpg', '2019-03-26 01:03:51', '1', 18),
(40, 'tajmahal.jpg', '2019-03-26 01:03:51', '1', 18),
(41, 'ujjain-tourism.jpg', '2019-03-26 01:03:51', '1', 18),
(42, 'darjeeling-hill-station.jpg', '2019-03-26 01:04:59', '1', 31),
(43, 'gangtok.jpg', '2019-03-26 01:04:59', '1', 31),
(44, 'kalimpong-hill-station.jpg', '2019-03-26 01:04:59', '1', 31),
(45, 'charminar.jpg', '2019-03-26 01:15:12', '1', 17),
(46, 'vijaywada-tour.jpg', '2019-03-26 01:15:12', '1', 17),
(47, 'warangal-tour.jpg', '2019-03-26 01:15:12', '1', 17),
(48, 'annavaram.jpg', '2019-03-26 01:16:53', '1', 29),
(49, 'dwaraka-tirumala.jpg', '2019-03-26 01:16:53', '1', 29),
(50, 'rajahmundry-tour.jpg', '2019-03-26 01:16:53', '1', 29),
(51, 'srikakulam-tour.jpg', '2019-03-26 01:16:53', '1', 29),
(52, 'vijaywada-tour1.jpg', '2019-03-26 01:16:53', '1', 29),
(53, 'kangra-devi.jpg', '2019-03-26 01:18:03', '1', 20),
(54, 'mansa-devi-mandir.jpg', '2019-03-26 01:18:03', '1', 20),
(55, 'vaishno_mata_temple.jpg', '2019-03-26 01:18:03', '1', 20),
(56, 'gangasagar-tour.jpg', '2019-03-26 01:19:48', '1', 16),
(57, 'kolkata-high-court.jpg', '2019-03-26 01:19:48', '1', 16),
(58, 'shantiniketan-kolkata1.jpg', '2019-03-26 01:19:48', '1', 16),
(59, 'sunderban.jpg', '2019-03-26 01:19:48', '1', 16),
(60, 'jaisalmer-fort.jpg', '2019-03-26 01:20:33', '1', 12),
(61, 'jama-masjid-3.jpg', '2019-03-26 01:20:33', '1', 12),
(62, 'jodhpur-fort1.jpg', '2019-03-26 01:20:33', '1', 12),
(63, 'pushkar1.jpg', '2019-03-26 01:20:33', '1', 12),
(64, 'taj-mahal.jpg', '2019-03-26 01:20:33', '1', 12),
(65, 'udaipur-lake-palace.jpg', '2019-03-26 01:20:33', '1', 12),
(66, 'dwarka-tourism.jpg', '2019-03-26 01:22:43', '1', 28),
(67, 'rajkot-temple.jpg', '2019-03-26 01:22:43', '1', 28),
(68, 'coorg.jpg', '2019-03-26 01:23:40', '1', 32),
(69, 'kodai-lake.jpg', '2019-03-26 01:23:40', '1', 32),
(70, 'mysore-palace.jpg', '2019-03-26 01:23:40', '1', 32),
(71, 'ooty-lake1.jpg', '2019-03-26 01:23:40', '1', 32),
(72, 'vidhana-soudha-bangalore.jpg', '2019-03-26 01:23:40', '1', 32),
(73, '11.jpg', '2019-03-26 01:59:34', '1', 10),
(75, 'adalaj.jpg', '2019-03-26 03:32:24', '1', 28),
(76, 'akshardham.jpg', '2019-03-26 03:34:47', '1', 28),
(77, 'goaimg.jpg', '2019-03-26 03:36:53', '1', 19),
(78, 'goa1.jpg', '2019-04-02 00:26:31', '1', 19),
(79, 'goa3.jpg', '2019-04-02 00:26:31', '1', 19),
(80, 'goa4.jpg', '2019-04-02 00:26:31', '1', 19),
(81, 'goa6.jpg', '2019-04-02 00:26:31', '1', 19),
(82, 'akshardham-gandhinagar.jpg', '2019-04-02 00:28:35', '1', 38),
(83, 'dwarka-tourism1.jpg', '2019-04-02 00:28:35', '1', 38),
(84, 'vidhana-soudha-bangalore1.jpg', '2019-04-02 00:28:35', '1', 38);

-- --------------------------------------------------------

--
-- Table structure for table `vbs_groups`
--

CREATE TABLE `vbs_groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vbs_groups`
--

INSERT INTO `vbs_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User'),
(3, 'executives', 'Executives'),
(4, 'driver', 'Driver');

-- --------------------------------------------------------

--
-- Table structure for table `vbs_hotel_api_settings`
--

CREATE TABLE `vbs_hotel_api_settings` (
  `id` int(11) NOT NULL,
  `pagination` int(10) NOT NULL,
  `commission` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vbs_hotel_api_settings`
--

INSERT INTO `vbs_hotel_api_settings` (`id`, `pagination`, `commission`) VALUES
(1, 10, 98);

-- --------------------------------------------------------

--
-- Table structure for table `vbs_instructions`
--

CREATE TABLE `vbs_instructions` (
  `id` int(11) NOT NULL,
  `title` varchar(512) NOT NULL,
  `content` varchar(512) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vbs_login_attempts`
--

CREATE TABLE `vbs_login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vbs_package_bookings`
--

CREATE TABLE `vbs_package_bookings` (
  `id` int(25) NOT NULL,
  `user_id` int(25) UNSIGNED NOT NULL,
  `booking_ref` varchar(512) NOT NULL,
  `package_id` int(11) NOT NULL DEFAULT '0',
  `payment_type` enum('cash','paypal','credit card','stripe','payu') NOT NULL DEFAULT 'cash',
  `payment_received` float NOT NULL DEFAULT '0',
  `total_price` int(11) NOT NULL DEFAULT '0',
  `is_conformed` enum('pending','confirm','cancelled','refund') NOT NULL DEFAULT 'pending',
  `bookdate` date NOT NULL,
  `registered_name` varchar(512) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(512) NOT NULL,
  `transaction_id` varchar(512) NOT NULL,
  `payer_id` varchar(512) NOT NULL,
  `payer_email` varchar(512) NOT NULL,
  `package_type` int(11) NOT NULL,
  `payer_name` varchar(512) NOT NULL,
  `is_new` int(11) NOT NULL,
  `coupon_applied` enum('Yes','No') DEFAULT NULL,
  `coupon_code` varchar(50) DEFAULT NULL,
  `coupon_discount_amount` float(10,2) DEFAULT NULL,
  `invoice_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vbs_package_bookings`
--

INSERT INTO `vbs_package_bookings` (`id`, `user_id`, `booking_ref`, `package_id`, `payment_type`, `payment_received`, `total_price`, `is_conformed`, `bookdate`, `registered_name`, `phone`, `email`, `transaction_id`, `payer_id`, `payer_email`, `package_type`, `payer_name`, `is_new`, `coupon_applied`, `coupon_code`, `coupon_discount_amount`, `invoice_file`) VALUES
(4, 7, '190319004905', 16, 'cash', 0, 28500, 'confirm', '2019-03-19', 'Customer One', '+91 (123) 4567 890', 'sagar.cwdesigns@gmail.com', '', '', '', 0, '', 1, 'No', NULL, NULL, ''),
(8, 0, '190325221348', 0, 'cash', 0, 15000, '', '2019-03-25', 'pooja', '2323232323', 'aa@aa.com', '', '', '', 0, '', 1, 'No', NULL, NULL, ''),
(10, 59, '190331040733', 31, 'cash', 0, 18999, 'pending', '2019-03-31', 'customer one', '7621857688', 'customer@customer.com', '', '', '', 0, '', 0, 'No', NULL, NULL, ''),
(12, 59, '190331042859', 16, 'cash', 0, 28500, 'pending', '2019-03-31', 'customer one', '7621857688', 'customer@customer.com', '', '', '', 0, '', 0, 'No', NULL, NULL, ''),
(13, 0, '190331072421', 0, 'cash', 0, 9000, 'pending', '2019-03-31', 'Mohini', '7016610911', 'Mohini982@gmail.com', '', '', '', 0, '', 0, 'No', NULL, NULL, ''),
(14, 0, '190331231614', 20, 'cash', 0, 19599, 'pending', '2019-03-31', 'nishita', '323222222', 'nishitarajani123@gmail.com', '', '', '', 0, '', 0, 'No', NULL, NULL, ''),
(15, 59, '190331234944', 18, 'cash', 0, 20000, 'pending', '2019-03-31', 'customer one', '7621857688', 'customer@customer.com', '', '', '', 0, '', 0, 'No', NULL, NULL, ''),
(16, 59, '190331234944', 18, 'cash', 0, 20000, 'pending', '2019-03-31', 'customer one', '7621857688', 'customer@customer.com', '', '', '', 0, '', 0, 'No', NULL, NULL, ''),
(17, 0, '190401000259', 30, 'cash', 0, 34400, 'pending', '2019-04-01', 'Administrator', '9898989898', 'admin@admin.com', '', '', '', 0, '', 1, 'No', NULL, NULL, ''),
(30, 59, '190331234944', 18, 'cash', 0, 20000, 'pending', '2019-04-01', 'customer one', '7621857688', 'customer@customer.com', '', '', '', 0, '', 0, 'No', NULL, NULL, ''),
(31, 59, '190401010022', 16, 'cash', 0, 28500, 'pending', '2019-04-01', 'customer one', '7621857688', 'customer@customer.com', '', '', '', 0, '', 0, 'No', NULL, NULL, ''),
(32, 59, '190401010355', 19, 'cash', 0, 9249, 'pending', '2019-04-01', 'customer one', '7621857688', 'customer@customer.com', '', '', '', 0, '', 0, 'No', NULL, NULL, ''),
(33, 59, '190401011647', 29, 'cash', 0, 21300, 'pending', '2019-04-01', 'customer one', '7621857688', 'customer@customer.com', '', '', '', 0, '', 0, 'No', NULL, NULL, ''),
(34, 59, '190401012011', 28, 'cash', 0, 9000, 'pending', '2019-04-01', 'customer one', '7621857688', 'customer@customer.com', '', '', '', 0, '', 0, 'No', NULL, NULL, '190401012011'),
(35, 59, '190401012229', 32, 'cash', 0, 34558, 'pending', '2019-04-01', 'customer one', '7621857688', 'customer@customer.com', '', '', '', 0, '', 1, 'No', NULL, NULL, '190401012229'),
(37, 63, '190402003608', 19, 'cash', 0, 10000, 'pending', '2019-04-02', 'nishita rajani', '8200346189', 'nishi.ddu@gmail.com', '', '', '', 0, '', 1, 'No', NULL, NULL, '190402003608'),
(38, 59, '190402014214', 28, 'cash', 0, 9000, 'pending', '2019-04-02', 'pooja', '7621857688', 'ps9345488@gmail.com', '', '', '', 0, '', 1, 'No', NULL, NULL, '190402014214'),
(39, 59, '190402022131', 17, 'cash', 0, 17899, 'pending', '2019-04-02', 'customer one', '7621857688', 'customer@customer.com', '', '', '', 0, '', 1, 'No', NULL, NULL, '190402022131'),
(40, 63, '190402162835', 19, 'cash', 0, 10000, 'pending', '2019-04-02', 'nishita rajani', '8200346189', 'nishi.ddu@gmail.com', '', '', '', 0, '', 1, 'No', NULL, NULL, '190402162835');

-- --------------------------------------------------------

--
-- Table structure for table `vbs_package_settings`
--

CREATE TABLE `vbs_package_settings` (
  `id` int(11) NOT NULL,
  `vehicle_id` int(222) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `hours` varchar(10) NOT NULL DEFAULT '',
  `distance` varchar(10) NOT NULL DEFAULT '',
  `min_cost` decimal(10,2) NOT NULL,
  `charge_distance` decimal(10,2) NOT NULL,
  `charge_hour` decimal(10,2) NOT NULL,
  `terms_conditions` longtext NOT NULL,
  `status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vbs_package_settings`
--

INSERT INTO `vbs_package_settings` (`id`, `vehicle_id`, `name`, `hours`, `distance`, `min_cost`, `charge_distance`, `charge_hour`, `terms_conditions`, `status`) VALUES
(1, 4, 'Special Package', '3', '90', '1500.00', '10.00', '50.00', '<p>1.If min distance is crossed then 10₹&nbsp;per every kilometer.</p>\r\n\r\n<p>2. If it is hourly based 50₹&nbsp;per every hour.</p>\r\n', 'Active'),
(2, 5, 'Base Package', '5', '150', '1600.00', '15.00', '40.00', '<p>1.If min distance is crossed then 10₹&nbsp;per every kilometer.</p>\r\n\r\n<p>2. If it is hourly based 50₹&nbsp;per every hour.</p>\r\n', 'Active'),
(3, 6, 'survival Package', '10', '50', '1800.00', '7.00', '100.00', '<p>1.If min distance is crossed then 10₹&nbsp;per every kilometer.</p>\r\n\r\n<p>2. If it is hourly based 50₹&nbsp;per every hour.</p>\r\n', 'Active'),
(4, 7, 'New Package', '4', '200', '2700.00', '10.00', '50.00', '<p>1.If min distance is crossed then 10₹&nbsp;per every kilometer.</p>\r\n\r\n<p>2. If it is hourly based 50₹&nbsp;per every hour.</p>\r\n', 'Active'),
(5, 8, 'Limited Package', '3', '20', '3500.00', '15.00', '40.00', '<p>1.If min distance is crossed then 10₹&nbsp;per every kilometer.</p>\r\n\r\n<p>2. If it is hourly based 50₹&nbsp;per every hour.</p>\r\n', 'Active'),
(6, 10, 'Big Sale Package', '12', '150', '100.00', '10.00', '20.00', '<p>1.If min distance is crossed then 10₹&nbsp;per every kilometer.</p>\r\n\r\n<p>2. If it is hourly based 50₹&nbsp;per every hour.</p>\r\n', 'Active'),
(7, 1, 'Mega Discount Package', '12', '10', '2500.00', '15.00', '100.00', '<p>1. If min distance is crossed then 10₹&nbsp;per every kilometer.</p>\r\n\r\n<p>2. If it is hourly based 50₹&nbsp;per every hour.</p>\r\n', 'Active'),
(8, 2, 'Best Sale Package', '5', '200', '3000.00', '7.00', '50.00', '<p>1. If min distance is crossed then 10₹&nbsp;per every kilometer.</p>\r\n\r\n<p>2. If it is hourly based 50₹&nbsp;per every hour.</p>\r\n', 'Active'),
(9, 3, 'Supreme Package', '15', '15', '2000.00', '5.00', '20.00', '<p>1. If min distance is crossed then 10₹&nbsp;per every kilometer.</p>\r\n\r\n<p>2. If it is hourly based 50₹&nbsp;per every hour.</p>\r\n', 'Active'),
(10, 9, 'Stats Package', '5', '400', '1500.00', '15.00', '150.00', '<p>1. If min distance is crossed then 10₹&nbsp;per every kilometer.</p>\r\n\r\n<p>2. If it is hourly based 50₹&nbsp;per every hour.</p>\r\n', 'Active'),
(11, 1, 'Mass Package', '2', '25', '2300.00', '23.00', '35.00', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `vbs_payments`
--

CREATE TABLE `vbs_payments` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `payment_amount` decimal(10,2) NOT NULL,
  `transaction_id` varchar(512) NOT NULL,
  `user_id` int(11) NOT NULL,
  `transaction_status` enum('success','fail') NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vbs_paypal_settings`
--

CREATE TABLE `vbs_paypal_settings` (
  `id` int(11) NOT NULL,
  `paypal_email` varchar(512) NOT NULL,
  `currency` varchar(512) NOT NULL,
  `account_type` enum('sandbox','live') NOT NULL,
  `logo_image` varchar(512) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vbs_paypal_settings`
--

INSERT INTO `vbs_paypal_settings` (`id`, `paypal_email`, `currency`, `account_type`, `logo_image`, `status`) VALUES
(1, 'nishitarajani123@gmail.com', 'INR', 'sandbox', 'paypal_logo.png', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `vbs_payu_settings`
--

CREATE TABLE `vbs_payu_settings` (
  `id` int(11) NOT NULL,
  `test_merchant_key` varchar(20) NOT NULL,
  `test_salt` varchar(20) NOT NULL,
  `live_merchant_key` varchar(20) NOT NULL,
  `live_salt` varchar(20) NOT NULL,
  `mode` enum('test','live') NOT NULL DEFAULT 'test'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vbs_payu_settings`
--

INSERT INTO `vbs_payu_settings` (`id`, `test_merchant_key`, `test_salt`, `live_merchant_key`, `live_salt`, `mode`) VALUES
(1, 'rjQUPktU', 'e5iIg1jwi8', 'Live Merchant Key', 'Live Salt', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `vbs_reasons_to_book`
--

CREATE TABLE `vbs_reasons_to_book` (
  `id` int(11) NOT NULL,
  `title` varchar(512) NOT NULL,
  `content` varchar(512) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vbs_reasons_to_book`
--

INSERT INTO `vbs_reasons_to_book` (`id`, `title`, `content`, `status`) VALUES
(1, 'Reasons to book with us', '<ul>\r\n <li>We promise that your car will be ready and waiting for you on time for your requested pick up.</li>\r\n <li>We promise that any car you book with us will be fully licensed and safe for your travels.</li>\r\n <li>We are competitive in market in regards quality of service and price we quote</li>\r\n <li>We try our level best to satisfy our customers</li>\r\n</ul>\r\n', 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `vbs_review_rating`
--

CREATE TABLE `vbs_review_rating` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(1) NOT NULL DEFAULT '0',
  `review` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vbs_review_rating`
--

INSERT INTO `vbs_review_rating` (`id`, `user_id`, `package_id`, `user_name`, `rating`, `review`) VALUES
(1, 59, 31, 'customer one', 4, 'Nice Service..!!\nRecommended'),
(2, 60, 16, 'Jackson', 5, 'Good..!!'),
(3, 60, 16, 'customer one', 5, 'Recommended..\nGreat Package..!'),
(4, 59, 16, 'customer one', 4, 'Good  package.....! \nNice service'),
(5, 63, 19, 'nishita rajani', 4, 'Best place for  enjoy.......');

-- --------------------------------------------------------

--
-- Table structure for table `vbs_seo_settings`
--

CREATE TABLE `vbs_seo_settings` (
  `id` int(11) NOT NULL,
  `site_description` varchar(512) NOT NULL,
  `meta_description` longtext NOT NULL,
  `site_keywords` varchar(512) NOT NULL,
  `google_analytics` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vbs_seo_settings`
--

INSERT INTO `vbs_seo_settings` (`id`, `site_description`, `meta_description`, `site_keywords`, `google_analytics`) VALUES
(1, '<ul>\r\n <li><a href=\"#\">We promise that your minicab will be ready and waiting for you on time for your requested pick up.</a></li>\r\n <li><a href=\"#\">We are competitive in market in regards quality of service and price we quote</a></li>\r\n <li><a href=\"#\">We promise that any minicab you book with us will be fully licensed and safe for your travels.</a></li>\r\n <li><a href=\"#\">We try our level best to satisfy our customers with excellent service to there expectation</a></li>\r\n</ul>\r\n', 'Hello', 'Advanced Car Booking System, Vehicle Booking System, Online Vehicle Booking System, Easy cab booking Application, Travel Booking System, Online Travel Booking System, Taxi Dispatch System, Taxi Online Booking Application, Cabs Management Software Application, Taxi Management System, Taxi Cab Website Booking System', '  (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){   (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),   m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m[removed].insertBefore(a,m)   })(window,document,\'script\',\'//www.google-analytics.com/analytics.js\',\'__gaTracker\');      __gaTracker(\'create\', \'UA-64451071-1\', \'auto\');   __gaTracker(\'set\', \'forceSSL\', true);   __gaTracker(\'set\', \'anonymizeIp\', true);   __gaTracker(\'require\', \'displayfeatures\');   __gaTracker(\'require\', \'linkid\', \'linkid.js\');   __gaTracker(\'send\',\'pageview\');   ');

-- --------------------------------------------------------

--
-- Table structure for table `vbs_sessions`
--

CREATE TABLE `vbs_sessions` (
  `id` varchar(128) CHARACTER SET utf8 NOT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8 NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vbs_sessions`
--

INSERT INTO `vbs_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0dbimdavoej5fsq6kiinhsi6n57ped6d', '103.250.139.37', 1554292047, 0x4642524c485f73746174657c733a33323a226333336165303838393036303864333232363234353538343135663330386462223b),
('c90f2k378oob2u61ibkbgkla4tgubbif', '49.34.173.113', 1554274376, ''),
('d407ang99mopuntdplfsj1073ftm625j', '103.250.139.37', 1554291336, 0x4642524c485f73746174657c733a33323a223638336561333038343939383361303065656363646262306161656463346163223b),
('dpnkd4k7d2227qj9cr891ufom6bn69lq', '103.250.139.37', 1554279517, 0x4642524c485f73746174657c733a33323a223838363933363265396138393339666464323361366439363433613232326139223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b757365726e616d657c733a31333a2241646d696e6973747261746f72223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353534323736313932223b),
('j95gl6psk6qa9lnten3ilbo9thklf3eo', '49.34.21.67', 1554249797, 0x4642524c485f73746174657c733a33323a223762326434383562393636336365376638343731383762663534363633313864223b),
('lur6ad85esm1u6ppsm24rbgedb7uaie5', '49.34.21.67', 1554254339, 0x4642524c485f73746174657c733a33323a223062653834626161356232366633363738393861656239313530343538643839223b6964656e746974797c733a31393a226e697368692e64647540676d61696c2e636f6d223b757365726e616d657c733a31343a226e6973686974612072616a616e69223b656d61696c7c733a31393a226e697368692e64647540676d61696c2e636f6d223b757365725f69647c733a323a223633223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353534323237373931223b),
('rpru7rambdf49goecn247l7411uj2fuh', '49.34.57.132', 1554291941, 0x4642524c485f73746174657c733a33323a223933306238666232636364316438373862373862633636313436386161306433223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b757365726e616d657c733a31333a2241646d696e6973747261746f72223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353534323834323434223b);

-- --------------------------------------------------------

--
-- Table structure for table `vbs_site_settings`
--

CREATE TABLE `vbs_site_settings` (
  `id` int(11) NOT NULL,
  `site_name` varchar(512) NOT NULL,
  `address` varchar(512) NOT NULL,
  `city` varchar(512) NOT NULL,
  `state` varchar(512) NOT NULL,
  `country` varchar(512) NOT NULL,
  `zip` varchar(512) NOT NULL,
  `phone` varchar(512) NOT NULL,
  `land_line` varchar(512) NOT NULL,
  `fax` varchar(512) NOT NULL,
  `portal_email` varchar(512) NOT NULL,
  `site_country` varchar(512) NOT NULL,
  `distance_type` enum('Km','Mi') NOT NULL DEFAULT 'Km',
  `waiting_time` enum('Enable','Disable') NOT NULL,
  `airports_status` enum('Enable','Disable') NOT NULL,
  `day_start_time` varchar(512) NOT NULL,
  `day_end_time` varchar(512) NOT NULL,
  `night_start_time` varchar(512) NOT NULL,
  `night_end_time` varchar(512) NOT NULL,
  `site_theme` enum('Red','Yellow') NOT NULL DEFAULT 'Yellow',
  `email_type` enum('PHP mail','Sendmail','Gmail SMTP') NOT NULL,
  `design_by` varchar(512) NOT NULL,
  `url_for_design_by` varchar(512) NOT NULL,
  `rights_reserved_content` varchar(512) NOT NULL,
  `map` varchar(512) NOT NULL,
  `paypal` int(11) NOT NULL DEFAULT '0',
  `stripe` int(11) NOT NULL,
  `payu` int(11) NOT NULL,
  `cash` int(11) NOT NULL DEFAULT '0',
  `credit` int(11) NOT NULL DEFAULT '0',
  `date_formats` enum('mm/dd/YYYY','YYYY/mm/dd','dd.mm.YYYY','dd-mm-YYYY','YYYY-mm-dd') NOT NULL,
  `time_zone` varchar(512) NOT NULL,
  `contact_map` varchar(2000) NOT NULL,
  `site_logo` varchar(512) NOT NULL,
  `site_currency` varchar(512) NOT NULL DEFAULT '',
  `driver_charge_night` int(11) NOT NULL DEFAULT '0',
  `currency_symbol` varchar(512) NOT NULL DEFAULT '',
  `site_title` varchar(512) NOT NULL DEFAULT '',
  `default_language` varchar(512) NOT NULL,
  `language_dropdown` enum('Enable','Disable') NOT NULL DEFAULT 'Enable',
  `pick_point_placeholder` varchar(512) NOT NULL DEFAULT '',
  `drop_point_placeholder` varchar(512) NOT NULL DEFAULT '',
  `google_api_key` varchar(100) DEFAULT NULL,
  `fevicon` varchar(50) DEFAULT NULL,
  `country_code` varchar(10) DEFAULT NULL,
  `apply_tax` enum('Yes','No') DEFAULT NULL,
  `tax_amount` float(10,2) DEFAULT NULL,
  `sms_notification` enum('Yes','No') DEFAULT NULL,
  `facebook_app_id` varchar(500) DEFAULT NULL,
  `facebook_app_secret` varchar(500) DEFAULT NULL,
  `google_client_id` varchar(500) DEFAULT NULL,
  `google_client_secret` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vbs_site_settings`
--

INSERT INTO `vbs_site_settings` (`id`, `site_name`, `address`, `city`, `state`, `country`, `zip`, `phone`, `land_line`, `fax`, `portal_email`, `site_country`, `distance_type`, `waiting_time`, `airports_status`, `day_start_time`, `day_end_time`, `night_start_time`, `night_end_time`, `site_theme`, `email_type`, `design_by`, `url_for_design_by`, `rights_reserved_content`, `map`, `paypal`, `stripe`, `payu`, `cash`, `credit`, `date_formats`, `time_zone`, `contact_map`, `site_logo`, `site_currency`, `driver_charge_night`, `currency_symbol`, `site_title`, `default_language`, `language_dropdown`, `pick_point_placeholder`, `drop_point_placeholder`, `google_api_key`, `fevicon`, `country_code`, `apply_tax`, `tax_amount`, `sms_notification`, `facebook_app_id`, `facebook_app_secret`, `google_client_id`, `google_client_secret`) VALUES
(1, 'http://www.creativewerkdesigns.com/', '303, Sky Tatva-1, Opp. Amba Ashram', 'Nadiad', 'Gujrat', 'India', '387001', '1234567891', '+91 8200346189', '', 'nishitarajani123@gmail.com', 'in', 'Km', 'Enable', 'Enable', '5:00', '20:00', '20:00', '5:00', 'Yellow', 'Sendmail', 'Creative Werk Designs', 'http://creativewerkdesigns.com', '© Creative Werk Designs - Booking Invoice Manager. All rights reserved.', '', 1, 0, 1, 1, 0, 'mm/dd/YYYY', 'US/Alaska', '<script type=\"text/javascript\"> function init_map(){var myOptions = {zoom:17,center:new google.maps.LatLng(17.45143909381126,78.38544047965388),mapTypeId: google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById(\"gmap_canvas\"), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(22.6773745,72.88097909999999)});infowindow = new google.maps.InfoWindow({content:\"<b>Creative werk Designs</b><br/>303,SKY Tatva-1, Opp. Amba Ashram,Nadiad,Gujrat-387001,India<br/>\" });google.maps.event.addListener(marker, \"click\", function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, \'load\', init_map);</script>                                                             ', 'site_logo.png', 'USD', 0, '₹', 'Booking Invoice Manager', 'en', 'Disable', '25th Street, Nadiad,Gujarat, Indiad', '19th Street, Nadiad,Gujarat, Indiad', 'AIzaSyDPV759MXYwrfbR-kQFJulFqiS61M524BU', 'fevicon.ico', '91', 'Yes', 20.00, 'Yes', 'Facebook App ID', 'Facebook App Secret', '633239778973-fibrkhcrd98jlkqi425bsa4hmthq76ra.apps.googleusercontent.com', '8_Axmcnt5NV0BOj3wz75TfcL');

-- --------------------------------------------------------

--
-- Table structure for table `vbs_sms_gate_ways`
--

CREATE TABLE `vbs_sms_gate_ways` (
  `sms_gateway_id` int(11) NOT NULL,
  `sms_gateway_name` varchar(50) NOT NULL,
  `is_default` enum('Yes','No') NOT NULL DEFAULT 'No',
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vbs_sms_gate_ways`
--

INSERT INTO `vbs_sms_gate_ways` (`sms_gateway_id`, `sms_gateway_name`, `is_default`, `status`) VALUES
(1, 'Cliakatell', 'No', 'Active'),
(2, 'Nexmo', 'No', 'Active'),
(3, 'Plivo', 'No', 'Active'),
(4, 'Solutionsinfini', 'No', 'Active'),
(5, 'Twilio', 'Yes', 'Active'),
(7, 'MSG91', 'No', 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `vbs_sms_templates`
--

CREATE TABLE `vbs_sms_templates` (
  `sms_template_id` int(11) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `sms_template` varchar(1000) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vbs_sms_templates`
--

INSERT INTO `vbs_sms_templates` (`sms_template_id`, `subject`, `sms_template`, `status`) VALUES
(6, 'send_coupon', '<p>Use Coupon <strong>__COUPON_CODE__</strong> , Get <strong>__DISCOUNT_AMOUNT__</strong> on booking.</p>\r\n', 'Active'),
(3, 'booking_successful', '<p>Thanks for using <strong>__SITE__TITLE__</strong></p>\r\n\r\n<p>Booking Reference No <strong>__BOOKING_REF__NO__</strong></p>\r\n\r\n<p>Total Cost <strong>__TOTAL__COST__</strong></p>\r\n', 'Active'),
(4, 'booking_status_changed', '<p>Dear <strong>__USER__</strong> ,</p>\r\n\r\n<p>Your Booking has been&nbsp; <strong>__BOOKING_STATUS__</strong></p>\r\n\r\n<p>Booking Reference No&nbsp;&nbsp; <strong>__BOOKING_REF_NO__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Active'),
(5, 'booking_deleted', '<p>Dear <strong>__USER__</strong></p>\r\n\r\n<p>Your booking has been Deleted.</p>\r\n\r\n<p>Booking Reference No&nbsp; <strong>__BOOKING_REF_NO__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `vbs_social_networks`
--

CREATE TABLE `vbs_social_networks` (
  `id` int(11) NOT NULL,
  `facebook` varchar(512) NOT NULL,
  `twitter` varchar(512) NOT NULL,
  `linkedin` varchar(512) NOT NULL,
  `google_plus` varchar(512) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vbs_social_networks`
--

INSERT INTO `vbs_social_networks` (`id`, `facebook`, `twitter`, `linkedin`, `google_plus`) VALUES
(1, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `vbs_stripe_settings`
--

CREATE TABLE `vbs_stripe_settings` (
  `id` int(11) NOT NULL,
  `stripe_key_test_public` varchar(50) NOT NULL,
  `stripe_key_test_secret` varchar(50) NOT NULL,
  `stripe_key_live_public` varchar(50) NOT NULL,
  `stripe_key_live_secret` varchar(50) NOT NULL,
  `stripe_test_mode` enum('TRUE','FALSE') NOT NULL DEFAULT 'TRUE',
  `currency` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vbs_stripe_settings`
--

INSERT INTO `vbs_stripe_settings` (`id`, `stripe_key_test_public`, `stripe_key_test_secret`, `stripe_key_live_public`, `stripe_key_live_secret`, `stripe_test_mode`, `currency`) VALUES
(1, 'Stripe Key Test Public', 'Stripe Key Test Secret', 'Stripe Key Live Public', 'Stripe Key Live Secret', 'TRUE', 'INR');

-- --------------------------------------------------------

--
-- Table structure for table `vbs_system_settings_fields`
--

CREATE TABLE `vbs_system_settings_fields` (
  `field_id` int(11) NOT NULL,
  `sms_gateway_id` int(11) DEFAULT NULL,
  `field_name` varchar(256) NOT NULL,
  `field_key` varchar(50) NOT NULL,
  `is_required` char(5) DEFAULT 'No',
  `field_output_value` text,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vbs_system_settings_fields`
--

INSERT INTO `vbs_system_settings_fields` (`field_id`, `sms_gateway_id`, `field_name`, `field_key`, `is_required`, `field_output_value`, `created`, `updated`) VALUES
(125, 1, 'User Name', 'User_Name', 'Yes', 'User Name', '2016-07-25 11:20:38', '2018-01-03 20:52:14'),
(126, 1, 'Password', 'Password', 'Yes', 'Password', '2016-07-25 12:29:11', '2018-01-03 20:52:14'),
(127, 1, 'From No', 'From_No', 'Yes', 'From No', '2016-07-25 12:29:47', '2018-01-03 20:52:14'),
(128, 1, 'API Id', 'API_Id', 'Yes', 'API Id', '2016-07-25 12:30:10', '2018-01-03 20:52:14'),
(129, 2, 'API KEY', 'API_KEY', 'Yes', 'API KEY', '2016-07-26 05:51:28', '2018-01-03 20:52:30'),
(130, 2, 'API SECRET', 'API_SECRET', 'Yes', 'API SECRET', '2016-07-26 06:00:50', '2018-01-03 20:52:30'),
(131, 3, 'AUTH ID', 'AUTH_ID', 'Yes', 'AUTH ID', '2016-07-26 09:26:52', '2018-01-03 20:52:43'),
(132, 3, 'AUTH TOKEN', 'AUTH_TOKEN', 'Yes', 'AUTH TOKEN', '2016-07-26 09:27:16', '2018-01-03 20:52:43'),
(133, 3, 'API VERSION', 'API_VERSION', 'Yes', 'v1', '2016-07-26 09:27:49', '2018-01-03 20:52:43'),
(134, 3, 'END POINT', 'END_POINT', 'Yes', 'https://api.plivo.com', '2016-07-26 09:28:14', '2018-01-03 20:52:43'),
(135, 4, 'Working Key', 'working_key', 'Yes', 'Working Key', '2016-07-26 09:29:30', '2018-01-03 20:52:54'),
(136, 4, 'Sender Id', 'sender_id', 'Yes', 'Sender Id', '2016-07-26 09:29:53', '2018-01-03 20:52:54'),
(137, 4, 'API URL', 'api', 'Yes', 'http://alerts.solutionsinfini.com/', '2016-07-26 09:30:15', '2018-01-03 20:52:54'),
(138, 5, 'Account SID', 'account_sid', 'Yes', 'Account SID', '2016-07-26 09:31:21', '2018-01-03 20:53:11'),
(139, 5, 'Auth Token', 'auth_token', 'Yes', 'Auth Token', '2016-07-26 09:31:54', '2018-01-03 20:53:11'),
(140, 5, 'API Version', 'api_version', 'Yes', '2010-04-01', '2016-07-26 09:32:20', '2018-01-03 20:53:11'),
(141, 5, 'Twilio Phone Number', 'Twilio_Phone_Number', 'Yes', '+232323232323', '2016-07-26 09:32:57', '2018-01-03 20:53:11'),
(142, 7, 'AUTH', 'AUTH', 'Yes', 'AUTH', '2016-11-17 08:03:11', '2018-01-03 20:53:26'),
(143, 7, 'SENDER_ID', 'SENDER_ID', 'Yes', 'SENDER_ID', '2016-11-17 08:03:11', '2018-01-03 20:53:26');

-- --------------------------------------------------------

--
-- Table structure for table `vbs_testimonials_settings`
--

CREATE TABLE `vbs_testimonials_settings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(512) NOT NULL,
  `title` varchar(512) NOT NULL,
  `user_photo` varchar(512) NOT NULL,
  `content` varchar(512) NOT NULL,
  `added_date` date NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vbs_testimonials_settings`
--

INSERT INTO `vbs_testimonials_settings` (`id`, `user_id`, `user_name`, `title`, `user_photo`, `content`, `added_date`, `status`) VALUES
(1, 7, 'Customer One', 'Feedback', '', 'Good product', '2017-11-17', 'Active'),
(2, 0, 'shanvi patel', 'About Vehicles', 'opel-2920765__340.png', 'Nice vehicles and maintaining time punctuality', '2017-11-18', 'Active'),
(3, 0, 'riya sharma', 'About App', 'image(5).jpg', 'Happy to have this App because am able to book the car from my home', '2017-11-21', 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `vbs_tourpackage`
--

CREATE TABLE `vbs_tourpackage` (
  `id` int(11) NOT NULL,
  `package_name` varchar(255) NOT NULL,
  `source` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `arrival_time` varchar(255) NOT NULL,
  `dept_time` varchar(255) NOT NULL,
  `arrival_date` date DEFAULT NULL,
  `dept_date` date DEFAULT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(200) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vbs_tourpackage`
--

INSERT INTO `vbs_tourpackage` (`id`, `package_name`, `source`, `destination`, `description`, `arrival_time`, `dept_time`, `arrival_date`, `dept_date`, `price`, `image`, `status`) VALUES
(16, 'Royal Heritage of Bengal', '\"Guma, West Bengal, India\"', '\"Kolkata, West Bengal, India\"', '<h2><em><strong>Day 1</strong> : Arrive Kolkata gangasagar-tour On arrival at Kolkata Airport/ Hwh Railway station, our representative will transfer you to your already booked hotel. Check in at the hotel. The evening is free at leisure. An overnight stay at the hotel in Kolkata.</em></h2>\r\n\r\n<h2><em><strong>Day 2 </strong>: Kolkata Local Sightseeing After breakfast, we will proceed for the city tour of Kolkata covering High Court Building, Oldest Catholic Church in Calcutta, Howrah bridge, Vidyasagar Setu, National Museum, Victoria memorial, Kali Mandir, etc. Thereafter, we will return back to the hotel for an overnight stay in hotel.</em></h2>\r\n\r\n<h2><em><strong>Day 3 </strong>: Full Day Excursion Trip to Gangasagar gangasagar-tour Today, early in the morning after tea, we will leave for a full day excursion tour to Gangasagar where the Ganga drains into the sea & is considered to be of great religious significant & explore the Kapileshwar Muni Ashram- it is one Punya Tirtha among five Punya Dhams. Later return back to the hotel in Kolkata for an overnight stay.</em></h2>\r\n\r\n<h2><em><strong>Day 4 </strong>: Trip to Dakhineswar & Belurmath After breakfast in the morning, we will visit Dakhineshwar & Belurmath by boat cruise on river Hoogoli to visit Ramakrishnan mission. Also, we will visit the popular Jain Temple and the Mother Teressa House- Nirmal Hirdaya. The afternoon is free for shopping by your own. An overnight stay at the hotel in Kolkata.</em></h2>\r\n\r\n<h2><em><strong>Day 5 </strong>: Kolkata - Shantiniketan shantiniketan-kolkata In the morning after breakfast, we will board the train to Shantiniketan. It was founded in 1901 by Noble Laureate Shri Rabindra Nath Tagore who visualizes a perfect harmony of humanity with nature. Art gallery & museum are important to be seen. On arrival, get transfer to your pre-booked hotel. After lunch, we will visit the Santal villages. The evening is free at leisure for shopping. An overnight in the hotel in Shantiniketan.</em></h2>\r\n\r\n<h2><em><strong>Day 6 </strong>: Shantiniketan - Kolkata After breakfast in the morning, we will explore Shantiniketan area & the open air classes, Visva Bharti Campus, Rabindra museum, Deep Park, Amarkuthi, Kantalikota (a place of small temple but mythological interest). Later, we will board the train to Kolkata. On arrival, check in at the hotel for a dinner followed by an overnight stay.</em></h2>\r\n\r\n<h2><em><strong>Day 7 </strong>: Kolkata - Sunderban Today, early in the morning we will departure from Kolkata & reach the largest Litoral Mangrove belt in the world. It is a nature interpretation centre where one can gather experience about the different species & projects on Sunderban. We will also visit crocodile projects. Full day excursion inside the forest to search the world famous Royal Bengal tiger & crocodile. Departure by boat to Sajnekhali Tiger Projest, area for viewing wildlife, sajnekhali Museum, Mangrove Interpretation Centre & Watch Tower. An overnight saty at the hotel/resort in Sunderban.</em></h2>\r\n\r\n<h2><em><strong>Day 8 </strong>: Sundarbnan Today in the morning after breakfast, we will take an onward journey to Dobanki Forest Reserve & various islands & creeks. A thrilling boat cruise inside creeks and dense forest through numerous rivers while visiting Dobanki Watch Tower where the canopy walk inside the forest sends chills down your body (experience the life in which caged animals live in, while getting an all around view of the forest). Also, we will visit the spotted Deer Rehabilitation centre. Thereafter, we will cruise through Matla – Sea face (the point from where the Bay of Bengal can be seen)- Cruising back the 5 river junction to Pitchkhali. Later return back to the resort for Lunch. In the evening, we will =promenade around the neighboring villages to interact with the local community at a typical Sunderban settlement their local art, Culture & Way of life (how man & tiger coexist in such a difficult terrain. In simple words a rendezvous stay the rural Bengal. Enjoy an overnight stay at the hotel/resort in Sundarban.</em></h2>\r\n\r\n<h2><em><strong>Day 9 </strong>: Sundarban - Transfer to Kolkata In the morning after tea, we will departure for Sudhanyakhali & various creeks & Islands, breakfast onboard Brunch. Later, checkout from the hotel to reach the Basanti Port. Drive to Kolkata again with the unforgettable experience. After reaching Kolkata, you will get transfer to the airport/ Railway station for onward journey.</em></h2>\r\n', '00:00:09', '00:00:09', '2019-06-09', '2019-03-18', 28500.00, 'kolkata-high-court.jpg', 'active'),
(10, 'TAWANG EXCURSION TOUR PACKAGE', '\"Bhopal, Madhya Pradesh, India\"', '\"Satpura ,bhopal\"', '<p>Tawang is not just one of the 16 administrative districts of Arunachal Pradesh, but also one of the most beautiful districts of Arunachal Pradesh. From natural marvels to man-made wonders, the place has them all. Therefore, we have designed a tour package that tenders you the chance of witnessing every gem of Tawang. Be it the orchid garden, colorful tribes, warm valleys or ancient monasteries, we take you to every place that perfectly defines an excursion to Tawang.</p>\r\n\r\n<p>Dat 1: ARRIVE GUWAHATI</p>\r\n\r\n<p>On arrival at Guwahati airport / railway station meet with our representative and transfer to the hotel. In the evening visit Kamakhya Devi Temple. Stay overnight at the hotel.</p>\r\n\r\n<p> Dat 2: GUWAHATI – BHALUKPONG, 245 KM / 6 HRS</p>\r\n\r\n<p>In the morning after breakfast drive to Bhalukpong, the sylvan paradise in Arunachal Pradesh. On arrival, check into a hotel. In the evening visit one of Asia’s largest gardens of orchids that houses over 450 rare orchids out of 1000 found in India. You can also visit the snow-fed Kameng River that flows alongside. Return to the hotel for overnight stay.</p>\r\n\r\n<p>Dat 3: BHALUKPONG - DIRANG, 137 KM / 5 HRS</p>\r\n\r\n<p>After breakfast drive to Dirang that has a picturesque Monpa Valley (8600ft). En-route we will visit Bomdila Monastery, which was constructed by Tsona Gontse Rinpoche, the 12th reincarnate. The monastery is one of the most famous attractions of Bomdila and was inaugurated in 1965. Bomdila monastery is abode to Buddhist Monks and Lamas. It is believed to be the monastery here in Bomdila is exact replica of Tsona Gontse Monastery.</p>\r\n\r\n<p>Upon arrival at Dirang, check into the hotel. In the evening you are free to visit the hot water spring, regional sheep farm, Sangti and Yak Research Center. Overnight stay at the hotel.</p>\r\n\r\n<p>Dat 4: DIRANG - TAWANG, 145 KM / 6 HRS</p>\r\n\r\n<p>After an early breakfast we will leave for one of the most popular tourist destinations, Tawang. We will be driving through the beautiful valley of Dirang to reach Sela Pass (13703 ft). En-route bubbling river and colorful tribes will greet you. On reaching spend some time around the paradise lake, which is the land of the Monpa tribes and a major center of the Mahayana Buddhism. Later, we will continue our drive to Tawang. Upon arrival, check into a hotel. In the evening you can visit the Craft Center and traditional Monpa Village. Overnight stay in the hotel.</p>\r\n\r\n<p>Dat 5 :TAWANG</p>\r\n\r\n<p>Today we will have a full day excursion around Tawang. We will visit the famous Tawang Monastery, which was founded by Mera Lama Lodre Gyaltso. He was a contemporary of the fifth Dalai Lama and founded the Monestery during 17th century A.D. At present it accommodates over 500 monks and houses priceless Buddhist texts and scriptures.</p>\r\n\r\n<p>Later, we will go on a short trek to Bramdungchung Ani Gomap, which is the abode of nuns and the oldest Ani Gompa in Tawang. The Gompa is situated in the lap of a far off mountain laced with natural scenery and comes under the administration of Tawang Monastery.</p>\r\n\r\n<p>In the evening we will visit Urgelling Monastery, situated 5 km to the south of town. It was here in 1683 Tsangyang Gyatso, the sixth Dalai Lama was born. We will also visit the Monpa Village. Overnight stay at the hotel in Tawang.</p>\r\n\r\n<p>Dat 6: TAWANG – ZIMTHANG, 92 KM ONE WAY – TAWANG</p>\r\n\r\n<p>Today we will start our day a little early for an excursion to Zemithang. We will visit the sky looming stupa which was constructed by Lama Prathar of Kharman village in 13th century AD. There are a number of devotees that visit it during Gorzam Kora festival.<br>\r\nLater we will return back to Tawang for overnight stay.</p>\r\n\r\n<p>Dat 7:TAWANG - BOMDILA, 180 KM / 5 HRS</p>\r\n\r\n<p>Today after breakfast we will drive back to Bomdila. On the way we will stop to visit 1962 Indo-China War Memorial, which is dedicated to Rifleman Jaswant Singh Rawat, of the 4th Battalion of Garhwal Rifles Infantry Regiment. He showed his heroism by fighting and holding the attack of China back for 72 hours all alone. Singh remained at his post at an altitude of about 10,000 feet before succumbing to an enemy bullet during that bloody winter war. The memorial is located 25 km before Tawang and is surrounded by scenic terrain just below the Sela Pass.</p>\r\n\r\n<p>After visiting the war memorial, we will continue our drive to Bomdila. En-route enjoy the beauty of snow-clad peaks namely Kangto (7090 mt), Nyegi Kangsang (7050 mt), Gorichen (6488 mt).</p>\r\n\r\n<p>Upon arrival at Bomdila, check into the hotel. Enjoy evening at leisure, followed by overnight stay at the hotel.</p>\r\n\r\n<p>Dat 8:BOMDILA – TIPI – TEZPUR, 210 KM / 6 HRS</p>\r\n\r\n<p>Today after breakfast we will drive to Tezpur, en-route visit the Orchid Center at Tipi. Tipi houses over 7500 orchids. On display are some of the finest species like the Dainty Lady’s Slipper or the more formal sounding Dendrobium.</p>\r\n\r\n<p>Continue drive to Tezpur. Upon arrival, check into the hotel. Fresh-n-up and enjoy a sightseeing tour of Tezpur.</p>\r\n\r\n<p>The place is also known as ‘The City of Blood’. It is steeped in mythologies and legends. Situated on the north bank of Brahmaputra, this town of magnificent scenic beauty and exquisite archaeological ruins is the head quarter of Sonitpur District. Overnight stay at the hotel.</p>\r\n\r\n<p>Dat 9: TEZPUR – GUWAHATI, 181 KM / 4 HRS</p>\r\n\r\n<p>After breakfast we will leave for Guwahati. Upon arrival we will transfer you to the airport/railway station for onward destinations.</p>\r\n\r\n<p> </p>\r\n', '00:00:05', '00:00:05', '2019-04-02', '1969-12-31', 10000.00, 'tawang.jpg', 'active'),
(12, 'Rajasthan Vacations Package', '\"Udaipur, Rajasthan, India\"', '\"Delhi, India\"', '<h2><strong>Day 01</strong>: Arrive DelhiJama Masjid, Delhi Upon arrival at Delhi meeting and assistance followed by transfer to hotel. Overnight stay at hotel.</h2>\r\n\r\n<h2><strong>Day 02</strong>: Delhi Breakfast at the hotel and enjoy the full day sightseeing of New Delhi in the Morning which includes Laxmi Narayan Temple, India Gate, Parliament House, Qutub Minar, Purana Qila, Humayun’s Tomb, Jantar Mantar Etc. After having lunch we can proceed for the sightseeing of Old Delhi which includes Jama Masjid, Red Fort, Gandhi memorial, Raj Ghat. You also can enjoy the light & sound show at Red Fort in the evening etc. Overnight stay at the hotel.</h2>\r\n\r\n<h2><strong>Day 03</strong>: Delhi - Mandawa Breakfast at the hotel and drive to mandawa. On arrival at Mandawa check-in at hotel. Afternoon visit Mandawa. Overnight stay at hotel. Walk through the Shekhawati region, which was the bhold of Kayamkhani Nawabs till 1730. Besides the cenotaphs, wells, forts and temples the majority of frescoes are painted on the walls and gateways of Havelis. The havelis are mansion of a unique residential architectural style that evolved around courtyards to serve the purpose of family security, privacy for the women as also protecting the inhabitants from the long, harsh summers. The enormous Havelis with fascinating murals built by the wealthy Rajasthani merchants (\"Marwaris\") in the 19th century.</h2>\r\n\r\n<h2><strong>Day 04</strong>: Mandawa - Gajner Breakfast at the hotel and drive to Gajner. On arrival at Gajner check-in at hotel. Afternoon excursion to Bikaner visiting Bikaner Fort, the Lalgarh Palace & Camel breeding farm. Overnight stay at hotel.</h2>\r\n\r\n<h2><strong>Day 05</strong>: Gajner - Jaisalmer Jaisalmer Fort Breakfast at the hotel and drive to Jaisalmer. On arrival at Jaisalmer check-in at hotel. Overnight stay at hotel. Jaisalmer was founded by Prince Jaisal Bhatti. The town stands on a ridge of yellowish sandstone, crowned by a fort, which contains the palace and several ornate Jain temples. Centuries ago Jaisalmer&#39;s strategic position on the camel train routes brought its locals enormous wealth which they spent in building intricately carved palaces and temples in golden-yellow sandstone. These fortresses of Jaisalmer also known as Havelis of Jaisalmer are like a mirage in the barren Thar Desert. On either side of the narrow lanes of Jaisalmer are the sandstone havelis, made up with stone carvings, screen windows, delicate pavilions and balconies.</h2>\r\n\r\n<h2><strong>Day 06</strong>: Jaisalmer After breakfast go for full day for sightseeing tour of Jaisalmer. Visit the Jaisalmer Fort - Jaisalmer Fort is one of the largest forts in the world. It is situated in Jaisalmer city in the Indian state of Rajasthan. It was built in 1156 AD by the Bhati Rajput ruler Rao Jaisal, from where it derives its name, Manak Chowk, Havelis, Gadisar Lake - Gadisar Lake is one of the most important tourist attractions in Jaisalmer, Rajasthan, Its charm lies in the fact that it was the only source of water for the Jaisalmer city in the olden days, and the colorful markets. In the afternoon go for an excursion to Sam Sand Dunes. In the evening take a camel safari and enjoy the sunset at sand dunes. Later drive back to Jaisalmer. Stay overnight at the hotel.</h2>\r\n\r\n<h2><strong>Day 07</strong>: Jaisalmer - Jodhpur Jodhpur Fort After breakfast drive to Jodhpur. On arrival at Jodhpur check-in at hotel. Evening free for shopping around the local market. Overnight stay at hotel. Jodhpur is known as the \"Sun City\" for the bright, sunny weather it enjoys round the year. It is also referred to as the \"Blue City\" due to the bright blue-painted houses around the Mehrangarh Fort. The old city circles and the fort is bounded by a wall with several gates. Whereas, the city has expanded very much outside the wall over the past several decades.</h2>\r\n\r\n<h2><strong>Day 08</strong>: Jodhpur - Luni Breakfast at the hotel and drive to Luni. On arrival at Luni check-in at hotel. Afternoon city tour of Luni. Overnight stay at hotel.</h2>\r\n\r\n<h2><strong>Day 09</strong>: Luni - Deogarh After breakfast drive to Deogarh. On arrival Deogarh transfer to the hotel. visit the surrounding villages and witness their daily lifestyle of living of the villagers. Overnight stay at hotel.</h2>\r\n\r\n<h2><strong>Day 10</strong>: Deogarh - UdaipurUdaipur Lake Palace After breakfast drive to Udaipur. On arrival Udaipur check-in at hotel. Overnight stay at hotel. Udaipur the “City of Lakes” is one among the most romantic and most beautiful citiy of India. It is a lovely land around the blue water lakes, edge of the lush hills of the Aravalis. A vision in white soaked in romance and beauty, Udaipur city of Rajasthan state is a fascinating blend of sights, sounds and experiences - an inspiration for the imagination of the painters, poets and writers. Udaipur&#39;s lakes, gardens, temples and narrow lanes scattered with stalls, carry the flavor of heroic past, epitomizing valor and chivalry.</h2>\r\n\r\n<h2><strong>Day 11</strong>: Udaipur In the morning take a boat ride at Lake Pichola. Next visit City Palace - It was built by the Maharana Udai Singh as the capital of the Sisodia Rajput clan in 1559. Jagdish Temple - Jagdish Temple is a large Hindu temple in the middle of Udaipur in Rajasthan. A big tourist attraction, the temple was originally called the temple of Jagannath Rai but is now called Jagdish-Ji, Saheliyon ki Bari (Gardens of the maids of Honor) and Museum. Evening transfer to the hotel. Stay overnight at the hotel.</h2>\r\n\r\n<h2><strong>Day 12</strong>: Udaipur - Pushkar Pushkar Lake After breakfast drive to Pushkar. On arrival Pushkar check-in to the hotel. Evening free to visit surroundings, also evening proceed for Aarti ceremony at Lord Brahma Temple - The temple is one of very few existing temples dedicated to the Hindu creator-god Brahma in India and remains the most prominent among them. Overnight stay at hotel. Pushkar in Sanskrit means blue lotus flower. Hindus believe that the gods released a swan with a lotus in its beak and let it fall on earth where Brahma would perform a grand yagna. The place where the lotus fell was called Pushkar. Pushkar is also famous of their fairs and festivals. Three popular fairs of Pushkar are the Pushkar Fair, Tejaji fair and Nagaur fair and the Pushkar fair the most happening among them.</h2>\r\n\r\n<h2><strong>Day 13</strong>: Pushkar - Jaipur Breakfast at the hotel and drive to Jaipur. On arrival at Jaipur check-in at hotel. Overnight stay at hotel.</h2>\r\n\r\n<h2><strong>Day 14</strong>: Jaipur After breakfast go for an excursion to Amer Fort. Ascend the fort on Elephants back. In the afternoon take tour of the city visiting the City palace, the Jantar Mantar (observatory), the Palace of Winds and the Birla temple. In the evening check into a hotel. Stay overnight at the hotel.</h2>\r\n\r\n<h2><strong>Day 15</strong>: Jaipur - Fatehpur Sikri - AgraTaj Mahal Breakfast at the hotel and drive to Agra, en-route visit Fatehpur Sikri. Fatehpur Sikri was built during 1571 and 1585. Fatehpur Sikri is one of the finest examples of Mughal architectural splendour at its height. Later continue drive to Agra. On arrival at Agra check-in at hotel. Afternoon visit Agra Fort. Overnight stay at hotel. Agra Fort, which has the Pearl Mosque, Diwan-e-am (the hall of public audience) and Diwan-e-Khas (the hall of private audience).</h2>\r\n\r\n<h2><strong>Day 16</strong>: Agra - Delhi Breakfast at the hotel. Morning visit the famous Taj Mahal. Afternoon drive to Delhi. On arrival at Delhi check-in at hotel. Overnight stay at hotel. Taj Mahal built by Mughal Emperor Shah Jahan as a memorial to his queen Mumtaz Mahal, made out of white marble took 22 years to complete (1630-1652 AD). Day 17: Delhi Depart Breakfast at the hotel and transfer to international airport to connect flight for onward destination.</h2>\r\n', '00:00:12', '00:00:12', '2019-06-17', '2019-07-03', 41950.00, 'Mumbai-aerial-photo-drone-photo-866x487.jpg', 'active'),
(17, 'Buddhist Tour of Andhra Pradesh ', '\"Hyderabad, Telangana, India\"', '\"Hyderabad, Telangana, India\"', '<h2>The states of Telangana and Andhra Pradesh are replete with loads of Buddhist temples offering the spiritual tourists a unique sense of tranquillity and spirituality. These temples belong to ancient times and boast high significance as well. For this reason, these temples are swarmed by the tourists all-round the year. The magnificent architecture of these temples add feather to the hat. This 06 Nights and 07 Days of itinerary take the travellers to a Buddhist Tour of Andhra Pradesh and Telangana. Major destinations covered in the itinerary are Hyderabad, Warangal, Nagarjunkonda, Vijayawada, Amravati, and Vishakhapatnam. Some of the major highlights of the trip are enjoying sightseeing tour in Hyderabad, exploring temples and forts in Warangal, traversing through the wonderful cities Amravati and Vijayawada, and enjoying laze around on the sandy beaches in Vishakhapatnam. This tour perfectly blends a nature tour and spiritual excursion.</h2>\r\n\r\n<h2><strong>Day 01</strong>: Arrival Hyderabad Char Minar On arrival at Hyderabad railway station/airport, meet our representative who will be there for your warm welcome and thereafter to transfer you to your already booked hotel in the city. Check in at the hotel and get ready for the local sightseeing tour of Hyderabad. In our day tour, we will be visiting the Golconda Fort. Situated in the western part of Hyderabad city, this hilltop fort is listed among one of the major tourist attractions. It was originally known as Mankal. After exploring the fort, we will return back to the hotel for a comfortable overnight stay.</h2>\r\n\r\n<h2><strong>Day 02:</strong> Hyderabad - Nagarjunkonda – Hyderabad After breakfast in the morning, we will leave for a day tour to Nagarjunkonda, popular for its Buddhist temple remains and museum. It is a famous historical Buddhist town now an island nested near Nagarjuna Sagar in Guntur district in Andhra Pradesh state in India. Later, we will return back in Hyderabad for a relaxing overnight stay.</h2>\r\n\r\n<h2><strong>Day 03:</strong> Hyderabad – Warangal In the morning after breakfast, we will check out from the hotel and drive to Warangal. On reaching, check in at the already booked hotel and rest for some time. Thereafter, we will embark on the local sightseeing tour of Warangal. In our day tour, we will pay a visit to Ramappa Temple also known as the Ramalingeswara temple. Further, we will be visiting Thousand Pillared Temple. It is located in Hanamkonda is one of the most important parts of the Warangal City and is dedicated to Shiva, Vishnu and Surya. Afterwards, we will head towards Warangal Fort which was once the capital of the Kakatiya dynasty. Thereafter, we will head toward Pakhal Lake which is a man-made lake in the Pakhal Wildlife Sanctuary in Warangal district. Once can witness tiger, bear, leopard, etc. in the sanctuary and have a lifetime experience. Later, we will return back to our hotel for a comfy overnight stay.</h2>\r\n\r\n<h2><strong>Day 04:</strong> Warangal – Vijayawada Today after breakfast in the morning, we will drive to Vijaywada. On reaching, check in at the pre-booked hotel and rest for a while. After having lunch in the hotel premises, the rest of the day is free at leisure. During your free time, you can either stay back in the hotel and take pleasure of its modern amenities or go out for a leisure walk to explore the beautiful surroundings. Enjoy an overnight stay in the hotel in Vijaywada. Vijaywada Tour</h2>\r\n\r\n<h2><strong>Day 05:</strong> Vijayawada – Amravati We will leave for Vijaywad&#39;s local sightseeing tour today after breakfast in the morning. Our today&#39;s day tour will start with a visit to the well known Durga temple. It is one of the famous Hindu temples dedicated to Goddess Durga. After offering prayers in the temple, we will head towards Amravati. Here, one can witness the medieval ruins of Buddhist temples and stupas. Thereafter, we will return back to the hotel in Vijaywada for a stress free overnight stay.</h2>\r\n\r\n<h2><strong>Day 06:</strong> Vijayawada – Visakhapatnam After breakfast in the morning, we will check out from the hotel in Vijaywada and drive to Visakhapatnam. On arrival, check in at the already booked hotel and rest for some time. Later in the evening, go out for a leisurely walk at the beach and spend some quality time. An overnight stay in the hotel in Vishakapatnam.</h2>\r\n\r\n<h2><strong>Day 07:</strong> Departure On the last day of our tour, we will start our day a bit early in the morning to take a short tour to Vishakhapatnam and witness its beautiful surroundings. Afterwards, get direct transfer to the airport to board flight for Delhi. On reaching Delhi, get direct transfer to Delhi international airport to board flight for onward destination.</h2>\r\n', '07 : 50 : AM', '02 : 40 : PM', '2019-05-07', '2019-05-09', 17899.00, '6.jpg', 'active'),
(18, 'Gujarat Tour with Central India', '\"Delhi, India\"', '\"Mumbai, Maharashtra, India\"', '<h2><strong>Day 01</strong>: Arrival in Mumbai On arrival in Mumbai, meet our tour representative who will receive you at the Mumbai Airport and transfer you to your already booked hotel. Check in at the hotel for dinner followed by an overnight stay.</h2>\r\n\r\n<h2><strong>Day 02</strong>: Mumbai Elephanta Caves After breakfast in the morning, we will proceed for a city tour. We will be visiting popular places of Mumbai such as the Prince of Wales Museum, Hanging Garden, Dhobhighat, and Elephanta Caves, a World Heritage Site. The Elephanta Caves have some quaint temples that date back to the 7th century. Later, return back to the hotel for an overnight stay.</h2>\r\n\r\n<h2><strong>Day 03</strong>: Mumbai - Bhavnagar (By Flight) In the morning after breakfast, we will leave to board a flight to Bhavnagar. On arrival, check in at the hotel and after resting for some time, we will leave for the city sightseeing tour of Bhavnagar. Palitana Temple Gujarat Located in the peninsular region of Gujarat, Bhavnagar is dotted with a number of lakes and Hindu shrines. The famous Hindu Shrines in the city are BAPS Shri Swaminarayan Mandir, Takhteshwar temple, Khodiyar temple, Omkareshwar temple and many more. Founded by Bhavsinghji Gohil, the city was once a booming port town. After exploring the city, we will return back to the hotel for an overnight stay.</h2>\r\n\r\n<h2><strong>Day 04</strong>: Bhavnagar Today after breakfast in the morning, we will leave for Palitana which is home to renowned Jain temples. There are more than 863 temples that are wonderful specimens of marble architecture. Overnight stay at the hotel in Bhavnagar. Ujjain Tourism Day 05: Bhavnagar - Ahmedabad - Ujjain Post breakfast in the morning, we will drive to Ahmedabad. On arrival, check in at the hotel. After getting fresh enjoy lunch and after then we will proceed for city sightseeing tour. Popular reputed places like Calico Museum, Jama Masjid, Sidi Bashir&#39;s Mosque, Rani Rupmati&#39;s Mosque and the Narayan Temple we will cover in this sightseeing tour. Later, we will board the overnight train to Ujjain from the Ahmedabad Railway station.</h2>\r\n\r\n<h2><strong>Day 06</strong>: Ujjain On arrival in Ujjain our executive will receive you and transfer to hotel. After getting fresh and taking breakfast we will for a city sightseeing tour. Ujjan is situated in the Malwa region of Madhya Pradesh and is known for a number of famous Hindu religious sites like Bade Ganeshji Ka Mandir, Harsiddhi Temple, Vikram Kirti Mandir and more. We will visit these famous Hindu shrines in our city sightseeing tour. Overnight stay will be at the hotel in Ujjain. Mandu Tourism Day 07: Ujjain - Mandu Today, we will drive to Mandu in the morning after breakfast. On arrival, check in at the hotel and relax. The rest of the day is free for leisure. A ruined city in Madhya Pradesh, Mandu is famous for its Afghan architecture. It celebrates the romance of the poet-prince Baz Bahadur and his consort Rani Roopmati. Take pleasure of an overnight stay in the hotel.</h2>\r\n\r\n<h2><strong>Day 08</strong>: Mandu After breakfast in the morning, we will leave to spend the day touring the city of Mandu. We will be visiting the Jahaz Mahal, Hoshang Shah&#39;s Tomb, Baz Bahadur&#39;s Palace and Rani Roopmati&#39;s Pavilion, initially constructed as an army observation post. It also served as the Queen&#39;s retreat from where she could see the Baz Bahadur&#39;s palace. Overnight stay in the hotel in Mandu.</h2>\r\n\r\n<h2><strong>Day 09</strong>: Mandu - Maheswar - Omkareshwar - Indore Omkareshwar Tourism In the morning after breakfast, we will drive to Indore via the holy towns Maheshwar and Omkareshwar. On arrival at Indore, check in at the hotel for an overnight stay. The island of Omkareshwar is replete with a number of Hindu temples among which Omkar Mandhata Temple is among one of the 12 most venerated Shiva shrines in India. Located on the banks of the Narmada, Maheshwar is a historical town that finds mention in Hindu epics Ramayana and Mahabharata. Overnight stay at hotel.</h2>\r\n\r\n<h2><strong>Day 10</strong>: Indore - Bhopal Post breakfast in the morning, we will enjoy a sightseeing tour of Indore. Later, we will set out for Bhopal. Architectural marvels dating back to the period of the Holkars dot the city of Indore. The Rajwada or the Old Palace, sporting a fine combination of the occidental and oriental architectural styles, is one of the main attractions. On arrival at Bhopal, check-in at the hotel for an overnight stay.</h2>\r\n\r\n<h2><strong>Day 11</strong>: Bhopal Sanchi Sightseeing The day is fixed for a day-excursion to Sanchi. One of the most popular Buddhist sites in the world, Sanchi is an important Buddhist site. The Sanchi Stupa, Archaeological Museum, and the Great Stupa built by Emperor Ashoka are some of the places to visit. Later, return back to your hotel in Bhopal and an overnight stay in the hotel.</h2>\r\n\r\n<h2><strong>Day 12</strong>: Bhopal - Gwalior In the morning after healthy breakfast, we will leave to take a city tour of Bhopal. In the afternoon, you will be transferred to the Bhopal railway station. Board a train to reach Gwalior. In Gwalior, we will be visiting the Bhopal Bharat Bhavan, Indira Gandhi Rashtriya Manav Sangrahalaya or the National Museum of Mankind, Taj-ul-Masjid, and the Laxminarayan Temple, popularly known as the Birla Mandir. Enjoy an overnight stay at the hotel in Gwalior.</h2>\r\n\r\n<h2><strong>Day 13</strong>: Gwalior - Agra Gwalior Fort After breakfast, we will embark on a Gwalior city tour. Later, we will head towards Agra and check into the hotel on arrival. Spend the night in the hotel in Agra. Built by Raja Man Singh Tomar, the Gwalior Fort was described as \"the pearl in the necklace of the forts of Hind\" by Mughal Emperor Babur. Also visit the Scindia Museum that showcases items reflective of the splendor of Gwalior.</h2>\r\n\r\n<h2><strong>Day 14</strong>: Agra - Delhi In the morning after breakfast, we will take a sightseeing tour of Agra. We will visit the Taj Mahal, the most enduring symbol of love, commissioned by Shah Jahan in the memory of his beloved wife Mumtaz Mahal.Taj Mahal Sightseeing The Agra Fort stands tall in red sandstone and is also a World Heritage Site. Later, we will drive to Delhi in the afternoon and check into the hotel on arrival. An overnight stay at hotel in Delhi.</h2>\r\n\r\n<h2><strong>Day 15</strong>: Delhi On the last day of the Central India with Gujarat Tour. Spend the day touring the historic city of Delhi. We will be visiting the major highlights of Delhi are Humayun&#39;s Tomb, Lotus Temple, Qutub Minar, Raj Ghat, Jama Masjid, President&#39;s Residence, Diplomatic Enclave and the Red Fort, among others. Later, you will be transferred to Delhi airport to board a flight back home.</h2>\r\n', '02 : 00 : PM', '05 : 30 : PM', '2019-04-15', '2019-05-30', 20000.00, '4.jpg', 'active'),
(19, 'goa', '\"Mumbai - Goa Hwy, Maliwadi, Chiplun, Maharashtra,', '\"Goa, India\"', '<h3><strong>(Per Person)</strong></h3>\r\n\r\n<p><strong>Day 1</strong>: Arrival in Goa Arrive in Goa on your own and meet the representative at the airport Get a transfer to the hotel, check-in and spend the rest of the day at leisure Enjoy an overnight stay at the hotel.</p>\r\n\r\n<p><strong>Day 2</strong>: Sightseeing in North Goa Post breakfast, head out to explore North Goa Visit popular attractions including Fort Aguada, Candolim Beach, Calangute Beach and Baga Beach Return to the hotel and enjoy an overnight stay</p>\r\n\r\n<p><strong>Day 3</strong>: Day at Leisure Today, spend the day at leisure You could choose to explore the nearby places on your own or relax in the swimming pool It is suggested that you head out to enjoy at a beach like Baga or Anjuna, chill at a cafe or try your luck at a casino</p>\r\n\r\n<p><strong>Day 4</strong>: Departure Get a transfer to the bus stand for your return journey</p>\r\n', '03 : 40 : PM', '03 : 40 : PM', '2019-04-10', '2019-04-13', 10000.00, 'goa-tour-package-500x500.png', 'active'),
(20, 'Nav Devi Darshan Tour', '\"Delhi, India\"', '\"Chandigarh, India\"', '<h2>Goddess Durga is worshipped in different forms among the Hindus. Nau Durga are the nine manifestations of Goddess Durga that hold the paramount position in Hindu Mythology. It is believed that paying homage to these forms of Goddess makes the devotee free from all the sins and wrongdoings.</h2>\r\n\r\n<h2>There are nine major abodes of Goddess Shakti. Seven abodes are in Himachal Pradesh, one is in Jammu and remaining one is in Chandigarh. The devotees swarm these pilgrimages to drench themselves in spirituality.</h2>\r\n\r\n<h2>This 7 Nights and 8 Days tour to Nau Devi Darshan offers the tourists an unmatched opportunity to carry out the religious tour during the auspicious time of Navaratri (Sept-Oct). This tour itinerary takes the devotees to the 9 holy temples of Goddess Durga where they can fill their minds with utter tranquillity and spirituality in a short span of time.</h2>\r\n\r\n<h2><strong>Day 1 </strong>: Delhi - Chandigarh A week of the spiritual journey starts from Delhi. Proceed to Chandigarh by road. It is around 5-6 hours excursion to Chandigarh. En route, visit Mata Mansa Devi Mandir near Majra. This temple is the holy abode of Manasa Goddess. Devotees horde this place to the tie a threat around the tree as it is believed that wishes of people come true by doing it. Arrive at Chandigarh and check in at the hotel. After taking bit rest, go for city tour. Overnight stay at the hotel.</h2>\r\n\r\n<h2><strong>Day 2 </strong>: Chandigarh - Nainadevi - Chintpurni Proceed towards Shri Nainadevi Temple in the morning. This temple is positioned on hilltop in Bilaspur District. You can reach the peak of hill by following the concrete stairs or using cable car facility. This cable car facility is highly famous among the pilgrims. This temple is considered holy and several mythologies are also linked with it. Afterwards, drive to Chintpurni. This drive take 4-5 hours from Chandigarh to Himachal.</h2>\r\n\r\n<h2><strong>Day 3 </strong>: Chintpurni - Jwala Ji - Kangra Devi - Dharamsala Head towards the beautiful hill station of Dharamshala in morning. It takes around 4 hours of drive. Stop by to visit Mata Jwala Devi and Brijeshwari Temple at Kangra on the way. Jwala ji Shrine is renowned for its exquisiteness. Brijeshwari Temple is popular for its elaborated fabrications along with the rich rituals performed there. Later on, continue the journey to Dharamshala. On reaching, check in at the hotel. Overnight stay in the hotel.</h2>\r\n\r\n<h2><strong>Day 4 </strong>: Dharamsala This hill station is positioned in the upper region of the Kangra Valley. Because of its location and the backdrop, Dharamshala has gained recognition among the tourists. This day is for exploring this hill station. Head out for trip to Chamunda Devi Temple in morning. This is the temple of Goddess Shakti. In afternoon, take a tour to Dalai Lama Monastery and Bhagsu Nag Temple. Overnight stay in the hotel.</h2>\r\n\r\n<h2><strong>Day 5 </strong>: Dharamsala - Katra - Vaishno Devi Take a 6-7 hours road trip to Katra through Jammu in the morning. Get freshen up in the hotel in Katra. Later, trek to Vaishno Devi. Overnight stay in a dharamshala in Vaishno Devi.</h2>\r\n\r\n<h2><strong>Day 6 </strong>: Katra Visit the shrine early in the morning. Come back to Katra and check in at the hotel.</h2>\r\n\r\n<h2><strong>Day 7 </strong>: Katra - Amrisar Leave for Amritsar in the morning. It takes about 4-5 hours drive to reach there. Check in at the hotel in Amritsar. Go out for the city tour in the morning. Overnight stay in the hotel.</h2>\r\n\r\n<h2><strong>Day 8 </strong>: Amritsar – Delhi Visit Golden Temple in the morning. Later, leave for Delhi. It is a 78 hours of drive to reach Delhi from Amritsar. Reach the railway station/airport.</h2>\r\n', '02 : 45 : PM', '11 : 30 : AM', '2019-05-01', '2019-05-08', 19599.00, 'kedarnath-dham1.jpg', 'active'),
(28, 'Best of Gujarat', '\"Vadodara, Gujarat, India\"', '\"Ahmedabad, Gujarat, India\"', '<h2>Gujarat is certainly a place like no other when it comes to attracting throngs of tourists with its natural exquisiteness along with wonders of history, culture and architectural brilliance. It is a destination that should not be missed by an aficionado of culture and art. This 05 Nights and 06 Days itinerary is a perfect tour for savouring the best of Gujarat&#39;s tourist destinations. The destinations covered in the tour are Ahmedabad, Rajkot, Somnath, Porbander, Dwarka and Jamnagar. The major highlights of this trip are sightseeing tour of Ahmedabad consisting Akshardham Temple, Gandhi Ashram and Calico Museum, Darshan at Virpur Temple, Darshan at Somnath Temple, Exploring Porbander, which is the hometown of Mahatma Gsandhi, and the journey to the legendary Dwarikadheesh Temple. The tour incorporates visiting the engrossing architectural feasts, ancient places and consecrated pilgrimage destinations. Best of Gujarat Tour Package Detailed Itinerary:</h2>\r\n\r\n<h2><strong>Day 01 </strong>: Ahmedabad On arrival at the Ahmedabad , meet our representative who will transfer you to your already booked hotel. In the afternoon, leave from the hotel to explore the major attractions of Gujarat including Calico Museum, Akshardham Temple, Gandhi Ashram and Adalaj Stepwell in Gandhinagar. Later return back to the hotel for an overnight stay.</h2>\r\n\r\n<h2><strong>Day 02 </strong>: Ahmedabad – Rajkot (220 Kms/5 Hours Drive) In the morning post breakfast, we will take a road journey to Rajkot. On the way, we will stop at Virpur Temple for worship. On arrival in Rajkot by evening, check in the hotel for a relaxing overnight stay. <strong>Day 03 </strong>: Rajkot – Somnath (189 Kms/ 5 Hours Drive) After breakfast in the morning, we will drive from Rajkot to Somnath. On arrival, check in at the hotel. In the evening, we will visit the Somnath temple. Enjoy an overnight stay in the hotel in Somnath. Rajkot to Somnath.</h2>\r\n\r\n<h2><strong>Day 04 </strong>: Somnath – Dwarka ( 230 kms / 5 Hours Drive) In the morning after breakfast, we will hit the road to Dwarka. En-route, we will halt in Porbandar and explore the surrounding attractions. On arrival in Dwarka by evening, check into the hotel and take pleasure of an overnight stay.</h2>\r\n\r\n<h2><strong>Day 05 </strong>: Dwarka The day is booked for the sightseeing tour of Dwarka. We will leave in the morning after breakfast to explore Dwarka and its surrounding areas. Later return back to the hotel for an overnight stay.</h2>\r\n\r\n<h2><strong>Day 06 </strong>: Dwarka – Jamnagar airport Today, we will transfer you to the Jamnagar Airport to board the flight for onward destination.</h2>\r\n', '08 : 30 : PM', '07 : 30 : PM', '2019-03-23', '2019-03-29', 9000.00, 'dwarka-tourism.jpg', 'active'),
(29, 'A Tour to Coastal Andhra Pradesh', '\"Visakhapatnam, Andhra Pradesh, India\"', '\"Vijayawada, Andhra Pradesh, India\"', '<h2><strong>Day 01</strong>: Arrival Vijayawada On arrival at Vijayawada Airport/ Railway station, meet our tour representative who will be there for your welcome and thereafter to transfer you to your already booked hotel in Vijaywada. Check in at the hotel and take pleasure of a relaxing overnight stay.</h2>\r\n\r\n<h2><strong>Day 02</strong>: Vijayawada Tour In the morning after breakfast, we will leave for the local sightseeing tour of Vijaywada. In our day tour, we will be visiting Mangalagiri Panakala Narsimhaswamy Temple. This temple is located on the hill and is listed among one of the eight Vaishnava Kshetram that are self manifested. After exploring this beautiful temple, we will head towards Undavalli Caves that are regarded as a gigantic example of Indian rock-cut architecture. Located in Undavalli of Guntur district in Andhra Pradesh state in India, these caves were made out of solid sandstone on a hillside in the 4th to 5th centuries A.D. Thereafter, we will cross through Prakasam Barrage, which is long stretch across the Krishna River connecting Guntur and Krishna districts and afterwards visit Bhavani Island. Located in the midst of the Krishna River at Vijayawada, the island lies at the upstream of Prakasam Barrage and is regarded as one of the largest river island with 133 acres of area. Later in the evening, we will pay a visit to Durga Temple which is located at Indrakeeladri. Enjoy an overnight stay in the hotel in Vijayawada.</h2>\r\n\r\n<h2><strong>Day 03</strong>: Vijayawada – Rajahmundry Today after breakfast in the morning, we will check out from the hotel in Vijayawada and drive to Rajahmundry. En-route, we will visit Penugonda Sri Vasavi Kanyaka Parameswari Temple, which is the birth place of Vasavi Matha. It enshrines the triple deities- Sri Nagareswaraswamy, Mahishasuramardini and Mother Kanyakaparameswari. Afterwards, we will head towards Ryali Jaganmohini Kesava Swamy Temple that has a shrine of Sri Jagan Mohini Keshava Swamy which is made up of single stone (Salagrama Ekashila - 5 feet height and 3ft width). The idol in the temple looks like Sri Vishnu (male) from front side and as Mohini (female) from rear side. Further, we will head towards Draksharamam Bheemeswara Swamy Temple. This temple is listed among one of the five powerful temples of Lord Siva and is known as Pancharama Kshetras. Later in the evening, we will reach at our final destination for the day i.e. Rajahmundry. On arrival, check in at the already booked hotel and have a comfortable overnight stay.</h2>\r\n\r\n<h2><strong>Day 04</strong>: Rajahmundry – Bhadrachalam boating We will start our day a bit early in the morning today and check out from the hotel in Rajahmundry to drive to Polavaram revu/ Pattiseema revu / Purushothapatnam Revu, which is about 35 km away. On reaching, we will board the boat from here and have breakfast in the boat itself. Afterwards, we will enjoy boat journey and head towards Bhadrachalam. On the way, we will be visiting Posammagandi, Polavaram, Devipatnam, Papi Hills (Papi Kondalu) and Perantapalli Village. Afterwards, enjoy vegetarian Lunch in the boat. Thereafter, we will travel to Koida or Pochavaram from Perantapalli by small boat. From Koida or Pochavaram, we will drive to Bhadrachalam, which is about 85 km away. On reaching, check in at the pre-booked hotel and have an overnight stay.</h2>\r\n\r\n<h2><strong>Day 05</strong>: Bhadrachalam – Dwaraka Tirumala – Rajahmundry (230 km) Today, we will again start our day a bit early in the morning and visit Seetha Ramachandra Swamy Temple, a famous temple devoted to Lord Rama. We will also visit Parnasala, a Village located in the Dummugudem mandal in the Khammam district of Telangana in India and is about 40 km away. Thereafter, we will return back to Bhadrachalam and check out from the hotel to drive to Dwaraka Tirumala. En-route, we will visit Maddi Anjaneya Swamy Temple. Nested at Guruvaigudem in West Godavari district in Andhra Pradesh state in India, the temple is one of the famous temples of Lord Hanuman. Further, we will visit Lord Venkateswara Temple. It is a landmark vaishnavite temple located in the hill town of Tirumala at Tirupati in Chittoor district of Andhra Pradesh, India. The Temple is devoted to Lord Venkateswara, a living form of Vishnu. Afterwards, we will proceed to Rajahmundry, our final destination for the day. On reaching, check in at the hotel and take pleasure of a relaxing overnight stay.</h2>\r\n\r\n<h2><strong>Day 06</strong>: Rajahmundry - Annavam - Vizag (200 km) We will visit Satyanaraya Swamy Temple and perform Vratham. It is located on the Ratnagiri hill. Afterwards, we will head towards Vizag. On reaching, check in at the pre-booked hotel and rest for some time. Later in the evening, we will leave for the local sightseeing of Vizag. In our sightseeing tour, we will be visiting Kailasagiri which is a hilltop park in the city of Visakhapatnam that overlooks beaches and forests. Further, we will visit Submarine Museum that is set up at the Rama Krishna Beach in Visakhapatnam. It is the first submarine that tuned up into a museum in Asia and second in the World. Thereafter, we will head towards RK Beach. The Rama Krishna Mission Beach is one of the most famous beach parks in Visakhapatnam, Andhra Pradesh. It gets its name from the Ramakrishna Mission ashrama located across the Beach Road from the park. After spending some quality time here, we will return back to the hotel for an overnight stay in Vishakhapatnam (Vizag).</h2>\r\n\r\n<h2><strong>Day 07</strong>: Vizag-Araku-Vizag After breakfast in the morning, we will leave from Vizag to Araku Valley. On the way, we will be visiting Borra Caves also named as Borra Guhalu in Telugu language. The caves are one of the largest in the country located at a height of about 2,313.0 ft. It distinctly exhibits a wide range of speleothems ranging in size and irregularly shaped stalactites and stalagmites. After exploring the beautiful Borra caves, we will continue our drive to Araku Valley and explores its beautiful surroundings. Thereafter, we will drive back to Visakhapatnam or Vizag for a comfortable overnight stay.</h2>\r\n\r\n<h2><strong>Day 08</strong>: Srikakulam Tour (about 300 km return) In the morning after breakfast, we will head towards Srikakulam for a day tour. Here, we will be visiting the Sun Temple at Arasavelli, a temple dedicated to the Hindu solar deity Surya. Further, we will be visiting Srikurmam Temple. This temple is devoted to Sri Kurmanatha, the second avatar of Lord Vishnu, Kurma Avatar (Tortoise). We will also visit Srimukhalingeswara Temple, a temple dedicated to Lord Shiva. Afterwards, we will return back to hotel in Vizag for an overnight stay.</h2>\r\n\r\n<h2><strong>Day 09</strong>: Vizag local sightseeing Today after breakfast in the morning, we will visit Simhachalam Narasimha Swamy Temple, a temple located at the top of the hill. Further, we will visit Thotlakonda Buddhist Complex, one of the important tourist spot of Vizag. It got its name from the Telugu word \"Thotti\" which in means well and \"Konda\" which stands for mountains. The complex has over 12 wells that are used by Buddhist monks for storing drinking water. Later in the evening, we will get drop at airport or railway station to board flight or train as per the chosen preference while booking the package to reach Vizag. On arrival, check in at the already booked hotel and enjoy a comfortable overnight stay.</h2>\r\n\r\n<h2><strong>Day 10</strong>: Departure On the last day of our tour, we will have breakfast in the morning and afterwards, get direct transfer to the airport or railway station to board train or flight for onward destination</h2>\r\n', '10 : 30 : PM', '10 : 30 : PM', '2019-07-10', '2019-04-14', 21300.00, 'vijaywada-tour.jpg', 'active');
INSERT INTO `vbs_tourpackage` (`id`, `package_name`, `source`, `destination`, `description`, `arrival_time`, `dept_time`, `arrival_date`, `dept_date`, `price`, `image`, `status`) VALUES
(30, 'Deccan Tour with Andhra and Karnataka', '\"Karnataka, India\"', '\"Mumbai, Maharashtra, India\"', '<h2><strong>Day 1</strong>: Mumbai (Arrival) On arrival at the Mumbai airport/railway station, meet our representative who will be there for your welcome and thereafter for your smooth transfer to your already booked hotel in the city. Check in at the hotel and rest for some time. The rest of the day is free at leisure. During your free time, you can take pleasure of modern amenities available in your hotel or go for a leisurely walk to explore the beauty or night life of the city. Enjoy an overnight stay in the hotel in Mumbai.</h2>\r\n\r\n<h2><strong>Day 2</strong>: Mumbai Sightseeing In the morning after breakfast, we will leave to visit Elephanta Caves, One of the major tourist attractions of Mumbai city. Situated 10 kms away from the &#39;Gateway of India&#39;, the caves are located on a separate island. Thus, visitors need to board the motor boat to reach the island. Constructed in the 7th century, Elephanta Caves are a group of rock-cut caves devoted to Lord Shiva. In the afternoon, we will explore other tourist attractions of Mumbai that include a visit to the Gateway of India, a monument built during the British Rule in Mumbai City. Further, we will be visiting Prince of Wales Museum, a premier art and history museums in India that houses over 60,000 art objects. Afterwards, we will be visiting Hanging Gardens also known as Pherozeshah Mehta Gardens. They are terraced gardens that are perched at the top of Malabar Hill on its western side offering stunning sunset views over the Arabian Sea. Later, we will return back to the hotel for a relaxing overnight stay.</h2>\r\n\r\n<h2><strong>Day 3</strong>: Mumbai – Hyderabad, by flight After breakfast in the morning, we will drive to the airport to board the flight to Hyderabad. On arrival at Hyderabad airport, meet our tour representative who will be there for your smooth transfer to your already booked hotel. Check in at the hotel and get ready for the half day local sightseeing tour of Hyderabad. In our half day tour, we will be visiting Mecca Masjid also known as Makkah Masjid. It is one of the oldest mosques in Hyderabad and the largest mosques in India. Afterwards, we will head towards Faluknuma Palace, which is regarded as one of the finest palaces in Hyderabad. Next, we will be visiting Salarjung Museum. It is an art museum located at Darushifa that is listed among one of the three National Museums of India. Thereafter, we will head towards Charminar, a famous monument and mosque located in Hyderabad constructed in 1591 CE. Later, we will return back to the hotel for an overnight stay.</h2>\r\n\r\n<h2><strong>Day 4</strong>: Hyderabad – Gulbarga (220 km) Today after breakfast in the morning, we will check out from the hotel in Hyderabad and drive to Gulbarga. En-route, we will stop at Bidar to visit the Bidar Fort which was built in 15th century and the Bahmani tombs, the huge domed tombs of the Bahmani kings located in Ashtur. It was built to house the remains of the sultans. After exploring the fort and tomb in Bidar, we will continue our drive to Gulbarga. On reaching, we will check in at the pre-booked hotel. Later, we will visit the 15th century Jama Masjid. In the evening, we will return back to the hotel for an overnight stay.</h2>\r\n\r\n<h2><strong>Day 5</strong>: Gulbarga – Bijapur (170 km) In the morning after breakfast, we will check out from the hotel in Gulbarga and drive to Bijapur. On reaching, check in at the already booked hotel and get ready to leave for the local sightseeing tour of Bijapur. In our day tour, we will be visiting Gol Gumbaz Ibrahim Roza. It was built by Adil Shah II for his beloved queen. Later in the evening, we will return back to the hotel for a relaxing overnight stay.</h2>\r\n\r\n<h2><strong>Day 6</strong>: Bijapur – Badami (130 km) After breakfast in the morning, we will check out from the hotel in Bijapur and drive to Badami to visit its ancient temples. En-route, we will be visiting Aihole- the \"Cradle of the Indian Architecture\". On reaching, we will check in at the hotel already booked in advance. Thereafter, we will get ready and leave to visit the Mahakuteshwara Temple, one of the most famous Hindu temples devoted to Lord Shiva and is one of the twelve Jyotirlingams. Further, we will head toward Northern Fort and Badami rock-cut caves that are located in the Bagalkot district in the north part of Karnataka state in India. They are regarded as the perfect example of Indian rock-cut architecture. Later, we will return back to the hotel for an overnight stay.</h2>\r\n\r\n<h2><strong>Day 7</strong>: Badami – Hospet (130 km) Today after breakfast in the morning, we will check out from the hotel in Badami and drive to Hospet. En-route, we will stop in Pattadakal, known for its ten medieval temples representing Chalukyan architecture. Afterwards, we will continue our drive to Hospet. On arrival, check in at the already booked hotel for a comfortable overnight stay.</h2>\r\n\r\n<h2><strong>Day 8</strong>: Hospet In the morning after breakfast, we will leave for a day tour to Hampi. Here, we will be exploring the ruins of Hampi kingdom. Later, we will return back to our hotel in Hospet for a comfy overnight stay.</h2>\r\n\r\n<h2><strong>Day 9</strong>: Hospet – Hassan (320 km) After having healthy morning breakfast, we will check out from the hotel in Hospet and drive to Hassan. On reaching, check in at the pre-booked hotel. The evening is free at leisure. During your free time, you can either opt to rest in your hotel room or go out for a leisure walk and explore the beautiful surroundings of Hassan. Enjoy an overnight stay in the hotel.</h2>\r\n\r\n<h2><strong>Day 10</strong>: Hassan – Mysore (120 km) Today after morning breakfast, we will embark on the local sightseeing tour of Belur, a town famous for its Chennakesava Temple, one of the finest examples of Hoysala workmanship and Halebid, home to some of the finest examples of Hoysala architecture. After exploring these beautiful places, we will drive to Mysore. On arrival, check in at the already booked hotel and take pleasure of a relaxing overnight stay.</h2>\r\n\r\n<h2><strong>Day 11</strong>: Mysore Post breakfast, we will leave for the local sightseeing tour of Mysore where in we will be visiting some of the major attractions of the city such as Tipu Sultan Palace. Located in Bangalore, it is the summer residence of the king and is a perfect example of Indo-Islamic architecture. Further, we will head towards Somnathpurm; a town situated 35 km from the historic Mysore city in Mysore district in Karnataka state in India. It is famous for the Chennakesava Temple constructed in 1268 CE under Hoysala Empire King Narasimha III. Later in the evening, we will return back to the hotel for an overnight stay.</h2>\r\n\r\n<h2><strong>Day 12</strong>: Mysore – Bangalore (150 km) After having healthy breakfast in the morning, we will check out from the hotel in Mysore and leave for Bangalore by road. En-route, we will visit Srirangapatnam, a town located in Mandya district in Karnataka state in India. The town is famous for its religious, cultural and historic significance. Thereafter, we will continue our drive to Bangalore. On reaching, check in at the pre-booked hotel and rest for some time. Later in the afternoon, we will leave for the local sightseeing tour of Bangalore- the IT hub of India. In our day tour, we will be visiting some of the major tourist attractions of the city such as The Bangalore Fort & Palace, Vidhan Soudha and Lal Bagh. Afterwards, we will return back to the hotel for an overnight stay.</h2>\r\n\r\n<h2><strong>Day 13</strong>: Departure from Bangalore On the last day of the tour after having breakfast in the morning we will check out from the hotel and get direct transfer to the airport/railway station to board flight or train for onward destination.</h2>\r\n', '11 : 30 : PM', '06 : 32 : PM', '2019-05-13', '2019-05-15', 34400.00, 'bijapur.jpg', 'active'),
(31, 'North-East India Honeymoon Tour', '\"West Bengal, India\"', '\"Bagdogra, West Bengal, India\"', '<h2><strong>Day 01</strong>: Bagdogra Airport / NJP Railway Station - Kalimpong (77 kms / 3 hrs)Kalimpong Hill Station Upon arrival at Bagdogra Airport / NJP Railway Station meeting and assistance followed by transfer to Kalimpong. On arrival Check-in to your hotel. Rest of the day free. Overnight in Kalimpong. About Kalimpong: Kalimpong is a hill station in the Mahabharat Range in the Indian state of West Bengal. It is located at an average elevation of 1,250 metres. The town is the headquarters of the Kalimpong subdivision, a part of the district of Darjeeling.</h2>\r\n\r\n<h2><strong>Day 02</strong>: Kalimpong - Gangtok (About 80 Kms / 3 Hrs) Post breakfast embark on a sightseeing tour of Kalimpong covering - Mangal Dham, Deolo Hill, Dr. Graham&#39;s Home, Durbin Dara Monastery & View point, Cactus / Orchid Nursery. Return to hotel. Post lunch drive to to Gangtok - \"The Capital of Sikkim\". Check-in to your hotel on arrival. Overnight in Gangtok. Mangal Dham: This ungainly modern Mangal Dham is sacred to Krishna. In its ballroom-like prayer hall there are eight vibrant, life-size dioramas from the Krishna Leela. The temple is dedicated to Guruji Shri Mangaldas Ji, who&#39;s commemorated in a shrine below the prayer hall. The temple is about 500m downhill from Thongsa Gompa, or you can walk from the centre along Relli Rd and turn left by the Roman Catholic church. Deolo Hill: Deolo Hill, located to the north-east of the town, is one of the two hills in between which the town of Kalimpong stands. From the top of this hill, tourists can enjoy beautiful views of the surrounding villages of Relli valley and Teesta River along with the town of Kalimpong. In addition, there is a park located at the summit of this hill, which is constructed for recreational purposes.</h2>\r\n\r\n<h2><strong>Day 03</strong>: Gangtok - SightseeingGangtok After breakfast embark on a half day local sightseeing tour of Gangtok covering Rumtek Monastery, Dro-Dul Chorten, Institute of Tibetology, Handicraft Centre, and Flower Show. Overnight in Gangtok. Institute of Tibetology: Since its establishment in 1958, the Namgyal Institute of Tibetology has sponsored and promoted research on the religion, history, language, art and culture of the people of the Tibetan cultural area which includes Sikkim. The NIT library holds one of the largest collections of Tibetan works in the world outside Tibet and a museum of Tibetan iconography and religious art. It has published the Bulletin of Tibetology since 1964 and numerous books over the years. Handicraft Center: The Directorate of Handicrafts and Handloom was founded in 1957, as Handloom and Handicrafts Centre of Sikkim. This is situated 500 metres from the central market of Gangtok. This organization has been established to conserve and pass around the art and craft skills of the artificers of Gangtok. In this centre, the visitors can see blankets, elegant hand-carved folding tables (Choktse), hand-loomed carpets with conventional themes, hand-painted masques, shawls, traditional paintings, wooden dolls and many other handicrafts.</h2>\r\n\r\n<h2><strong>Day 04</strong>: Gangtok - Darjeeling (Approx - 110 kms / 4 hrs) After breakfast take the transfer to Darjeeling &#39;The Queen of the Hills&#39;. Check-in to your hotel. Overnight in Darjeeling.</h2>\r\n\r\n<h2><strong>Day 05</strong>: Darjeeling - SightseeingDarjeeling After breakfast embark on a sightseeing tour of Darjeeling covering - Himalayan Mountaineering Institute, Padmaja Naidu Himalayan Zoological Park (closed on Thursday), Tenzing Rock, Tibetan Refugee self help Centre (closed on Sunday), Tea Garden (outer view), and Japanese Peace Pagoda. Return to hotel. Post Lunch free or at own. Evening can be spent at the Mall (chowrasta). Overnight in Darjeeling. Tea Garden: According to records, the first commercial tea gardens planted out by the British tea interest were Tukvar, Steinthal and Aloobari tea estates. This was in 1852 and this entire plantation used seeds that were raised in the government nurseries. Darjeeling was then only a sparsely populated hamlet which was being used as a hill resort by the army and some affluent people. Tea, being a labor intensive enterprise, required sufficient number of workers to plant, tend, pluck and finally manufacture the produce. For this, employment was offered to people from across the border of Nepal. Tenzing Rock: Tenzing Rock, a gigantic natural rock in Darjeeling is named after Tenzing Norgay, the man who created history by climbing the Everest first time along with Edmund Hillary in 1953. Mall: Mall is like the town center or the social center of Darjeeling. This is where some of the old and heritage stores are lined up on one side, and there is open view on the other with many pine trees all around. If you want to feel the real vibe of Darjeeling, watch people and activities, this is the place to come. Another thing that you won&#39;t miss here. there are lots of young local lads with their ponies offering horse rides to children. Many elderly tourists indulge as well.</h2>\r\n\r\n<h2><strong>Day 06</strong>: Darjeeling - Bagdogra Airport / NJP Railway Station (80 kms / 3 hrs) After breakfast drive to Bagdogra. On arrival transfer to airport / Railway station to connect flight / train for onward destination.</h2>\r\n', '11 : 30 : AM', '11 : 30 : AM', '2019-04-12', '2019-04-12', 18999.00, 'darjeeling-hill-station.jpg', 'active'),
(32, 'Best of Nilgiri', '\"Karnataka, India\"', '\"Bengaluru, Karnataka, India\"', '<h2><tt><em><big><strong>Day 01</strong>: Arrive Bangalore Upon arrival at Bangalore meeting and assistance followed by transfer to hotel. Later visit for Bangalore Vidhana Soudha, Nandi Temple, One of Oldest temple, popularly known as the Bull temple, Lal Bagh, Cubbon Park and The Government Museum. Overnight stay at hotel. Bangalore Vidhana Soudha: The Vidhana Soudha, located in Bengaluru, Vidhana Soudha is the largest legislature-cum-office building in the country. No other state capital in the country boasts of a comparable structure. Vidhana Soudha, a grand edifice of the Dravidian Style. is built almost entirely with the &#39;Bangalore Granite&#39; excavated from the environs of Mallasandra and Hessarghatta. Nidhi Temple: The Bull temple of Bangalore is dedicated to Nandi Bull, the vahana (vehicle) of Lord Shiva. Situated in Basavanagudi, this temple has been built in the Dravidian style of architecture. This temple counts amongst the oldest temples of the city and draws devotees from all over the country. Read on to know more about the Bull Temple of Bangalore, India.</big></em></tt></h2>\r\n\r\n<h2><tt><em><big><strong>Day 02</strong>: Bangalore – Mysore (140 kms) After breakfast checkout and proceed for Mysore. En route visit Srirangapatnam - the 18th century Summer Palace of Tipu Sultan. Arrive and transfer to hotel. Afternoon city sightseeing tour including the Palace of Maharaja of Mysore. Evening visit the Devaraja flower market. Overnight at Mysore. Srirangapatnam: Srirangapatnam is about 14 kms from Mysore. While visiting Mysore it would be a good idea to visit Srirangapatnam as well. Srirangapatnam was the capital of the Mysore State under Tipu Sultan, The Daria Daulat Palace, the Palace of Tipu Sultan in Srirangapatnam is a beautiful Palace built mainly of teakwood. Srirangapatnam also has the Ranganthittu Bird Sanctuary that attracts hundreds of migratory birds from all over the world. The sanctuary is also home to flying bats and marsh crocodiles. This wonder of nature is an ideal place to unwind and enjoy nature. Summer Palace: was the summer residence of Tipu Sultan in Mysore till his death in the year 1799 during the Fourth Anglo Mysore War. Its construction was started by Hyder Ali and completed during the reign of Tipu Sultan in the year 1791.</big></em></tt></h2>\r\n\r\n<h2><tt><em><big><strong>Day 03</strong>: Mysore – Ooty (165 kms) After B-fast, C-Out from Mysore Hotel and drive to Ooty The Queen of Hill Stations nestled in the Nilgiri range and popularly known as Ooty. After freshening up at the hotel you visit the beautifully landscaped Botanical Gardens and the scenic Ooty lake where you may enjoy an optional boat ride. Overnight at Ooty. Botanical Garden: The Government Botanical Garden is a botanical garden in Udhagamandalam, Tamil Nadu state, India laid out in 1848. The Gardens, divided into several sections, cover an area of around 22 hectares, and lie on the lower slopes of Doddabetta peak.</big></em></tt></h2>\r\n\r\n<h2><tt><em><big><strong> Day 04</strong>: Ooty After B-fast, visit the Doddabetta Peak, The Highest Peak in the Nilgiri Mountains and take an excursion to Coonoor to visit the sprawling Tea Gardens. The rest of the day is at leisure to explore this picturesque Hill station. Overnight at Ooty. Tea Garden: Darjeeling and Assam teas are world-famous, but in India there is a strong contender to them from the Nilgiris in the South. You may be better acquainted with the Nilgiris through its highly-popular hill-station of Ooty, formally, Udhagamandalam.</big></em></tt></h2>\r\n\r\n<h2><tt><em><big><strong>Day 05</strong>: Ooty – Coorg (228 kms) After breakfast checkout and drive to Coorg reach and checkin at hotel and later visit for Omkareshwara Temple, Abbi Falls back to hotel and overnight stay at hotel. Omkareshwara Temple: Omkareshwara Temple was established in 1820 by Linga Rajendra II The Omkareshwara Temple has a Linga near the door of the entrance. The history of the temple was inscribed by the king on a plate made of copper that is hanging at the frame of the door to the temple entrance. Abbi Fall: Coorg&#39;s most popular waterfall is a 5 km drive from the main town.</big></em></tt></h2>\r\n\r\n<h2><tt><em><big><strong>Day 06</strong>: Coorg - Kodaikanal (285 kms) After B-fast, Proceed to Kodaikanal. Your journey continues from the Blue Hills of the Nilgiris, through Palani Hills, past wooded slopes to Kodaikanal, where on arrival you will Check-Into your hotel. The rest of the day is at leisure. Overnight at Kodaikanal. Kodaikanal: Kodaikanal is a city in the hills of the taluk division of the Dindigul district in the state of Tamil Nadu, India. Its name in the Tamil language means \"The Gift of the Forest.</big></em></tt></h2>\r\n\r\n<h2><tt><em><big><strong>Day 07</strong>: Kodaikanal (Day Free) Day Free !!!!</big></em></tt></h2>\r\n\r\n<h2><tt><em><big><strong>Day 08</strong>: Kodaikanal After breakfast enjoy the boat ride at Kodai lake back to hotel and overnight stay at hotel. Kodai Lake: Kodaikanal Lake, also known as Kodai Lake is a manmade lake located in the Kodaikanal city in Dindigul district in Tamil Nadu, India.</big></em></tt></h2>\r\n\r\n<h2><tt><em><big><strong>Day 09</strong>: Kodaikanal – Coimbatore (170 kms) After breakfast checkout and transfer to Coimbatore airport to connect flight for onward destination.</big></em></tt></h2>\r\n', '06 : 30 : PM', '02 : 30 : PM', '2019-03-08', '2019-03-09', 34558.00, 'vidhana-soudha-bangalore.jpg', 'active'),
(38, 'Gujarat - Diu Tour(per person)', '\"Nadiad, Gujarat, India\"', '\"Ahmedabad, Gujarat, India\"', '<h2><strong>(per person)</strong> </h2>\r\n\r\n<p>It is a 6 Nights and 7 Days Gujarat tour that takes the traveller to visit some of the most intriguing places in Gujarat. The destinations covered in this tour package are Ahmedabad, Jamnagar, Dwarka, Somnath, Gir and Diu.</p>\r\n\r\n<p>Day 01: Arrival at Ahmedabad & Then Sightseeing Tour of Ahmedabad</p>\r\n\r\n<p>On arrival in Ahmedabad, meet our representative, we will transfer you to your already booked hotel and assist you with the check in process. After check into the hotel, freshen up and get ready to leave for the sightseeing tour of Ahmedabad. We will visit the Gandhi Ashram next to the banks of the River Sabarmati. </p>\r\n\r\n<p>Later return back to the hotel for an overnight stay.</p>\r\n\r\n<p>Day 02: Ahmedabad- Jamnagar ( Approx 6 hours Drive)</p>\r\n\r\n<p>Today post morning breakfast, check out from the hotel and leave for Jamnagar by road. En-route, visit the ancient and delightfully carved steep well. </p>\r\n\r\n<p>Day 03 : Jamnagar to Dwarka (Approx 3 hours Drive)</p>\r\n\r\n<p>In the morning post breakfast, check out from the hotel and leave by road for Dwarka. On reaching Dwarka, check into the hotel. Post lunch, we will visit the Beyt Dwarka, believed to be the original abode of Lord Krishna and the famous &#39;Nageshwar Jyotirlinga Temple&#39;Later, return back to the hotel to take pleasure of an in Dwarka.</p>\r\n\r\n<p>Day 04 : Dwarka to Somnath ( Approx 5 hours Drive)</p>\r\n\r\n<p>After breakfast in the morning, we will proceed to visit Somnath. En-route, we will visit the famous Kirti Mandir in Porbandar, the Haveli in which Mahatma Gandhi was born. </p>\r\n\r\n<p>Day 05 : Somnath to Gir National Park ( Approx 1.5 hours Drive) and Enjoy Jungle safari in Gir Forest</p>\r\n\r\n<p>Post breakfast in the morning, check out from the hotel and drive towards Gir. Sasan Gir is the famed place for Lion sightseeing and is well acknowledged as the only forest reserve in Asia for housing wild Lions</p>\r\n\r\n<p>In the afternoon, we will go for a jungle safari in the National Park. Enjoy a night stay in Gir.</p>\r\n\r\n<p>Day 06 : Gir to Diu (Approx 2 hours Drive)</p>\r\n\r\n<p>In the morning after breakfast, we will leave for Daman & Diu by road. On reaching Daman & Diu, check into the hotel. The rest of the day is free for leisure or to spend at the beaches of Daman & Diu. An overnight in the hotel.</p>\r\n\r\n<p>Day 07 : Diu to Ahmedabad (Approx 8 hours Drive) & Departure for Onward Journery</p>\r\n\r\n<p>Today, we will leave for Ahmedabad by road post breakfast. Later, we will continue the journey towards the airport to catch the flight for onward destination.</p>\r\n', '01 : 15 : PM', '01 : 15 : PM', '2019-04-04', '2019-04-04', 20000.00, 'diu-tour.jpg', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `vbs_users`
--

CREATE TABLE `vbs_users` (
  `id` int(25) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `image` varchar(512) NOT NULL,
  `date_of_registration` date NOT NULL,
  `license` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vbs_users`
--

INSERT INTO `vbs_users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `phone`, `image`, `date_of_registration`, `license`) VALUES
(1, '127.0.0.1', 'Administrator', '$2y$08$BRsJUk/smAQIg11VUwBEl.sAtFiwy9vmwwjaRpj9Upi8oaQXDzZZK', '', 'admin@admin.com', '', 'W3EONGQDtY2XqdEjE33niO6d4a4c02cf134c3769', 1510830309, 't.BExevbtKaJYVBWGtkwY.', 1268889823, 1554291725, 1, 'Admin', 'istrator', '9898989898', 'Art-Student.jpg', '2014-06-22', NULL),
(8, '::1', 'Executive', '$2y$08$UDu0AkPMkr9VX5CFWDFAX.QSpdpZ1LO/817DL/d8GVR.0wbH/W9xS', NULL, 'executive@executive.com', 'd12b614b24ab51de000e5b1fd16fa3246da87340', NULL, NULL, 'mjFqIAf5RQn.e3GymWGvQu', 1510910015, 1515045568, 1, 'Executive', 'V', '9988776655', '', '2017-11-17', NULL),
(11, '10.0.0.30', 'Stella Blessy', '$2y$08$V0VSrpGv3HjaTJPJp3uKNe5pgL8LY8nj2QeAcj1AXgtBmsVLfDyRu', NULL, 'stellablessy4@gmail.com', NULL, NULL, NULL, 'iVxUeE7jT.y8hPYwaRgZOO', 1510986534, 1511010338, 1, 'Stella', 'Blessy', '7897897893', '', '2017-11-18', NULL),
(12, '10.0.0.30', 'Akhila Ravula', '$2y$08$V0VSrpGv3HjaTJPJp3uKNe5pgL8LY8nj2QeAcj1AXgtBmsVLfDyRu', NULL, 'akhilar619@gmail.com', NULL, NULL, NULL, NULL, 1510986848, 1510986848, 1, 'Akhila', 'Ravula', '7897897894', '', '2017-11-18', NULL),
(20, '10.0.0.30', 'Ravi Teja', '$2y$08$V0VSrpGv3HjaTJPJp3uKNe5pgL8LY8nj2QeAcj1AXgtBmsVLfDyRu', NULL, 'raviteja@gmail.com', NULL, NULL, NULL, NULL, 1510996751, 1510996751, 1, 'Ravi', 'Teja', '87987985465', '', '2017-11-18', NULL),
(21, '10.0.0.30', 'Madhan Kumar', '$2y$08$V0VSrpGv3HjaTJPJp3uKNe5pgL8LY8nj2QeAcj1AXgtBmsVLfDyRu', NULL, 'madhankumar@gmail.com', NULL, NULL, NULL, NULL, 1510996862, 1510996862, 1, 'Madhan', 'Kumar', '87987956465', '', '2017-11-18', NULL),
(22, '10.0.0.30', 'Fayaz Basha', '$2y$08$V0VSrpGv3HjaTJPJp3uKNe5pgL8LY8nj2QeAcj1AXgtBmsVLfDyRu', NULL, 'fayazbasha@gmail.com', NULL, NULL, NULL, NULL, 1510997047, 1510997047, 1, 'Fayaz', 'Basha', '78756465456', '', '2017-11-18', NULL),
(48, '157.32.50.80', 'jenil rajani', '$2y$08$JD80h6cdWT/WqPwSmlNarOSR7eYe3vua1/3vRNpJnBunKsLwsQBDC', NULL, 'jhrajani29@gmail.com', 'c5baecf8ba8b83c89ddcfdda768626d8a1bbf29a', NULL, NULL, NULL, 1553301789, 1553301789, 1, 'jenil', 'rajani', '8200346189', '', '2019-03-22', NULL),
(51, '103.250.139.134', 'Sagar Patel', '$2y$08$B9Wu1AhXmJmoYMuRnPy7PeNazHgjAThYWqctS5URgRaG3ZX8C//Sm', NULL, 'sagar.cwdesigns@gmail.com', NULL, NULL, NULL, 'OaTLAd3ZK8qAZ8vLmdIpVe', 1553746150, 1554117477, 1, 'Sagar', 'Patel', '', '', '2019-03-27', NULL),
(58, '103.240.78.203', 'Pooja Shah', '$2y$08$w5acRzUhEi4ecvQqzGkuJu1EHVAVdYuatPsxTZJlnYy/1aaVCA6Ci', NULL, 'ps9345488@gmail.com', NULL, NULL, NULL, 'kLM..ISqiebuHaUte3d1He', 1553858527, 1554034239, 1, 'Pooja', 'Shah', '7016660914', '', '2019-03-29', NULL),
(59, '103.250.139.211', 'customer one', '$2y$08$JygcJLogWq.lDHEPGxfYueSzuZJxfmfLupJFKQvaA.b/VVGdkq5bG', NULL, 'customer@customer.com', '8eedea6d87403a558c7d60deac457384f38bcb92', NULL, NULL, 'z.l/vQnDP01zoFwkAun8l.', 1553946966, 1554276727, 1, 'customer', 'one', '7621857688', '', '2019-03-30', NULL),
(60, '157.32.84.143', 'hiral patel', '$2y$08$0OunN6WcSQINd4WICZAyyuWTePPbDZtTMdfbh92h.klByfNYEBsGy', NULL, 'hiral@gmil.com', NULL, NULL, NULL, NULL, 1554011371, 1554011371, 1, 'hiral', 'patel', '7252585754', '', '2019-03-30', NULL),
(62, '49.34.173.107', 'pooja shah', '$2y$08$bkYPiw4Kcw9Dd/F67XQgOOQAjtpJm.2pnJIZTupQLqfhJWlgta/4G', NULL, 'shahpooja3876@gmail.com', NULL, NULL, NULL, NULL, 1554136781, 1554193074, 1, 'poojaben', 'shah', '7016660914', '', '2019-04-01', NULL),
(63, '103.240.78.216', 'nishita rajani', '$2y$08$Gsg3dgMbL2yPnju/yKT4UuGCuyUZrIq9PVlzyCws1JiY7wFwPyohK', NULL, 'nishi.ddu@gmail.com', NULL, 'XBtQP94BmiYplj7yapIJ2.1e14359dee050eb6c7', 1554241061, 'YobSiLynNEyMqbYQdMguJe', 1554192677, 1554251022, 1, 'nishita', 'rajani', '8200346189', '', '2019-04-02', NULL),
(64, '49.34.97.21', 'shubham patel', '$2y$08$QF97gv9VthGPzo/7kGNk8ejfMA5ibPMfzvGtpx0ar.dSztLmWIAey', NULL, 'shubhampatel456@gmail.com', '68507405622598ceebcba3d79b922733b3759ba8', NULL, NULL, NULL, 1554235309, 1554235309, 0, 'shubham', 'patel', '9871234526', '', '2019-04-02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vbs_users_groups`
--

CREATE TABLE `vbs_users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vbs_users_groups`
--

INSERT INTO `vbs_users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(3, 8, 3),
(6, 11, 3),
(7, 12, 3),
(15, 20, 3),
(16, 21, 3),
(17, 22, 3),
(43, 48, 2),
(46, 51, 2),
(53, 58, 2),
(54, 59, 2),
(55, 60, 2),
(57, 62, 2),
(58, 63, 2),
(59, 64, 2);

-- --------------------------------------------------------

--
-- Table structure for table `vbs_vehicle`
--

CREATE TABLE `vbs_vehicle` (
  `id` int(25) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `model` varchar(512) NOT NULL DEFAULT '',
  `name` varchar(512) NOT NULL DEFAULT '',
  `car_number_plate` varchar(25) NOT NULL,
  `description` varchar(512) NOT NULL DEFAULT '',
  `passengers_capacity` int(11) NOT NULL DEFAULT '0',
  `large_luggage_capacity` int(11) NOT NULL DEFAULT '0',
  `small_luggage_capacity` int(11) NOT NULL DEFAULT '0',
  `fuel_type` enum('petrol','diesel','gas') NOT NULL DEFAULT 'diesel',
  `total_vehicles` int(11) NOT NULL DEFAULT '0',
  `waiting_time` enum('enable','disable') DEFAULT NULL,
  `cost_type` enum('flat','incremental') NOT NULL DEFAULT 'flat',
  `ct_flat_min_dist_day` varchar(512) NOT NULL,
  `ct_flat_min_cost_day` decimal(10,2) NOT NULL,
  `ct_flat_min_dist_night` varchar(512) NOT NULL,
  `ct_flat_min_cost_night` decimal(10,2) NOT NULL,
  `image` varchar(512) NOT NULL DEFAULT '',
  `cost_starting_from` varchar(11) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `is_new` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vbs_vehicle`
--

INSERT INTO `vbs_vehicle` (`id`, `category_id`, `model`, `name`, `car_number_plate`, `description`, `passengers_capacity`, `large_luggage_capacity`, `small_luggage_capacity`, `fuel_type`, `total_vehicles`, `waiting_time`, `cost_type`, `ct_flat_min_dist_day`, `ct_flat_min_cost_day`, `ct_flat_min_dist_night`, `ct_flat_min_cost_night`, `image`, `cost_starting_from`, `status`, `is_new`) VALUES
(1, 1, 'VDI', 'Brezza', 'GJ 3H 3432', '', 5, 5, 5, 'diesel', 5, NULL, 'flat', '5', '5.00', '5', '5.00', '1_Brezza.jpg', '2500', 'Active', '1'),
(2, 2, 'Amaze', 'Honda', 'DF 6T 5004', '', 4, 4, 4, 'petrol', 4, NULL, 'flat', '4', '4.00', '4', '4.00', '2_amg-1880381__340.jpg', '1950', 'Active', '1'),
(3, 1, 'Lxi', 'Ertiga', 'HK 3F 006', '', 7, 10, 5, 'diesel', 1, NULL, 'flat', '6', '25.00', '6', '25.00', '3_ertiga.jpg', '2200', 'Active', '1'),
(4, 1, 'vxi', 'swift', 'RJ 1A 550', 'This vehicle is in good condition', 5, 5, 5, 'petrol', 7, NULL, 'flat', '7', '7.00', '7', '7.00', '4_swift.jpg', '1500', 'Active', '1'),
(5, 1, 'VMT', 'Honda city', '4321', 'This vehicle is in good condition', 5, 10, 6, 'diesel', 8, NULL, 'flat', '80', '80.00', '90', '90.00', '5_Honda_City.jpg', '80', 'Active', '1'),
(6, 1, 'Ciaz', 'Suzuki', 'B98 001', 'This vehicle is in good condition', 5, 4, 5, 'petrol', 10, NULL, 'incremental', '100', '130.00', '120', '150.00', '6_ciaz.jpg', '2100', 'Active', '1'),
(7, 1, 'Figo', 'Ford', 'AZ  09 108', 'This vehicle is in good condition', 5, 20, 25, 'petrol', 3, NULL, 'flat', '50', '90.00', '80', '130.00', '7_figo.jpg', '2400', 'Active', '1'),
(8, 1, 'M3', 'i20', 'DK 0R54004', 'This vehicle is in good condition', 5, 80, 60, 'petrol', 10, NULL, 'incremental', '', '0.00', '', '0.00', '8_i20.jpg', '50', 'Active', '1'),
(9, 2, 'Sigma', 'S Cross', 'GR 05 409', '', 5, 90, 60, 'petrol', 3, NULL, 'flat', '12', '10.00', '10', '10.00', '9_scross.jpg', '1700', 'Active', '1'),
(10, 2, 'Verna', 'Hyundai Fluidic', 'RH 0F 7987', 'This vehicle is in good condition', 5, 100, 80, 'petrol', 10, NULL, 'flat', '10', '90.00', '10', '100.00', '10_verna.jpg', '3000', 'Active', '1'),
(11, 2, 'Crysta', 'Toyota Innova ', 'AH 8B 4333', '', 7, 5, 2, 'petrol', 4, NULL, 'flat', '10', '10.00', '10', '20.00', '11_innova1.jpg', '2000', 'Active', '1');

-- --------------------------------------------------------

--
-- Table structure for table `vbs_vehicle_categories`
--

CREATE TABLE `vbs_vehicle_categories` (
  `id` int(12) NOT NULL,
  `category` varchar(512) NOT NULL DEFAULT '',
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vbs_vehicle_categories`
--

INSERT INTO `vbs_vehicle_categories` (`id`, `category`, `status`) VALUES
(1, 'General', 'Active'),
(2, 'Premium', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `vbs_vehicle_features`
--

CREATE TABLE `vbs_vehicle_features` (
  `id` int(12) NOT NULL,
  `vehicle_id` int(12) NOT NULL,
  `feature_id` int(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vbs_vehicle_features`
--

INSERT INTO `vbs_vehicle_features` (`id`, `vehicle_id`, `feature_id`) VALUES
(87, 4, 2),
(59, 5, 1),
(86, 6, 3),
(85, 7, 5),
(74, 8, 1),
(76, 9, 3),
(82, 11, 5),
(81, 11, 3);

-- --------------------------------------------------------

--
-- Table structure for table `vbs_waitings`
--

CREATE TABLE `vbs_waitings` (
  `id` int(11) NOT NULL,
  `waiting_time` int(11) NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vbs_waitings`
--

INSERT INTO `vbs_waitings` (`id`, `waiting_time`, `cost`, `status`) VALUES
(1, 20, '10.00', 'Active'),
(2, 30, '20.00', 'Active'),
(3, 50, '30.00', 'Active'),
(4, 45, '30.00', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `vbs_waiting_time`
--

CREATE TABLE `vbs_waiting_time` (
  `id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `from_time` int(11) NOT NULL,
  `to_time` int(11) NOT NULL,
  `cost` decimal(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `vbs_aboutus`
--
ALTER TABLE `vbs_aboutus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vbs_airports`
--
ALTER TABLE `vbs_airports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vbs_assign_cars_driver`
--
ALTER TABLE `vbs_assign_cars_driver`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vbs_bookings`
--
ALTER TABLE `vbs_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vbs_cost_type_values`
--
ALTER TABLE `vbs_cost_type_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vbs_coupons`
--
ALTER TABLE `vbs_coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `vbs_drivers`
--
ALTER TABLE `vbs_drivers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vbs_email_settings`
--
ALTER TABLE `vbs_email_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vbs_email_templates`
--
ALTER TABLE `vbs_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vbs_faqs`
--
ALTER TABLE `vbs_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vbs_features`
--
ALTER TABLE `vbs_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vbs_files`
--
ALTER TABLE `vbs_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vbs_groups`
--
ALTER TABLE `vbs_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vbs_hotel_api_settings`
--
ALTER TABLE `vbs_hotel_api_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vbs_instructions`
--
ALTER TABLE `vbs_instructions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vbs_login_attempts`
--
ALTER TABLE `vbs_login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vbs_package_bookings`
--
ALTER TABLE `vbs_package_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vbs_package_settings`
--
ALTER TABLE `vbs_package_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vbs_payments`
--
ALTER TABLE `vbs_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vbs_paypal_settings`
--
ALTER TABLE `vbs_paypal_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vbs_payu_settings`
--
ALTER TABLE `vbs_payu_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vbs_reasons_to_book`
--
ALTER TABLE `vbs_reasons_to_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vbs_review_rating`
--
ALTER TABLE `vbs_review_rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vbs_seo_settings`
--
ALTER TABLE `vbs_seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vbs_sessions`
--
ALTER TABLE `vbs_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `vbs_site_settings`
--
ALTER TABLE `vbs_site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vbs_sms_gate_ways`
--
ALTER TABLE `vbs_sms_gate_ways`
  ADD PRIMARY KEY (`sms_gateway_id`);

--
-- Indexes for table `vbs_sms_templates`
--
ALTER TABLE `vbs_sms_templates`
  ADD PRIMARY KEY (`sms_template_id`);

--
-- Indexes for table `vbs_social_networks`
--
ALTER TABLE `vbs_social_networks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vbs_stripe_settings`
--
ALTER TABLE `vbs_stripe_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vbs_system_settings_fields`
--
ALTER TABLE `vbs_system_settings_fields`
  ADD PRIMARY KEY (`field_id`);

--
-- Indexes for table `vbs_testimonials_settings`
--
ALTER TABLE `vbs_testimonials_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vbs_tourpackage`
--
ALTER TABLE `vbs_tourpackage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vbs_users`
--
ALTER TABLE `vbs_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vbs_users_groups`
--
ALTER TABLE `vbs_users_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `vbs_vehicle`
--
ALTER TABLE `vbs_vehicle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vbs_vehicle_categories`
--
ALTER TABLE `vbs_vehicle_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vbs_vehicle_features`
--
ALTER TABLE `vbs_vehicle_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vbs_waitings`
--
ALTER TABLE `vbs_waitings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vbs_waiting_time`
--
ALTER TABLE `vbs_waiting_time`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `vbs_aboutus`
--
ALTER TABLE `vbs_aboutus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vbs_airports`
--
ALTER TABLE `vbs_airports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `vbs_assign_cars_driver`
--
ALTER TABLE `vbs_assign_cars_driver`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vbs_bookings`
--
ALTER TABLE `vbs_bookings`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `vbs_cost_type_values`
--
ALTER TABLE `vbs_cost_type_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `vbs_coupons`
--
ALTER TABLE `vbs_coupons`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vbs_drivers`
--
ALTER TABLE `vbs_drivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vbs_email_settings`
--
ALTER TABLE `vbs_email_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vbs_email_templates`
--
ALTER TABLE `vbs_email_templates`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `vbs_faqs`
--
ALTER TABLE `vbs_faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vbs_features`
--
ALTER TABLE `vbs_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vbs_files`
--
ALTER TABLE `vbs_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `vbs_groups`
--
ALTER TABLE `vbs_groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vbs_hotel_api_settings`
--
ALTER TABLE `vbs_hotel_api_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vbs_instructions`
--
ALTER TABLE `vbs_instructions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vbs_login_attempts`
--
ALTER TABLE `vbs_login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `vbs_package_bookings`
--
ALTER TABLE `vbs_package_bookings`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `vbs_package_settings`
--
ALTER TABLE `vbs_package_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vbs_payments`
--
ALTER TABLE `vbs_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vbs_paypal_settings`
--
ALTER TABLE `vbs_paypal_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vbs_payu_settings`
--
ALTER TABLE `vbs_payu_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vbs_reasons_to_book`
--
ALTER TABLE `vbs_reasons_to_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vbs_review_rating`
--
ALTER TABLE `vbs_review_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vbs_seo_settings`
--
ALTER TABLE `vbs_seo_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vbs_site_settings`
--
ALTER TABLE `vbs_site_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vbs_sms_gate_ways`
--
ALTER TABLE `vbs_sms_gate_ways`
  MODIFY `sms_gateway_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vbs_sms_templates`
--
ALTER TABLE `vbs_sms_templates`
  MODIFY `sms_template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vbs_social_networks`
--
ALTER TABLE `vbs_social_networks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vbs_stripe_settings`
--
ALTER TABLE `vbs_stripe_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vbs_system_settings_fields`
--
ALTER TABLE `vbs_system_settings_fields`
  MODIFY `field_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `vbs_testimonials_settings`
--
ALTER TABLE `vbs_testimonials_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vbs_tourpackage`
--
ALTER TABLE `vbs_tourpackage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `vbs_users`
--
ALTER TABLE `vbs_users`
  MODIFY `id` int(25) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `vbs_users_groups`
--
ALTER TABLE `vbs_users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `vbs_vehicle`
--
ALTER TABLE `vbs_vehicle`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vbs_vehicle_categories`
--
ALTER TABLE `vbs_vehicle_categories`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vbs_vehicle_features`
--
ALTER TABLE `vbs_vehicle_features`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `vbs_waitings`
--
ALTER TABLE `vbs_waitings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vbs_waiting_time`
--
ALTER TABLE `vbs_waiting_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `vbs_users_groups`
--
ALTER TABLE `vbs_users_groups`
  ADD CONSTRAINT `vbs_users_groups_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `vbs_users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
