-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 28-Jun-2016 às 22:02
-- Versão do servidor: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `so_celulares`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_address_book`
--

CREATE TABLE `soc_address_book` (
  `address_book_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `entry_gender` char(1) NOT NULL,
  `entry_company` varchar(32) DEFAULT NULL,
  `entry_firstname` varchar(32) NOT NULL,
  `entry_lastname` varchar(32) NOT NULL,
  `entry_street_address` varchar(64) NOT NULL,
  `entry_suburb` varchar(32) DEFAULT NULL,
  `entry_postcode` varchar(10) NOT NULL,
  `entry_city` varchar(32) NOT NULL,
  `entry_state` varchar(32) DEFAULT NULL,
  `entry_country_id` int(11) NOT NULL DEFAULT '0',
  `entry_zone_id` int(11) NOT NULL DEFAULT '0',
  `entry_telephone` varchar(32) DEFAULT NULL,
  `entry_fax` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_administrators`
--

CREATE TABLE `soc_administrators` (
  `id` int(11) NOT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `user_password` varchar(40) NOT NULL,
  `user_settings` text,
  `email_address` varchar(96) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_administrators`
--

INSERT INTO `soc_administrators` (`id`, `user_name`, `user_password`, `user_settings`, `email_address`) VALUES
(1, 'admin', '0efb05dea6e0c5f538385dd52d3ec495:4d', 'a:1:{s:7:"desktop";a:17:{s:5:"theme";s:9:"vistablue";s:12:"transparency";s:3:"100";s:15:"backgroundcolor";s:6:"3A6EA5";s:9:"fontcolor";s:6:"FFFFFF";s:9:"wallpaper";s:5:"blank";s:17:"wallpaperposition";s:4:"tile";s:7:"autorun";s:17:"["dashboard-win"]";s:11:"contextmenu";s:2:"[]";s:10:"quickstart";s:187:"["articles_categories-win","articles-win","faqs-win","slide_images-win","products-win","customers-win","orders-win", "invoices-win", "coupons-win","gift_certificates-win","dashboard-win"]";s:8:"shortcut";s:187:"["articles_categories-win","articles-win","faqs-win","slide_images-win","products-win","customers-win","orders-win", "invoices-win", "coupons-win","gift_certificates-win","dashboard-win"]";s:15:"wizard_complete";b:1;s:10:"dashboards";s:73:"overview:0,new_orders:1,new_customers:2,new_reviews:0,orders_statistics:1";s:7:"gadgets";s:38:"["clock","new_customers","new_orders"]";s:19:"sidebartransparency";s:1:"5";s:22:"sidebarbackgroundcolor";s:6:"FFFFFF";s:11:"sidebaropen";b:1;s:8:"livefeed";i:0;}}', 'admin@email.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_administrators_access`
--

CREATE TABLE `soc_administrators_access` (
  `administrators_id` int(11) NOT NULL,
  `module` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_administrators_access`
--

INSERT INTO `soc_administrators_access` (`administrators_id`, `module`) VALUES
(1, '*');

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_administrators_log`
--

CREATE TABLE `soc_administrators_log` (
  `id` int(11) NOT NULL,
  `module` varchar(255) NOT NULL,
  `module_action` varchar(32) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `field_key` varchar(255) NOT NULL,
  `old_value` text,
  `new_value` text,
  `action` varchar(255) NOT NULL,
  `administrators_id` int(11) NOT NULL,
  `datestamp` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_administrators_log`
--

INSERT INTO `soc_administrators_log` (`id`, `module`, `module_action`, `module_id`, `field_key`, `old_value`, `new_value`, `action`, `administrators_id`, `datestamp`) VALUES
(1, 'languages', 'insert', 2, 'soc_languages.name', '', 'Portuguese-Brazilian', 'insert', 1, '2016-06-28 15:05:03'),
(1, 'languages', 'insert', 2, 'soc_languages.code', '', 'pt_BR', 'insert', 1, '2016-06-28 15:05:03'),
(1, 'languages', 'insert', 2, 'soc_languages.locale', '', 'pt_BR.UTF-8,pt_BR,portuguese', 'insert', 1, '2016-06-28 15:05:03'),
(1, 'languages', 'insert', 2, 'soc_languages.charset', '', 'utf-8', 'insert', 1, '2016-06-28 15:05:03'),
(1, 'languages', 'insert', 2, 'soc_languages.date_format_short', '', '%d/%m/%Y', 'insert', 1, '2016-06-28 15:05:03'),
(1, 'languages', 'insert', 2, 'soc_languages.date_format_long', '', '%A %d %B, %Y', 'insert', 1, '2016-06-28 15:05:03'),
(1, 'languages', 'insert', 2, 'soc_languages.time_format', '', '%H:%M:%S', 'insert', 1, '2016-06-28 15:05:03'),
(1, 'languages', 'insert', 2, 'soc_languages.text_direction', '', 'ltr', 'insert', 1, '2016-06-28 15:05:03'),
(1, 'languages', 'insert', 2, 'soc_languages.currencies_id', '', '1', 'insert', 1, '2016-06-28 15:05:03'),
(1, 'languages', 'insert', 2, 'soc_languages.numeric_separator_decimal', '', ',', 'insert', 1, '2016-06-28 15:05:03'),
(1, 'languages', 'insert', 2, 'soc_languages.numeric_separator_thousands', '', '.', 'insert', 1, '2016-06-28 15:05:03'),
(1, 'languages', 'insert', 2, 'soc_languages.parent_id', '', '0', 'insert', 1, '2016-06-28 15:05:03'),
(2, 'templates', 'update', 0, 'soc_configuration.configuration_value', 'glass_gray', 'bootstrap', 'update', 1, '2016-06-28 15:15:05'),
(3, 'languages', 'update', 2, 'soc_configuration.configuration_value', 'en_US', 'pt_BR', 'update', 1, '2016-06-28 15:22:37'),
(4, 'languages', 'delete', 1, 'soc_languages.languages_id', '1', '', 'delete', 1, '2016-06-28 15:22:55'),
(4, 'languages', 'delete', 1, 'soc_languages.name', 'English', '', 'delete', 1, '2016-06-28 15:22:55'),
(4, 'languages', 'delete', 1, 'soc_languages.code', 'en_US', '', 'delete', 1, '2016-06-28 15:22:55'),
(4, 'languages', 'delete', 1, 'soc_languages.locale', 'en_US.UTF-8,en_US,english', '', 'delete', 1, '2016-06-28 15:22:55'),
(4, 'languages', 'delete', 1, 'soc_languages.charset', 'utf-8', '', 'delete', 1, '2016-06-28 15:22:55'),
(4, 'languages', 'delete', 1, 'soc_languages.date_format_short', '%m/%d/%Y', '', 'delete', 1, '2016-06-28 15:22:55'),
(4, 'languages', 'delete', 1, 'soc_languages.date_format_long', '%A %d %B, %Y', '', 'delete', 1, '2016-06-28 15:22:55'),
(4, 'languages', 'delete', 1, 'soc_languages.time_format', '%H:%M:%S', '', 'delete', 1, '2016-06-28 15:22:55'),
(4, 'languages', 'delete', 1, 'soc_languages.text_direction', 'ltr', '', 'delete', 1, '2016-06-28 15:22:55'),
(4, 'languages', 'delete', 1, 'soc_languages.currencies_id', '1', '', 'delete', 1, '2016-06-28 15:22:55'),
(4, 'languages', 'delete', 1, 'soc_languages.numeric_separator_decimal', '.', '', 'delete', 1, '2016-06-28 15:22:55'),
(4, 'languages', 'delete', 1, 'soc_languages.numeric_separator_thousands', ',', '', 'delete', 1, '2016-06-28 15:22:55'),
(4, 'languages', 'delete', 1, 'soc_languages.parent_id', '0', '', 'delete', 1, '2016-06-28 15:22:55'),
(4, 'languages', 'delete', 1, 'soc_languages.sort_order', '1', '', 'delete', 1, '2016-06-28 15:22:55'),
(5, 'configuration', 'update', 10, 'soc_configuration.configuration_value', 'Store Name\nAddress\nCountry\nPhone', '', 'update', 1, '2016-06-28 15:29:52'),
(6, 'categories', 'update', 2, 'soc_categories_description.categories_name', 'Desktops', 'Smartfones', 'update', 1, '2016-06-28 15:37:25'),
(6, 'categories', 'update', 2, 'soc_categories.categories_image', 'categories_desktops.jpg', 'smartfone.jpg', 'update', 1, '2016-06-28 15:37:25'),
(7, 'categories', 'update', 2, 'soc_categories.sort_order', '0', '1', 'update', 1, '2016-06-28 15:38:27'),
(8, 'categories', 'update', 2, 'soc_categories.sort_order', '1', '0', 'update', 1, '2016-06-28 15:38:39'),
(9, 'categories', 'update', 9, 'soc_categories.sort_order', '0', '1', 'update', 1, '2016-06-28 15:40:23'),
(9, 'categories', 'update', 9, 'soc_categories_description.categories_name', 'iPod & Camera', 'Celulares', 'update', 1, '2016-06-28 15:40:23'),
(9, 'categories', 'update', 9, 'soc_categories.categories_image', 'categories_ipod.jpg', 'cellular.jpg', 'update', 1, '2016-06-28 15:40:23'),
(10, 'categories', 'update', 1, 'soc_categories.sort_order', '0', '2', 'update', 1, '2016-06-28 15:42:42'),
(10, 'categories', 'update', 1, 'soc_categories_description.categories_name', 'Laptop', 'SmartFones de operadoras', 'update', 1, '2016-06-28 15:42:42'),
(10, 'categories', 'update', 1, 'soc_categories.categories_image', 'categories_notebooks.jpg', 'celular_tim.jpg', 'update', 1, '2016-06-28 15:42:42'),
(11, 'categories', 'update', 2, 'soc_categories_description.categories_name', 'Smartfones', 'SmartFones', 'update', 1, '2016-06-28 15:43:58'),
(12, 'categories', 'update', 3, 'soc_categories.sort_order', '0', '3', 'update', 1, '2016-06-28 15:45:05'),
(12, 'categories', 'update', 3, 'soc_categories_description.categories_name', 'Monitors', 'SmartWatches', 'update', 1, '2016-06-28 15:45:05'),
(12, 'categories', 'update', 3, 'soc_categories.categories_image', 'categories_monitor.jpg', 'smartwatche.jpg', 'update', 1, '2016-06-28 15:45:05'),
(13, 'categories', 'delete', 4, 'soc_categories.categories_id', '4', '', 'delete', 1, '2016-06-28 15:45:13'),
(13, 'categories', 'delete', 4, 'soc_categories.categories_image', 'categories_printer.jpg', '', 'delete', 1, '2016-06-28 15:45:13'),
(13, 'categories', 'delete', 4, 'soc_categories.parent_id', '0', '', 'delete', 1, '2016-06-28 15:45:13'),
(13, 'categories', 'delete', 4, 'soc_categories.sort_order', '0', '', 'delete', 1, '2016-06-28 15:45:13'),
(13, 'categories', 'delete', 4, 'soc_categories.categories_status', '1', '', 'delete', 1, '2016-06-28 15:45:13'),
(13, 'categories', 'delete', 4, 'soc_categories.date_added', '2016-06-28 15:03:16', '', 'delete', 1, '2016-06-28 15:45:13'),
(13, 'categories', 'delete', 4, 'soc_categories.last_modified', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(13, 'categories', 'delete', 4, 'soc_categories_description.categories_id', '4', '', 'delete', 1, '2016-06-28 15:45:13'),
(13, 'categories', 'delete', 4, 'soc_categories_description.language_id', '2', '', 'delete', 1, '2016-06-28 15:45:13'),
(13, 'categories', 'delete', 4, 'soc_categories_description.categories_name', 'Printers & Scanners', '', 'delete', 1, '2016-06-28 15:45:13'),
(13, 'categories', 'delete', 4, 'soc_categories_description.categories_url', 'printers-scanners', '', 'delete', 1, '2016-06-28 15:45:13'),
(13, 'categories', 'delete', 4, 'soc_categories_description.categories_page_title', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(13, 'categories', 'delete', 4, 'soc_categories_description.categories_meta_keywords', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(13, 'categories', 'delete', 4, 'soc_categories_description.categories_meta_description', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(14, 'categories', 'delete', 4, 'soc_categories.categories_id', '6', '', 'delete', 1, '2016-06-28 15:45:13'),
(14, 'categories', 'delete', 4, 'soc_categories.categories_image', 'categories_printer.jpg', '', 'delete', 1, '2016-06-28 15:45:13'),
(14, 'categories', 'delete', 4, 'soc_categories.parent_id', '4', '', 'delete', 1, '2016-06-28 15:45:13'),
(14, 'categories', 'delete', 4, 'soc_categories.sort_order', '0', '', 'delete', 1, '2016-06-28 15:45:13'),
(14, 'categories', 'delete', 4, 'soc_categories.categories_status', '1', '', 'delete', 1, '2016-06-28 15:45:13'),
(14, 'categories', 'delete', 4, 'soc_categories.date_added', '2016-06-28 15:03:16', '', 'delete', 1, '2016-06-28 15:45:13'),
(14, 'categories', 'delete', 4, 'soc_categories.last_modified', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(14, 'categories', 'delete', 4, 'soc_categories_description.categories_id', '6', '', 'delete', 1, '2016-06-28 15:45:13'),
(14, 'categories', 'delete', 4, 'soc_categories_description.language_id', '2', '', 'delete', 1, '2016-06-28 15:45:13'),
(14, 'categories', 'delete', 4, 'soc_categories_description.categories_name', 'BROTHER', '', 'delete', 1, '2016-06-28 15:45:13'),
(14, 'categories', 'delete', 4, 'soc_categories_description.categories_url', 'brother', '', 'delete', 1, '2016-06-28 15:45:13'),
(14, 'categories', 'delete', 4, 'soc_categories_description.categories_page_title', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(14, 'categories', 'delete', 4, 'soc_categories_description.categories_meta_keywords', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(14, 'categories', 'delete', 4, 'soc_categories_description.categories_meta_description', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(15, 'categories', 'delete', 4, 'soc_categories.categories_id', '8', '', 'delete', 1, '2016-06-28 15:45:13'),
(15, 'categories', 'delete', 4, 'soc_categories.categories_image', 'categories_printer.jpg', '', 'delete', 1, '2016-06-28 15:45:13'),
(15, 'categories', 'delete', 4, 'soc_categories.parent_id', '4', '', 'delete', 1, '2016-06-28 15:45:13'),
(15, 'categories', 'delete', 4, 'soc_categories.sort_order', '0', '', 'delete', 1, '2016-06-28 15:45:13'),
(15, 'categories', 'delete', 4, 'soc_categories.categories_status', '1', '', 'delete', 1, '2016-06-28 15:45:13'),
(15, 'categories', 'delete', 4, 'soc_categories.date_added', '2016-06-28 15:03:16', '', 'delete', 1, '2016-06-28 15:45:13'),
(15, 'categories', 'delete', 4, 'soc_categories.last_modified', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(15, 'categories', 'delete', 4, 'soc_categories_description.categories_id', '8', '', 'delete', 1, '2016-06-28 15:45:13'),
(15, 'categories', 'delete', 4, 'soc_categories_description.language_id', '2', '', 'delete', 1, '2016-06-28 15:45:13'),
(15, 'categories', 'delete', 4, 'soc_categories_description.categories_name', 'CANON', '', 'delete', 1, '2016-06-28 15:45:13'),
(15, 'categories', 'delete', 4, 'soc_categories_description.categories_url', 'canon', '', 'delete', 1, '2016-06-28 15:45:13'),
(15, 'categories', 'delete', 4, 'soc_categories_description.categories_page_title', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(15, 'categories', 'delete', 4, 'soc_categories_description.categories_meta_keywords', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(15, 'categories', 'delete', 4, 'soc_categories_description.categories_meta_description', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(16, 'categories', 'delete', 4, 'soc_categories.categories_id', '7', '', 'delete', 1, '2016-06-28 15:45:13'),
(16, 'categories', 'delete', 4, 'soc_categories.categories_image', 'categories_printer.jpg', '', 'delete', 1, '2016-06-28 15:45:13'),
(16, 'categories', 'delete', 4, 'soc_categories.parent_id', '4', '', 'delete', 1, '2016-06-28 15:45:13'),
(16, 'categories', 'delete', 4, 'soc_categories.sort_order', '0', '', 'delete', 1, '2016-06-28 15:45:13'),
(16, 'categories', 'delete', 4, 'soc_categories.categories_status', '1', '', 'delete', 1, '2016-06-28 15:45:13'),
(16, 'categories', 'delete', 4, 'soc_categories.date_added', '2016-06-28 15:03:16', '', 'delete', 1, '2016-06-28 15:45:13'),
(16, 'categories', 'delete', 4, 'soc_categories.last_modified', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(16, 'categories', 'delete', 4, 'soc_categories_description.categories_id', '7', '', 'delete', 1, '2016-06-28 15:45:13'),
(16, 'categories', 'delete', 4, 'soc_categories_description.language_id', '2', '', 'delete', 1, '2016-06-28 15:45:13'),
(16, 'categories', 'delete', 4, 'soc_categories_description.categories_name', 'EPSON', '', 'delete', 1, '2016-06-28 15:45:13'),
(16, 'categories', 'delete', 4, 'soc_categories_description.categories_url', 'epson', '', 'delete', 1, '2016-06-28 15:45:13'),
(16, 'categories', 'delete', 4, 'soc_categories_description.categories_page_title', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(16, 'categories', 'delete', 4, 'soc_categories_description.categories_meta_keywords', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(16, 'categories', 'delete', 4, 'soc_categories_description.categories_meta_description', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(17, 'categories', 'delete', 4, 'soc_categories.categories_id', '5', '', 'delete', 1, '2016-06-28 15:45:13'),
(17, 'categories', 'delete', 4, 'soc_categories.categories_image', 'categories_printer.jpg', '', 'delete', 1, '2016-06-28 15:45:13'),
(17, 'categories', 'delete', 4, 'soc_categories.parent_id', '4', '', 'delete', 1, '2016-06-28 15:45:13'),
(17, 'categories', 'delete', 4, 'soc_categories.sort_order', '0', '', 'delete', 1, '2016-06-28 15:45:13'),
(17, 'categories', 'delete', 4, 'soc_categories.categories_status', '1', '', 'delete', 1, '2016-06-28 15:45:13'),
(17, 'categories', 'delete', 4, 'soc_categories.date_added', '2016-06-28 15:03:16', '', 'delete', 1, '2016-06-28 15:45:13'),
(17, 'categories', 'delete', 4, 'soc_categories.last_modified', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(17, 'categories', 'delete', 4, 'soc_categories_description.categories_id', '5', '', 'delete', 1, '2016-06-28 15:45:13'),
(17, 'categories', 'delete', 4, 'soc_categories_description.language_id', '2', '', 'delete', 1, '2016-06-28 15:45:13'),
(17, 'categories', 'delete', 4, 'soc_categories_description.categories_name', 'HP', '', 'delete', 1, '2016-06-28 15:45:13'),
(17, 'categories', 'delete', 4, 'soc_categories_description.categories_url', 'hp', '', 'delete', 1, '2016-06-28 15:45:13'),
(17, 'categories', 'delete', 4, 'soc_categories_description.categories_page_title', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(17, 'categories', 'delete', 4, 'soc_categories_description.categories_meta_keywords', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(17, 'categories', 'delete', 4, 'soc_categories_description.categories_meta_description', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(17, 'categories', 'delete', 4, 'soc_products_to_categories.products_id', '15', '', 'delete', 1, '2016-06-28 15:45:13'),
(17, 'categories', 'delete', 4, 'soc_products_to_categories.categories_id', '5', '', 'delete', 1, '2016-06-28 15:45:13'),
(17, 'categories', 'delete', 4, 'soc_products_to_categories.products_id', '16', '', 'delete', 1, '2016-06-28 15:45:13'),
(17, 'categories', 'delete', 4, 'soc_products_to_categories.categories_id', '5', '', 'delete', 1, '2016-06-28 15:45:13'),
(17, 'categories', 'delete', 4, 'soc_products_to_categories.products_id', '17', '', 'delete', 1, '2016-06-28 15:45:13'),
(17, 'categories', 'delete', 4, 'soc_products_to_categories.categories_id', '5', '', 'delete', 1, '2016-06-28 15:45:13'),
(17, 'categories', 'delete', 4, 'soc_products_to_categories.products_id', '19', '', 'delete', 1, '2016-06-28 15:45:13'),
(17, 'categories', 'delete', 4, 'soc_products_to_categories.categories_id', '5', '', 'delete', 1, '2016-06-28 15:45:13'),
(18, 'categories', 'delete', 15, 'soc_products_description.products_id', '15', '', 'delete', 1, '2016-06-28 15:45:13'),
(18, 'categories', 'delete', 15, 'soc_products_description.language_id', '2', '', 'delete', 1, '2016-06-28 15:45:13'),
(18, 'categories', 'delete', 15, 'soc_products_description.products_name', 'APPLE IPOD NANO 4GB SILVER 3RD GEN', '', 'delete', 1, '2016-06-28 15:45:13'),
(18, 'categories', 'delete', 15, 'soc_products_description.products_short_description', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(18, 'categories', 'delete', 15, 'soc_products_description.products_description', 'An anodized aluminum top and polished stainless steel back. Five eye-catching colors. A larger, brighter display with the most pixels per inch of any Apple display, ever. iPod nano stirs up visual effects from the outside in.<br><br>And it''ll wow you for hours. Play up to 5 hours of video or up to 24 hours of audio on a single charge. All that staying power and a wafer-thin, 6.5-mm profile makes iPod nano one small big attraction.<br><br><b>Cover Flow</b><br>If a picture says a thousand words, think of what all the album art in your collection might say. With Cover Flow on iPod nano, you can flip through your music to find the album you want to hear. Use the Click Wheel to browse music by album cover, then select an album to flip it over and see the track list.<br><br><b>Music</b><br>Use the Click Wheel to adjust volume, navigate songs, browse in Cover Flow, or explore the Music menu by playlist, artist, album, song, genre, composer, and more. Want to mix things up? Click Shuffle Songs. iPod nano makes your music look as good as it sounds, thanks to its bright color display.<br><br><b>Movies</b><br>Buy movies from the iTunes Store and you can sync them to your iPod nano to watch anywhere, anytime. Up to 5 hours of video playback means you can watch two movies back to back. And for your viewing pleasure, the 320-by-240-pixel display--with a whopping 204 pixels per inch--is 65 percent brighter than before. <br>', '', 'delete', 1, '2016-06-28 15:45:13'),
(18, 'categories', 'delete', 15, 'soc_products_description.products_keyword', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(18, 'categories', 'delete', 15, 'soc_products_description.products_tags', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(18, 'categories', 'delete', 15, 'soc_products_description.products_url', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(18, 'categories', 'delete', 15, 'soc_products_description.products_friendly_url', 'apple-ipod-nano-4gb-silver-3rd-gen', '', 'delete', 1, '2016-06-28 15:45:13'),
(18, 'categories', 'delete', 15, 'soc_products_description.products_page_title', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(18, 'categories', 'delete', 15, 'soc_products_description.products_meta_keywords', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(18, 'categories', 'delete', 15, 'soc_products_description.products_meta_description', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(18, 'categories', 'delete', 15, 'soc_products_description.products_viewed', '2', '', 'delete', 1, '2016-06-28 15:45:13'),
(18, 'categories', 'delete', 15, 'soc_products.products_id', '15', '', 'delete', 1, '2016-06-28 15:45:13'),
(18, 'categories', 'delete', 15, 'soc_products.products_type', '0', '', 'delete', 1, '2016-06-28 15:45:13'),
(18, 'categories', 'delete', 15, 'soc_products.products_quantity', '10', '', 'delete', 1, '2016-06-28 15:45:13'),
(18, 'categories', 'delete', 15, 'soc_products.products_moq', '1', '', 'delete', 1, '2016-06-28 15:45:13'),
(18, 'categories', 'delete', 15, 'soc_products.products_max_order_quantity', '-1', '', 'delete', 1, '2016-06-28 15:45:13'),
(18, 'categories', 'delete', 15, 'soc_products.products_price', '79.0000', '', 'delete', 1, '2016-06-28 15:45:13'),
(18, 'categories', 'delete', 15, 'soc_products.products_sku', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(18, 'categories', 'delete', 15, 'soc_products.products_model', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(18, 'categories', 'delete', 15, 'soc_products.products_date_added', '2016-06-28 15:03:16', '', 'delete', 1, '2016-06-28 15:45:13'),
(18, 'categories', 'delete', 15, 'soc_products.products_last_modified', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(18, 'categories', 'delete', 15, 'soc_products.products_date_available', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(18, 'categories', 'delete', 15, 'soc_products.products_weight', '10.00', '', 'delete', 1, '2016-06-28 15:45:13'),
(18, 'categories', 'delete', 15, 'soc_products.products_weight_class', '2', '', 'delete', 1, '2016-06-28 15:45:13'),
(18, 'categories', 'delete', 15, 'soc_products.products_status', '1', '', 'delete', 1, '2016-06-28 15:45:13'),
(18, 'categories', 'delete', 15, 'soc_products.products_tax_class_id', '0', '', 'delete', 1, '2016-06-28 15:45:13'),
(18, 'categories', 'delete', 15, 'soc_products.manufacturers_id', '1', '', 'delete', 1, '2016-06-28 15:45:13'),
(18, 'categories', 'delete', 15, 'soc_products.products_ordered', '0', '', 'delete', 1, '2016-06-28 15:45:13'),
(18, 'categories', 'delete', 15, 'soc_products.quantity_discount_groups_id', '0', '', 'delete', 1, '2016-06-28 15:45:13'),
(18, 'categories', 'delete', 15, 'soc_products.quantity_unit_class', '1', '', 'delete', 1, '2016-06-28 15:45:13'),
(18, 'categories', 'delete', 15, 'soc_products.order_increment', '1', '', 'delete', 1, '2016-06-28 15:45:13'),
(18, 'categories', 'delete', 15, 'soc_products.products_attributes_groups_id', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(19, 'categories', 'delete', 16, 'soc_products_description.products_id', '16', '', 'delete', 1, '2016-06-28 15:45:13'),
(19, 'categories', 'delete', 16, 'soc_products_description.language_id', '2', '', 'delete', 1, '2016-06-28 15:45:13'),
(19, 'categories', 'delete', 16, 'soc_products_description.products_name', 'Apple iPod touch 8 GB', '', 'delete', 1, '2016-06-28 15:45:13'),
(19, 'categories', 'delete', 16, 'soc_products_description.products_short_description', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(19, 'categories', 'delete', 16, 'soc_products_description.products_description', '<h2>Features</h2><ul><li>Size of Display&nbsp;&nbsp;&nbsp; 3.5 inch</li><li>Display Features&nbsp;&nbsp;&nbsp; Battery Level</li><li>Digital Storage Media&nbsp;&nbsp;&nbsp; 8 GB (Built-in Memory)</li><li>PC Interface Supported&nbsp;&nbsp;&nbsp; USB, Wi-Fi</li><li>Battery Run Time&nbsp;&nbsp;&nbsp; Up to 22 hrs.</li><li>Battery Type&nbsp;&nbsp;&nbsp; Internal Battery</li><li>Dimensions (W X D X H)&nbsp;&nbsp;&nbsp; 2.4 in. x 0.31 in. x 4.3 in.</li><li>Weight&nbsp;&nbsp;&nbsp; 4.2 oz.</li><li>MPN&nbsp;&nbsp;&nbsp; MA623ZO/B</li></ul><p><br>&nbsp;</p>', '', 'delete', 1, '2016-06-28 15:45:13'),
(19, 'categories', 'delete', 16, 'soc_products_description.products_keyword', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(19, 'categories', 'delete', 16, 'soc_products_description.products_tags', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(19, 'categories', 'delete', 16, 'soc_products_description.products_url', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(19, 'categories', 'delete', 16, 'soc_products_description.products_friendly_url', 'apple-ipod-touch-8-gb', '', 'delete', 1, '2016-06-28 15:45:13'),
(19, 'categories', 'delete', 16, 'soc_products_description.products_page_title', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(19, 'categories', 'delete', 16, 'soc_products_description.products_meta_keywords', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(19, 'categories', 'delete', 16, 'soc_products_description.products_meta_description', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(19, 'categories', 'delete', 16, 'soc_products_description.products_viewed', '1', '', 'delete', 1, '2016-06-28 15:45:13'),
(19, 'categories', 'delete', 16, 'soc_products.products_id', '16', '', 'delete', 1, '2016-06-28 15:45:13'),
(19, 'categories', 'delete', 16, 'soc_products.products_type', '0', '', 'delete', 1, '2016-06-28 15:45:13'),
(19, 'categories', 'delete', 16, 'soc_products.products_quantity', '10', '', 'delete', 1, '2016-06-28 15:45:13'),
(19, 'categories', 'delete', 16, 'soc_products.products_moq', '1', '', 'delete', 1, '2016-06-28 15:45:13'),
(19, 'categories', 'delete', 16, 'soc_products.products_max_order_quantity', '-1', '', 'delete', 1, '2016-06-28 15:45:13'),
(19, 'categories', 'delete', 16, 'soc_products.products_price', '120.0000', '', 'delete', 1, '2016-06-28 15:45:13'),
(19, 'categories', 'delete', 16, 'soc_products.products_sku', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(19, 'categories', 'delete', 16, 'soc_products.products_model', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(19, 'categories', 'delete', 16, 'soc_products.products_date_added', '2016-06-28 15:03:16', '', 'delete', 1, '2016-06-28 15:45:13'),
(19, 'categories', 'delete', 16, 'soc_products.products_last_modified', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(19, 'categories', 'delete', 16, 'soc_products.products_date_available', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(19, 'categories', 'delete', 16, 'soc_products.products_weight', '10.00', '', 'delete', 1, '2016-06-28 15:45:13'),
(19, 'categories', 'delete', 16, 'soc_products.products_weight_class', '2', '', 'delete', 1, '2016-06-28 15:45:13'),
(19, 'categories', 'delete', 16, 'soc_products.products_status', '1', '', 'delete', 1, '2016-06-28 15:45:13'),
(19, 'categories', 'delete', 16, 'soc_products.products_tax_class_id', '0', '', 'delete', 1, '2016-06-28 15:45:13'),
(19, 'categories', 'delete', 16, 'soc_products.manufacturers_id', '1', '', 'delete', 1, '2016-06-28 15:45:13'),
(19, 'categories', 'delete', 16, 'soc_products.products_ordered', '0', '', 'delete', 1, '2016-06-28 15:45:13'),
(19, 'categories', 'delete', 16, 'soc_products.quantity_discount_groups_id', '0', '', 'delete', 1, '2016-06-28 15:45:13'),
(19, 'categories', 'delete', 16, 'soc_products.quantity_unit_class', '1', '', 'delete', 1, '2016-06-28 15:45:13'),
(19, 'categories', 'delete', 16, 'soc_products.order_increment', '1', '', 'delete', 1, '2016-06-28 15:45:13'),
(19, 'categories', 'delete', 16, 'soc_products.products_attributes_groups_id', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(20, 'categories', 'delete', 17, 'soc_products_description.products_id', '17', '', 'delete', 1, '2016-06-28 15:45:13'),
(20, 'categories', 'delete', 17, 'soc_products_description.language_id', '2', '', 'delete', 1, '2016-06-28 15:45:13'),
(20, 'categories', 'delete', 17, 'soc_products_description.products_name', 'Apple iPhone 3G', '', 'delete', 1, '2016-06-28 15:45:13'),
(20, 'categories', 'delete', 17, 'soc_products_description.products_short_description', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(20, 'categories', 'delete', 17, 'soc_products_description.products_description', 'Features<br><br><ul><li>APPLE 3G 8GB</li><li>APPLE 3.5" TOUCHSCREEN</li><li>QUAD-BAND GSM &amp; EDGE</li><li>WI-FI (802.11b/g)</li><li>BLUETOOTH 2.0 EDR</li><li>8GB BUILT-IN STORAGE </li></ul>', '', 'delete', 1, '2016-06-28 15:45:13'),
(20, 'categories', 'delete', 17, 'soc_products_description.products_keyword', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(20, 'categories', 'delete', 17, 'soc_products_description.products_tags', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(20, 'categories', 'delete', 17, 'soc_products_description.products_url', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(20, 'categories', 'delete', 17, 'soc_products_description.products_friendly_url', 'apple-iphone-3g', '', 'delete', 1, '2016-06-28 15:45:13'),
(20, 'categories', 'delete', 17, 'soc_products_description.products_page_title', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(20, 'categories', 'delete', 17, 'soc_products_description.products_meta_keywords', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(20, 'categories', 'delete', 17, 'soc_products_description.products_meta_description', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(20, 'categories', 'delete', 17, 'soc_products_description.products_viewed', '1', '', 'delete', 1, '2016-06-28 15:45:13'),
(20, 'categories', 'delete', 17, 'soc_products.products_id', '17', '', 'delete', 1, '2016-06-28 15:45:13'),
(20, 'categories', 'delete', 17, 'soc_products.products_type', '0', '', 'delete', 1, '2016-06-28 15:45:13'),
(20, 'categories', 'delete', 17, 'soc_products.products_quantity', '10', '', 'delete', 1, '2016-06-28 15:45:13'),
(20, 'categories', 'delete', 17, 'soc_products.products_moq', '1', '', 'delete', 1, '2016-06-28 15:45:13'),
(20, 'categories', 'delete', 17, 'soc_products.products_max_order_quantity', '-1', '', 'delete', 1, '2016-06-28 15:45:13'),
(20, 'categories', 'delete', 17, 'soc_products.products_price', '399.0000', '', 'delete', 1, '2016-06-28 15:45:13'),
(20, 'categories', 'delete', 17, 'soc_products.products_sku', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(20, 'categories', 'delete', 17, 'soc_products.products_model', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(20, 'categories', 'delete', 17, 'soc_products.products_date_added', '2016-06-28 15:03:16', '', 'delete', 1, '2016-06-28 15:45:13'),
(20, 'categories', 'delete', 17, 'soc_products.products_last_modified', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(20, 'categories', 'delete', 17, 'soc_products.products_date_available', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(20, 'categories', 'delete', 17, 'soc_products.products_weight', '10.00', '', 'delete', 1, '2016-06-28 15:45:13'),
(20, 'categories', 'delete', 17, 'soc_products.products_weight_class', '2', '', 'delete', 1, '2016-06-28 15:45:13'),
(20, 'categories', 'delete', 17, 'soc_products.products_status', '1', '', 'delete', 1, '2016-06-28 15:45:13'),
(20, 'categories', 'delete', 17, 'soc_products.products_tax_class_id', '0', '', 'delete', 1, '2016-06-28 15:45:13'),
(20, 'categories', 'delete', 17, 'soc_products.manufacturers_id', '1', '', 'delete', 1, '2016-06-28 15:45:13'),
(20, 'categories', 'delete', 17, 'soc_products.products_ordered', '0', '', 'delete', 1, '2016-06-28 15:45:13'),
(20, 'categories', 'delete', 17, 'soc_products.quantity_discount_groups_id', '0', '', 'delete', 1, '2016-06-28 15:45:13'),
(20, 'categories', 'delete', 17, 'soc_products.quantity_unit_class', '1', '', 'delete', 1, '2016-06-28 15:45:13'),
(20, 'categories', 'delete', 17, 'soc_products.order_increment', '1', '', 'delete', 1, '2016-06-28 15:45:13'),
(20, 'categories', 'delete', 17, 'soc_products.products_attributes_groups_id', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(21, 'categories', 'delete', 19, 'soc_products_description.products_id', '19', '', 'delete', 1, '2016-06-28 15:45:13'),
(21, 'categories', 'delete', 19, 'soc_products_description.language_id', '2', '', 'delete', 1, '2016-06-28 15:45:13'),
(21, 'categories', 'delete', 19, 'soc_products_description.products_name', 'SONY DSC-T700(g) DIGITAL VIDEO CAMERA', '', 'delete', 1, '2016-06-28 15:45:13'),
(21, 'categories', 'delete', 19, 'soc_products_description.products_short_description', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(21, 'categories', 'delete', 19, 'soc_products_description.products_description', '<h2>Features</h2><ul><li>Slim, beautiful design.</li><li>10.1 effective megapixels</li><li>4GB internal memory, stores up to 40,000 photos</li><li>Powerful album functions to store, organize and share your photos</li><li>Smile Shutter automatically captures smiling faces</li><li>Beautiful portraits with Face Detection and Anti-blink technology</li><li>Enjoy your images on the Extra-large 3.5a€? touchscreen LCD</li><li>Easy web upload for sharing images on social networking sites</li><li>Double Anti-blur Solution</li><li>Portable Photo Album</li><li>Face Detection</li><li>Intelligent Scene Recognition</li><li>In Camera Retouch</li><li>Share HD-Quality Images </li></ul>', '', 'delete', 1, '2016-06-28 15:45:13'),
(21, 'categories', 'delete', 19, 'soc_products_description.products_keyword', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(21, 'categories', 'delete', 19, 'soc_products_description.products_tags', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(21, 'categories', 'delete', 19, 'soc_products_description.products_url', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(21, 'categories', 'delete', 19, 'soc_products_description.products_friendly_url', 'sony-dsc-t700-g-digital-video-camera', '', 'delete', 1, '2016-06-28 15:45:13'),
(21, 'categories', 'delete', 19, 'soc_products_description.products_page_title', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(21, 'categories', 'delete', 19, 'soc_products_description.products_meta_keywords', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(21, 'categories', 'delete', 19, 'soc_products_description.products_meta_description', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(21, 'categories', 'delete', 19, 'soc_products_description.products_viewed', '2', '', 'delete', 1, '2016-06-28 15:45:13'),
(21, 'categories', 'delete', 19, 'soc_products.products_id', '19', '', 'delete', 1, '2016-06-28 15:45:13'),
(21, 'categories', 'delete', 19, 'soc_products.products_type', '0', '', 'delete', 1, '2016-06-28 15:45:13'),
(21, 'categories', 'delete', 19, 'soc_products.products_quantity', '10', '', 'delete', 1, '2016-06-28 15:45:13'),
(21, 'categories', 'delete', 19, 'soc_products.products_moq', '1', '', 'delete', 1, '2016-06-28 15:45:13'),
(21, 'categories', 'delete', 19, 'soc_products.products_max_order_quantity', '-1', '', 'delete', 1, '2016-06-28 15:45:13'),
(21, 'categories', 'delete', 19, 'soc_products.products_price', '199.0000', '', 'delete', 1, '2016-06-28 15:45:13'),
(21, 'categories', 'delete', 19, 'soc_products.products_sku', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(21, 'categories', 'delete', 19, 'soc_products.products_model', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(21, 'categories', 'delete', 19, 'soc_products.products_date_added', '2016-06-28 15:03:16', '', 'delete', 1, '2016-06-28 15:45:13'),
(21, 'categories', 'delete', 19, 'soc_products.products_last_modified', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(21, 'categories', 'delete', 19, 'soc_products.products_date_available', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(21, 'categories', 'delete', 19, 'soc_products.products_weight', '10.00', '', 'delete', 1, '2016-06-28 15:45:13'),
(21, 'categories', 'delete', 19, 'soc_products.products_weight_class', '2', '', 'delete', 1, '2016-06-28 15:45:13'),
(21, 'categories', 'delete', 19, 'soc_products.products_status', '1', '', 'delete', 1, '2016-06-28 15:45:13'),
(21, 'categories', 'delete', 19, 'soc_products.products_tax_class_id', '0', '', 'delete', 1, '2016-06-28 15:45:13'),
(21, 'categories', 'delete', 19, 'soc_products.manufacturers_id', '5', '', 'delete', 1, '2016-06-28 15:45:13'),
(21, 'categories', 'delete', 19, 'soc_products.products_ordered', '0', '', 'delete', 1, '2016-06-28 15:45:13'),
(21, 'categories', 'delete', 19, 'soc_products.quantity_discount_groups_id', '0', '', 'delete', 1, '2016-06-28 15:45:13'),
(21, 'categories', 'delete', 19, 'soc_products.quantity_unit_class', '1', '', 'delete', 1, '2016-06-28 15:45:13'),
(21, 'categories', 'delete', 19, 'soc_products.order_increment', '1', '', 'delete', 1, '2016-06-28 15:45:13'),
(21, 'categories', 'delete', 19, 'soc_products.products_attributes_groups_id', '', '', 'delete', 1, '2016-06-28 15:45:13'),
(22, 'categories', 'insert', 10, 'soc_categories.parent_id', '', '2', 'insert', 1, '2016-06-28 15:46:19'),
(22, 'categories', 'insert', 10, 'soc_categories.sort_order', '', '0', 'insert', 1, '2016-06-28 15:46:19'),
(22, 'categories', 'insert', 10, 'soc_categories.categories_status', '', '1', 'insert', 1, '2016-06-28 15:46:19'),
(22, 'categories', 'insert', 10, 'soc_categories_description.categories_id', '', '10', 'insert', 1, '2016-06-28 15:46:19'),
(22, 'categories', 'insert', 10, 'soc_categories_description.language_id', '', '2', 'insert', 1, '2016-06-28 15:46:19'),
(22, 'categories', 'insert', 10, 'soc_categories_description.categories_name', '', 'Android', 'insert', 1, '2016-06-28 15:46:19'),
(22, 'categories', 'insert', 10, 'soc_categories_description.categories_url', '', 'android', 'insert', 1, '2016-06-28 15:46:19'),
(22, 'categories', 'insert', 10, 'soc_categories_description.categories_page_title', '', '', 'insert', 1, '2016-06-28 15:46:19'),
(22, 'categories', 'insert', 10, 'soc_categories_description.categories_meta_keywords', '', '', 'insert', 1, '2016-06-28 15:46:19'),
(22, 'categories', 'insert', 10, 'soc_categories_description.categories_meta_description', '', '', 'insert', 1, '2016-06-28 15:46:19'),
(23, 'categories', 'insert', 11, 'soc_categories.parent_id', '', '2', 'insert', 1, '2016-06-28 15:46:53'),
(23, 'categories', 'insert', 11, 'soc_categories.sort_order', '', '1', 'insert', 1, '2016-06-28 15:46:53'),
(23, 'categories', 'insert', 11, 'soc_categories.categories_status', '', '1', 'insert', 1, '2016-06-28 15:46:53'),
(23, 'categories', 'insert', 11, 'soc_categories_description.categories_id', '', '11', 'insert', 1, '2016-06-28 15:46:53'),
(23, 'categories', 'insert', 11, 'soc_categories_description.language_id', '', '2', 'insert', 1, '2016-06-28 15:46:53'),
(23, 'categories', 'insert', 11, 'soc_categories_description.categories_name', '', 'IOS / Iphone', 'insert', 1, '2016-06-28 15:46:53'),
(23, 'categories', 'insert', 11, 'soc_categories_description.categories_url', '', 'ios-iphone', 'insert', 1, '2016-06-28 15:46:53'),
(23, 'categories', 'insert', 11, 'soc_categories_description.categories_page_title', '', '', 'insert', 1, '2016-06-28 15:46:53'),
(23, 'categories', 'insert', 11, 'soc_categories_description.categories_meta_keywords', '', '', 'insert', 1, '2016-06-28 15:46:53'),
(23, 'categories', 'insert', 11, 'soc_categories_description.categories_meta_description', '', '', 'insert', 1, '2016-06-28 15:46:53'),
(24, 'categories', 'insert', 12, 'soc_categories.parent_id', '', '2', 'insert', 1, '2016-06-28 15:47:12'),
(24, 'categories', 'insert', 12, 'soc_categories.sort_order', '', '2', 'insert', 1, '2016-06-28 15:47:12'),
(24, 'categories', 'insert', 12, 'soc_categories.categories_status', '', '1', 'insert', 1, '2016-06-28 15:47:12'),
(24, 'categories', 'insert', 12, 'soc_categories_description.categories_id', '', '12', 'insert', 1, '2016-06-28 15:47:12'),
(24, 'categories', 'insert', 12, 'soc_categories_description.language_id', '', '2', 'insert', 1, '2016-06-28 15:47:12'),
(24, 'categories', 'insert', 12, 'soc_categories_description.categories_name', '', 'Windows Phone', 'insert', 1, '2016-06-28 15:47:12'),
(24, 'categories', 'insert', 12, 'soc_categories_description.categories_url', '', 'windows-phone', 'insert', 1, '2016-06-28 15:47:12'),
(24, 'categories', 'insert', 12, 'soc_categories_description.categories_page_title', '', '', 'insert', 1, '2016-06-28 15:47:12'),
(24, 'categories', 'insert', 12, 'soc_categories_description.categories_meta_keywords', '', '', 'insert', 1, '2016-06-28 15:47:12'),
(24, 'categories', 'insert', 12, 'soc_categories_description.categories_meta_description', '', '', 'insert', 1, '2016-06-28 15:47:12'),
(25, 'categories', 'insert', 13, 'soc_categories.parent_id', '', '2', 'insert', 1, '2016-06-28 15:47:39'),
(25, 'categories', 'insert', 13, 'soc_categories.sort_order', '', '3', 'insert', 1, '2016-06-28 15:47:39'),
(25, 'categories', 'insert', 13, 'soc_categories.categories_status', '', '1', 'insert', 1, '2016-06-28 15:47:39'),
(25, 'categories', 'insert', 13, 'soc_categories_description.categories_id', '', '13', 'insert', 1, '2016-06-28 15:47:39'),
(25, 'categories', 'insert', 13, 'soc_categories_description.language_id', '', '2', 'insert', 1, '2016-06-28 15:47:39'),
(25, 'categories', 'insert', 13, 'soc_categories_description.categories_name', '', 'Outros', 'insert', 1, '2016-06-28 15:47:39'),
(25, 'categories', 'insert', 13, 'soc_categories_description.categories_url', '', 'outros', 'insert', 1, '2016-06-28 15:47:39'),
(25, 'categories', 'insert', 13, 'soc_categories_description.categories_page_title', '', '', 'insert', 1, '2016-06-28 15:47:39'),
(25, 'categories', 'insert', 13, 'soc_categories_description.categories_meta_keywords', '', '', 'insert', 1, '2016-06-28 15:47:39'),
(25, 'categories', 'insert', 13, 'soc_categories_description.categories_meta_description', '', '', 'insert', 1, '2016-06-28 15:47:39'),
(26, 'categories', 'insert', 14, 'soc_categories.parent_id', '', '1', 'insert', 1, '2016-06-28 15:48:03'),
(26, 'categories', 'insert', 14, 'soc_categories.sort_order', '', '0', 'insert', 1, '2016-06-28 15:48:03'),
(26, 'categories', 'insert', 14, 'soc_categories.categories_status', '', '1', 'insert', 1, '2016-06-28 15:48:03'),
(26, 'categories', 'insert', 14, 'soc_categories_description.categories_id', '', '14', 'insert', 1, '2016-06-28 15:48:03'),
(26, 'categories', 'insert', 14, 'soc_categories_description.language_id', '', '2', 'insert', 1, '2016-06-28 15:48:03'),
(26, 'categories', 'insert', 14, 'soc_categories_description.categories_name', '', 'Claro', 'insert', 1, '2016-06-28 15:48:03'),
(26, 'categories', 'insert', 14, 'soc_categories_description.categories_url', '', 'claro', 'insert', 1, '2016-06-28 15:48:03'),
(26, 'categories', 'insert', 14, 'soc_categories_description.categories_page_title', '', '', 'insert', 1, '2016-06-28 15:48:03'),
(26, 'categories', 'insert', 14, 'soc_categories_description.categories_meta_keywords', '', '', 'insert', 1, '2016-06-28 15:48:03'),
(26, 'categories', 'insert', 14, 'soc_categories_description.categories_meta_description', '', '', 'insert', 1, '2016-06-28 15:48:03'),
(27, 'categories', 'insert', 15, 'soc_categories.parent_id', '', '1', 'insert', 1, '2016-06-28 15:48:17'),
(27, 'categories', 'insert', 15, 'soc_categories.sort_order', '', '1', 'insert', 1, '2016-06-28 15:48:17'),
(27, 'categories', 'insert', 15, 'soc_categories.categories_status', '', '1', 'insert', 1, '2016-06-28 15:48:17'),
(27, 'categories', 'insert', 15, 'soc_categories_description.categories_id', '', '15', 'insert', 1, '2016-06-28 15:48:17'),
(27, 'categories', 'insert', 15, 'soc_categories_description.language_id', '', '2', 'insert', 1, '2016-06-28 15:48:17'),
(27, 'categories', 'insert', 15, 'soc_categories_description.categories_name', '', 'Vivo', 'insert', 1, '2016-06-28 15:48:17'),
(27, 'categories', 'insert', 15, 'soc_categories_description.categories_url', '', 'vivo', 'insert', 1, '2016-06-28 15:48:17'),
(27, 'categories', 'insert', 15, 'soc_categories_description.categories_page_title', '', '', 'insert', 1, '2016-06-28 15:48:17'),
(27, 'categories', 'insert', 15, 'soc_categories_description.categories_meta_keywords', '', '', 'insert', 1, '2016-06-28 15:48:17'),
(27, 'categories', 'insert', 15, 'soc_categories_description.categories_meta_description', '', '', 'insert', 1, '2016-06-28 15:48:17'),
(28, 'categories', 'insert', 16, 'soc_categories.parent_id', '', '1', 'insert', 1, '2016-06-28 15:48:30'),
(28, 'categories', 'insert', 16, 'soc_categories.sort_order', '', '2', 'insert', 1, '2016-06-28 15:48:30'),
(28, 'categories', 'insert', 16, 'soc_categories.categories_status', '', '1', 'insert', 1, '2016-06-28 15:48:30'),
(28, 'categories', 'insert', 16, 'soc_categories_description.categories_id', '', '16', 'insert', 1, '2016-06-28 15:48:30'),
(28, 'categories', 'insert', 16, 'soc_categories_description.language_id', '', '2', 'insert', 1, '2016-06-28 15:48:30'),
(28, 'categories', 'insert', 16, 'soc_categories_description.categories_name', '', 'Tim', 'insert', 1, '2016-06-28 15:48:30'),
(28, 'categories', 'insert', 16, 'soc_categories_description.categories_url', '', 'tim', 'insert', 1, '2016-06-28 15:48:30'),
(28, 'categories', 'insert', 16, 'soc_categories_description.categories_page_title', '', '', 'insert', 1, '2016-06-28 15:48:30'),
(28, 'categories', 'insert', 16, 'soc_categories_description.categories_meta_keywords', '', '', 'insert', 1, '2016-06-28 15:48:30'),
(28, 'categories', 'insert', 16, 'soc_categories_description.categories_meta_description', '', '', 'insert', 1, '2016-06-28 15:48:30'),
(29, 'categories', 'insert', 17, 'soc_categories.parent_id', '', '1', 'insert', 1, '2016-06-28 15:48:41'),
(29, 'categories', 'insert', 17, 'soc_categories.sort_order', '', '3', 'insert', 1, '2016-06-28 15:48:41'),
(29, 'categories', 'insert', 17, 'soc_categories.categories_status', '', '1', 'insert', 1, '2016-06-28 15:48:41'),
(29, 'categories', 'insert', 17, 'soc_categories_description.categories_id', '', '17', 'insert', 1, '2016-06-28 15:48:41'),
(29, 'categories', 'insert', 17, 'soc_categories_description.language_id', '', '2', 'insert', 1, '2016-06-28 15:48:41'),
(29, 'categories', 'insert', 17, 'soc_categories_description.categories_name', '', 'Oi', 'insert', 1, '2016-06-28 15:48:41'),
(29, 'categories', 'insert', 17, 'soc_categories_description.categories_url', '', 'oi', 'insert', 1, '2016-06-28 15:48:41'),
(29, 'categories', 'insert', 17, 'soc_categories_description.categories_page_title', '', '', 'insert', 1, '2016-06-28 15:48:41'),
(29, 'categories', 'insert', 17, 'soc_categories_description.categories_meta_keywords', '', '', 'insert', 1, '2016-06-28 15:48:41'),
(29, 'categories', 'insert', 17, 'soc_categories_description.categories_meta_description', '', '', 'insert', 1, '2016-06-28 15:48:41'),
(30, 'categories', 'insert', 18, 'soc_categories.parent_id', '', '3', 'insert', 1, '2016-06-28 15:48:58'),
(30, 'categories', 'insert', 18, 'soc_categories.sort_order', '', '0', 'insert', 1, '2016-06-28 15:48:58'),
(30, 'categories', 'insert', 18, 'soc_categories.categories_status', '', '1', 'insert', 1, '2016-06-28 15:48:58'),
(30, 'categories', 'insert', 18, 'soc_categories_description.categories_id', '', '18', 'insert', 1, '2016-06-28 15:48:58'),
(30, 'categories', 'insert', 18, 'soc_categories_description.language_id', '', '2', 'insert', 1, '2016-06-28 15:48:58'),
(30, 'categories', 'insert', 18, 'soc_categories_description.categories_name', '', 'Apple', 'insert', 1, '2016-06-28 15:48:58'),
(30, 'categories', 'insert', 18, 'soc_categories_description.categories_url', '', 'apple', 'insert', 1, '2016-06-28 15:48:58'),
(30, 'categories', 'insert', 18, 'soc_categories_description.categories_page_title', '', '', 'insert', 1, '2016-06-28 15:48:58'),
(30, 'categories', 'insert', 18, 'soc_categories_description.categories_meta_keywords', '', '', 'insert', 1, '2016-06-28 15:48:58'),
(30, 'categories', 'insert', 18, 'soc_categories_description.categories_meta_description', '', '', 'insert', 1, '2016-06-28 15:48:58'),
(31, 'categories', 'insert', 19, 'soc_categories.parent_id', '', '3', 'insert', 1, '2016-06-28 15:49:15'),
(31, 'categories', 'insert', 19, 'soc_categories.sort_order', '', '1', 'insert', 1, '2016-06-28 15:49:15'),
(31, 'categories', 'insert', 19, 'soc_categories.categories_status', '', '1', 'insert', 1, '2016-06-28 15:49:15'),
(31, 'categories', 'insert', 19, 'soc_categories_description.categories_id', '', '19', 'insert', 1, '2016-06-28 15:49:15'),
(31, 'categories', 'insert', 19, 'soc_categories_description.language_id', '', '2', 'insert', 1, '2016-06-28 15:49:15'),
(31, 'categories', 'insert', 19, 'soc_categories_description.categories_name', '', 'LG', 'insert', 1, '2016-06-28 15:49:15'),
(31, 'categories', 'insert', 19, 'soc_categories_description.categories_url', '', 'lg', 'insert', 1, '2016-06-28 15:49:15'),
(31, 'categories', 'insert', 19, 'soc_categories_description.categories_page_title', '', '', 'insert', 1, '2016-06-28 15:49:15'),
(31, 'categories', 'insert', 19, 'soc_categories_description.categories_meta_keywords', '', '', 'insert', 1, '2016-06-28 15:49:15'),
(31, 'categories', 'insert', 19, 'soc_categories_description.categories_meta_description', '', '', 'insert', 1, '2016-06-28 15:49:15'),
(32, 'categories', 'insert', 20, 'soc_categories.parent_id', '', '3', 'insert', 1, '2016-06-28 15:49:32'),
(32, 'categories', 'insert', 20, 'soc_categories.sort_order', '', '2', 'insert', 1, '2016-06-28 15:49:32'),
(32, 'categories', 'insert', 20, 'soc_categories.categories_status', '', '1', 'insert', 1, '2016-06-28 15:49:32'),
(32, 'categories', 'insert', 20, 'soc_categories_description.categories_id', '', '20', 'insert', 1, '2016-06-28 15:49:32'),
(32, 'categories', 'insert', 20, 'soc_categories_description.language_id', '', '2', 'insert', 1, '2016-06-28 15:49:32'),
(32, 'categories', 'insert', 20, 'soc_categories_description.categories_name', '', 'Samsumg', 'insert', 1, '2016-06-28 15:49:32'),
(32, 'categories', 'insert', 20, 'soc_categories_description.categories_url', '', 'samsumg', 'insert', 1, '2016-06-28 15:49:32'),
(32, 'categories', 'insert', 20, 'soc_categories_description.categories_page_title', '', '', 'insert', 1, '2016-06-28 15:49:32'),
(32, 'categories', 'insert', 20, 'soc_categories_description.categories_meta_keywords', '', '', 'insert', 1, '2016-06-28 15:49:32'),
(32, 'categories', 'insert', 20, 'soc_categories_description.categories_meta_description', '', '', 'insert', 1, '2016-06-28 15:49:32'),
(33, 'categories', 'update', 20, 'soc_categories_description.categories_name', 'Samsumg', 'Samsung', 'update', 1, '2016-06-28 15:49:53'),
(34, 'categories', 'insert', 21, 'soc_categories.parent_id', '', '3', 'insert', 1, '2016-06-28 15:50:12'),
(34, 'categories', 'insert', 21, 'soc_categories.sort_order', '', '3', 'insert', 1, '2016-06-28 15:50:12'),
(34, 'categories', 'insert', 21, 'soc_categories.categories_status', '', '1', 'insert', 1, '2016-06-28 15:50:12'),
(34, 'categories', 'insert', 21, 'soc_categories_description.categories_id', '', '21', 'insert', 1, '2016-06-28 15:50:12'),
(34, 'categories', 'insert', 21, 'soc_categories_description.language_id', '', '2', 'insert', 1, '2016-06-28 15:50:12'),
(34, 'categories', 'insert', 21, 'soc_categories_description.categories_name', '', 'Sony', 'insert', 1, '2016-06-28 15:50:12'),
(34, 'categories', 'insert', 21, 'soc_categories_description.categories_url', '', 'sony', 'insert', 1, '2016-06-28 15:50:12'),
(34, 'categories', 'insert', 21, 'soc_categories_description.categories_page_title', '', '', 'insert', 1, '2016-06-28 15:50:12'),
(34, 'categories', 'insert', 21, 'soc_categories_description.categories_meta_keywords', '', '', 'insert', 1, '2016-06-28 15:50:12'),
(34, 'categories', 'insert', 21, 'soc_categories_description.categories_meta_description', '', '', 'insert', 1, '2016-06-28 15:50:12'),
(35, 'categories', 'insert', 22, 'soc_categories.parent_id', '', '3', 'insert', 1, '2016-06-28 15:50:47'),
(35, 'categories', 'insert', 22, 'soc_categories.sort_order', '', '4', 'insert', 1, '2016-06-28 15:50:47'),
(35, 'categories', 'insert', 22, 'soc_categories.categories_status', '', '1', 'insert', 1, '2016-06-28 15:50:47'),
(35, 'categories', 'insert', 22, 'soc_categories_description.categories_id', '', '22', 'insert', 1, '2016-06-28 15:50:47'),
(35, 'categories', 'insert', 22, 'soc_categories_description.language_id', '', '2', 'insert', 1, '2016-06-28 15:50:47'),
(35, 'categories', 'insert', 22, 'soc_categories_description.categories_name', '', 'Motorola', 'insert', 1, '2016-06-28 15:50:47'),
(35, 'categories', 'insert', 22, 'soc_categories_description.categories_url', '', 'motorola', 'insert', 1, '2016-06-28 15:50:47'),
(35, 'categories', 'insert', 22, 'soc_categories_description.categories_page_title', '', '', 'insert', 1, '2016-06-28 15:50:47'),
(35, 'categories', 'insert', 22, 'soc_categories_description.categories_meta_keywords', '', '', 'insert', 1, '2016-06-28 15:50:47'),
(35, 'categories', 'insert', 22, 'soc_categories_description.categories_meta_description', '', '', 'insert', 1, '2016-06-28 15:50:47'),
(36, 'categories', 'insert', 23, 'soc_categories.parent_id', '', '3', 'insert', 1, '2016-06-28 15:50:59'),
(36, 'categories', 'insert', 23, 'soc_categories.sort_order', '', '5', 'insert', 1, '2016-06-28 15:50:59'),
(36, 'categories', 'insert', 23, 'soc_categories.categories_status', '', '1', 'insert', 1, '2016-06-28 15:50:59'),
(36, 'categories', 'insert', 23, 'soc_categories_description.categories_id', '', '23', 'insert', 1, '2016-06-28 15:50:59');
INSERT INTO `soc_administrators_log` (`id`, `module`, `module_action`, `module_id`, `field_key`, `old_value`, `new_value`, `action`, `administrators_id`, `datestamp`) VALUES
(36, 'categories', 'insert', 23, 'soc_categories_description.language_id', '', '2', 'insert', 1, '2016-06-28 15:50:59'),
(36, 'categories', 'insert', 23, 'soc_categories_description.categories_name', '', 'Outros', 'insert', 1, '2016-06-28 15:50:59'),
(36, 'categories', 'insert', 23, 'soc_categories_description.categories_url', '', 'outros', 'insert', 1, '2016-06-28 15:50:59'),
(36, 'categories', 'insert', 23, 'soc_categories_description.categories_page_title', '', '', 'insert', 1, '2016-06-28 15:50:59'),
(36, 'categories', 'insert', 23, 'soc_categories_description.categories_meta_keywords', '', '', 'insert', 1, '2016-06-28 15:50:59'),
(36, 'categories', 'insert', 23, 'soc_categories_description.categories_meta_description', '', '', 'insert', 1, '2016-06-28 15:50:59'),
(37, 'products', 'delete', 18, 'soc_products_to_categories.products_id', '18', '', 'delete', 1, '2016-06-28 15:55:40'),
(37, 'products', 'delete', 18, 'soc_products_to_categories.categories_id', '3', '', 'delete', 1, '2016-06-28 15:55:40'),
(37, 'products', 'delete', 18, 'soc_products_description.products_id', '18', '', 'delete', 1, '2016-06-28 15:55:40'),
(37, 'products', 'delete', 18, 'soc_products_description.language_id', '2', '', 'delete', 1, '2016-06-28 15:55:40'),
(37, 'products', 'delete', 18, 'soc_products_description.products_name', 'APPLE 23" HD CINEMA COLOR DISPLAY', '', 'delete', 1, '2016-06-28 15:55:40'),
(37, 'products', 'delete', 18, 'soc_products_description.products_short_description', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(37, 'products', 'delete', 18, 'soc_products_description.products_description', '<h2>Features</h2><br><ul><li>Compatibility: Mac</li><li>Panel type: Thin film transistor (TFT) active matrix LCD</li><li>Display size: 23 inches</li><li>Diagonal viewable screen size: 23 inches</li><li>Dot pitch: 1920 x 1200 pixels (optimum)</li><li>Contrast ratio: 350:1</li><li>Glass surface: Anti-glare hardcoat screen treatment</li><li>Horizontal viewing angle: 170 degrees</li><li>Vertical viewing angle: 170 degrees</li><li>Brightness: 200 cd/m2</li><li>Input signals: Digital</li><li>Input connector/cable: Apple Display Connector (ADC) carries power, USB, and digital graphics; two-port self-powered USB hub connects peripherals</li><li>Maximum noninterlaced resolution: 1920 x 1200 dpi</li><li>Power on/off: Yes, system power on/sleep/wake</li><li>Brightness: Yes</li><li>Swivel: Yes, user adjustable</li><li>System requirements: One of the following systems (a,b, or c): (a) Power Mac G4 with NVIDIA GeForce2 MX, GeForce3, GeForce4 MX, or GeForce4 Ti graphics card, or ATI Radeon 7500 graphics card; and Mac OS X v10.1.3 or Mac OS 9.2.2, (b) Power Mac G4 with DVI port (via an NVIDIA GeForce4 Ti graphics card) and Apple DVI to ADC Adapter, (c) PowerBook G4 with DVI port and Apple DVI to ADC Adapter</li><li>Width: 24.2 inches</li><li>Height: 19.2 inches</li><li>Depth: 7.3 inches</li><li>Weight: 25.3 pounds</li></ul><br>', '', 'delete', 1, '2016-06-28 15:55:40'),
(37, 'products', 'delete', 18, 'soc_products_description.products_keyword', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(37, 'products', 'delete', 18, 'soc_products_description.products_tags', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(37, 'products', 'delete', 18, 'soc_products_description.products_url', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(37, 'products', 'delete', 18, 'soc_products_description.products_friendly_url', 'apple-23-hd-cinema-color-display', '', 'delete', 1, '2016-06-28 15:55:40'),
(37, 'products', 'delete', 18, 'soc_products_description.products_page_title', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(37, 'products', 'delete', 18, 'soc_products_description.products_meta_keywords', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(37, 'products', 'delete', 18, 'soc_products_description.products_meta_description', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(37, 'products', 'delete', 18, 'soc_products_description.products_viewed', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(37, 'products', 'delete', 18, 'soc_products.products_id', '18', '', 'delete', 1, '2016-06-28 15:55:40'),
(37, 'products', 'delete', 18, 'soc_products.products_type', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(37, 'products', 'delete', 18, 'soc_products.products_quantity', '10', '', 'delete', 1, '2016-06-28 15:55:40'),
(37, 'products', 'delete', 18, 'soc_products.products_moq', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(37, 'products', 'delete', 18, 'soc_products.products_max_order_quantity', '-1', '', 'delete', 1, '2016-06-28 15:55:40'),
(37, 'products', 'delete', 18, 'soc_products.products_price', '300.0000', '', 'delete', 1, '2016-06-28 15:55:40'),
(37, 'products', 'delete', 18, 'soc_products.products_sku', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(37, 'products', 'delete', 18, 'soc_products.products_model', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(37, 'products', 'delete', 18, 'soc_products.products_date_added', '2016-06-28 15:03:16', '', 'delete', 1, '2016-06-28 15:55:40'),
(37, 'products', 'delete', 18, 'soc_products.products_last_modified', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(37, 'products', 'delete', 18, 'soc_products.products_date_available', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(37, 'products', 'delete', 18, 'soc_products.products_weight', '10.00', '', 'delete', 1, '2016-06-28 15:55:40'),
(37, 'products', 'delete', 18, 'soc_products.products_weight_class', '2', '', 'delete', 1, '2016-06-28 15:55:40'),
(37, 'products', 'delete', 18, 'soc_products.products_status', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(37, 'products', 'delete', 18, 'soc_products.products_tax_class_id', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(37, 'products', 'delete', 18, 'soc_products.manufacturers_id', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(37, 'products', 'delete', 18, 'soc_products.products_ordered', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(37, 'products', 'delete', 18, 'soc_products.quantity_discount_groups_id', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(37, 'products', 'delete', 18, 'soc_products.quantity_unit_class', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(37, 'products', 'delete', 18, 'soc_products.order_increment', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(37, 'products', 'delete', 18, 'soc_products.products_attributes_groups_id', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(38, 'products', 'delete', 14, 'soc_products_to_categories.products_id', '14', '', 'delete', 1, '2016-06-28 15:55:40'),
(38, 'products', 'delete', 14, 'soc_products_to_categories.categories_id', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(38, 'products', 'delete', 14, 'soc_products_description.products_id', '14', '', 'delete', 1, '2016-06-28 15:55:40'),
(38, 'products', 'delete', 14, 'soc_products_description.language_id', '2', '', 'delete', 1, '2016-06-28 15:55:40'),
(38, 'products', 'delete', 14, 'soc_products_description.products_name', 'Toshiba Satellite L305D-S5904 15.4-Inch Laptop', '', 'delete', 1, '2016-06-28 15:55:40'),
(38, 'products', 'delete', 14, 'soc_products_description.products_short_description', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(38, 'products', 'delete', 14, 'soc_products_description.products_description', '<h2>Products Features</h2><br><ul><li>15.4-Inch (Diagonal) Widescreen TruBrite TFT LCD Display at 1280 x 800 Resolution </li><li>2.0 GHz AMD Turion 64 X2 Dual Core Mobile Technology with 1MB L2 Cache </li><li>3072MB DDR2 SDRAM System Memory, 250GB (5400 RPM) Hard Drive (SATA), ATI Radeon X1250 Graphics with 128MB-831MB Dynamically Allocated Shared Graphics Memory </li><li>DVD SuperMulti (+/-R Double Layer) with Labelflash, Atheros 802.11 b/g Wireless LAN </li><li>Windows Vista Home Premium, dims in inches: 4.75 (W) x 14.3 (L) x 1.33 (H) approx., 5.49 lbs.</li></ul><br>', '', 'delete', 1, '2016-06-28 15:55:40'),
(38, 'products', 'delete', 14, 'soc_products_description.products_keyword', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(38, 'products', 'delete', 14, 'soc_products_description.products_tags', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(38, 'products', 'delete', 14, 'soc_products_description.products_url', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(38, 'products', 'delete', 14, 'soc_products_description.products_friendly_url', 'toshiba-satellite-l305d-s5904-15-4-inch-laptop', '', 'delete', 1, '2016-06-28 15:55:40'),
(38, 'products', 'delete', 14, 'soc_products_description.products_page_title', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(38, 'products', 'delete', 14, 'soc_products_description.products_meta_keywords', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(38, 'products', 'delete', 14, 'soc_products_description.products_meta_description', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(38, 'products', 'delete', 14, 'soc_products_description.products_viewed', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(38, 'products', 'delete', 14, 'soc_products.products_id', '14', '', 'delete', 1, '2016-06-28 15:55:40'),
(38, 'products', 'delete', 14, 'soc_products.products_type', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(38, 'products', 'delete', 14, 'soc_products.products_quantity', '10', '', 'delete', 1, '2016-06-28 15:55:40'),
(38, 'products', 'delete', 14, 'soc_products.products_moq', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(38, 'products', 'delete', 14, 'soc_products.products_max_order_quantity', '-1', '', 'delete', 1, '2016-06-28 15:55:40'),
(38, 'products', 'delete', 14, 'soc_products.products_price', '599.0000', '', 'delete', 1, '2016-06-28 15:55:40'),
(38, 'products', 'delete', 14, 'soc_products.products_sku', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(38, 'products', 'delete', 14, 'soc_products.products_model', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(38, 'products', 'delete', 14, 'soc_products.products_date_added', '2016-06-28 15:03:16', '', 'delete', 1, '2016-06-28 15:55:40'),
(38, 'products', 'delete', 14, 'soc_products.products_last_modified', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(38, 'products', 'delete', 14, 'soc_products.products_date_available', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(38, 'products', 'delete', 14, 'soc_products.products_weight', '10.00', '', 'delete', 1, '2016-06-28 15:55:40'),
(38, 'products', 'delete', 14, 'soc_products.products_weight_class', '2', '', 'delete', 1, '2016-06-28 15:55:40'),
(38, 'products', 'delete', 14, 'soc_products.products_status', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(38, 'products', 'delete', 14, 'soc_products.products_tax_class_id', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(38, 'products', 'delete', 14, 'soc_products.manufacturers_id', '6', '', 'delete', 1, '2016-06-28 15:55:40'),
(38, 'products', 'delete', 14, 'soc_products.products_ordered', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(38, 'products', 'delete', 14, 'soc_products.quantity_discount_groups_id', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(38, 'products', 'delete', 14, 'soc_products.quantity_unit_class', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(38, 'products', 'delete', 14, 'soc_products.order_increment', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(38, 'products', 'delete', 14, 'soc_products.products_attributes_groups_id', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(39, 'products', 'delete', 13, 'soc_products_to_categories.products_id', '13', '', 'delete', 1, '2016-06-28 15:55:40'),
(39, 'products', 'delete', 13, 'soc_products_to_categories.categories_id', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(39, 'products', 'delete', 13, 'soc_products_description.products_id', '13', '', 'delete', 1, '2016-06-28 15:55:40'),
(39, 'products', 'delete', 13, 'soc_products_description.language_id', '2', '', 'delete', 1, '2016-06-28 15:55:40'),
(39, 'products', 'delete', 13, 'soc_products_description.products_name', 'HP Pavilion TX2510US 12.1-inch Laptop', '', 'delete', 1, '2016-06-28 15:55:40'),
(39, 'products', 'delete', 13, 'soc_products_description.products_short_description', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(39, 'products', 'delete', 13, 'soc_products_description.products_description', '<h2>Products Features</h2><br><ul><li>12.1-inch (Diagonal) Widescreen Integrated Touch Screen, Convertible Display 1280 x 800, Panel Rotates 180 Degrees and Folds Flat </li><li>2.10 GHz AMD Turion X2 ZM-80 Ultra Dual Core Mobile Processor with 2 MB L2 Cache </li><li>3072 MB DDR2 System Memory (2 Dimm), 250 GB (5400RPM) Hard Drive (SATA), ATI Radeon HD 3200 Graphics RS780M with 64 MB DDR2 (Sideport Memory) with up to 1470 MB Total Graphics Memory </li><li>LightScribe Super Multi 8X DVD?±R/RW with Double Layer Support, Wireless LAN 802.11a/b/g/n and Bluetooth </li><li>Windows Vista Home Premium, dims in inches: 8.82 (W) x 12.05 (L) x 1.52 (H) approx., 4.56 lbs.</li></ul><br>', '', 'delete', 1, '2016-06-28 15:55:40'),
(39, 'products', 'delete', 13, 'soc_products_description.products_keyword', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(39, 'products', 'delete', 13, 'soc_products_description.products_tags', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(39, 'products', 'delete', 13, 'soc_products_description.products_url', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(39, 'products', 'delete', 13, 'soc_products_description.products_friendly_url', 'hp-pavilion-tx2510us-12-1-inch-laptop', '', 'delete', 1, '2016-06-28 15:55:40'),
(39, 'products', 'delete', 13, 'soc_products_description.products_page_title', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(39, 'products', 'delete', 13, 'soc_products_description.products_meta_keywords', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(39, 'products', 'delete', 13, 'soc_products_description.products_meta_description', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(39, 'products', 'delete', 13, 'soc_products_description.products_viewed', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(39, 'products', 'delete', 13, 'soc_products.products_id', '13', '', 'delete', 1, '2016-06-28 15:55:40'),
(39, 'products', 'delete', 13, 'soc_products.products_type', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(39, 'products', 'delete', 13, 'soc_products.products_quantity', '10', '', 'delete', 1, '2016-06-28 15:55:40'),
(39, 'products', 'delete', 13, 'soc_products.products_moq', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(39, 'products', 'delete', 13, 'soc_products.products_max_order_quantity', '-1', '', 'delete', 1, '2016-06-28 15:55:40'),
(39, 'products', 'delete', 13, 'soc_products.products_price', '699.0000', '', 'delete', 1, '2016-06-28 15:55:40'),
(39, 'products', 'delete', 13, 'soc_products.products_sku', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(39, 'products', 'delete', 13, 'soc_products.products_model', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(39, 'products', 'delete', 13, 'soc_products.products_date_added', '2016-06-28 15:03:16', '', 'delete', 1, '2016-06-28 15:55:40'),
(39, 'products', 'delete', 13, 'soc_products.products_last_modified', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(39, 'products', 'delete', 13, 'soc_products.products_date_available', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(39, 'products', 'delete', 13, 'soc_products.products_weight', '10.00', '', 'delete', 1, '2016-06-28 15:55:40'),
(39, 'products', 'delete', 13, 'soc_products.products_weight_class', '2', '', 'delete', 1, '2016-06-28 15:55:40'),
(39, 'products', 'delete', 13, 'soc_products.products_status', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(39, 'products', 'delete', 13, 'soc_products.products_tax_class_id', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(39, 'products', 'delete', 13, 'soc_products.manufacturers_id', '3', '', 'delete', 1, '2016-06-28 15:55:40'),
(39, 'products', 'delete', 13, 'soc_products.products_ordered', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(39, 'products', 'delete', 13, 'soc_products.quantity_discount_groups_id', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(39, 'products', 'delete', 13, 'soc_products.quantity_unit_class', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(39, 'products', 'delete', 13, 'soc_products.order_increment', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(39, 'products', 'delete', 13, 'soc_products.products_attributes_groups_id', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(40, 'products', 'delete', 12, 'soc_products_to_categories.products_id', '12', '', 'delete', 1, '2016-06-28 15:55:40'),
(40, 'products', 'delete', 12, 'soc_products_to_categories.categories_id', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(40, 'products', 'delete', 12, 'soc_products_description.products_id', '12', '', 'delete', 1, '2016-06-28 15:55:40'),
(40, 'products', 'delete', 12, 'soc_products_description.language_id', '2', '', 'delete', 1, '2016-06-28 15:55:40'),
(40, 'products', 'delete', 12, 'soc_products_description.products_name', 'HP Compaq 6735s KS117UT 15.4-Inch Notebook', '', 'delete', 1, '2016-06-28 15:55:40'),
(40, 'products', 'delete', 12, 'soc_products_description.products_short_description', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(40, 'products', 'delete', 12, 'soc_products_description.products_description', 'Products Features<br><br>Chipset AMD M780G <br>Processors:AMD Turion X2 Dual-Core Mobile Processor RM-70 (2.0 GHz, 2 x 512 KB L2 cache) <br>Memory Standard :667 MHz or 800 MHz DDR2 SDRAM, two slots supporting dual channel memory 1024 MB or 2048 MB <br>Maximum : Upgradeable to 8192 MB with 4096 MB SODIMMs in slots 1 and 2,<br>Maximum memory with AMD Sempron processor is 4096 MB.<br>Dual-channel : Maximized dual-channel performance requires SODIMMs of the same size and speed in both memory slots. <br>Graphics Integrated UMA Graphics ATI Mobility Radeon HD 3200 with shared system memory. Microsoft DirectX 10 capable <br>Display Internal :15.4 inches diagonal WXGA anti-glare (1280 x 800 resolution) 15.4 inches diagonal WXGA BrightView (1280 x 800 resolution) <br>External :Up to 32 bit per pixel color depthVGA port supports resolutions up to 2048 x 1536 at 75 Hz, and lower resolutions at up to 100 Hz. <br>', '', 'delete', 1, '2016-06-28 15:55:40'),
(40, 'products', 'delete', 12, 'soc_products_description.products_keyword', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(40, 'products', 'delete', 12, 'soc_products_description.products_tags', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(40, 'products', 'delete', 12, 'soc_products_description.products_url', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(40, 'products', 'delete', 12, 'soc_products_description.products_friendly_url', 'hp-compaq-6735s-ks117ut-15-4-inch-notebook', '', 'delete', 1, '2016-06-28 15:55:40'),
(40, 'products', 'delete', 12, 'soc_products_description.products_page_title', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(40, 'products', 'delete', 12, 'soc_products_description.products_meta_keywords', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(40, 'products', 'delete', 12, 'soc_products_description.products_meta_description', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(40, 'products', 'delete', 12, 'soc_products_description.products_viewed', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(40, 'products', 'delete', 12, 'soc_products.products_id', '12', '', 'delete', 1, '2016-06-28 15:55:40'),
(40, 'products', 'delete', 12, 'soc_products.products_type', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(40, 'products', 'delete', 12, 'soc_products.products_quantity', '10', '', 'delete', 1, '2016-06-28 15:55:40'),
(40, 'products', 'delete', 12, 'soc_products.products_moq', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(40, 'products', 'delete', 12, 'soc_products.products_max_order_quantity', '-1', '', 'delete', 1, '2016-06-28 15:55:40'),
(40, 'products', 'delete', 12, 'soc_products.products_price', '479.0000', '', 'delete', 1, '2016-06-28 15:55:40'),
(40, 'products', 'delete', 12, 'soc_products.products_sku', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(40, 'products', 'delete', 12, 'soc_products.products_model', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(40, 'products', 'delete', 12, 'soc_products.products_date_added', '2016-06-28 15:03:16', '', 'delete', 1, '2016-06-28 15:55:40'),
(40, 'products', 'delete', 12, 'soc_products.products_last_modified', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(40, 'products', 'delete', 12, 'soc_products.products_date_available', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(40, 'products', 'delete', 12, 'soc_products.products_weight', '10.00', '', 'delete', 1, '2016-06-28 15:55:40'),
(40, 'products', 'delete', 12, 'soc_products.products_weight_class', '2', '', 'delete', 1, '2016-06-28 15:55:40'),
(40, 'products', 'delete', 12, 'soc_products.products_status', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(40, 'products', 'delete', 12, 'soc_products.products_tax_class_id', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(40, 'products', 'delete', 12, 'soc_products.manufacturers_id', '3', '', 'delete', 1, '2016-06-28 15:55:40'),
(40, 'products', 'delete', 12, 'soc_products.products_ordered', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(40, 'products', 'delete', 12, 'soc_products.quantity_discount_groups_id', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(40, 'products', 'delete', 12, 'soc_products.quantity_unit_class', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(40, 'products', 'delete', 12, 'soc_products.order_increment', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(40, 'products', 'delete', 12, 'soc_products.products_attributes_groups_id', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(41, 'products', 'delete', 11, 'soc_products_to_categories.products_id', '11', '', 'delete', 1, '2016-06-28 15:55:40'),
(41, 'products', 'delete', 11, 'soc_products_to_categories.categories_id', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(41, 'products', 'delete', 11, 'soc_products_description.products_id', '11', '', 'delete', 1, '2016-06-28 15:55:40'),
(41, 'products', 'delete', 11, 'soc_products_description.language_id', '2', '', 'delete', 1, '2016-06-28 15:55:40'),
(41, 'products', 'delete', 11, 'soc_products_description.products_name', 'Toshiba Satellite A355-S6921', '', 'delete', 1, '2016-06-28 15:55:40'),
(41, 'products', 'delete', 11, 'soc_products_description.products_short_description', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(41, 'products', 'delete', 11, 'soc_products_description.products_description', '<h2>Products Features</h2><br><ul><li>Portable multimedia laptop with 16-inch screen for true 16:9 aspect ratio and native 720p high-def resolution </li><li>2.0 GHz AMD Turion X2 RM-72 dual-core processor, 250 GB hard drive, 3 GB RAM (4 GB max), Labelflash dual-layer DVD drive </li><li>Draft-N Wi-Fi (802.11b/g/n), Fast Ethernet, ATI Radeon 3100 graphics (up to 1919 MB total available memory) </li><li>Connectivity: 4 USB (with 1 shared eSATA), 1 FireWire, 1 VGA, ExpressCard 54/34, 5-in-1 memory card reader </li><li>Pre-installed with Windows Vista Home Premium with SP1 (64-bit version); Fusion finish with Horizon pattern</li></ul><br>', '', 'delete', 1, '2016-06-28 15:55:40'),
(41, 'products', 'delete', 11, 'soc_products_description.products_keyword', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(41, 'products', 'delete', 11, 'soc_products_description.products_tags', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(41, 'products', 'delete', 11, 'soc_products_description.products_url', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(41, 'products', 'delete', 11, 'soc_products_description.products_friendly_url', 'toshiba-satellite-a355-s6921', '', 'delete', 1, '2016-06-28 15:55:40'),
(41, 'products', 'delete', 11, 'soc_products_description.products_page_title', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(41, 'products', 'delete', 11, 'soc_products_description.products_meta_keywords', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(41, 'products', 'delete', 11, 'soc_products_description.products_meta_description', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(41, 'products', 'delete', 11, 'soc_products_description.products_viewed', '2', '', 'delete', 1, '2016-06-28 15:55:40'),
(41, 'products', 'delete', 11, 'soc_products.products_id', '11', '', 'delete', 1, '2016-06-28 15:55:40'),
(41, 'products', 'delete', 11, 'soc_products.products_type', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(41, 'products', 'delete', 11, 'soc_products.products_quantity', '10', '', 'delete', 1, '2016-06-28 15:55:40'),
(41, 'products', 'delete', 11, 'soc_products.products_moq', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(41, 'products', 'delete', 11, 'soc_products.products_max_order_quantity', '-1', '', 'delete', 1, '2016-06-28 15:55:40'),
(41, 'products', 'delete', 11, 'soc_products.products_price', '449.0000', '', 'delete', 1, '2016-06-28 15:55:40'),
(41, 'products', 'delete', 11, 'soc_products.products_sku', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(41, 'products', 'delete', 11, 'soc_products.products_model', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(41, 'products', 'delete', 11, 'soc_products.products_date_added', '2016-06-28 15:03:16', '', 'delete', 1, '2016-06-28 15:55:40'),
(41, 'products', 'delete', 11, 'soc_products.products_last_modified', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(41, 'products', 'delete', 11, 'soc_products.products_date_available', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(41, 'products', 'delete', 11, 'soc_products.products_weight', '10.00', '', 'delete', 1, '2016-06-28 15:55:40'),
(41, 'products', 'delete', 11, 'soc_products.products_weight_class', '2', '', 'delete', 1, '2016-06-28 15:55:40'),
(41, 'products', 'delete', 11, 'soc_products.products_status', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(41, 'products', 'delete', 11, 'soc_products.products_tax_class_id', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(41, 'products', 'delete', 11, 'soc_products.manufacturers_id', '6', '', 'delete', 1, '2016-06-28 15:55:40'),
(41, 'products', 'delete', 11, 'soc_products.products_ordered', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(41, 'products', 'delete', 11, 'soc_products.quantity_discount_groups_id', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(41, 'products', 'delete', 11, 'soc_products.quantity_unit_class', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(41, 'products', 'delete', 11, 'soc_products.order_increment', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(41, 'products', 'delete', 11, 'soc_products.products_attributes_groups_id', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(42, 'products', 'delete', 10, 'soc_products_to_categories.products_id', '10', '', 'delete', 1, '2016-06-28 15:55:40'),
(42, 'products', 'delete', 10, 'soc_products_to_categories.categories_id', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(42, 'products', 'delete', 10, 'soc_products_description.products_id', '10', '', 'delete', 1, '2016-06-28 15:55:40'),
(42, 'products', 'delete', 10, 'soc_products_description.language_id', '2', '', 'delete', 1, '2016-06-28 15:55:40'),
(42, 'products', 'delete', 10, 'soc_products_description.products_name', 'HP Pavilion DV7-1240US 17.0-Inch Laptop', '', 'delete', 1, '2016-06-28 15:55:40'),
(42, 'products', 'delete', 10, 'soc_products_description.products_short_description', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(42, 'products', 'delete', 10, 'soc_products_description.products_description', '<h2>Products Features</h2><br><ul><li>Entertainment-centric notebook PC with fluid, modern lines in bronze and chrome with argyle-like patterning; widescreen 17-inch LCD </li><li>2.1 GHz AMD Turion X2 RM-72 dual-core processor, 320 GB hard drive, 4 GB RAM (8 GB max), LightScribe dual-layer DVD drive </li><li>Draft-N Wi-Fi (802.11a/b/g/n); Gigabit Ethernet; ATI Radeon HD 3200 graphics (up to 1918 MB total) </li><li>Connectivity: 4 USB (with 1 shared eSATA), 1 HDMI, 1 VGA, ExpressCard 54/34, 5-in-1 memory card reader </li><li>Pre-installed with Windows Vista Home Premium with SP1 (64-bit version); includes remote control</li></ul>', '', 'delete', 1, '2016-06-28 15:55:40'),
(42, 'products', 'delete', 10, 'soc_products_description.products_keyword', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(42, 'products', 'delete', 10, 'soc_products_description.products_tags', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(42, 'products', 'delete', 10, 'soc_products_description.products_url', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(42, 'products', 'delete', 10, 'soc_products_description.products_friendly_url', 'hp-pavilion-dv7-1240us-17-0-inch-laptop', '', 'delete', 1, '2016-06-28 15:55:40'),
(42, 'products', 'delete', 10, 'soc_products_description.products_page_title', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(42, 'products', 'delete', 10, 'soc_products_description.products_meta_keywords', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(42, 'products', 'delete', 10, 'soc_products_description.products_meta_description', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(42, 'products', 'delete', 10, 'soc_products_description.products_viewed', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(42, 'products', 'delete', 10, 'soc_products.products_id', '10', '', 'delete', 1, '2016-06-28 15:55:40'),
(42, 'products', 'delete', 10, 'soc_products.products_type', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(42, 'products', 'delete', 10, 'soc_products.products_quantity', '10', '', 'delete', 1, '2016-06-28 15:55:40'),
(42, 'products', 'delete', 10, 'soc_products.products_moq', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(42, 'products', 'delete', 10, 'soc_products.products_max_order_quantity', '-1', '', 'delete', 1, '2016-06-28 15:55:40'),
(42, 'products', 'delete', 10, 'soc_products.products_price', '499.0000', '', 'delete', 1, '2016-06-28 15:55:40'),
(42, 'products', 'delete', 10, 'soc_products.products_sku', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(42, 'products', 'delete', 10, 'soc_products.products_model', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(42, 'products', 'delete', 10, 'soc_products.products_date_added', '2016-06-28 15:03:16', '', 'delete', 1, '2016-06-28 15:55:40'),
(42, 'products', 'delete', 10, 'soc_products.products_last_modified', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(42, 'products', 'delete', 10, 'soc_products.products_date_available', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(42, 'products', 'delete', 10, 'soc_products.products_weight', '10.00', '', 'delete', 1, '2016-06-28 15:55:40'),
(42, 'products', 'delete', 10, 'soc_products.products_weight_class', '2', '', 'delete', 1, '2016-06-28 15:55:40'),
(42, 'products', 'delete', 10, 'soc_products.products_status', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(42, 'products', 'delete', 10, 'soc_products.products_tax_class_id', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(42, 'products', 'delete', 10, 'soc_products.manufacturers_id', '3', '', 'delete', 1, '2016-06-28 15:55:40'),
(42, 'products', 'delete', 10, 'soc_products.products_ordered', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(42, 'products', 'delete', 10, 'soc_products.quantity_discount_groups_id', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(42, 'products', 'delete', 10, 'soc_products.quantity_unit_class', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(42, 'products', 'delete', 10, 'soc_products.order_increment', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(42, 'products', 'delete', 10, 'soc_products.products_attributes_groups_id', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(43, 'products', 'delete', 9, 'soc_products_to_categories.products_id', '9', '', 'delete', 1, '2016-06-28 15:55:40'),
(43, 'products', 'delete', 9, 'soc_products_to_categories.categories_id', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(43, 'products', 'delete', 9, 'soc_products_description.products_id', '9', '', 'delete', 1, '2016-06-28 15:55:40'),
(43, 'products', 'delete', 9, 'soc_products_description.language_id', '2', '', 'delete', 1, '2016-06-28 15:55:40'),
(43, 'products', 'delete', 9, 'soc_products_description.products_name', 'Lenovo ThinkPad T400 2767', '', 'delete', 1, '2016-06-28 15:55:40'),
(43, 'products', 'delete', 9, 'soc_products_description.products_short_description', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(43, 'products', 'delete', 9, 'soc_products_description.products_description', '<h2>Products Features</h2><br><ul><li>Core 2 Duo T9400 / 2.53 GHz - Centrino 2 with vPro - </li><li>RAM 2 GB - </li><li>HDD 160 GB - </li><li>DVD-RW (-R DL) / DVD-RAM - </li><li>Mobility Radeon HD 3470 / GMA 4500MHD - </li><li>cellular mdm / mdm ( CDMA 2000 1X EV-DO Rev. A, WCDMA, HSPA ) - </li><li>Verizon - </li><li>Gigabit Ethernet - </li><li>WLAN : 802.11 a/b/g/n (draft), Bluetooth 2.0 - </li><li>TPM - </li><li>fingerprint reader - </li><li>Vista Business -</li><li>14.1" Widescreen TFT 1440 x 900 ( WXGA+ )</li></ul><br>', '', 'delete', 1, '2016-06-28 15:55:40'),
(43, 'products', 'delete', 9, 'soc_products_description.products_keyword', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(43, 'products', 'delete', 9, 'soc_products_description.products_tags', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(43, 'products', 'delete', 9, 'soc_products_description.products_url', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(43, 'products', 'delete', 9, 'soc_products_description.products_friendly_url', 'lenovo-thinkpad-t400-2767', '', 'delete', 1, '2016-06-28 15:55:40'),
(43, 'products', 'delete', 9, 'soc_products_description.products_page_title', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(43, 'products', 'delete', 9, 'soc_products_description.products_meta_keywords', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(43, 'products', 'delete', 9, 'soc_products_description.products_meta_description', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(43, 'products', 'delete', 9, 'soc_products_description.products_viewed', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(43, 'products', 'delete', 9, 'soc_products.products_id', '9', '', 'delete', 1, '2016-06-28 15:55:40'),
(43, 'products', 'delete', 9, 'soc_products.products_type', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(43, 'products', 'delete', 9, 'soc_products.products_quantity', '10', '', 'delete', 1, '2016-06-28 15:55:40'),
(43, 'products', 'delete', 9, 'soc_products.products_moq', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(43, 'products', 'delete', 9, 'soc_products.products_max_order_quantity', '-1', '', 'delete', 1, '2016-06-28 15:55:40'),
(43, 'products', 'delete', 9, 'soc_products.products_price', '899.0000', '', 'delete', 1, '2016-06-28 15:55:40'),
(43, 'products', 'delete', 9, 'soc_products.products_sku', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(43, 'products', 'delete', 9, 'soc_products.products_model', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(43, 'products', 'delete', 9, 'soc_products.products_date_added', '2016-06-28 15:03:16', '', 'delete', 1, '2016-06-28 15:55:40'),
(43, 'products', 'delete', 9, 'soc_products.products_last_modified', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(43, 'products', 'delete', 9, 'soc_products.products_date_available', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(43, 'products', 'delete', 9, 'soc_products.products_weight', '10.00', '', 'delete', 1, '2016-06-28 15:55:40'),
(43, 'products', 'delete', 9, 'soc_products.products_weight_class', '2', '', 'delete', 1, '2016-06-28 15:55:40'),
(43, 'products', 'delete', 9, 'soc_products.products_status', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(43, 'products', 'delete', 9, 'soc_products.products_tax_class_id', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(43, 'products', 'delete', 9, 'soc_products.manufacturers_id', '4', '', 'delete', 1, '2016-06-28 15:55:40'),
(43, 'products', 'delete', 9, 'soc_products.products_ordered', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(43, 'products', 'delete', 9, 'soc_products.quantity_discount_groups_id', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(43, 'products', 'delete', 9, 'soc_products.quantity_unit_class', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(43, 'products', 'delete', 9, 'soc_products.order_increment', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(43, 'products', 'delete', 9, 'soc_products.products_attributes_groups_id', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(44, 'products', 'delete', 8, 'soc_products_to_categories.products_id', '8', '', 'delete', 1, '2016-06-28 15:55:40'),
(44, 'products', 'delete', 8, 'soc_products_to_categories.categories_id', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(44, 'products', 'delete', 8, 'soc_products_description.products_id', '8', '', 'delete', 1, '2016-06-28 15:55:40'),
(44, 'products', 'delete', 8, 'soc_products_description.language_id', '2', '', 'delete', 1, '2016-06-28 15:55:40'),
(44, 'products', 'delete', 8, 'soc_products_description.products_name', 'Lenovo ThinkPad X200', '', 'delete', 1, '2016-06-28 15:55:40'),
(44, 'products', 'delete', 8, 'soc_products_description.products_short_description', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(44, 'products', 'delete', 8, 'soc_products_description.products_description', '<h2>Products Features</h2><br><ul><li>Intel Core 2 Duo P8600 2.8 GHz Processor </li><li>3 MB L2 Cache, 1066 MHz Bus speed </li><li>2048 MB DDR2 (PC2-8500) RAM Max - 4GB </li><li>160 GB (5400RPM) SATA Hard Drive</li><li>6-Cell Lithium-ion Battery Pack, AC power adapter, Power Cord; </li><li>Software Bundle - Windows XP Professional, Microsoft Office 2007 60-Day Trial, McAfee VirusScan Plus 30-Day Subscription</li></ul><br>', '', 'delete', 1, '2016-06-28 15:55:40'),
(44, 'products', 'delete', 8, 'soc_products_description.products_keyword', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(44, 'products', 'delete', 8, 'soc_products_description.products_tags', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(44, 'products', 'delete', 8, 'soc_products_description.products_url', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(44, 'products', 'delete', 8, 'soc_products_description.products_friendly_url', 'lenovo-thinkpad-x200', '', 'delete', 1, '2016-06-28 15:55:40'),
(44, 'products', 'delete', 8, 'soc_products_description.products_page_title', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(44, 'products', 'delete', 8, 'soc_products_description.products_meta_keywords', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(44, 'products', 'delete', 8, 'soc_products_description.products_meta_description', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(44, 'products', 'delete', 8, 'soc_products_description.products_viewed', '3', '', 'delete', 1, '2016-06-28 15:55:40'),
(44, 'products', 'delete', 8, 'soc_products.products_id', '8', '', 'delete', 1, '2016-06-28 15:55:40'),
(44, 'products', 'delete', 8, 'soc_products.products_type', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(44, 'products', 'delete', 8, 'soc_products.products_quantity', '10', '', 'delete', 1, '2016-06-28 15:55:40'),
(44, 'products', 'delete', 8, 'soc_products.products_moq', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(44, 'products', 'delete', 8, 'soc_products.products_max_order_quantity', '-1', '', 'delete', 1, '2016-06-28 15:55:40'),
(44, 'products', 'delete', 8, 'soc_products.products_price', '999.0000', '', 'delete', 1, '2016-06-28 15:55:40'),
(44, 'products', 'delete', 8, 'soc_products.products_sku', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(44, 'products', 'delete', 8, 'soc_products.products_model', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(44, 'products', 'delete', 8, 'soc_products.products_date_added', '2016-06-28 15:03:16', '', 'delete', 1, '2016-06-28 15:55:40'),
(44, 'products', 'delete', 8, 'soc_products.products_last_modified', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(44, 'products', 'delete', 8, 'soc_products.products_date_available', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(44, 'products', 'delete', 8, 'soc_products.products_weight', '10.00', '', 'delete', 1, '2016-06-28 15:55:40'),
(44, 'products', 'delete', 8, 'soc_products.products_weight_class', '2', '', 'delete', 1, '2016-06-28 15:55:40'),
(44, 'products', 'delete', 8, 'soc_products.products_status', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(44, 'products', 'delete', 8, 'soc_products.products_tax_class_id', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(44, 'products', 'delete', 8, 'soc_products.manufacturers_id', '4', '', 'delete', 1, '2016-06-28 15:55:40'),
(44, 'products', 'delete', 8, 'soc_products.products_ordered', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(44, 'products', 'delete', 8, 'soc_products.quantity_discount_groups_id', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(44, 'products', 'delete', 8, 'soc_products.quantity_unit_class', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(44, 'products', 'delete', 8, 'soc_products.order_increment', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(44, 'products', 'delete', 8, 'soc_products.products_attributes_groups_id', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(45, 'products', 'delete', 7, 'soc_products_to_categories.products_id', '7', '', 'delete', 1, '2016-06-28 15:55:40'),
(45, 'products', 'delete', 7, 'soc_products_to_categories.categories_id', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(45, 'products', 'delete', 7, 'soc_products_description.products_id', '7', '', 'delete', 1, '2016-06-28 15:55:40'),
(45, 'products', 'delete', 7, 'soc_products_description.language_id', '2', '', 'delete', 1, '2016-06-28 15:55:40'),
(45, 'products', 'delete', 7, 'soc_products_description.products_name', 'LENOVO THINKPAD X301, SU9400 1.4GHZ CPU', '', 'delete', 1, '2016-06-28 15:55:40'),
(45, 'products', 'delete', 7, 'soc_products_description.products_short_description', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(45, 'products', 'delete', 7, 'soc_products_description.products_description', '<h2>Products Features</h2><br><ul><li>Processor: Intel Core 2 Duo SU9400 Low-Voltage (1.4Ghz/800mhz/3MB) </li><li>Operating System: Genuine Windows XP Professional - 32 bit edition </li><li>LED Display: 13.3" WXGA+ TFT widescreen (1440 x 900 pixels)&nbsp; &nbsp;</li><li>Memory: 3GB PC3-8500 DDR3 SDRAM 1067MHz Memory </li><li>WWAN: Integrated Wireless Wide Area&nbsp; Network Upgradeable</li><li>Hard drive: 128GB Solid State Drive</li><li>Pointing Device: UltraNav TrackPoint &amp; Touchpad) with Fingerprint Reader </li><li>Graphics Card: Intel GMA 4500MHD Video Card</li><li>Optical Device: DVD/RW +/- Dual Layer (Burns CD &amp; DVD''s)</li><li>Integrated Wireless Card: Intel Pro Wireless WiFi link 5100 (AGN)</li></ul>', '', 'delete', 1, '2016-06-28 15:55:40'),
(45, 'products', 'delete', 7, 'soc_products_description.products_keyword', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(45, 'products', 'delete', 7, 'soc_products_description.products_tags', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(45, 'products', 'delete', 7, 'soc_products_description.products_url', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(45, 'products', 'delete', 7, 'soc_products_description.products_friendly_url', 'lenovo-thinkpad-x301-su9400-1-4ghz-cpu', '', 'delete', 1, '2016-06-28 15:55:40'),
(45, 'products', 'delete', 7, 'soc_products_description.products_page_title', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(45, 'products', 'delete', 7, 'soc_products_description.products_meta_keywords', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(45, 'products', 'delete', 7, 'soc_products_description.products_meta_description', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(45, 'products', 'delete', 7, 'soc_products_description.products_viewed', '6', '', 'delete', 1, '2016-06-28 15:55:40'),
(45, 'products', 'delete', 7, 'soc_products.products_id', '7', '', 'delete', 1, '2016-06-28 15:55:40'),
(45, 'products', 'delete', 7, 'soc_products.products_type', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(45, 'products', 'delete', 7, 'soc_products.products_quantity', '10', '', 'delete', 1, '2016-06-28 15:55:40'),
(45, 'products', 'delete', 7, 'soc_products.products_moq', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(45, 'products', 'delete', 7, 'soc_products.products_max_order_quantity', '-1', '', 'delete', 1, '2016-06-28 15:55:40'),
(45, 'products', 'delete', 7, 'soc_products.products_price', '1799.0000', '', 'delete', 1, '2016-06-28 15:55:40'),
(45, 'products', 'delete', 7, 'soc_products.products_sku', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(45, 'products', 'delete', 7, 'soc_products.products_model', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(45, 'products', 'delete', 7, 'soc_products.products_date_added', '2016-06-28 15:03:16', '', 'delete', 1, '2016-06-28 15:55:40'),
(45, 'products', 'delete', 7, 'soc_products.products_last_modified', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(45, 'products', 'delete', 7, 'soc_products.products_date_available', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(45, 'products', 'delete', 7, 'soc_products.products_weight', '10.00', '', 'delete', 1, '2016-06-28 15:55:40'),
(45, 'products', 'delete', 7, 'soc_products.products_weight_class', '2', '', 'delete', 1, '2016-06-28 15:55:40'),
(45, 'products', 'delete', 7, 'soc_products.products_status', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(45, 'products', 'delete', 7, 'soc_products.products_tax_class_id', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(45, 'products', 'delete', 7, 'soc_products.manufacturers_id', '4', '', 'delete', 1, '2016-06-28 15:55:40'),
(45, 'products', 'delete', 7, 'soc_products.products_ordered', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(45, 'products', 'delete', 7, 'soc_products.quantity_discount_groups_id', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(45, 'products', 'delete', 7, 'soc_products.quantity_unit_class', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(45, 'products', 'delete', 7, 'soc_products.order_increment', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(45, 'products', 'delete', 7, 'soc_products.products_attributes_groups_id', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(46, 'products', 'delete', 6, 'soc_products_to_categories.products_id', '6', '', 'delete', 1, '2016-06-28 15:55:40'),
(46, 'products', 'delete', 6, 'soc_products_to_categories.categories_id', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(46, 'products', 'delete', 6, 'soc_products_description.products_id', '6', '', 'delete', 1, '2016-06-28 15:55:40'),
(46, 'products', 'delete', 6, 'soc_products_description.language_id', '2', '', 'delete', 1, '2016-06-28 15:55:40'),
(46, 'products', 'delete', 6, 'soc_products_description.products_name', '13.3" MACBOOK AIR APPLE Z0FS0LL/A', '', 'delete', 1, '2016-06-28 15:55:40'),
(46, 'products', 'delete', 6, 'soc_products_description.products_short_description', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(46, 'products', 'delete', 6, 'soc_products_description.products_description', '<h2>Products Features</h2><br><ul><li>Processor Core2 Duo 1.8GHz&nbsp;&nbsp; , L2 cache 6MB &nbsp;</li><li>64GB solid-state drive</li><li>Optional external Apple MacBook Air SuperDrive available seperately </li><li>2GB of 667MHz DDR2 SDRAM onboard</li><li>Display 13.3 backlit LCD , maximum resolution 1280 x 800 </li><li>NIC type Gigabit Ethernet &nbsp;</li><li>Wireless NIC included Yes &nbsp;</li><li>Bluetooth capable Yes &nbsp;</li><li>Mac OS X v10.5 Leopard; iLife a€?08 (includes iTunes, iPhoto, iMovie, iDVD, iWeb, GarageBand)</li></ul>', '', 'delete', 1, '2016-06-28 15:55:40'),
(46, 'products', 'delete', 6, 'soc_products_description.products_keyword', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(46, 'products', 'delete', 6, 'soc_products_description.products_tags', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(46, 'products', 'delete', 6, 'soc_products_description.products_url', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(46, 'products', 'delete', 6, 'soc_products_description.products_friendly_url', '13-3-macbook-air-apple-z0fs0ll-a', '', 'delete', 1, '2016-06-28 15:55:40'),
(46, 'products', 'delete', 6, 'soc_products_description.products_page_title', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(46, 'products', 'delete', 6, 'soc_products_description.products_meta_keywords', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(46, 'products', 'delete', 6, 'soc_products_description.products_meta_description', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(46, 'products', 'delete', 6, 'soc_products_description.products_viewed', '3', '', 'delete', 1, '2016-06-28 15:55:40'),
(46, 'products', 'delete', 6, 'soc_products.products_id', '6', '', 'delete', 1, '2016-06-28 15:55:40'),
(46, 'products', 'delete', 6, 'soc_products.products_type', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(46, 'products', 'delete', 6, 'soc_products.products_quantity', '10', '', 'delete', 1, '2016-06-28 15:55:40'),
(46, 'products', 'delete', 6, 'soc_products.products_moq', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(46, 'products', 'delete', 6, 'soc_products.products_max_order_quantity', '-1', '', 'delete', 1, '2016-06-28 15:55:40'),
(46, 'products', 'delete', 6, 'soc_products.products_price', '1299.0000', '', 'delete', 1, '2016-06-28 15:55:40'),
(46, 'products', 'delete', 6, 'soc_products.products_sku', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(46, 'products', 'delete', 6, 'soc_products.products_model', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(46, 'products', 'delete', 6, 'soc_products.products_date_added', '2016-06-28 15:03:16', '', 'delete', 1, '2016-06-28 15:55:40'),
(46, 'products', 'delete', 6, 'soc_products.products_last_modified', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(46, 'products', 'delete', 6, 'soc_products.products_date_available', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(46, 'products', 'delete', 6, 'soc_products.products_weight', '10.00', '', 'delete', 1, '2016-06-28 15:55:40'),
(46, 'products', 'delete', 6, 'soc_products.products_weight_class', '2', '', 'delete', 1, '2016-06-28 15:55:40'),
(46, 'products', 'delete', 6, 'soc_products.products_status', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(46, 'products', 'delete', 6, 'soc_products.products_tax_class_id', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(46, 'products', 'delete', 6, 'soc_products.manufacturers_id', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(46, 'products', 'delete', 6, 'soc_products.products_ordered', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(46, 'products', 'delete', 6, 'soc_products.quantity_discount_groups_id', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(46, 'products', 'delete', 6, 'soc_products.quantity_unit_class', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(46, 'products', 'delete', 6, 'soc_products.order_increment', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(46, 'products', 'delete', 6, 'soc_products.products_attributes_groups_id', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(47, 'products', 'delete', 5, 'soc_products_to_categories.products_id', '5', '', 'delete', 1, '2016-06-28 15:55:40');
INSERT INTO `soc_administrators_log` (`id`, `module`, `module_action`, `module_id`, `field_key`, `old_value`, `new_value`, `action`, `administrators_id`, `datestamp`) VALUES
(47, 'products', 'delete', 5, 'soc_products_to_categories.categories_id', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(47, 'products', 'delete', 5, 'soc_products_description.products_id', '5', '', 'delete', 1, '2016-06-28 15:55:40'),
(47, 'products', 'delete', 5, 'soc_products_description.language_id', '2', '', 'delete', 1, '2016-06-28 15:55:40'),
(47, 'products', 'delete', 5, 'soc_products_description.products_name', '17" MACBOOK PRO MB166LL/A', '', 'delete', 1, '2016-06-28 15:55:40'),
(47, 'products', 'delete', 5, 'soc_products_description.products_short_description', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(47, 'products', 'delete', 5, 'soc_products_description.products_description', '<h2>Products Features</h2><br><ul><li>Processor Core2 Duo 2.5GHz&nbsp; , L2 cache 6MB &nbsp;</li><li>Hard Drive 250 GB </li><li>Optical drive 8X DVD+-RW/CD-RW </li><li>RAM standard 2GB DDR2 SDRAM </li><li>RAM maximum 4GB &nbsp;</li><li>Display 17 active-matrix/TFT/XGA , maximum resolution 1680 x 1050 &nbsp;</li><li>NIC type Gigabit Ethernet &nbsp;</li><li>Wireless NIC included Yes &nbsp;</li><li>Bluetooth capable Yes &nbsp;</li><li>OS Mac OS X v10.5 Leopard </li></ul><br>', '', 'delete', 1, '2016-06-28 15:55:40'),
(47, 'products', 'delete', 5, 'soc_products_description.products_keyword', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(47, 'products', 'delete', 5, 'soc_products_description.products_tags', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(47, 'products', 'delete', 5, 'soc_products_description.products_url', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(47, 'products', 'delete', 5, 'soc_products_description.products_friendly_url', '17-macbook-pro-mb166ll-a', '', 'delete', 1, '2016-06-28 15:55:40'),
(47, 'products', 'delete', 5, 'soc_products_description.products_page_title', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(47, 'products', 'delete', 5, 'soc_products_description.products_meta_keywords', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(47, 'products', 'delete', 5, 'soc_products_description.products_meta_description', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(47, 'products', 'delete', 5, 'soc_products_description.products_viewed', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(47, 'products', 'delete', 5, 'soc_products.products_id', '5', '', 'delete', 1, '2016-06-28 15:55:40'),
(47, 'products', 'delete', 5, 'soc_products.products_type', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(47, 'products', 'delete', 5, 'soc_products.products_quantity', '10', '', 'delete', 1, '2016-06-28 15:55:40'),
(47, 'products', 'delete', 5, 'soc_products.products_moq', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(47, 'products', 'delete', 5, 'soc_products.products_max_order_quantity', '-1', '', 'delete', 1, '2016-06-28 15:55:40'),
(47, 'products', 'delete', 5, 'soc_products.products_price', '1199.0000', '', 'delete', 1, '2016-06-28 15:55:40'),
(47, 'products', 'delete', 5, 'soc_products.products_sku', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(47, 'products', 'delete', 5, 'soc_products.products_model', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(47, 'products', 'delete', 5, 'soc_products.products_date_added', '2016-06-28 15:03:16', '', 'delete', 1, '2016-06-28 15:55:40'),
(47, 'products', 'delete', 5, 'soc_products.products_last_modified', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(47, 'products', 'delete', 5, 'soc_products.products_date_available', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(47, 'products', 'delete', 5, 'soc_products.products_weight', '5.00', '', 'delete', 1, '2016-06-28 15:55:40'),
(47, 'products', 'delete', 5, 'soc_products.products_weight_class', '2', '', 'delete', 1, '2016-06-28 15:55:40'),
(47, 'products', 'delete', 5, 'soc_products.products_status', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(47, 'products', 'delete', 5, 'soc_products.products_tax_class_id', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(47, 'products', 'delete', 5, 'soc_products.manufacturers_id', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(47, 'products', 'delete', 5, 'soc_products.products_ordered', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(47, 'products', 'delete', 5, 'soc_products.quantity_discount_groups_id', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(47, 'products', 'delete', 5, 'soc_products.quantity_unit_class', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(47, 'products', 'delete', 5, 'soc_products.order_increment', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(47, 'products', 'delete', 5, 'soc_products.products_attributes_groups_id', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(48, 'products', 'delete', 4, 'soc_products_to_categories.products_id', '4', '', 'delete', 1, '2016-06-28 15:55:40'),
(48, 'products', 'delete', 4, 'soc_products_to_categories.categories_id', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(48, 'products', 'delete', 4, 'soc_products_description.products_id', '4', '', 'delete', 1, '2016-06-28 15:55:40'),
(48, 'products', 'delete', 4, 'soc_products_description.language_id', '2', '', 'delete', 1, '2016-06-28 15:55:40'),
(48, 'products', 'delete', 4, 'soc_products_description.products_name', '15.4" Macbook Pro MB134LL/A', '', 'delete', 1, '2016-06-28 15:55:40'),
(48, 'products', 'delete', 4, 'soc_products_description.products_short_description', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(48, 'products', 'delete', 4, 'soc_products_description.products_description', '<h2>Product Features</h2><p><br></p><ul><li>2.5 GHz Intel Core 2 Duo processor with 6 MB on-chip shared L2 cache, Mac OS X v10.5 Leopard</li><li>2 GB RAM (two SO-DIMM) 677 MHz DDR2 SD-RAM (PC2-5300), 250 GB 5400 rpm Serial ATA hard drive, slot load 8x Super Drive (DVD?±R DL/DVD?±RW/CD-RW)</li><li>One FireWire 400, one FireWire 800, two USB 2.0 ports, and ExpressCard/34 slot</li><li>Built-in 10/100/1000BASE-T (Gigabit); built-in 54 Mbps AirPort Extreme (802.11n); built-in Bluetooth 2.0+EDR</li><li>15.4-inch (diagonal), 1440 by 900 resolution, matte TFT LED widescreen display with NVIDIA GeForce 8600M GT with 512 MB of GDDR3 SDRAM and dual-link DVI</li></ul>', '', 'delete', 1, '2016-06-28 15:55:40'),
(48, 'products', 'delete', 4, 'soc_products_description.products_keyword', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(48, 'products', 'delete', 4, 'soc_products_description.products_tags', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(48, 'products', 'delete', 4, 'soc_products_description.products_url', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(48, 'products', 'delete', 4, 'soc_products_description.products_friendly_url', '15-4-macbook-pro-mb134ll-a', '', 'delete', 1, '2016-06-28 15:55:40'),
(48, 'products', 'delete', 4, 'soc_products_description.products_page_title', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(48, 'products', 'delete', 4, 'soc_products_description.products_meta_keywords', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(48, 'products', 'delete', 4, 'soc_products_description.products_meta_description', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(48, 'products', 'delete', 4, 'soc_products_description.products_viewed', '5', '', 'delete', 1, '2016-06-28 15:55:40'),
(48, 'products', 'delete', 4, 'soc_products.products_id', '4', '', 'delete', 1, '2016-06-28 15:55:40'),
(48, 'products', 'delete', 4, 'soc_products.products_type', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(48, 'products', 'delete', 4, 'soc_products.products_quantity', '10', '', 'delete', 1, '2016-06-28 15:55:40'),
(48, 'products', 'delete', 4, 'soc_products.products_moq', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(48, 'products', 'delete', 4, 'soc_products.products_max_order_quantity', '-1', '', 'delete', 1, '2016-06-28 15:55:40'),
(48, 'products', 'delete', 4, 'soc_products.products_price', '1099.0000', '', 'delete', 1, '2016-06-28 15:55:40'),
(48, 'products', 'delete', 4, 'soc_products.products_sku', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(48, 'products', 'delete', 4, 'soc_products.products_model', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(48, 'products', 'delete', 4, 'soc_products.products_date_added', '2016-06-28 15:03:16', '', 'delete', 1, '2016-06-28 15:55:40'),
(48, 'products', 'delete', 4, 'soc_products.products_last_modified', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(48, 'products', 'delete', 4, 'soc_products.products_date_available', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(48, 'products', 'delete', 4, 'soc_products.products_weight', '10.00', '', 'delete', 1, '2016-06-28 15:55:40'),
(48, 'products', 'delete', 4, 'soc_products.products_weight_class', '2', '', 'delete', 1, '2016-06-28 15:55:40'),
(48, 'products', 'delete', 4, 'soc_products.products_status', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(48, 'products', 'delete', 4, 'soc_products.products_tax_class_id', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(48, 'products', 'delete', 4, 'soc_products.manufacturers_id', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(48, 'products', 'delete', 4, 'soc_products.products_ordered', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(48, 'products', 'delete', 4, 'soc_products.quantity_discount_groups_id', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(48, 'products', 'delete', 4, 'soc_products.quantity_unit_class', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(48, 'products', 'delete', 4, 'soc_products.order_increment', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(48, 'products', 'delete', 4, 'soc_products.products_attributes_groups_id', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(49, 'products', 'delete', 3, 'soc_products_to_categories.products_id', '3', '', 'delete', 1, '2016-06-28 15:55:40'),
(49, 'products', 'delete', 3, 'soc_products_to_categories.categories_id', '2', '', 'delete', 1, '2016-06-28 15:55:40'),
(49, 'products', 'delete', 3, 'soc_products_description.products_id', '3', '', 'delete', 1, '2016-06-28 15:55:40'),
(49, 'products', 'delete', 3, 'soc_products_description.language_id', '2', '', 'delete', 1, '2016-06-28 15:55:40'),
(49, 'products', 'delete', 3, 'soc_products_description.products_name', 'ThinkCentre M57p', '', 'delete', 1, '2016-06-28 15:55:40'),
(49, 'products', 'delete', 3, 'soc_products_description.products_short_description', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(49, 'products', 'delete', 3, 'soc_products_description.products_description', '<h2>Features</h2><ul><li>Intel? Core? 2 Duo E8200 Processor ( 2.66GHz 1GHz 6MB )</li><li>Genuine Windows Vista Business</li><li>Ultra Small Form Factor</li><li>1 GB DDR2 SDRAM 667MHz </li><li>160GB </li><li>CD-RW/DVD-ROM Combo 48X/32X/48X/16X Max </li></ul>', '', 'delete', 1, '2016-06-28 15:55:40'),
(49, 'products', 'delete', 3, 'soc_products_description.products_keyword', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(49, 'products', 'delete', 3, 'soc_products_description.products_tags', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(49, 'products', 'delete', 3, 'soc_products_description.products_url', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(49, 'products', 'delete', 3, 'soc_products_description.products_friendly_url', 'thinkcentre-m57p', '', 'delete', 1, '2016-06-28 15:55:40'),
(49, 'products', 'delete', 3, 'soc_products_description.products_page_title', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(49, 'products', 'delete', 3, 'soc_products_description.products_meta_keywords', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(49, 'products', 'delete', 3, 'soc_products_description.products_meta_description', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(49, 'products', 'delete', 3, 'soc_products_description.products_viewed', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(49, 'products', 'delete', 3, 'soc_products.products_id', '3', '', 'delete', 1, '2016-06-28 15:55:40'),
(49, 'products', 'delete', 3, 'soc_products.products_type', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(49, 'products', 'delete', 3, 'soc_products.products_quantity', '10', '', 'delete', 1, '2016-06-28 15:55:40'),
(49, 'products', 'delete', 3, 'soc_products.products_moq', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(49, 'products', 'delete', 3, 'soc_products.products_max_order_quantity', '-1', '', 'delete', 1, '2016-06-28 15:55:40'),
(49, 'products', 'delete', 3, 'soc_products.products_price', '849.0000', '', 'delete', 1, '2016-06-28 15:55:40'),
(49, 'products', 'delete', 3, 'soc_products.products_sku', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(49, 'products', 'delete', 3, 'soc_products.products_model', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(49, 'products', 'delete', 3, 'soc_products.products_date_added', '2016-06-28 15:03:16', '', 'delete', 1, '2016-06-28 15:55:40'),
(49, 'products', 'delete', 3, 'soc_products.products_last_modified', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(49, 'products', 'delete', 3, 'soc_products.products_date_available', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(49, 'products', 'delete', 3, 'soc_products.products_weight', '10.00', '', 'delete', 1, '2016-06-28 15:55:40'),
(49, 'products', 'delete', 3, 'soc_products.products_weight_class', '2', '', 'delete', 1, '2016-06-28 15:55:40'),
(49, 'products', 'delete', 3, 'soc_products.products_status', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(49, 'products', 'delete', 3, 'soc_products.products_tax_class_id', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(49, 'products', 'delete', 3, 'soc_products.manufacturers_id', '4', '', 'delete', 1, '2016-06-28 15:55:40'),
(49, 'products', 'delete', 3, 'soc_products.products_ordered', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(49, 'products', 'delete', 3, 'soc_products.quantity_discount_groups_id', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(49, 'products', 'delete', 3, 'soc_products.quantity_unit_class', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(49, 'products', 'delete', 3, 'soc_products.order_increment', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(49, 'products', 'delete', 3, 'soc_products.products_attributes_groups_id', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(50, 'products', 'delete', 2, 'soc_products_to_categories.products_id', '2', '', 'delete', 1, '2016-06-28 15:55:40'),
(50, 'products', 'delete', 2, 'soc_products_to_categories.categories_id', '2', '', 'delete', 1, '2016-06-28 15:55:40'),
(50, 'products', 'delete', 2, 'soc_products_description.products_id', '2', '', 'delete', 1, '2016-06-28 15:55:40'),
(50, 'products', 'delete', 2, 'soc_products_description.language_id', '2', '', 'delete', 1, '2016-06-28 15:55:40'),
(50, 'products', 'delete', 2, 'soc_products_description.products_name', 'HP Pavilion a6433w-b', '', 'delete', 1, '2016-06-28 15:55:40'),
(50, 'products', 'delete', 2, 'soc_products_description.products_short_description', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(50, 'products', 'delete', 2, 'soc_products_description.products_description', '<h2>Features\r\n\r\n</h2><ul><li>HP w2207h 22" diagonal widescreen LCD monitor with built-in speakers </li><li>Presents 1680 x 1050 resolution with 5 ms. response time and 1000:1 contrast ratio&nbsp; </li><li>2 GHz Intel Pentium dual-core desktop processor E2180 </li><li>Delivers the processing power required for true multitasking and multimedia&nbsp; </li><li>3 GB of DDR2 system memory </li><li>Offers improved performance for today''s demanding applications along with the option of expanding up to 8 GB&nbsp; </li><li>500 GB hard drive, 7200 rpm </li><li>Provides a tremendous amount of storage space for documents, games, music, photos and videos&nbsp; </li><li>SuperMulti DVD+/-RW drive with double-layer capability </li><li>Lets you burn and play DVDs and CDs for entertainment and data backup&nbsp; </li><li>10/100/1000 Base-T network interface and 56k modem </li><li>Connects to the Internet via DSL, cable or dial-up service&nbsp; </li><li>15-in-1 digital media card reader </li><li>Reads virtually all memory card formats so you can enjoy photos, music and other files&nbsp; </li><li>Vista Home Premium Edition with Windows Media Center and Service Pack 1 </li></ul><p>&nbsp;</p>', '', 'delete', 1, '2016-06-28 15:55:40'),
(50, 'products', 'delete', 2, 'soc_products_description.products_keyword', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(50, 'products', 'delete', 2, 'soc_products_description.products_tags', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(50, 'products', 'delete', 2, 'soc_products_description.products_url', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(50, 'products', 'delete', 2, 'soc_products_description.products_friendly_url', 'hp-pavilion-a6433w-b', '', 'delete', 1, '2016-06-28 15:55:40'),
(50, 'products', 'delete', 2, 'soc_products_description.products_page_title', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(50, 'products', 'delete', 2, 'soc_products_description.products_meta_keywords', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(50, 'products', 'delete', 2, 'soc_products_description.products_meta_description', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(50, 'products', 'delete', 2, 'soc_products_description.products_viewed', '2', '', 'delete', 1, '2016-06-28 15:55:40'),
(50, 'products', 'delete', 2, 'soc_products.products_id', '2', '', 'delete', 1, '2016-06-28 15:55:40'),
(50, 'products', 'delete', 2, 'soc_products.products_type', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(50, 'products', 'delete', 2, 'soc_products.products_quantity', '10', '', 'delete', 1, '2016-06-28 15:55:40'),
(50, 'products', 'delete', 2, 'soc_products.products_moq', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(50, 'products', 'delete', 2, 'soc_products.products_max_order_quantity', '-1', '', 'delete', 1, '2016-06-28 15:55:40'),
(50, 'products', 'delete', 2, 'soc_products.products_price', '599.0000', '', 'delete', 1, '2016-06-28 15:55:40'),
(50, 'products', 'delete', 2, 'soc_products.products_sku', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(50, 'products', 'delete', 2, 'soc_products.products_model', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(50, 'products', 'delete', 2, 'soc_products.products_date_added', '2016-06-28 15:03:16', '', 'delete', 1, '2016-06-28 15:55:40'),
(50, 'products', 'delete', 2, 'soc_products.products_last_modified', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(50, 'products', 'delete', 2, 'soc_products.products_date_available', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(50, 'products', 'delete', 2, 'soc_products.products_weight', '10.00', '', 'delete', 1, '2016-06-28 15:55:40'),
(50, 'products', 'delete', 2, 'soc_products.products_weight_class', '2', '', 'delete', 1, '2016-06-28 15:55:40'),
(50, 'products', 'delete', 2, 'soc_products.products_status', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(50, 'products', 'delete', 2, 'soc_products.products_tax_class_id', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(50, 'products', 'delete', 2, 'soc_products.manufacturers_id', '3', '', 'delete', 1, '2016-06-28 15:55:40'),
(50, 'products', 'delete', 2, 'soc_products.products_ordered', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(50, 'products', 'delete', 2, 'soc_products.quantity_discount_groups_id', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(50, 'products', 'delete', 2, 'soc_products.quantity_unit_class', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(50, 'products', 'delete', 2, 'soc_products.order_increment', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(50, 'products', 'delete', 2, 'soc_products.products_attributes_groups_id', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(51, 'products', 'delete', 1, 'soc_products_to_categories.products_id', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(51, 'products', 'delete', 1, 'soc_products_to_categories.categories_id', '2', '', 'delete', 1, '2016-06-28 15:55:40'),
(51, 'products', 'delete', 1, 'soc_products_description.products_id', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(51, 'products', 'delete', 1, 'soc_products_description.language_id', '2', '', 'delete', 1, '2016-06-28 15:55:40'),
(51, 'products', 'delete', 1, 'soc_products_description.products_name', 'Dell XPS 630', '', 'delete', 1, '2016-06-28 15:55:40'),
(51, 'products', 'delete', 1, 'soc_products_description.products_short_description', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(51, 'products', 'delete', 1, 'soc_products_description.products_description', '<h2>Features </h2><ul><li>Experience the latest technology and innovative design with the XPS? 630 - a sleek, head turning warrior created for smashing game performance </li><li>A supersonic gaming extravaganza ? the XPS? 630 offers full-on power with overclocking via BIOS or Nvidia?? nTune GeForce 9800GT, a Quad Intel?? Q9300 processor and a 750W power supply for an extreme experience </li><li>Front: USB 2.0 (2), 1394a, headphone jack, mic, optional 19-in-1 media card reader </li><li>Back (Audio): S/PDIF optical, line-in, line-out, microphone, surround, center/LFE; integrated HDA 7.1 channel sound </li><li>Back (Other): USB 2.0 (4), 1394a, PS/2 Mouse and Keyboard, Gigabit Ethernet8</li><li>Vista Premium 64bit SP1<br></li></ul><p><br></p>', '', 'delete', 1, '2016-06-28 15:55:40'),
(51, 'products', 'delete', 1, 'soc_products_description.products_keyword', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(51, 'products', 'delete', 1, 'soc_products_description.products_tags', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(51, 'products', 'delete', 1, 'soc_products_description.products_url', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(51, 'products', 'delete', 1, 'soc_products_description.products_friendly_url', 'dell-xps-630', '', 'delete', 1, '2016-06-28 15:55:40'),
(51, 'products', 'delete', 1, 'soc_products_description.products_page_title', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(51, 'products', 'delete', 1, 'soc_products_description.products_meta_keywords', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(51, 'products', 'delete', 1, 'soc_products_description.products_meta_description', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(51, 'products', 'delete', 1, 'soc_products_description.products_viewed', '4', '', 'delete', 1, '2016-06-28 15:55:40'),
(51, 'products', 'delete', 1, 'soc_products.products_id', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(51, 'products', 'delete', 1, 'soc_products.products_type', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(51, 'products', 'delete', 1, 'soc_products.products_quantity', '10', '', 'delete', 1, '2016-06-28 15:55:40'),
(51, 'products', 'delete', 1, 'soc_products.products_moq', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(51, 'products', 'delete', 1, 'soc_products.products_max_order_quantity', '-1', '', 'delete', 1, '2016-06-28 15:55:40'),
(51, 'products', 'delete', 1, 'soc_products.products_price', '799.0000', '', 'delete', 1, '2016-06-28 15:55:40'),
(51, 'products', 'delete', 1, 'soc_products.products_sku', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(51, 'products', 'delete', 1, 'soc_products.products_model', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(51, 'products', 'delete', 1, 'soc_products.products_date_added', '2016-06-28 15:03:16', '', 'delete', 1, '2016-06-28 15:55:40'),
(51, 'products', 'delete', 1, 'soc_products.products_last_modified', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(51, 'products', 'delete', 1, 'soc_products.products_date_available', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(51, 'products', 'delete', 1, 'soc_products.products_weight', '10.00', '', 'delete', 1, '2016-06-28 15:55:40'),
(51, 'products', 'delete', 1, 'soc_products.products_weight_class', '2', '', 'delete', 1, '2016-06-28 15:55:40'),
(51, 'products', 'delete', 1, 'soc_products.products_status', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(51, 'products', 'delete', 1, 'soc_products.products_tax_class_id', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(51, 'products', 'delete', 1, 'soc_products.manufacturers_id', '2', '', 'delete', 1, '2016-06-28 15:55:40'),
(51, 'products', 'delete', 1, 'soc_products.products_ordered', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(51, 'products', 'delete', 1, 'soc_products.quantity_discount_groups_id', '0', '', 'delete', 1, '2016-06-28 15:55:40'),
(51, 'products', 'delete', 1, 'soc_products.quantity_unit_class', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(51, 'products', 'delete', 1, 'soc_products.order_increment', '1', '', 'delete', 1, '2016-06-28 15:55:40'),
(51, 'products', 'delete', 1, 'soc_products.products_attributes_groups_id', '', '', 'delete', 1, '2016-06-28 15:55:40'),
(52, 'currencies', 'insert', 4, 'soc_currencies.title', '', 'Real', 'insert', 1, '2016-06-28 15:57:47'),
(52, 'currencies', 'insert', 4, 'soc_currencies.code', '', 'BRL', 'insert', 1, '2016-06-28 15:57:47'),
(52, 'currencies', 'insert', 4, 'soc_currencies.symbol_left', '', 'R$', 'insert', 1, '2016-06-28 15:57:47'),
(52, 'currencies', 'insert', 4, 'soc_currencies.symbol_right', '', '', 'insert', 1, '2016-06-28 15:57:47'),
(52, 'currencies', 'insert', 4, 'soc_currencies.decimal_places', '', '2', 'insert', 1, '2016-06-28 15:57:47'),
(52, 'currencies', 'insert', 4, 'soc_currencies.value', '', '1', 'insert', 1, '2016-06-28 15:57:47'),
(52, 'currencies', 'insert', 4, 'soc_configuration.configuration_value', 'USD', 'BRL', 'update', 1, '2016-06-28 15:57:47'),
(53, 'currencies', 'delete', 2, 'soc_currencies.currencies_id', '2', '', 'delete', 1, '2016-06-28 15:58:00'),
(53, 'currencies', 'delete', 2, 'soc_currencies.title', 'Euro', '', 'delete', 1, '2016-06-28 15:58:00'),
(53, 'currencies', 'delete', 2, 'soc_currencies.code', 'EUR', '', 'delete', 1, '2016-06-28 15:58:00'),
(53, 'currencies', 'delete', 2, 'soc_currencies.symbol_left', '€', '', 'delete', 1, '2016-06-28 15:58:00'),
(53, 'currencies', 'delete', 2, 'soc_currencies.symbol_right', '', '', 'delete', 1, '2016-06-28 15:58:00'),
(53, 'currencies', 'delete', 2, 'soc_currencies.decimal_places', '2', '', 'delete', 1, '2016-06-28 15:58:00'),
(53, 'currencies', 'delete', 2, 'soc_currencies.value', '0.73457497', '', 'delete', 1, '2016-06-28 15:58:00'),
(53, 'currencies', 'delete', 2, 'soc_currencies.last_updated', '2016-06-28 15:02:37', '', 'delete', 1, '2016-06-28 15:58:00'),
(54, 'currencies', 'delete', 3, 'soc_currencies.currencies_id', '3', '', 'delete', 1, '2016-06-28 15:58:00'),
(54, 'currencies', 'delete', 3, 'soc_currencies.title', 'British Pounds', '', 'delete', 1, '2016-06-28 15:58:00'),
(54, 'currencies', 'delete', 3, 'soc_currencies.code', 'GBP', '', 'delete', 1, '2016-06-28 15:58:00'),
(54, 'currencies', 'delete', 3, 'soc_currencies.symbol_left', '￡', '', 'delete', 1, '2016-06-28 15:58:00'),
(54, 'currencies', 'delete', 3, 'soc_currencies.symbol_right', '', '', 'delete', 1, '2016-06-28 15:58:00'),
(54, 'currencies', 'delete', 3, 'soc_currencies.decimal_places', '2', '', 'delete', 1, '2016-06-28 15:58:00'),
(54, 'currencies', 'delete', 3, 'soc_currencies.value', '0.65841001', '', 'delete', 1, '2016-06-28 15:58:00'),
(54, 'currencies', 'delete', 3, 'soc_currencies.last_updated', '2016-06-28 15:02:37', '', 'delete', 1, '2016-06-28 15:58:00'),
(55, 'currencies', 'delete', 1, 'soc_currencies.currencies_id', '1', '', 'delete', 1, '2016-06-28 15:58:00'),
(55, 'currencies', 'delete', 1, 'soc_currencies.title', 'US Dollar', '', 'delete', 1, '2016-06-28 15:58:00'),
(55, 'currencies', 'delete', 1, 'soc_currencies.code', 'USD', '', 'delete', 1, '2016-06-28 15:58:00'),
(55, 'currencies', 'delete', 1, 'soc_currencies.symbol_left', '$', '', 'delete', 1, '2016-06-28 15:58:00'),
(55, 'currencies', 'delete', 1, 'soc_currencies.symbol_right', '', '', 'delete', 1, '2016-06-28 15:58:00'),
(55, 'currencies', 'delete', 1, 'soc_currencies.decimal_places', '2', '', 'delete', 1, '2016-06-28 15:58:00'),
(55, 'currencies', 'delete', 1, 'soc_currencies.value', '1.00000000', '', 'delete', 1, '2016-06-28 15:58:00'),
(55, 'currencies', 'delete', 1, 'soc_currencies.last_updated', '2016-06-28 15:02:37', '', 'delete', 1, '2016-06-28 15:58:00'),
(56, 'products', 'insert', 20, 'soc_products.products_date_added', '', 'now()', 'insert', 1, '2016-06-28 16:05:19'),
(56, 'products', 'insert', 20, 'soc_products.products_type', '', '0', 'insert', 1, '2016-06-28 16:05:19'),
(56, 'products', 'insert', 20, 'soc_products.products_sku', '', '', 'insert', 1, '2016-06-28 16:05:19'),
(56, 'products', 'insert', 20, 'soc_products.products_model', '', '', 'insert', 1, '2016-06-28 16:05:19'),
(56, 'products', 'insert', 20, 'soc_products.products_price', '', 'NaN', 'insert', 1, '2016-06-28 16:05:19'),
(56, 'products', 'insert', 20, 'soc_products.products_quantity', '', '10', 'insert', 1, '2016-06-28 16:05:19'),
(56, 'products', 'insert', 20, 'soc_products.products_moq', '', '1', 'insert', 1, '2016-06-28 16:05:19'),
(56, 'products', 'insert', 20, 'soc_products.products_max_order_quantity', '', '-1', 'insert', 1, '2016-06-28 16:05:19'),
(56, 'products', 'insert', 20, 'soc_products.order_increment', '', '1', 'insert', 1, '2016-06-28 16:05:19'),
(56, 'products', 'insert', 20, 'soc_products.quantity_unit_class', '', '1', 'insert', 1, '2016-06-28 16:05:19'),
(56, 'products', 'insert', 20, 'soc_products.products_date_available', '', 'null', 'insert', 1, '2016-06-28 16:05:19'),
(56, 'products', 'insert', 20, 'soc_products.products_weight', '', '', 'insert', 1, '2016-06-28 16:05:19'),
(56, 'products', 'insert', 20, 'soc_products.products_weight_class', '', '2', 'insert', 1, '2016-06-28 16:05:19'),
(56, 'products', 'insert', 20, 'soc_products.products_status', '', '1', 'insert', 1, '2016-06-28 16:05:19'),
(56, 'products', 'insert', 20, 'soc_products.products_tax_class_id', '', '0', 'insert', 1, '2016-06-28 16:05:19'),
(56, 'products', 'insert', 20, 'soc_products.manufacturers_id', '', '0', 'insert', 1, '2016-06-28 16:05:19'),
(56, 'products', 'insert', 20, 'soc_products.quantity_discount_groups_id', '', '0', 'insert', 1, '2016-06-28 16:05:19'),
(56, 'products', 'insert', 20, 'soc_products.products_attributes_groups_id', '', 'null', 'insert', 1, '2016-06-28 16:05:19'),
(56, 'products', 'insert', 20, 'soc_products_to_categories.products_id', '', '20', 'insert', 1, '2016-06-28 16:05:19'),
(56, 'products', 'insert', 20, 'soc_products_to_categories.categories_id', '', '2', 'insert', 1, '2016-06-28 16:05:19'),
(56, 'products', 'insert', 20, 'soc_products_to_categories.products_id', '', '20', 'insert', 1, '2016-06-28 16:05:19'),
(56, 'products', 'insert', 20, 'soc_products_to_categories.categories_id', '', '10', 'insert', 1, '2016-06-28 16:05:19'),
(56, 'products', 'insert', 20, 'soc_products_description.products_id', '', '20', 'insert', 1, '2016-06-28 16:05:19'),
(56, 'products', 'insert', 20, 'soc_products_description.language_id', '', '2', 'insert', 1, '2016-06-28 16:05:19'),
(56, 'products', 'insert', 20, 'soc_products_description.products_name', '', 'Smartphone Samsung Galaxy J5 Duos Dourado com Dual chip, Tela 5.0", 4G, Câmera 13MP, Android 5.1 e Processador Quad Core de 1.2 Ghz', 'insert', 1, '2016-06-28 16:05:19'),
(56, 'products', 'insert', 20, 'soc_products_description.products_short_description', '', 'Smartphone Samsung Galaxy J5 Duos Dourado com Dual chip, Tela 5.0", 4G, Câmera 13MP, Android 5.1 e Processador Quad Core de 1.2 Ghz', 'insert', 1, '2016-06-28 16:05:19');
INSERT INTO `soc_administrators_log` (`id`, `module`, `module_action`, `module_id`, `field_key`, `old_value`, `new_value`, `action`, `administrators_id`, `datestamp`) VALUES
(56, 'products', 'insert', 20, 'soc_products_description.products_description', '', '<span style="color: rgb(72, 186, 197); font-family: plutobold; font-size: 20px; line-height: 20px; text-align: center; text-transform: uppercase;">APOSENTE O SEU ANTIGO CELULAR:</span><div><span style="color: rgb(72, 186, 197); font-family: plutobold; font-size: 20px; line-height: 20px; text-align: center; text-transform: uppercase;">VOCÊ VAI SE APAIXONAR POR ESTE SMARTPHONE</span><p style="text-align: left; box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px; font-stretch: inherit; font-size: 13px; line-height: 1.286em; font-family: ''Segoe UI'', Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(102, 102, 102);">Conte com a qualidade&nbsp;<a href="http://www.extra.com.br/?Filtro=M459" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; transition: color 0.5s ease-out; color: rgb(235, 29, 41);">Samsung</a><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">&nbsp;para manter-se conectado o tempo todo. O&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">smartphone Galaxy J5 Duos</span>&nbsp;pode navegar pela web via Wi-Fi 802.11n ou pela rede 4G, muito mais rápida do que sua versão anterior.</span></p><p style="text-align: left; box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px; font-stretch: inherit; font-size: 13px; line-height: 1.286em; font-family: ''Segoe UI'', Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(102, 102, 102);">O sistema operacional&nbsp;<a href="http://www.extra.com.br/TelefoneseCelulares/Smartphones/Android/?Filtro=C38_C326_C3266" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; transition: color 0.5s ease-out; color: rgb(235, 29, 41);">Android</a><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">&nbsp;5.1 é fácil de mexer e compatível com diversos aplicativos, disponíveis para download pela loja virtual oficial do Google. Você os armazena na&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">memória de 16GB*&nbsp;</span>e consegue expandi-la para até 128GB. Basta adquirir separadamente um cartão microSD.</span></p><p style="text-align: left; box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px; font-stretch: inherit; font-size: 13px; line-height: 1.286em; font-family: ''Segoe UI'', Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(102, 102, 102);"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">Quer executar diversas tarefas ao mesmo tempo sem perder a agilidade? Este telefone móvel tem&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">processador Quad Core de 1.2 Ghz</span>, que elimina a lentidão e os eventuais travamentos.&nbsp;</span></p><p style="text-align: left; box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px; font-stretch: inherit; font-size: 13px; line-height: 1.286em; font-family: ''Segoe UI'', Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(102, 102, 102);"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;"><br></span></p><h3 class="tit" style="box-sizing: inherit; margin: 0px 0px 20px; padding: 0px; border: 0px; font-weight: normal; font-stretch: inherit; font-size: 1.625em; line-height: inherit; font-family: Pluto; vertical-align: baseline; color: rgb(109, 109, 109);">Características</h3><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl00_dlCategoria" class="RAM" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">RAM</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">1.5 GB</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl01_dlCategoria" class="Sistema-Operacional even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Sistema Operacional</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Android 5.1 Lollipop</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl02_dlCategoria" class="Tipo" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Tipo</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Barra</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl03_dlCategoria" class="Tecnologia even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Tecnologia</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">GSM,&nbsp;</dd><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">3G,&nbsp;</dd><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">4G</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl04_dlCategoria" class="Slot-para-cartao" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Slot para cartão</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">MicroSD até 128GB</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl05_dlCategoria" class="Cartao-incluso even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Cartão incluso</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Não</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl06_dlCategoria" class="Radio-FM" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Rádio FM</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Sim</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl07_dlCategoria" class="MP3-player even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">MP3 player</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Sim</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl08_dlCategoria" class="Bluetooth" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Bluetooth</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Sim</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl09_dlCategoria" class="Bluetooth-Estereo--ouca-suas-musicas-em-um-dispositivo-Bluetooth- even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Bluetooth Estéreo (ouça suas músicas em um dispositivo Bluetooth)</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Não</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl10_dlCategoria" class="Wi-Fi" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Wi-Fi</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Sim</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl11_dlCategoria" class="Visualizador-de-arquivos even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Visualizador de arquivos</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Não</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl12_dlCategoria" class="Suporte-a-GPS" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Suporte a GPS</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Sim</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl13_dlCategoria" class="Mensagens even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Mensagens</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">SMS,&nbsp;</dd><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">MMS,&nbsp;</dd><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">E-mail</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl14_dlCategoria" class="Toques" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Toques</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Polifônicos,&nbsp;</dd><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">MP3</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl15_dlCategoria" class="Processador even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Processador</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Quad Core de 1.2 Ghz</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl16_dlCategoria" class="Som" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Som</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Rádio FM,&nbsp;</dd><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">MP3 Player</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl17_dlCategoria" class="Resolucao-da-camera even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Resolução da câmera</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Traseira 13MP e Frontal 5MP</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl18_dlCategoria" class="Cor" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Cor</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Dourado</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl19_dlCategoria" class="Grava-video even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Grava vídeo</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Sim</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl20_dlCategoria" class="Memoria-interna" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Memória interna</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">16GB Total sendo uma parte usada para o sistema operacional e aplicativos pré-instalados</dd></dl><p style="box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px; font-stretch: inherit; font-size: 13px; line-height: 1.286em; font-family: ''Segoe UI'', Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(102, 102, 102);"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;"></span></p><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl21_dlCategoria" class="Caracteristicas-Gerais even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border: 0px; font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Características Gerais</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;"><span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">Ideal para Selfies</span>&nbsp;<br style="box-sizing: inherit;">-Tire selfies de alta qualidade com a câmera frontal de 5MP e também registre os melhores momentos com a câmera principal de 13MP.(Ambas com Flash Frontal e Traseira).&nbsp;<br style="box-sizing: inherit;"><br style="box-sizing: inherit;"><span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">Processador Quad Core de 1.2 Ghz&nbsp;</span><br style="box-sizing: inherit;">-Use vários aplicativos ao mesmo tempo com o processador Quad Core de 1.2GHz e não perca agilidade.&nbsp;<br style="box-sizing: inherit;"><br style="box-sizing: inherit;"><span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">Tela de 5.0” Super Amoled</span>&nbsp;<br style="box-sizing: inherit;">-Veja vídeos, edite fotos e navegue pelas redes sociais em um display com tamanho ideal para você.&nbsp;<br style="box-sizing: inherit;"><br style="box-sizing: inherit;"><span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">A melhor experiência Dual Chip</span>&nbsp;<br style="box-sizing: inherit;">-O Samsung Galaxy J5 Duos suporta 2 Chips no mesmo aparelho. Aproveite o dobro de vantagens, promoções e descontos com os serviços de até duas operadoras de telefonia diferentes.</dd></dl></div>', 'insert', 1, '2016-06-28 16:05:19'),
(56, 'products', 'insert', 20, 'soc_products_description.products_tags', '', 'Smartphone Samsung Galaxy J5', 'insert', 1, '2016-06-28 16:05:19'),
(56, 'products', 'insert', 20, 'soc_products_description.products_url', '', '', 'insert', 1, '2016-06-28 16:05:19'),
(56, 'products', 'insert', 20, 'soc_products_description.products_friendly_url', '', 'smartphone-samsung-galaxy-j5-duos-dourado-com-dual-chip-tela-5-0-4g-c-mera-13mp-android-5-1-e-processador-quad-core-de-1-2-ghz', 'insert', 1, '2016-06-28 16:05:19'),
(56, 'products', 'insert', 20, 'soc_products_description.products_page_title', '', 'Smartphone Samsung Galaxy J5 Duos Dourado com Dual chip, Tela 5.0", 4G, Câmera 13MP, Android 5.1 e Processador Quad Core de 1.2 Ghz', 'insert', 1, '2016-06-28 16:05:19'),
(56, 'products', 'insert', 20, 'soc_products_description.products_meta_keywords', '', '', 'insert', 1, '2016-06-28 16:05:19'),
(56, 'products', 'insert', 20, 'soc_products_description.products_meta_description', '', '', 'insert', 1, '2016-06-28 16:05:19'),
(56, 'products', 'insert', 20, 'soc_products_images.image', '', '20_48_01.jpg', 'update', 1, '2016-06-28 16:05:19'),
(56, 'products', 'insert', 20, 'soc_products_images.image', '', '20_49_02.jpg', 'update', 1, '2016-06-28 16:05:19'),
(56, 'products', 'insert', 20, 'soc_products_images.image', '', '20_50_03.jpg', 'update', 1, '2016-06-28 16:05:19'),
(56, 'products', 'insert', 20, 'soc_products_images.image', '', '20_51_04.jpg', 'update', 1, '2016-06-28 16:05:20'),
(56, 'products', 'insert', 20, 'soc_products_xsell.products_id', '', '20', 'insert', 1, '2016-06-28 16:05:20'),
(56, 'products', 'insert', 20, 'soc_products_xsell.xsell_products_id', '', '', 'insert', 1, '2016-06-28 16:05:20'),
(57, 'products', 'update', 20, 'soc_products.products_price', '0.0000', '949', 'update', 1, '2016-06-28 16:05:48'),
(57, 'products', 'update', 20, 'soc_products.products_date_available', '', 'null', 'update', 1, '2016-06-28 16:05:48'),
(57, 'products', 'update', 20, 'soc_products.products_attributes_groups_id', '', 'null', 'update', 1, '2016-06-28 16:05:48'),
(57, 'products', 'update', 20, 'soc_products_to_categories.products_id', '20', '', 'delete', 1, '2016-06-28 16:05:48'),
(57, 'products', 'update', 20, 'soc_products_to_categories.categories_id', '2', '', 'delete', 1, '2016-06-28 16:05:48'),
(57, 'products', 'update', 20, 'soc_products_to_categories.products_id', '20', '', 'delete', 1, '2016-06-28 16:05:48'),
(57, 'products', 'update', 20, 'soc_products_to_categories.categories_id', '10', '', 'delete', 1, '2016-06-28 16:05:48'),
(57, 'products', 'update', 20, 'soc_products_to_categories.products_id', '', '20', 'insert', 1, '2016-06-28 16:05:48'),
(57, 'products', 'update', 20, 'soc_products_to_categories.categories_id', '', '2', 'insert', 1, '2016-06-28 16:05:48'),
(57, 'products', 'update', 20, 'soc_products_to_categories.products_id', '', '20', 'insert', 1, '2016-06-28 16:05:48'),
(57, 'products', 'update', 20, 'soc_products_to_categories.categories_id', '', '10', 'insert', 1, '2016-06-28 16:05:48'),
(57, 'products', 'update', 20, 'soc_products_xsell.products_id', '20', '', 'delete', 1, '2016-06-28 16:05:48'),
(57, 'products', 'update', 20, 'soc_products_xsell.xsell_products_id', '0', '', 'delete', 1, '2016-06-28 16:05:48'),
(57, 'products', 'update', 20, 'soc_products_xsell.products_id', '', '20', 'insert', 1, '2016-06-28 16:05:48'),
(57, 'products', 'update', 20, 'soc_products_xsell.xsell_products_id', '', '', 'insert', 1, '2016-06-28 16:05:48'),
(58, 'categories', 'update', 2, 'soc_categories_description.categories_name', 'SmartFones', 'Smartphones', 'update', 1, '2016-06-28 16:07:15'),
(59, 'categories', 'update', 1, 'soc_categories_description.categories_name', 'SmartFones de operadoras', 'Smartphones de operadoras', 'update', 1, '2016-06-28 16:07:25'),
(60, 'manufacturers', 'insert', 6, 'soc_manufacturers.manufacturers_name', '', 'Samsumg', 'insert', 1, '2016-06-28 16:09:57'),
(60, 'manufacturers', 'insert', 6, 'soc_manufacturers.manufacturers_image', '', 'samsung.png', 'update', 1, '2016-06-28 16:09:57'),
(60, 'manufacturers', 'insert', 6, 'soc_manufacturers_info.manufacturers_id', '', '6', 'insert', 1, '2016-06-28 16:09:57'),
(60, 'manufacturers', 'insert', 6, 'soc_manufacturers_info.languages_id', '', '2', 'insert', 1, '2016-06-28 16:09:57'),
(60, 'manufacturers', 'insert', 6, 'soc_manufacturers_info.manufacturers_url', '', 'http://', 'insert', 1, '2016-06-28 16:09:57'),
(60, 'manufacturers', 'insert', 6, 'soc_manufacturers_info.manufacturers_friendly_url', '', 'samsumg', 'insert', 1, '2016-06-28 16:09:57'),
(60, 'manufacturers', 'insert', 6, 'soc_manufacturers_info.manufacturers_page_title', '', '', 'insert', 1, '2016-06-28 16:09:57'),
(60, 'manufacturers', 'insert', 6, 'soc_manufacturers_info.manufacturers_meta_keywords', '', '', 'insert', 1, '2016-06-28 16:09:57'),
(60, 'manufacturers', 'insert', 6, 'soc_manufacturers_info.manufacturers_meta_description', '', '', 'insert', 1, '2016-06-28 16:09:57'),
(61, 'manufacturers', 'update', 6, 'soc_manufacturers.manufacturers_name', 'Samsumg', 'Samsung', 'update', 1, '2016-06-28 16:10:52'),
(62, 'products', 'update', 20, 'soc_products.products_date_available', '', 'null', 'update', 1, '2016-06-28 16:11:19'),
(62, 'products', 'update', 20, 'soc_products.manufacturers_id', '0', '6', 'update', 1, '2016-06-28 16:11:19'),
(62, 'products', 'update', 20, 'soc_products.products_attributes_groups_id', '', 'null', 'update', 1, '2016-06-28 16:11:19'),
(62, 'products', 'update', 20, 'soc_products_to_categories.products_id', '20', '', 'delete', 1, '2016-06-28 16:11:19'),
(62, 'products', 'update', 20, 'soc_products_to_categories.categories_id', '2', '', 'delete', 1, '2016-06-28 16:11:19'),
(62, 'products', 'update', 20, 'soc_products_to_categories.products_id', '20', '', 'delete', 1, '2016-06-28 16:11:19'),
(62, 'products', 'update', 20, 'soc_products_to_categories.categories_id', '10', '', 'delete', 1, '2016-06-28 16:11:19'),
(62, 'products', 'update', 20, 'soc_products_to_categories.products_id', '', '20', 'insert', 1, '2016-06-28 16:11:19'),
(62, 'products', 'update', 20, 'soc_products_to_categories.categories_id', '', '2', 'insert', 1, '2016-06-28 16:11:19'),
(62, 'products', 'update', 20, 'soc_products_to_categories.products_id', '', '20', 'insert', 1, '2016-06-28 16:11:19'),
(62, 'products', 'update', 20, 'soc_products_to_categories.categories_id', '', '10', 'insert', 1, '2016-06-28 16:11:19'),
(62, 'products', 'update', 20, 'soc_products_xsell.products_id', '20', '', 'delete', 1, '2016-06-28 16:11:19'),
(62, 'products', 'update', 20, 'soc_products_xsell.xsell_products_id', '0', '', 'delete', 1, '2016-06-28 16:11:19'),
(62, 'products', 'update', 20, 'soc_products_xsell.products_id', '', '20', 'insert', 1, '2016-06-28 16:11:19'),
(62, 'products', 'update', 20, 'soc_products_xsell.xsell_products_id', '', '', 'insert', 1, '2016-06-28 16:11:19'),
(63, 'manufacturers', 'delete', 1, 'soc_manufacturers.manufacturers_id', '1', '', 'delete', 1, '2016-06-28 16:42:22'),
(63, 'manufacturers', 'delete', 1, 'soc_manufacturers.manufacturers_name', 'Apple', '', 'delete', 1, '2016-06-28 16:42:22'),
(63, 'manufacturers', 'delete', 1, 'soc_manufacturers.manufacturers_image', 'apple.png', '', 'delete', 1, '2016-06-28 16:42:22'),
(63, 'manufacturers', 'delete', 1, 'soc_manufacturers.date_added', '2016-06-28 15:03:16', '', 'delete', 1, '2016-06-28 16:42:22'),
(63, 'manufacturers', 'delete', 1, 'soc_manufacturers.last_modified', '2016-06-28 15:03:16', '', 'delete', 1, '2016-06-28 16:42:22'),
(64, 'manufacturers', 'delete', 1, 'soc_manufacturers_info.manufacturers_id', '1', '', 'delete', 1, '2016-06-28 16:42:22'),
(64, 'manufacturers', 'delete', 1, 'soc_manufacturers_info.languages_id', '2', '', 'delete', 1, '2016-06-28 16:42:22'),
(64, 'manufacturers', 'delete', 1, 'soc_manufacturers_info.manufacturers_url', 'http://www.apple.com', '', 'delete', 1, '2016-06-28 16:42:22'),
(64, 'manufacturers', 'delete', 1, 'soc_manufacturers_info.manufacturers_friendly_url', 'apple', '', 'delete', 1, '2016-06-28 16:42:22'),
(64, 'manufacturers', 'delete', 1, 'soc_manufacturers_info.manufacturers_page_title', '', '', 'delete', 1, '2016-06-28 16:42:22'),
(64, 'manufacturers', 'delete', 1, 'soc_manufacturers_info.manufacturers_meta_keywords', '', '', 'delete', 1, '2016-06-28 16:42:22'),
(64, 'manufacturers', 'delete', 1, 'soc_manufacturers_info.manufacturers_meta_description', '', '', 'delete', 1, '2016-06-28 16:42:22'),
(64, 'manufacturers', 'delete', 1, 'soc_manufacturers_info.url_clicked', '0', '', 'delete', 1, '2016-06-28 16:42:22'),
(64, 'manufacturers', 'delete', 1, 'soc_manufacturers_info.date_last_click', '', '', 'delete', 1, '2016-06-28 16:42:22'),
(65, 'manufacturers', 'delete', 2, 'soc_manufacturers.manufacturers_id', '2', '', 'delete', 1, '2016-06-28 16:42:22'),
(65, 'manufacturers', 'delete', 2, 'soc_manufacturers.manufacturers_name', 'Dell', '', 'delete', 1, '2016-06-28 16:42:22'),
(65, 'manufacturers', 'delete', 2, 'soc_manufacturers.manufacturers_image', 'dell.png', '', 'delete', 1, '2016-06-28 16:42:22'),
(65, 'manufacturers', 'delete', 2, 'soc_manufacturers.date_added', '2016-06-28 15:03:16', '', 'delete', 1, '2016-06-28 16:42:22'),
(65, 'manufacturers', 'delete', 2, 'soc_manufacturers.last_modified', '2016-06-28 15:03:16', '', 'delete', 1, '2016-06-28 16:42:22'),
(66, 'manufacturers', 'delete', 2, 'soc_manufacturers_info.manufacturers_id', '2', '', 'delete', 1, '2016-06-28 16:42:22'),
(66, 'manufacturers', 'delete', 2, 'soc_manufacturers_info.languages_id', '2', '', 'delete', 1, '2016-06-28 16:42:22'),
(66, 'manufacturers', 'delete', 2, 'soc_manufacturers_info.manufacturers_url', 'http://www.dell.com', '', 'delete', 1, '2016-06-28 16:42:22'),
(66, 'manufacturers', 'delete', 2, 'soc_manufacturers_info.manufacturers_friendly_url', 'dell', '', 'delete', 1, '2016-06-28 16:42:22'),
(66, 'manufacturers', 'delete', 2, 'soc_manufacturers_info.manufacturers_page_title', '', '', 'delete', 1, '2016-06-28 16:42:22'),
(66, 'manufacturers', 'delete', 2, 'soc_manufacturers_info.manufacturers_meta_keywords', '', '', 'delete', 1, '2016-06-28 16:42:22'),
(66, 'manufacturers', 'delete', 2, 'soc_manufacturers_info.manufacturers_meta_description', '', '', 'delete', 1, '2016-06-28 16:42:22'),
(66, 'manufacturers', 'delete', 2, 'soc_manufacturers_info.url_clicked', '0', '', 'delete', 1, '2016-06-28 16:42:22'),
(66, 'manufacturers', 'delete', 2, 'soc_manufacturers_info.date_last_click', '', '', 'delete', 1, '2016-06-28 16:42:22'),
(67, 'manufacturers', 'delete', 3, 'soc_manufacturers.manufacturers_id', '3', '', 'delete', 1, '2016-06-28 16:42:22'),
(67, 'manufacturers', 'delete', 3, 'soc_manufacturers.manufacturers_name', 'HP', '', 'delete', 1, '2016-06-28 16:42:22'),
(67, 'manufacturers', 'delete', 3, 'soc_manufacturers.manufacturers_image', 'hp.png', '', 'delete', 1, '2016-06-28 16:42:22'),
(67, 'manufacturers', 'delete', 3, 'soc_manufacturers.date_added', '2016-06-28 15:03:16', '', 'delete', 1, '2016-06-28 16:42:22'),
(67, 'manufacturers', 'delete', 3, 'soc_manufacturers.last_modified', '2016-06-28 15:03:16', '', 'delete', 1, '2016-06-28 16:42:22'),
(68, 'manufacturers', 'delete', 3, 'soc_manufacturers_info.manufacturers_id', '3', '', 'delete', 1, '2016-06-28 16:42:22'),
(68, 'manufacturers', 'delete', 3, 'soc_manufacturers_info.languages_id', '2', '', 'delete', 1, '2016-06-28 16:42:22'),
(68, 'manufacturers', 'delete', 3, 'soc_manufacturers_info.manufacturers_url', 'http://www.hp.com', '', 'delete', 1, '2016-06-28 16:42:22'),
(68, 'manufacturers', 'delete', 3, 'soc_manufacturers_info.manufacturers_friendly_url', 'hp', '', 'delete', 1, '2016-06-28 16:42:22'),
(68, 'manufacturers', 'delete', 3, 'soc_manufacturers_info.manufacturers_page_title', '', '', 'delete', 1, '2016-06-28 16:42:22'),
(68, 'manufacturers', 'delete', 3, 'soc_manufacturers_info.manufacturers_meta_keywords', '', '', 'delete', 1, '2016-06-28 16:42:22'),
(68, 'manufacturers', 'delete', 3, 'soc_manufacturers_info.manufacturers_meta_description', '', '', 'delete', 1, '2016-06-28 16:42:22'),
(68, 'manufacturers', 'delete', 3, 'soc_manufacturers_info.url_clicked', '0', '', 'delete', 1, '2016-06-28 16:42:22'),
(68, 'manufacturers', 'delete', 3, 'soc_manufacturers_info.date_last_click', '', '', 'delete', 1, '2016-06-28 16:42:22'),
(69, 'manufacturers', 'delete', 4, 'soc_manufacturers.manufacturers_id', '4', '', 'delete', 1, '2016-06-28 16:42:22');
INSERT INTO `soc_administrators_log` (`id`, `module`, `module_action`, `module_id`, `field_key`, `old_value`, `new_value`, `action`, `administrators_id`, `datestamp`) VALUES
(69, 'manufacturers', 'delete', 4, 'soc_manufacturers.manufacturers_name', 'Lenovo', '', 'delete', 1, '2016-06-28 16:42:22'),
(69, 'manufacturers', 'delete', 4, 'soc_manufacturers.manufacturers_image', 'lenovo.png', '', 'delete', 1, '2016-06-28 16:42:22'),
(69, 'manufacturers', 'delete', 4, 'soc_manufacturers.date_added', '2016-06-28 15:03:16', '', 'delete', 1, '2016-06-28 16:42:22'),
(69, 'manufacturers', 'delete', 4, 'soc_manufacturers.last_modified', '2016-06-28 15:03:16', '', 'delete', 1, '2016-06-28 16:42:22'),
(70, 'manufacturers', 'delete', 4, 'soc_manufacturers_info.manufacturers_id', '4', '', 'delete', 1, '2016-06-28 16:42:22'),
(70, 'manufacturers', 'delete', 4, 'soc_manufacturers_info.languages_id', '2', '', 'delete', 1, '2016-06-28 16:42:22'),
(70, 'manufacturers', 'delete', 4, 'soc_manufacturers_info.manufacturers_url', 'http://www.lenovo.com', '', 'delete', 1, '2016-06-28 16:42:22'),
(70, 'manufacturers', 'delete', 4, 'soc_manufacturers_info.manufacturers_friendly_url', 'lenovo', '', 'delete', 1, '2016-06-28 16:42:22'),
(70, 'manufacturers', 'delete', 4, 'soc_manufacturers_info.manufacturers_page_title', '', '', 'delete', 1, '2016-06-28 16:42:22'),
(70, 'manufacturers', 'delete', 4, 'soc_manufacturers_info.manufacturers_meta_keywords', '', '', 'delete', 1, '2016-06-28 16:42:22'),
(70, 'manufacturers', 'delete', 4, 'soc_manufacturers_info.manufacturers_meta_description', '', '', 'delete', 1, '2016-06-28 16:42:22'),
(70, 'manufacturers', 'delete', 4, 'soc_manufacturers_info.url_clicked', '0', '', 'delete', 1, '2016-06-28 16:42:22'),
(70, 'manufacturers', 'delete', 4, 'soc_manufacturers_info.date_last_click', '', '', 'delete', 1, '2016-06-28 16:42:22'),
(71, 'manufacturers', 'delete', 5, 'soc_manufacturers.manufacturers_id', '5', '', 'delete', 1, '2016-06-28 16:42:22'),
(71, 'manufacturers', 'delete', 5, 'soc_manufacturers.manufacturers_name', 'Sony', '', 'delete', 1, '2016-06-28 16:42:22'),
(71, 'manufacturers', 'delete', 5, 'soc_manufacturers.manufacturers_image', 'sony.png', '', 'delete', 1, '2016-06-28 16:42:22'),
(71, 'manufacturers', 'delete', 5, 'soc_manufacturers.date_added', '2016-06-28 15:03:16', '', 'delete', 1, '2016-06-28 16:42:22'),
(71, 'manufacturers', 'delete', 5, 'soc_manufacturers.last_modified', '2016-06-28 15:03:16', '', 'delete', 1, '2016-06-28 16:42:22'),
(72, 'manufacturers', 'delete', 5, 'soc_manufacturers_info.manufacturers_id', '5', '', 'delete', 1, '2016-06-28 16:42:22'),
(72, 'manufacturers', 'delete', 5, 'soc_manufacturers_info.languages_id', '2', '', 'delete', 1, '2016-06-28 16:42:22'),
(72, 'manufacturers', 'delete', 5, 'soc_manufacturers_info.manufacturers_url', 'http://www.sony.com', '', 'delete', 1, '2016-06-28 16:42:22'),
(72, 'manufacturers', 'delete', 5, 'soc_manufacturers_info.manufacturers_friendly_url', 'sony', '', 'delete', 1, '2016-06-28 16:42:22'),
(72, 'manufacturers', 'delete', 5, 'soc_manufacturers_info.manufacturers_page_title', '', '', 'delete', 1, '2016-06-28 16:42:22'),
(72, 'manufacturers', 'delete', 5, 'soc_manufacturers_info.manufacturers_meta_keywords', '', '', 'delete', 1, '2016-06-28 16:42:22'),
(72, 'manufacturers', 'delete', 5, 'soc_manufacturers_info.manufacturers_meta_description', '', '', 'delete', 1, '2016-06-28 16:42:22'),
(72, 'manufacturers', 'delete', 5, 'soc_manufacturers_info.url_clicked', '0', '', 'delete', 1, '2016-06-28 16:42:22'),
(72, 'manufacturers', 'delete', 5, 'soc_manufacturers_info.date_last_click', '', '', 'delete', 1, '2016-06-28 16:42:22'),
(73, 'manufacturers', 'insert', 7, 'soc_manufacturers.manufacturers_name', '', 'Motorola', 'insert', 1, '2016-06-28 16:44:47'),
(73, 'manufacturers', 'insert', 7, 'soc_manufacturers.manufacturers_image', '', 'motorola.png', 'update', 1, '2016-06-28 16:44:47'),
(73, 'manufacturers', 'insert', 7, 'soc_manufacturers_info.manufacturers_id', '', '7', 'insert', 1, '2016-06-28 16:44:47'),
(73, 'manufacturers', 'insert', 7, 'soc_manufacturers_info.languages_id', '', '2', 'insert', 1, '2016-06-28 16:44:47'),
(73, 'manufacturers', 'insert', 7, 'soc_manufacturers_info.manufacturers_url', '', 'http://', 'insert', 1, '2016-06-28 16:44:47'),
(73, 'manufacturers', 'insert', 7, 'soc_manufacturers_info.manufacturers_friendly_url', '', 'motorola', 'insert', 1, '2016-06-28 16:44:47'),
(73, 'manufacturers', 'insert', 7, 'soc_manufacturers_info.manufacturers_page_title', '', '', 'insert', 1, '2016-06-28 16:44:47'),
(73, 'manufacturers', 'insert', 7, 'soc_manufacturers_info.manufacturers_meta_keywords', '', '', 'insert', 1, '2016-06-28 16:44:47'),
(73, 'manufacturers', 'insert', 7, 'soc_manufacturers_info.manufacturers_meta_description', '', '', 'insert', 1, '2016-06-28 16:44:47'),
(74, 'products', 'insert', 21, 'soc_products.products_date_added', '', 'now()', 'insert', 1, '2016-06-28 16:47:43'),
(74, 'products', 'insert', 21, 'soc_products.products_type', '', '0', 'insert', 1, '2016-06-28 16:47:43'),
(74, 'products', 'insert', 21, 'soc_products.products_sku', '', '', 'insert', 1, '2016-06-28 16:47:43'),
(74, 'products', 'insert', 21, 'soc_products.products_model', '', '', 'insert', 1, '2016-06-28 16:47:43'),
(74, 'products', 'insert', 21, 'soc_products.products_price', '', '949', 'insert', 1, '2016-06-28 16:47:43'),
(74, 'products', 'insert', 21, 'soc_products.products_quantity', '', '10', 'insert', 1, '2016-06-28 16:47:43'),
(74, 'products', 'insert', 21, 'soc_products.products_moq', '', '1', 'insert', 1, '2016-06-28 16:47:43'),
(74, 'products', 'insert', 21, 'soc_products.products_max_order_quantity', '', '-1', 'insert', 1, '2016-06-28 16:47:43'),
(74, 'products', 'insert', 21, 'soc_products.order_increment', '', '1', 'insert', 1, '2016-06-28 16:47:43'),
(74, 'products', 'insert', 21, 'soc_products.quantity_unit_class', '', '1', 'insert', 1, '2016-06-28 16:47:43'),
(74, 'products', 'insert', 21, 'soc_products.products_date_available', '', 'null', 'insert', 1, '2016-06-28 16:47:43'),
(74, 'products', 'insert', 21, 'soc_products.products_weight', '', '', 'insert', 1, '2016-06-28 16:47:43'),
(74, 'products', 'insert', 21, 'soc_products.products_weight_class', '', '2', 'insert', 1, '2016-06-28 16:47:43'),
(74, 'products', 'insert', 21, 'soc_products.products_status', '', '1', 'insert', 1, '2016-06-28 16:47:43'),
(74, 'products', 'insert', 21, 'soc_products.products_tax_class_id', '', '0', 'insert', 1, '2016-06-28 16:47:43'),
(74, 'products', 'insert', 21, 'soc_products.manufacturers_id', '', '7', 'insert', 1, '2016-06-28 16:47:43'),
(74, 'products', 'insert', 21, 'soc_products.quantity_discount_groups_id', '', '0', 'insert', 1, '2016-06-28 16:47:43'),
(74, 'products', 'insert', 21, 'soc_products.products_attributes_groups_id', '', 'null', 'insert', 1, '2016-06-28 16:47:43'),
(74, 'products', 'insert', 21, 'soc_products_to_categories.products_id', '', '21', 'insert', 1, '2016-06-28 16:47:43'),
(74, 'products', 'insert', 21, 'soc_products_to_categories.categories_id', '', '2', 'insert', 1, '2016-06-28 16:47:43'),
(74, 'products', 'insert', 21, 'soc_products_to_categories.products_id', '', '21', 'insert', 1, '2016-06-28 16:47:43'),
(74, 'products', 'insert', 21, 'soc_products_to_categories.categories_id', '', '10', 'insert', 1, '2016-06-28 16:47:43'),
(74, 'products', 'insert', 21, 'soc_products_description.products_id', '', '21', 'insert', 1, '2016-06-28 16:47:43'),
(74, 'products', 'insert', 21, 'soc_products_description.language_id', '', '2', 'insert', 1, '2016-06-28 16:47:43'),
(74, 'products', 'insert', 21, 'soc_products_description.products_name', '', 'Smartphone Moto G™ (3ª Geração) Colors HDTV XT1544 Preto com Tela de 5'''', Dual Chip, Android 5.1, 4G, Câmera 13MP e Processador Quad-Core de 1.4 GHz', 'insert', 1, '2016-06-28 16:47:43'),
(74, 'products', 'insert', 21, 'soc_products_description.products_short_description', '', 'Smartphone Moto G™ (3ª Geração)', 'insert', 1, '2016-06-28 16:47:43'),
(74, 'products', 'insert', 21, 'soc_products_description.products_description', '', '&nbsp;<span style="color: rgb(72, 186, 197); font-family: plutobold; font-size: 20px; line-height: 20px; text-align: center; text-transform: uppercase;">COMUNICAÇÃO E MOBILIDADE ANDAM JUNTAS</span><p style="text-align: left; box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px; font-stretch: inherit; font-size: 13px; line-height: 1.286em; font-family: ''Segoe UI'', Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(102, 102, 102);">Diante das responsabilidades que a vida moderna nos apresenta todos os dias, manter-se sempre muito bem informado nos faz ficar mais integrado aos acontecimentos do momento e faz com que tenhamos a informação precisa para expor sempre que necessário. Nas reuniões de trabalho ou no simples bate-papo com os amigos, ter o que argumentar durante as conversas ajuda a nos manter em destaque.</p><p style="text-align: left; box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px; font-stretch: inherit; font-size: 13px; line-height: 1.286em; font-family: ''Segoe UI'', Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(102, 102, 102);">E para que você tenha acesso a uma infinidade de informações a qualquer momento e lugar, a Motorola desenvolveu um aparelho que vai transformar o seu modo de consumir conteúdo. Muito prático de manusear e integrado com diversos recursos, o&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">smartphone Moto G 3ª Geração Colors HDTV</span>&nbsp;será o seu parceiro do seu dia a dia, ele vai lhe ajudar a acessar a internet via&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">Wi-Fi, 3G/4G</span>&nbsp;e assim desfrutar de uma quantidade relevante de conhecimento, além de poder verificar a sua caixa de e-mail, redes sociais, aplicativos,&nbsp;<a href="http://www.extra.com.br/Games/?Filtro=C336" target="_blank" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; transition: color 0.5s ease-out; color: rgb(235, 29, 41);">games</a>, entre outros recursos.</p><p style="text-align: left; box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px; font-stretch: inherit; font-size: 13px; line-height: 1.286em; font-family: ''Segoe UI'', Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(102, 102, 102);">Com&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">design moderno e exclusivo</span>, com o Moto G 3ª Geração Colors HDTV você será não apenas um receptor, mas também, um emissor de conteúdo utilizando ferramentas como o seu impressionante conjunto de câmeras capazes de tirar lindas fotos e registrar vídeos incríveis.</p><h3 class="tit" style="box-sizing: inherit; margin: 0px 0px 20px; padding: 0px; border: 0px; font-weight: normal; font-stretch: inherit; font-size: 1.625em; line-height: inherit; font-family: Pluto; vertical-align: baseline; color: rgb(109, 109, 109);">Características</h3><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl00_dlCategoria" class="RAM" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">RAM</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">1GB</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl01_dlCategoria" class="Sistema-Operacional even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Sistema Operacional</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Android 5.1 Lollipop</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl02_dlCategoria" class="Tipo" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Tipo</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Barra</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl03_dlCategoria" class="Tecnologia even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Tecnologia</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">GSM,&nbsp;</dd><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">3G,&nbsp;</dd><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">4G</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl04_dlCategoria" class="Slot-para-cartao" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Slot para cartão</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">MicroSD até 32GB</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl05_dlCategoria" class="Cartao-incluso even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Cartão incluso</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Não</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl06_dlCategoria" class="Radio-FM" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Rádio FM</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Sim</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl07_dlCategoria" class="MP3-player even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">MP3 player</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Sim</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl08_dlCategoria" class="Bluetooth" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Bluetooth</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Sim</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl09_dlCategoria" class="Bluetooth-Estereo--ouca-suas-musicas-em-um-dispositivo-Bluetooth- even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Bluetooth Estéreo (ouça suas músicas em um dispositivo Bluetooth)</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Não</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl10_dlCategoria" class="Wi-Fi" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Wi-Fi</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Sim</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl11_dlCategoria" class="Suporte-a-GPS even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Suporte a GPS</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Sim</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl12_dlCategoria" class="Mensagens" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Mensagens</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">SMS,&nbsp;</dd><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">MMS,&nbsp;</dd><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">E-mail</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl13_dlCategoria" class="Processador even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Processador</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Qualcomm Snapdragon 410 (MSM8916) Quad-Core de 1.4 GHz</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl14_dlCategoria" class="Sintonizador-de-TV" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Sintonizador de TV</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Digital</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl15_dlCategoria" class="Som even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Som</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Rádio FM,&nbsp;</dd><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">MP3 Player</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl16_dlCategoria" class="Resolucao-da-camera" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Resolução da câmera</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Traseira 13MP e frontal de 5MP</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl17_dlCategoria" class="Cor even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Cor</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Preto</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl18_dlCategoria" class="Grava-video" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Grava vídeo</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Sim</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl19_dlCategoria" class="Memoria-interna even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Memória interna</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">16GB Total sendo uma parte usada para o sistema operacional e aplicativos pré-instalados</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl20_dlCategoria" class="Caracteristicas-Gerais" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border: 0px; font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Características Gerais</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">- Resistente à água (IPX7)*&nbsp;<br style="box-sizing: inherit;">- Câmera instantânea de 13 MP e frontal de 5MP&nbsp;<br style="box-sizing: inherit;">- Inovações Moto e experiência do Android™&nbsp;Puro&nbsp;<br style="box-sizing: inherit;">- Velocidade 4G&nbsp;<br style="box-sizing: inherit;">- TV Digital HD&nbsp;<br style="box-sizing: inherit;">- Personalize com Motorola Shells&nbsp;<br style="box-sizing: inherit;">- Dual Chip Inteligente**</dd></dl>', 'insert', 1, '2016-06-28 16:47:43'),
(74, 'products', 'insert', 21, 'soc_products_description.products_tags', '', 'Smartphone Moto G', 'insert', 1, '2016-06-28 16:47:43'),
(74, 'products', 'insert', 21, 'soc_products_description.products_url', '', '', 'insert', 1, '2016-06-28 16:47:43'),
(74, 'products', 'insert', 21, 'soc_products_description.products_friendly_url', '', 'smartphone-moto-g-3-gera-o-colors-hdtv-xt1544-preto-com-tela-de-5-dual-chip-android-5-1-4g-c-mera-13mp-e-processador-quad-core-de-1-4-ghz', 'insert', 1, '2016-06-28 16:47:43'),
(74, 'products', 'insert', 21, 'soc_products_description.products_page_title', '', '', 'insert', 1, '2016-06-28 16:47:43'),
(74, 'products', 'insert', 21, 'soc_products_description.products_meta_keywords', '', '', 'insert', 1, '2016-06-28 16:47:43'),
(74, 'products', 'insert', 21, 'soc_products_description.products_meta_description', '', '', 'insert', 1, '2016-06-28 16:47:43'),
(74, 'products', 'insert', 21, 'soc_products_images.image', '', '21_52_01.jpg', 'update', 1, '2016-06-28 16:47:43'),
(74, 'products', 'insert', 21, 'soc_products_images.image', '', '21_53_02.jpg', 'update', 1, '2016-06-28 16:47:43'),
(74, 'products', 'insert', 21, 'soc_products_images.image', '', '21_54_03.jpg', 'update', 1, '2016-06-28 16:47:43'),
(74, 'products', 'insert', 21, 'soc_products_images.image', '', '21_55_04.jpg', 'update', 1, '2016-06-28 16:47:43'),
(74, 'products', 'insert', 21, 'soc_products_xsell.products_id', '', '21', 'insert', 1, '2016-06-28 16:47:44'),
(74, 'products', 'insert', 21, 'soc_products_xsell.xsell_products_id', '', '', 'insert', 1, '2016-06-28 16:47:44'),
(75, 'manufacturers', 'insert', 8, 'soc_manufacturers.manufacturers_name', '', 'LG', 'insert', 1, '2016-06-28 16:50:38'),
(75, 'manufacturers', 'insert', 8, 'soc_manufacturers.manufacturers_image', '', 'lg.png', 'update', 1, '2016-06-28 16:50:38'),
(75, 'manufacturers', 'insert', 8, 'soc_manufacturers_info.manufacturers_id', '', '8', 'insert', 1, '2016-06-28 16:50:38'),
(75, 'manufacturers', 'insert', 8, 'soc_manufacturers_info.languages_id', '', '2', 'insert', 1, '2016-06-28 16:50:38'),
(75, 'manufacturers', 'insert', 8, 'soc_manufacturers_info.manufacturers_url', '', 'http://', 'insert', 1, '2016-06-28 16:50:38'),
(75, 'manufacturers', 'insert', 8, 'soc_manufacturers_info.manufacturers_friendly_url', '', 'lg', 'insert', 1, '2016-06-28 16:50:38'),
(75, 'manufacturers', 'insert', 8, 'soc_manufacturers_info.manufacturers_page_title', '', '', 'insert', 1, '2016-06-28 16:50:38'),
(75, 'manufacturers', 'insert', 8, 'soc_manufacturers_info.manufacturers_meta_keywords', '', '', 'insert', 1, '2016-06-28 16:50:38'),
(75, 'manufacturers', 'insert', 8, 'soc_manufacturers_info.manufacturers_meta_description', '', '', 'insert', 1, '2016-06-28 16:50:38'),
(76, 'products', 'insert', 22, 'soc_products.products_date_added', '', 'now()', 'insert', 1, '2016-06-28 16:57:18'),
(76, 'products', 'insert', 22, 'soc_products.products_type', '', '0', 'insert', 1, '2016-06-28 16:57:18'),
(76, 'products', 'insert', 22, 'soc_products.products_sku', '', '', 'insert', 1, '2016-06-28 16:57:18'),
(76, 'products', 'insert', 22, 'soc_products.products_model', '', '', 'insert', 1, '2016-06-28 16:57:18'),
(76, 'products', 'insert', 22, 'soc_products.products_price', '', '858', 'insert', 1, '2016-06-28 16:57:18'),
(76, 'products', 'insert', 22, 'soc_products.products_quantity', '', '10', 'insert', 1, '2016-06-28 16:57:18'),
(76, 'products', 'insert', 22, 'soc_products.products_moq', '', '1', 'insert', 1, '2016-06-28 16:57:18'),
(76, 'products', 'insert', 22, 'soc_products.products_max_order_quantity', '', '-1', 'insert', 1, '2016-06-28 16:57:18'),
(76, 'products', 'insert', 22, 'soc_products.order_increment', '', '1', 'insert', 1, '2016-06-28 16:57:18'),
(76, 'products', 'insert', 22, 'soc_products.quantity_unit_class', '', '1', 'insert', 1, '2016-06-28 16:57:18'),
(76, 'products', 'insert', 22, 'soc_products.products_date_available', '', 'null', 'insert', 1, '2016-06-28 16:57:18'),
(76, 'products', 'insert', 22, 'soc_products.products_weight', '', '', 'insert', 1, '2016-06-28 16:57:18'),
(76, 'products', 'insert', 22, 'soc_products.products_weight_class', '', '2', 'insert', 1, '2016-06-28 16:57:18'),
(76, 'products', 'insert', 22, 'soc_products.products_status', '', '1', 'insert', 1, '2016-06-28 16:57:18'),
(76, 'products', 'insert', 22, 'soc_products.products_tax_class_id', '', '0', 'insert', 1, '2016-06-28 16:57:18'),
(76, 'products', 'insert', 22, 'soc_products.manufacturers_id', '', '8', 'insert', 1, '2016-06-28 16:57:18'),
(76, 'products', 'insert', 22, 'soc_products.quantity_discount_groups_id', '', '0', 'insert', 1, '2016-06-28 16:57:18'),
(76, 'products', 'insert', 22, 'soc_products.products_attributes_groups_id', '', 'null', 'insert', 1, '2016-06-28 16:57:18'),
(76, 'products', 'insert', 22, 'soc_products_to_categories.products_id', '', '22', 'insert', 1, '2016-06-28 16:57:18'),
(76, 'products', 'insert', 22, 'soc_products_to_categories.categories_id', '', '2', 'insert', 1, '2016-06-28 16:57:18'),
(76, 'products', 'insert', 22, 'soc_products_to_categories.products_id', '', '22', 'insert', 1, '2016-06-28 16:57:18'),
(76, 'products', 'insert', 22, 'soc_products_to_categories.categories_id', '', '10', 'insert', 1, '2016-06-28 16:57:18'),
(76, 'products', 'insert', 22, 'soc_products_description.products_id', '', '22', 'insert', 1, '2016-06-28 16:57:18'),
(76, 'products', 'insert', 22, 'soc_products_description.language_id', '', '2', 'insert', 1, '2016-06-28 16:57:18'),
(76, 'products', 'insert', 22, 'soc_products_description.products_name', '', 'Smartphone LG G3 Stylus Branco com Tela de 5.5”, Dual Chip, Android 4.4, Câmera 13MP, 3G e Processador Quad Core 1.3GHz', 'insert', 1, '2016-06-28 16:57:18'),
(76, 'products', 'insert', 22, 'soc_products_description.products_short_description', '', 'Smartphone LG G3 Stylus Branco com Tela de 5.5”', 'insert', 1, '2016-06-28 16:57:18');
INSERT INTO `soc_administrators_log` (`id`, `module`, `module_action`, `module_id`, `field_key`, `old_value`, `new_value`, `action`, `administrators_id`, `datestamp`) VALUES
(76, 'products', 'insert', 22, 'soc_products_description.products_description', '', '<span style="color: rgb(102, 102, 102); font-family: ''Segoe UI'', Arial; line-height: 1.286em;"><font size="2">Tenha em mãos um smartphone para navegar na internet e fazer tudo o que você precisa sem lentidão e livre de travamentos. Projetado com processador Quad Core de 1.3GHz, o LG G3 Stylus tem altíssima performance.</font></span><p style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; font-stretch: inherit; line-height: 1.286em; font-family: ''Segoe UI'', Arial; vertical-align: baseline; color: rgb(102, 102, 102);"><font size="2">Trata-se de um aparelho completo que combina um design sofisticado, inúmeros recursos para satisfazer suas necessidades e alta tecnologia, que vão desde uma tela com a mesma tecnologia das TV''s LG até uma bateria de alta densidade (3.000 mAh) para que você possa usar por mais tempo e carregar até 40% mais rápido.</font></p><p style="font-size: 0.875em; box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; font-stretch: inherit; line-height: 1.286em; font-family: ''Segoe UI'', Arial; vertical-align: baseline; color: rgb(102, 102, 102);"><br></p><h3 class="tit" style="font-size: 1.625em; box-sizing: inherit; margin: 0px 0px 20px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; font-weight: normal; font-stretch: inherit; line-height: inherit; font-family: Pluto; vertical-align: baseline; color: rgb(109, 109, 109);">Características</h3><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl00_dlCategoria" class="RAM" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">RAM</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">1GB</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl01_dlCategoria" class="Sistema-Operacional even" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Sistema Operacional</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Android 4.4 KitKat</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl02_dlCategoria" class="Tipo" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Tipo</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Barra</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl03_dlCategoria" class="Tecnologia even" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Tecnologia</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">GSM,&nbsp;</dd><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">3G</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl04_dlCategoria" class="Slot-para-cartao" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Slot para cartão</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">MicroSD até 32GB</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl05_dlCategoria" class="Cartao-incluso even" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Cartão incluso</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Não</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl06_dlCategoria" class="Radio-FM" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Rádio FM</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Sim</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl07_dlCategoria" class="MP3-player even" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">MP3 player</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Sim</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl08_dlCategoria" class="Bluetooth" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Bluetooth</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Sim</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl09_dlCategoria" class="Bluetooth-Estereo--ouca-suas-musicas-em-um-dispositivo-Bluetooth- even" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Bluetooth Estéreo (ouça suas músicas em um dispositivo Bluetooth)</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Não</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl10_dlCategoria" class="Wi-Fi" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Wi-Fi</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Sim</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl11_dlCategoria" class="Visualizador-de-arquivos even" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Visualizador de arquivos</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Sim</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl12_dlCategoria" class="Suporte-a-GPS" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Suporte a GPS</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Sim</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl13_dlCategoria" class="Mensagens even" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Mensagens</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">SMS,&nbsp;</dd><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">MMS,&nbsp;</dd><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">E-mail</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl14_dlCategoria" class="Toques" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Toques</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Polifônicos</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl15_dlCategoria" class="Processador even" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Processador</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Quad Core de 1.3 GHz</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl16_dlCategoria" class="Som" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Som</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Rádio FM,&nbsp;</dd><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">MP3 Player</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl17_dlCategoria" class="Resolucao-da-camera even" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Resolução da câmera</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Traseira 13MP e Frontal 1MP</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl18_dlCategoria" class="Cor" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Cor</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Branco</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl19_dlCategoria" class="Grava-video even" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Grava vídeo</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Sim</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl20_dlCategoria" class="Memoria-interna" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Memória interna</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">8GB sendo uma parte usada pelo sistema operacional e aplicativos pré instalados</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl21_dlCategoria" class="Caracteristicas-Gerais even" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Características Gerais</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;"><span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">Processador Quad Core 1.3 Ghz</span>&nbsp;<br style="box-sizing: inherit;">- Navegue na internet e faça tudo sem lentidão ou travadinhas.&nbsp;<br style="box-sizing: inherit;"><br style="box-sizing: inherit;"><span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">Knock Code e Smart Button</span>&nbsp;<br style="box-sizing: inherit;">- Descomplicamos o uso do seu smartphone, mais facilidade e menos quedas.&nbsp;<br style="box-sizing: inherit;"><br style="box-sizing: inherit;"><span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">Bateria de Alta Densidade</span>&nbsp;<br style="box-sizing: inherit;">- Bateria de 3.000 mAh para que você possa usar por mais tempo e carregar até 40% mais rápido.</dd></dl>', 'insert', 1, '2016-06-28 16:57:18'),
(76, 'products', 'insert', 22, 'soc_products_description.products_tags', '', 'Smartphone LG G3', 'insert', 1, '2016-06-28 16:57:18'),
(76, 'products', 'insert', 22, 'soc_products_description.products_url', '', '', 'insert', 1, '2016-06-28 16:57:18'),
(76, 'products', 'insert', 22, 'soc_products_description.products_friendly_url', '', 'smartphone-lg-g3-stylus-branco-com-tela-de-5-5-dual-chip-android-4-4-c-mera-13mp-3g-e-processador-quad-core-1-3ghz', 'insert', 1, '2016-06-28 16:57:18'),
(76, 'products', 'insert', 22, 'soc_products_description.products_page_title', '', '', 'insert', 1, '2016-06-28 16:57:18'),
(76, 'products', 'insert', 22, 'soc_products_description.products_meta_keywords', '', '', 'insert', 1, '2016-06-28 16:57:18'),
(76, 'products', 'insert', 22, 'soc_products_description.products_meta_description', '', '', 'insert', 1, '2016-06-28 16:57:18'),
(76, 'products', 'insert', 22, 'soc_products_images.image', '', '22_56_01.jpg', 'update', 1, '2016-06-28 16:57:18'),
(76, 'products', 'insert', 22, 'soc_products_images.image', '', '22_57_02.jpg', 'update', 1, '2016-06-28 16:57:19'),
(76, 'products', 'insert', 22, 'soc_products_images.image', '', '22_58_03.jpg', 'update', 1, '2016-06-28 16:57:19'),
(76, 'products', 'insert', 22, 'soc_products_images.image', '', '22_59_04.jpg', 'update', 1, '2016-06-28 16:57:20'),
(76, 'products', 'insert', 22, 'soc_products_xsell.products_id', '', '22', 'insert', 1, '2016-06-28 16:57:20'),
(76, 'products', 'insert', 22, 'soc_products_xsell.xsell_products_id', '', '', 'insert', 1, '2016-06-28 16:57:20');

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_articles`
--

CREATE TABLE `soc_articles` (
  `articles_id` int(11) NOT NULL,
  `articles_categories_id` int(11) NOT NULL,
  `articles_status` tinyint(1) NOT NULL,
  `articles_order` int(10) NOT NULL,
  `articles_date_added` datetime NOT NULL,
  `articles_last_modified` datetime NOT NULL,
  `articles_image` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_articles`
--

INSERT INTO `soc_articles` (`articles_id`, `articles_categories_id`, `articles_status`, `articles_order`, `articles_date_added`, `articles_last_modified`, `articles_image`) VALUES
(1, 1, 1, 1, '2016-06-28 15:02:37', '2016-06-28 15:02:37', NULL),
(2, 1, 1, 2, '2016-06-28 15:02:37', '2016-06-28 15:02:37', NULL),
(3, 1, 1, 3, '2016-06-28 15:02:37', '2016-06-28 15:02:37', NULL),
(4, 1, 1, 4, '2016-06-28 15:02:37', '2016-06-28 15:02:37', NULL),
(5, 1, 1, 5, '2016-06-28 15:02:37', '2016-06-28 15:02:37', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_articles_categories`
--

CREATE TABLE `soc_articles_categories` (
  `articles_categories_id` int(11) NOT NULL,
  `articles_categories_status` tinyint(1) NOT NULL,
  `articles_categories_order` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_articles_categories`
--

INSERT INTO `soc_articles_categories` (`articles_categories_id`, `articles_categories_status`, `articles_categories_order`) VALUES
(1, 1, 1),
(2, 1, 0),
(3, 1, 0),
(4, 1, 0),
(5, 1, 0),
(6, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_articles_categories_description`
--

CREATE TABLE `soc_articles_categories_description` (
  `articles_categories_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `articles_categories_name` varchar(255) NOT NULL,
  `articles_categories_url` varchar(255) NOT NULL,
  `articles_categories_page_title` varchar(255) NOT NULL,
  `articles_categories_meta_keywords` varchar(255) NOT NULL,
  `articles_categories_meta_description` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_articles_categories_description`
--

INSERT INTO `soc_articles_categories_description` (`articles_categories_id`, `language_id`, `articles_categories_name`, `articles_categories_url`, `articles_categories_page_title`, `articles_categories_meta_keywords`, `articles_categories_meta_description`) VALUES
(1, 2, 'Information', 'information', '', '', ''),
(2, 2, 'Latest News', 'latest-news', '', '', ''),
(3, 2, 'Categories 1', 'categories-1', '', '', ''),
(4, 2, 'Categories 2', 'categories-2', '', '', ''),
(5, 2, 'Categories 3', 'categories-3', '', '', ''),
(6, 2, 'Categories 4', 'categories-4', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_articles_description`
--

CREATE TABLE `soc_articles_description` (
  `articles_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `articles_name` varchar(255) NOT NULL,
  `articles_url` varchar(255) NOT NULL,
  `articles_description` text NOT NULL,
  `articles_page_title` varchar(255) NOT NULL,
  `articles_meta_keywords` varchar(255) NOT NULL,
  `articles_meta_description` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_articles_description`
--

INSERT INTO `soc_articles_description` (`articles_id`, `language_id`, `articles_name`, `articles_url`, `articles_description`, `articles_page_title`, `articles_meta_keywords`, `articles_meta_description`) VALUES
(1, 2, 'Sobre', 'about-us', 'Coloque aqui as informações necessárias.', '', '', ''),
(2, 2, 'Frete e Devoluções', 'shipping-returns', 'Coloque aqui as informações necessárias.', '', '', ''),
(3, 2, 'Termos de Privacidade', 'privacy-notice', 'Coloque aqui as informações necessárias.', '', '', ''),
(4, 2, 'Condições de Uso', 'conditions-of-use', 'Coloque aqui as informações necessárias.', '', '', ''),
(5, 2, 'Ficha Técnica', 'imprint', 'Coloque aqui as informações necessárias.', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_banners`
--

CREATE TABLE `soc_banners` (
  `banners_id` int(11) NOT NULL,
  `banners_title` varchar(64) NOT NULL,
  `banners_url` varchar(255) NOT NULL,
  `banners_image` varchar(64) NOT NULL,
  `banners_group` varchar(10) NOT NULL,
  `banners_html_text` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `expires_impressions` int(7) DEFAULT '0',
  `expires_date` datetime DEFAULT NULL,
  `date_scheduled` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_banners_history`
--

CREATE TABLE `soc_banners_history` (
  `banners_history_id` int(11) NOT NULL,
  `banners_id` int(11) NOT NULL,
  `banners_shown` int(5) NOT NULL DEFAULT '0',
  `banners_clicked` int(5) NOT NULL DEFAULT '0',
  `banners_history_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_categories`
--

CREATE TABLE `soc_categories` (
  `categories_id` int(11) NOT NULL,
  `categories_image` varchar(64) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(3) DEFAULT NULL,
  `categories_status` int(1) DEFAULT '1',
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_categories`
--

INSERT INTO `soc_categories` (`categories_id`, `categories_image`, `parent_id`, `sort_order`, `categories_status`, `date_added`, `last_modified`) VALUES
(1, 'celular_tim.jpg', 0, 2, 1, '2016-06-28 15:03:16', '2016-06-28 16:07:25'),
(2, 'smartfone.jpg', 0, 0, 1, '2016-06-28 15:03:16', '2016-06-28 16:07:15'),
(3, 'smartwatche.jpg', 0, 3, 1, '2016-06-28 15:03:16', '2016-06-28 15:45:05'),
(14, NULL, 1, 2, 1, '2016-06-28 15:48:03', '2016-06-28 16:07:25'),
(10, NULL, 2, 0, 1, '2016-06-28 15:46:19', '2016-06-28 16:07:15'),
(11, NULL, 2, 0, 1, '2016-06-28 15:46:53', '2016-06-28 16:07:15'),
(12, NULL, 2, 0, 1, '2016-06-28 15:47:12', '2016-06-28 16:07:15'),
(13, NULL, 2, 0, 1, '2016-06-28 15:47:39', '2016-06-28 16:07:15'),
(9, 'cellular.jpg', 0, 1, 1, '2016-06-28 15:03:16', '2016-06-28 15:40:23'),
(15, NULL, 1, 2, 1, '2016-06-28 15:48:17', '2016-06-28 16:07:25'),
(16, NULL, 1, 2, 1, '2016-06-28 15:48:30', '2016-06-28 16:07:25'),
(17, NULL, 1, 2, 1, '2016-06-28 15:48:41', '2016-06-28 16:07:25'),
(18, NULL, 3, 0, 1, '2016-06-28 15:48:58', NULL),
(19, NULL, 3, 1, 1, '2016-06-28 15:49:15', NULL),
(20, NULL, 3, 2, 1, '2016-06-28 15:49:32', '2016-06-28 15:49:53'),
(21, NULL, 3, 3, 1, '2016-06-28 15:50:12', NULL),
(22, NULL, 3, 4, 1, '2016-06-28 15:50:47', NULL),
(23, NULL, 3, 5, 1, '2016-06-28 15:50:59', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_categories_description`
--

CREATE TABLE `soc_categories_description` (
  `categories_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `categories_name` varchar(64) NOT NULL,
  `categories_url` varchar(64) NOT NULL,
  `categories_page_title` varchar(255) NOT NULL,
  `categories_meta_keywords` varchar(255) NOT NULL,
  `categories_meta_description` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_categories_description`
--

INSERT INTO `soc_categories_description` (`categories_id`, `language_id`, `categories_name`, `categories_url`, `categories_page_title`, `categories_meta_keywords`, `categories_meta_description`) VALUES
(17, 2, 'Oi', 'oi', '', '', ''),
(16, 2, 'Tim', 'tim', '', '', ''),
(15, 2, 'Vivo', 'vivo', '', '', ''),
(14, 2, 'Claro', 'claro', '', '', ''),
(13, 2, 'Outros', 'outros', '', '', ''),
(1, 2, 'Smartphones de operadoras', 'laptop', '', '', ''),
(2, 2, 'Smartphones', 'desktops', '', '', ''),
(3, 2, 'SmartWatches', 'monitors', '', '', ''),
(12, 2, 'Windows Phone', 'windows-phone', '', '', ''),
(10, 2, 'Android', 'android', '', '', ''),
(11, 2, 'IOS / Iphone', 'ios-iphone', '', '', ''),
(9, 2, 'Celulares', 'ipod-camera', '', '', ''),
(18, 2, 'Apple', 'apple', '', '', ''),
(19, 2, 'LG', 'lg', '', '', ''),
(20, 2, 'Samsung', 'samsumg', '', '', ''),
(21, 2, 'Sony', 'sony', '', '', ''),
(22, 2, 'Motorola', 'motorola', '', '', ''),
(23, 2, 'Outros', 'outros', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_categories_ratings`
--

CREATE TABLE `soc_categories_ratings` (
  `categories_id` int(11) NOT NULL,
  `ratings_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_categories_ratings`
--

INSERT INTO `soc_categories_ratings` (`categories_id`, `ratings_id`) VALUES
(1, 0),
(2, 0),
(3, 0),
(9, 0),
(10, 0),
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0),
(19, 0),
(20, 0),
(21, 0),
(22, 0),
(23, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_configuration`
--

CREATE TABLE `soc_configuration` (
  `configuration_id` int(11) NOT NULL,
  `configuration_title` varchar(64) NOT NULL,
  `configuration_key` varchar(64) NOT NULL,
  `configuration_value` varchar(1024) NOT NULL,
  `configuration_description` varchar(255) NOT NULL,
  `configuration_group_id` int(11) NOT NULL,
  `sort_order` int(5) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `use_function` varchar(255) DEFAULT NULL,
  `set_function` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_configuration`
--

INSERT INTO `soc_configuration` (`configuration_id`, `configuration_title`, `configuration_key`, `configuration_value`, `configuration_description`, `configuration_group_id`, `sort_order`, `last_modified`, `date_added`, `use_function`, `set_function`) VALUES
(1, 'Store Name', 'STORE_NAME', 'Só celulares', 'The name of my store', 1, 1, '2016-06-28 15:04:30', '2016-06-28 15:02:36', NULL, NULL),
(2, 'Store Owner', 'STORE_OWNER', 'Só celulares', 'The name of my store owner', 1, 2, '2016-06-28 15:04:30', '2016-06-28 15:02:36', NULL, NULL),
(3, 'E-Mail Address', 'STORE_OWNER_EMAIL_ADDRESS', 'admin@email.com', 'The e-mail address of my store owner', 1, 3, '2016-06-28 15:04:30', '2016-06-28 15:02:36', NULL, NULL),
(4, 'E-Mail From', 'EMAIL_FROM', '"Só celulares" <admin@email.com>', 'The e-mail address used in (sent) e-mails', 1, 4, '2016-06-28 15:04:30', '2016-06-28 15:02:36', NULL, NULL),
(5, 'Country', 'STORE_COUNTRY', '30', 'The country my store is located in <br><br><b>Note: Please remember to update the store zone.</b>', 1, 6, '2016-06-28 15:04:30', '2016-06-28 15:02:36', 'osC_Address::getCountryName', 'osc_cfg_set_countries_pulldown_menu'),
(6, 'Zone', 'STORE_ZONE', '494', 'The zone my store is located in', 1, 7, '2016-06-28 15:04:30', '2016-06-28 15:02:36', 'osC_Address::getZoneName', 'osc_cfg_set_zones_pulldown_menu'),
(7, 'Timezone(Get it at www.php.net/manual/en/timezones.php)', 'STORE_TIME_ZONE', '', 'The timezone my store is located in', 1, 8, NULL, '2016-06-28 15:02:36', NULL, NULL),
(8, 'Send Extra Order Emails To', 'SEND_EXTRA_ORDER_EMAILS_TO', '', 'Send extra order emails to the following email addresses, in this format: Name 1 &lt;email@address1&gt;, Name 2 &lt;email@address2&gt;', 1, 11, '2016-06-28 15:04:30', '2016-06-28 15:02:36', NULL, NULL),
(9, 'Allow Guest To Tell A Friend', 'ALLOW_GUEST_TO_TELL_A_FRIEND', '-1', 'Allow guests to tell a friend about a product', 1, 15, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(10, 'Store Address and Phone', 'STORE_NAME_ADDRESS', '', 'This is the Store Name, Address and Phone used on printable documents and displayed online', 1, 18, '2016-06-28 15:29:52', '2016-06-28 15:02:36', NULL, 'osc_cfg_set_textarea_field'),
(11, 'Tax Decimal Places', 'TAX_DECIMAL_PLACES', '0', 'Pad the tax value this amount of decimal places', 1, 20, '2016-06-28 15:04:30', '2016-06-28 15:02:36', NULL, NULL),
(12, 'Display Prices with Tax', 'DISPLAY_PRICE_WITH_TAX', '1', 'Display prices with tax included (true) or add the tax at the end (false)', 1, 21, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(13, 'Invoice Start Number', 'INVOICE_START_NUMBER', '10000', 'Invoices would be numbered according to the starting number + increment value per Step 1.', 1, 22, '2016-06-28 15:04:30', '2016-06-28 15:02:36', NULL, NULL),
(14, 'Maintenance mode', 'MAINTENANCE_MODE', '-1', 'Maintenance Mode', 1, 23, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(15, 'Use TinyMCE Editor', 'USE_WYSIWYG_TINYMCE_EDITOR', '-1', 'Use TinyMCE Editor', 1, 24, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(16, 'Display Products in the subcatalogs recursively', 'DISPLAY_SUBCATALOGS_PRODUCTS', '1', 'Display the products in the subcatalogs recursively!', 1, 25, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(17, 'Synchronize cart with the database when customer logged in', 'SYNCHRONIZE_CART_WITH_DATABASE', '-1', 'Synchronize cart with the database when customer logged in!', 1, 26, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(18, 'Check stocks when synchronize cart with the database', 'CHECK_STOCKS_SYNCHRONIZE_CART_WITH_DATABASE', '1', 'Check stocks when synchronize cart with the database', 1, 27, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(19, 'Enable the confirmation dialog for add to cart action', 'ENABLE_CONFIRMATION_DIALOG', '1', 'Enable the confirmation dialog for add to cart action', 1, 28, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(20, 'Enable administrators log', 'ENABLE_ADMINISTRATORS_LOG', '1', 'Set to true if you want to see the logs in the administrators log module', 1, 29, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(21, 'Credit Card Owner Name', 'CC_OWNER_MIN_LENGTH', '3', 'Minimum length of credit card owner name', 2, 12, NULL, '2016-06-28 15:02:36', NULL, NULL),
(22, 'Credit Card Number', 'CC_NUMBER_MIN_LENGTH', '10', 'Minimum length of credit card number', 2, 13, NULL, '2016-06-28 15:02:36', NULL, NULL),
(23, 'Review Text', 'REVIEW_TEXT_MIN_LENGTH', '50', 'Minimum length of review text', 2, 14, NULL, '2016-06-28 15:02:36', NULL, NULL),
(24, 'Address Book Entries', 'MAX_ADDRESS_BOOK_ENTRIES', '100', 'Maximum address book entries a customer is allowed to have', 3, 1, NULL, '2016-06-28 15:02:36', NULL, NULL),
(25, 'Search Results', 'MAX_DISPLAY_SEARCH_RESULTS', '20', 'Amount of products to list', 3, 2, NULL, '2016-06-28 15:02:36', NULL, NULL),
(26, 'Categories To List Per Row', 'MAX_DISPLAY_CATEGORIES_PER_ROW', '3', 'How many categories to list per row', 3, 13, NULL, '2016-06-28 15:02:36', NULL, NULL),
(27, 'New Products Listing', 'MAX_DISPLAY_PRODUCTS_NEW', '10', 'Maximum number of new products to display in new products page', 3, 14, NULL, '2016-06-28 15:02:36', NULL, NULL),
(28, 'Order History', 'MAX_DISPLAY_ORDER_HISTORY', '10', 'Maximum number of orders to display in the order history page', 3, 18, NULL, '2016-06-28 15:02:36', NULL, NULL),
(29, 'Search Results In Auto Completer ', 'MAX_DISPLAY_AUTO_COMPLETER_RESULTS', '10', 'Maximum number of search results in auto completer', 3, 19, NULL, '2016-06-28 15:02:36', NULL, NULL),
(30, 'Maximum Characters For Product Name in Auto Completer', 'MAX_CHARACTERS_AUTO_COMPLETER', '40', 'Maximum number of characters for product name in auto completer', 3, 20, NULL, '2016-06-28 15:02:36', NULL, NULL),
(31, 'Width Of Auto Completer List', 'WIDTH_AUTO_COMPLETER', '400', 'Width of auto completer list', 3, 21, NULL, '2016-06-28 15:02:36', NULL, NULL),
(32, 'Heading Image Width', 'HEADING_IMAGE_WIDTH', '57', 'The pixel width of heading images', 4, 3, NULL, '2016-06-28 15:02:36', NULL, NULL),
(33, 'Heading Image Height', 'HEADING_IMAGE_HEIGHT', '40', 'The pixel height of heading images', 4, 4, NULL, '2016-06-28 15:02:36', NULL, NULL),
(34, 'Image Required', 'IMAGE_REQUIRED', '1', 'Enable to display broken images. Good for development.', 4, 8, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(35, 'Image Group Of Auto Completer', 'IMAGE_GROUP_AUTO_COMPLETER', 'thumbnail', 'The image group of the auto completer search list', 4, 9, NULL, '2016-06-28 15:02:36', NULL, NULL),
(36, 'Gender', 'ACCOUNT_GENDER', '1', 'Ask for or require the customers gender.', 5, 10, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, 0, -1))'),
(37, 'First Name', 'ACCOUNT_FIRST_NAME', '2', 'Minimum requirement for the customers first name.', 5, 11, NULL, '2016-06-28 15:02:36', NULL, 'osc_cfg_set_boolean_value(array(''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''10''))'),
(38, 'Last Name', 'ACCOUNT_LAST_NAME', '2', 'Minimum requirement for the customers last name.', 5, 12, NULL, '2016-06-28 15:02:36', NULL, 'osc_cfg_set_boolean_value(array(''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''10''))'),
(39, 'Date Of Birth', 'ACCOUNT_DATE_OF_BIRTH', '1', 'Ask for the customers date of birth.', 5, 13, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(40, 'E-Mail Address', 'ACCOUNT_EMAIL_ADDRESS', '6', 'Minimum requirement for the customers e-mail address.', 5, 14, NULL, '2016-06-28 15:02:36', NULL, 'osc_cfg_set_boolean_value(array(''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''10''))'),
(41, 'Password', 'ACCOUNT_PASSWORD', '5', 'Minimum requirement for the customers password.', 5, 15, NULL, '2016-06-28 15:02:36', NULL, 'osc_cfg_set_boolean_value(array(''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''10''))'),
(42, 'Newsletter', 'ACCOUNT_NEWSLETTER', '1', 'Ask for a newsletter subscription.', 5, 16, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(43, 'Company Name', 'ACCOUNT_COMPANY', '0', 'Ask for or require the customers company name.', 5, 17, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(''10'', ''9'', ''8'', ''7'', ''6'', ''5'', ''4'', ''3'', ''2'', ''1'', 0, -1))'),
(44, 'Street Address', 'ACCOUNT_STREET_ADDRESS', '5', 'Minimum requirement for the customers street address.', 5, 18, NULL, '2016-06-28 15:02:36', NULL, 'osc_cfg_set_boolean_value(array(''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''10''))'),
(45, 'Suburb', 'ACCOUNT_SUBURB', '0', 'Ask for or require the customers suburb.', 5, 19, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(''10'', ''9'', ''8'', ''7'', ''6'', ''5'', ''4'', ''3'', ''2'', ''1'', 0, -1))'),
(46, 'Post Code', 'ACCOUNT_POST_CODE', '0', 'Minimum requirement for the customers post code.', 5, 20, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(-1, 0, ''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''10''))'),
(47, 'City', 'ACCOUNT_CITY', '4', 'Minimum requirement for the customers city.', 5, 21, NULL, '2016-06-28 15:02:36', NULL, 'osc_cfg_set_boolean_value(array(''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''10''))'),
(48, 'State', 'ACCOUNT_STATE', '2', 'Ask for or require the customers state.', 5, 22, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(''10'', ''9'', ''8'', ''7'', ''6'', ''5'', ''4'', ''3'', ''2'', ''1'', 0, -1))'),
(49, 'Country', 'ACCOUNT_COUNTRY', '1', 'Ask for the customers country.', 5, 23, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1))'),
(50, 'Telephone Number', 'ACCOUNT_TELEPHONE', '3', 'Ask for or require the customers telephone number.', 5, 24, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(''10'', ''9'', ''8'', ''7'', ''6'', ''5'', ''4'', ''3'', ''2'', ''1'', 0, -1))'),
(51, 'Fax Number', 'ACCOUNT_FAX', '0', 'Ask for or require the customers fax number.', 5, 25, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(''10'', ''9'', ''8'', ''7'', ''6'', ''5'', ''4'', ''3'', ''2'', ''1'', 0, -1))'),
(52, 'Default Currency', 'DEFAULT_CURRENCY', 'BRL', 'Default Currency', 6, 0, NULL, '2016-06-28 15:02:36', NULL, NULL),
(53, 'Default Language', 'DEFAULT_LANGUAGE', 'pt_BR', 'Default Language', 6, 0, NULL, '2016-06-28 15:02:36', NULL, NULL),
(54, 'Default Order Status For New Orders', 'DEFAULT_ORDERS_STATUS_ID', '1', 'When a new order is created, this order status will be assigned to it.', 6, 0, NULL, '2016-06-28 15:02:36', NULL, NULL),
(55, 'Default Image Group', 'DEFAULT_IMAGE_GROUP_ID', '2', 'Default image group.', 6, 0, NULL, '2016-06-28 15:02:36', NULL, NULL),
(56, 'Default Template', 'DEFAULT_TEMPLATE', 'bootstrap', 'TomatoCart Glass Gray', 6, 0, NULL, '2016-06-28 15:02:36', NULL, NULL),
(57, 'Country of Origin', 'SHIPPING_ORIGIN_COUNTRY', '30', 'Select the country of origin to be used in shipping quotes.', 7, 1, '2016-06-28 15:04:30', '2016-06-28 15:02:36', 'osC_Address::getCountryName', 'osc_cfg_set_countries_pulldown_menu'),
(58, 'Postal Code', 'SHIPPING_ORIGIN_ZIP', 'NONE', 'Enter the Postal Code (ZIP) of the Store to be used in shipping quotes.', 7, 2, '2016-06-28 15:04:30', '2016-06-28 15:02:36', NULL, NULL),
(59, 'Enter the Maximum Package Weight you will ship', 'SHIPPING_MAX_WEIGHT', '50', 'Carriers have a max weight limit for a single package. This is a common one for all.', 7, 3, '2016-06-28 15:04:30', '2016-06-28 15:02:36', NULL, NULL),
(60, 'Package Tare weight.', 'SHIPPING_BOX_WEIGHT', '3', 'What is the weight of typical packaging of small to medium packages?', 7, 4, '2016-06-28 15:04:30', '2016-06-28 15:02:36', NULL, NULL),
(61, 'Larger packages - percentage increase.', 'SHIPPING_BOX_PADDING', '10', 'For 10% enter 10', 7, 5, '2016-06-28 15:04:30', '2016-06-28 15:02:36', NULL, NULL),
(62, 'Default Shipping Unit', 'SHIPPING_WEIGHT_UNIT', '2', 'Select the unit of weight to be used for shipping.', 7, 6, '2016-06-28 15:04:30', '2016-06-28 15:02:36', 'osC_Weight::getTitle', 'osc_cfg_set_weight_classes_pulldown_menu'),
(63, 'Default Unit Class', 'DEFAULT_UNIT_CLASSES', '1', 'Default Unit Class', 6, 0, NULL, '2016-06-28 15:02:36', NULL, NULL),
(64, 'Display Product Image', 'PRODUCT_LIST_IMAGE', '1', 'Do you want to display the Product Image?', 8, 1, NULL, '2016-06-28 15:02:36', NULL, NULL),
(65, 'Display Product Manufaturer Name', 'PRODUCT_LIST_MANUFACTURER', '0', 'Do you want to display the Product Manufacturer Name?', 8, 2, NULL, '2016-06-28 15:02:36', NULL, NULL),
(66, 'Display Product SKU', 'PRODUCT_LIST_SKU', '0', 'Do you want to display the Product SKU?', 8, 3, NULL, '2016-06-28 15:02:36', NULL, NULL),
(67, 'Display Product Name', 'PRODUCT_LIST_NAME', '2', 'Do you want to display the Product Name?', 8, 4, NULL, '2016-06-28 15:02:36', NULL, NULL),
(68, 'Display Product Price', 'PRODUCT_LIST_PRICE', '3', 'Do you want to display the Product Price', 8, 5, NULL, '2016-06-28 15:02:36', NULL, NULL),
(69, 'Display Product Quantity', 'PRODUCT_LIST_QUANTITY', '0', 'Do you want to display the Product Quantity?', 8, 6, NULL, '2016-06-28 15:02:36', NULL, NULL),
(70, 'Display Product Weight', 'PRODUCT_LIST_WEIGHT', '0', 'Do you want to display the Product Weight?', 8, 7, NULL, '2016-06-28 15:02:36', NULL, NULL),
(71, 'Display Buy Now column', 'PRODUCT_LIST_BUY_NOW', '4', 'Do you want to display the Buy Now column?', 8, 8, NULL, '2016-06-28 15:02:36', NULL, NULL),
(72, 'Display Category/Manufacturer Filter', 'PRODUCT_LIST_FILTER', '1', 'Do you want to display the Category/Manufacturer Filter?', 8, 9, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(73, 'Display Product Attributes Filter', 'PRODUCT_ATTRIBUTES_FILTER', '1', 'Do you want to display the Product Attributes Filter?', 8, 10, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(74, 'Link the Product Attributes and Category/Manufacturer Filter', 'PRODUCT_LINK_FILTER', '1', 'Do you want to filter the products with the Product Attributes Filter and Category/Manufacturer Filter at the same time?', 8, 11, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(75, 'Location of Prev/Next Navigation Bar (1-top, 2-bottom, 3-both)', 'PREV_NEXT_BAR_LOCATION', '2', 'Sets the location of the Prev/Next Navigation Bar (1-top, 2-bottom, 3-both)', 8, 12, NULL, '2016-06-28 15:02:36', NULL, NULL),
(76, 'Display Varains Options', 'PRODUCT_LIST_VARIANTS_OPTIONS', '1', 'Do you want to display the variants options in the product listing?', 8, 13, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(77, 'Display Quantity Input Field', 'PRODUCT_LIST_QUANTITY_INPUT', '1', 'Do you want to display quantity input field in the product listing?', 8, 14, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(78, 'Check stock level', 'STOCK_CHECK', '1', 'Check to see if sufficent stock is available', 9, 1, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(79, 'Subtract stock', 'STOCK_LIMITED', '1', 'Subtract product in stock by product orders', 9, 2, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(80, 'Allow Checkout', 'STOCK_ALLOW_CHECKOUT', '1', 'Allow customer to checkout even if there is insufficient stock', 9, 3, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(81, 'Mark product out of stock', 'STOCK_MARK_PRODUCT_OUT_OF_STOCK', '***', 'Display something on screen so customer can see which product has insufficient stock', 9, 4, NULL, '2016-06-28 15:02:36', NULL, NULL),
(82, 'Stock Re-order level', 'STOCK_REORDER_LEVEL', '5', 'Define when stock needs to be re-ordered', 9, 5, NULL, '2016-06-28 15:02:36', NULL, NULL),
(83, 'Out of stock email alerts', 'STOCK_EMAIL_ALERT', '1', 'Define send a email to administrator  if out of stock', 9, 6, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(84, 'Display Product Quantity', 'PRODUCT_INFO_QUANTITY', '1', 'Do you want to display the Product Quantity?', 10, 1, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(85, 'Display Product Minimum Order Quantity', 'PRODUCT_INFO_MOQ', '-1', 'Do you want to display the Product Minimum Order Quantity?', 10, 2, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(86, 'Display Product Order Increment', 'PRODUCT_INFO_ORDER_INCREMENT', '-1', 'Do you want to display the Order Increment?', 10, 3, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(87, 'Allow gift certificate return', 'ALLOW_GIFT_CERTIFICATE_RETURN', '-1', 'Do you want to allow customer return gift certificates?', 11, 3, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(88, 'Allow downloadable return', 'ALLOW_DOWNLOADABLE_RETURN', '-1', 'Do you want to allow customer return downloadable products?', 11, 4, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(89, 'Allow return request', 'ALLOW_RETURN_REQUEST', '1', 'Do you want to allow customer return product?', 11, 5, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(90, 'Download by redirect', 'DOWNLOAD_BY_REDIRECT', '-1', 'Use browser redirection for download. Disable on non-Unix systems.', 11, 1, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(91, 'Display the telephone number', 'DISPLAY_TELEPHONE_NUMBER', '1', 'Set true to make the telephone number display in the order details.', 11, 6, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(92, 'E-Mail Transport Method', 'EMAIL_TRANSPORT', 'sendmail', 'Defines if this server uses a local connection to sendmail or uses an SMTP connection via TCP/IP. Servers running on Windows and MacOS should change this setting to SMTP.', 12, 1, '2016-06-28 15:04:30', '2016-06-28 15:02:36', NULL, 'osc_cfg_set_boolean_value(array(''sendmail'', ''smtp''))'),
(93, 'E-Mail Linefeeds', 'EMAIL_LINEFEED', 'LF', 'Defines the character sequence used to separate mail headers.', 12, 2, NULL, '2016-06-28 15:02:36', NULL, 'osc_cfg_set_boolean_value(array(''LF'', ''CRLF''))'),
(94, 'SMTP Server', 'SMTP_HOST', '', 'The SMTP E-Mail Server', 12, 3, NULL, '2016-06-28 15:02:36', NULL, NULL),
(95, 'SMTP Server Port', 'SMTP_PORT', '25', 'The SMTP E-Mail Server', 12, 4, NULL, '2016-06-28 15:02:36', NULL, NULL),
(96, 'SMTP Username', 'SMTP_USERNAME', '', 'SMTP Username', 12, 5, NULL, '2016-06-28 15:02:36', NULL, NULL),
(97, 'SMTP Password', 'SMTP_PASSWORD', '', 'SMTP Password', 12, 6, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_encrypted_password', 'osc_cfg_set_password_field'),
(98, 'Enable SSL Connection', 'EMAIL_SSL', '1', 'Connect the smtp server with ssl connection', 12, 7, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(99, 'Use MIME HTML When Sending Emails', 'EMAIL_USE_HTML', '-1', 'Send e-mails in HTML format', 12, 8, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(100, 'Verify E-Mail Addresses Through DNS', 'ENTRY_EMAIL_ADDRESS_CHECK', '-1', 'Verify e-mail address through a DNS server', 12, 9, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(101, 'Send E-Mails', 'SEND_EMAILS', 'True', 'Send out e-mails', 12, 10, '2016-06-28 15:04:30', '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(102, 'Confirm Terms and Conditions During Checkout Procedure', 'DISPLAY_CONDITIONS_ON_CHECKOUT', '-1', 'Show the Terms and Conditions during the checkout procedure which the customer must agree to.', 16, 1, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(103, 'Confirm Privacy Notice During Account Creation Procedure', 'DISPLAY_PRIVACY_CONDITIONS', '-1', 'Show the Privacy Notice during the account creation procedure which the customer must agree to.', 16, 2, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(104, 'Verify With Regular Expressions', 'CFG_CREDIT_CARDS_VERIFY_WITH_REGEXP', '1', 'Verify credit card numbers with server-side regular expression patterns.', 17, 0, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(105, 'Verify With Javascript', 'CFG_CREDIT_CARDS_VERIFY_WITH_JS', '1', 'Verify credit card numbers with javascript based regular expression patterns.', 17, 1, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(106, 'GZIP', 'CFG_APP_GZIP', '', 'The program location to gzip.', 18, 1, NULL, '2016-06-28 15:02:36', NULL, NULL),
(107, 'GUNZIP', 'CFG_APP_GUNZIP', '', 'The program location to gunzip.', 18, 2, NULL, '2016-06-28 15:02:36', NULL, NULL),
(108, 'ZIP', 'CFG_APP_ZIP', '', 'The program location to zip.', 18, 3, NULL, '2016-06-28 15:02:36', NULL, NULL),
(109, 'UNZIP', 'CFG_APP_UNZIP', '', 'The program location to unzip.', 18, 4, NULL, '2016-06-28 15:02:36', NULL, NULL),
(110, 'cURL', 'CFG_APP_CURL', '', 'The program location to cURL.', 18, 5, NULL, '2016-06-28 15:02:36', NULL, NULL),
(111, 'Activate Captcha', 'ACTIVATE_CAPTCHA', '1', 'active captcha for contact us page and guest book', 19, 1, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(112, 'Disallow more than one vote from the same IP address', 'DISALLOW_MORE_THAN_ONE_VOTE', '1', 'Disallow more than one vote from the same IP address', 19, 2, NULL, '2016-06-28 15:02:36', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(113, 'Minimum List Size', 'BOX_BEST_SELLERS_MIN_LIST', '3', 'Minimum amount of products that must be shown in the listing', 6, 0, NULL, '2016-06-28 15:02:37', NULL, NULL),
(114, 'Maximum List Size', 'BOX_BEST_SELLERS_MAX_LIST', '10', 'Maximum amount of products to show in the listing', 6, 0, NULL, '2016-06-28 15:02:37', NULL, NULL),
(115, 'Cache Contents', 'BOX_BEST_SELLERS_CACHE', '60', 'Number of minutes to keep the contents cached (0 = no cache)', 6, 0, NULL, '2016-06-28 15:02:37', NULL, NULL),
(116, 'Show Product Count', 'BOX_CATEGORIES_SHOW_PRODUCT_COUNT', '1', 'Show the amount of products each category has', 6, 0, NULL, '2016-06-28 15:02:37', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(117, 'Display Drop Down Menu', 'BOX_CATEGORIES_DISPLAY_DROP_DOWN_MENU', '1', 'Use MenuMatic to display drop down menu', 6, 1, NULL, '2016-06-28 15:02:37', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(118, 'Drop Down Menu Effect', 'BOX_CATEGORIES_DROP_DOWN_MENU_EFFECT', 'slide & fade', 'Drop Down Menu Effect', 6, 2, NULL, '2016-06-28 15:02:37', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(''fade'', ''slide'', ''slide & fade''))'),
(119, 'Drop Down Menu Duration', 'BOX_CATEGORIES_DROP_DOWN_MENU_DURATION', '600', 'Drop Down Menu Duration', 6, 3, NULL, '2016-06-28 15:02:37', NULL, NULL),
(120, 'Manufacturers List Type', 'BOX_MANUFACTURERS_LIST_TYPE', 'Image List', 'The type of the manufacturers list(ComboBox, Image List).', 6, 0, NULL, '2016-06-28 15:02:37', NULL, 'osc_cfg_set_boolean_value(array(''ComboBox'', ''Image List''))'),
(121, 'Manufacturers List Size', 'BOX_MANUFACTURERS_LIST_SIZE', '1', 'The size of the manufacturers pull down menu listing.', 6, 0, NULL, '2016-06-28 15:02:37', NULL, NULL),
(122, 'Maximum List Size', 'BOX_ORDER_HISTORY_MAX_LIST', '5', 'Maximum amount of products to show in the listing', 6, 0, NULL, '2016-06-28 15:02:37', NULL, NULL),
(123, 'Random Review Selection', 'BOX_REVIEWS_RANDOM_SELECT', '10', 'Select a random review from this amount of the newest reviews available', 6, 0, NULL, '2016-06-28 15:02:37', NULL, NULL),
(124, 'Cache Contents', 'BOX_REVIEWS_CACHE', '1', 'Number of minutes to keep the contents cached (0 = no cache)', 6, 0, NULL, '2016-06-28 15:02:37', NULL, NULL),
(125, 'Random Product Specials Selection', 'BOX_SPECIALS_RANDOM_SELECT', '10', 'Select a random product on special from this amount of the newest products on specials available', 6, 0, NULL, '2016-06-28 15:02:37', NULL, NULL),
(126, 'Cache Contents', 'BOX_SPECIALS_CACHE', '1', 'Number of minutes to keep the contents cached (0 = no cache)', 6, 0, NULL, '2016-06-28 15:02:37', NULL, NULL),
(127, 'Random New Product Selection', 'BOX_WHATS_NEW_RANDOM_SELECT', '10', 'Select a random new product from this amount of the newest products available', 6, 0, NULL, '2016-06-28 15:02:37', NULL, NULL),
(128, 'Cache Contents', 'BOX_WHATS_NEW_CACHE', '1', 'Number of minutes to keep the contents cached (0 = no cache)', 6, 0, NULL, '2016-06-28 15:02:37', NULL, NULL),
(129, 'Maximum Entries To Display', 'MODULE_CONTENT_NEW_PRODUCTS_MAX_DISPLAY', '9', 'Maximum number of new products to display', 6, 0, NULL, '2016-06-28 15:02:37', NULL, NULL),
(130, 'Cache Contents', 'MODULE_CONTENT_NEW_PRODUCTS_CACHE', '60', 'Number of minutes to keep the contents cached (0 = no cache)', 6, 0, NULL, '2016-06-28 15:02:37', NULL, NULL),
(131, 'Minimum Entries To Display', 'MODULE_CONTENT_ALSO_PURCHASED_MIN_DISPLAY', '1', 'Minimum number of also purchased products to display', 6, 0, NULL, '2016-06-28 15:02:37', NULL, NULL),
(132, 'Maximum Entries To Display', 'MODULE_CONTENT_ALSO_PURCHASED_MAX_DISPLAY', '6', 'Maximum number of also purchased products to display', 6, 0, NULL, '2016-06-28 15:02:37', NULL, NULL),
(133, 'Cache Contents', 'MODULE_CONTENT_ALSO_PURCHASED_PRODUCTS_CACHE', '60', 'Number of minutes to keep the contents cached (0 = no cache)', 6, 0, NULL, '2016-06-28 15:02:37', NULL, NULL),
(134, 'Maximum Entries To Display', 'MODULE_CONTENT_UPCOMING_PRODUCTS_MAX_DISPLAY', '10', 'Maximum number of upcoming products to display', 6, 0, NULL, '2016-06-28 15:02:37', NULL, NULL),
(135, 'Cache Contents', 'MODULE_CONTENT_UPCOMING_PRODUCTS_CACHE', '1440', 'Number of minutes to keep the contents cached (0 = no cache)', 6, 0, NULL, '2016-06-28 15:02:37', NULL, NULL),
(136, 'Maximum Entries To Display', 'MODULE_CONTENT_FEATURE_PRODUCTS_MAX_DISPLAY', '9', 'Maximum number of new products to display', 6, 0, NULL, '2016-06-28 15:02:37', NULL, NULL),
(137, 'GZIP Compression Level', 'SERVICE_OUTPUT_COMPRESSION_GZIP_LEVEL', '5', 'Set the GZIP compression level to this value (0=min, 9=max).', 6, 0, NULL, '2016-06-28 15:02:38', NULL, 'osc_cfg_set_boolean_value(array(''0'', ''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9''))'),
(138, 'Force Cookie Usage', 'SERVICE_SESSION_FORCE_COOKIE_USAGE', '-1', 'Only start a session when cookies are enabled.', 6, 0, NULL, '2016-06-28 15:02:38', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(139, 'Block Search Engine Spiders', 'SERVICE_SESSION_BLOCK_SPIDERS', '-1', 'Block search engine spider robots from starting a session.', 6, 0, NULL, '2016-06-28 15:02:38', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(140, 'Check SSL Session ID', 'SERVICE_SESSION_CHECK_SSL_SESSION_ID', '-1', 'Check the SSL_SESSION_ID on every secure HTTPS page request.', 6, 0, NULL, '2016-06-28 15:02:38', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(141, 'Check User Agent', 'SERVICE_SESSION_CHECK_USER_AGENT', '-1', 'Check the browser user agent on every page request.', 6, 0, NULL, '2016-06-28 15:02:38', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(142, 'Check IP Address', 'SERVICE_SESSION_CHECK_IP_ADDRESS', '-1', 'Check the IP address on every page request.', 6, 0, NULL, '2016-06-28 15:02:38', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(143, 'Regenerate Session ID', 'SERVICE_SESSION_REGENERATE_ID', '-1', 'Regenerate the session ID when a customer logs on or creates an account (requires PHP >= 4.1).', 6, 0, NULL, '2016-06-28 15:02:38', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(144, 'Max Life Time', 'SERVICE_SESSION_MAX_LIFETIME', '15', 'The session will be expired after the number of minutes', 6, 0, NULL, '2016-06-28 15:02:38', NULL, NULL),
(145, 'Use Default Language Currency', 'USE_DEFAULT_LANGUAGE_CURRENCY', '-1', 'The default currency could be set under Definitions > Currencies or Definitions > Languages module. Set this configuration to True to use the default currency for each language ', 6, 0, NULL, '2016-06-28 15:02:38', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(146, 'Calculate Number Of Products In Each Category', 'SERVICES_CATEGORY_PATH_CALCULATE_PRODUCT_COUNT', '1', 'Recursively calculate how many products are in each category.', 6, 0, NULL, '2016-06-28 15:02:38', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(147, 'Detect Search Engine Spider Robots', 'SERVICE_WHOS_ONLINE_SPIDER_DETECTION', '1', 'Detect search engine spider robots (GoogleBot, Yahoo, etc).', 6, 0, NULL, '2016-06-28 15:02:38', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(148, 'Special Products', 'MAX_DISPLAY_SPECIAL_PRODUCTS', '9', 'Maximum number of products on special to display', 6, 0, NULL, '2016-06-28 15:02:38', NULL, NULL),
(149, 'New Reviews', 'MAX_DISPLAY_NEW_REVIEWS', '6', 'Maximum number of new reviews to display', 6, 0, NULL, '2016-06-28 15:02:38', NULL, NULL),
(150, 'Review Level', 'SERVICE_REVIEW_ENABLE_REVIEWS', '1', 'Customer level required to write a review.', 6, 0, NULL, '2016-06-28 15:02:38', NULL, 'osc_cfg_set_boolean_value(array(1, -1))'),
(151, 'Moderate Reviews', 'SERVICE_REVIEW_ENABLE_MODERATION', '-1', 'Should reviews be approved by store admin.', 6, 0, NULL, '2016-06-28 15:02:38', NULL, 'osc_cfg_set_boolean_value(array(1, -1))'),
(152, 'Display latest products', 'SERVICE_RECENTLY_VISITED_SHOW_PRODUCTS', '1', 'Display recently visited products.', 6, 0, NULL, '2016-06-28 15:02:38', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(153, 'Display product images', 'SERVICE_RECENTLY_VISITED_SHOW_PRODUCT_IMAGES', '1', 'Display the product image.', 6, 0, NULL, '2016-06-28 15:02:38', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(154, 'Display product prices', 'SERVICE_RECENTLY_VISITED_SHOW_PRODUCT_PRICES', '1', 'Display the products price.', 6, 0, NULL, '2016-06-28 15:02:38', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(155, 'Maximum products to show', 'SERVICE_RECENTLY_VISITED_MAX_PRODUCTS', '5', 'Maximum number of recently visited products to show', 6, 0, NULL, '2016-06-28 15:02:38', NULL, NULL),
(156, 'Display latest categories', 'SERVICE_RECENTLY_VISITED_SHOW_CATEGORIES', '1', 'Display recently visited categories.', 6, 0, NULL, '2016-06-28 15:02:38', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(157, 'Maximum categories to show', 'SERVICE_RECENTLY_VISITED_MAX_CATEGORIES', '3', 'Mazimum number of recently visited categories to show', 6, 0, NULL, '2016-06-28 15:02:38', NULL, NULL),
(158, 'Display latest searches', 'SERVICE_RECENTLY_VISITED_SHOW_SEARCHES', '1', 'Show recent searches.', 6, 0, NULL, '2016-06-28 15:02:38', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(159, 'Maximum searches to show', 'SERVICE_RECENTLY_VISITED_MAX_SEARCHES', '3', 'Mazimum number of recent searches to display', 6, 0, NULL, '2016-06-28 15:02:38', NULL, NULL),
(160, 'Service Modules', 'MODULE_SERVICES_INSTALLED', 'output_compression;session;language;currencies;core;whos_online;simple_counter;category_path;recently_visited;breadcrumb;specials;reviews', 'Installed services modules', 6, 0, NULL, '2016-06-28 15:02:38', NULL, NULL),
(161, 'Enable Cash On Delivery Module', 'MODULE_PAYMENT_COD_STATUS', '1', 'Do you want to accept Cash On Delivery payments?', 6, 0, NULL, '2016-06-28 15:02:38', 'osc_cfg_use_get_boolean_value', 'osc_cfg_set_boolean_value(array(1, -1))'),
(162, 'Payment Zone', 'MODULE_PAYMENT_COD_ZONE', '0', 'If a zone is selected, only enable this payment method for that zone.', 6, 0, NULL, '2016-06-28 15:02:38', 'osc_cfg_use_get_zone_class_title', 'osc_cfg_set_zone_classes_pull_down_menu'),
(163, 'Sort order of display.', 'MODULE_PAYMENT_COD_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2016-06-28 15:02:38', NULL, NULL),
(164, 'Set Order Status', 'MODULE_PAYMENT_COD_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', 6, 0, NULL, '2016-06-28 15:02:38', 'osc_cfg_use_get_order_status_title', 'osc_cfg_set_order_statuses_pull_down_menu'),
(165, 'Enable Flat Shipping', 'MODULE_SHIPPING_FLAT_STATUS', 'True', 'Do you want to offer flat rate shipping?', 6, 0, NULL, '2016-06-28 15:02:38', NULL, 'osc_cfg_set_boolean_value(array(''True'', ''False''))'),
(166, 'Shipping Cost', 'MODULE_SHIPPING_FLAT_COST', '5.00', 'The shipping cost for all orders using this shipping method.', 6, 0, NULL, '2016-06-28 15:02:38', NULL, NULL),
(167, 'Tax Class', 'MODULE_SHIPPING_FLAT_TAX_CLASS', '0', 'Use the following tax class on the shipping fee.', 6, 0, NULL, '2016-06-28 15:02:38', 'osc_cfg_use_get_tax_class_title', 'osc_cfg_set_tax_classes_pull_down_menu'),
(168, 'Shipping Zone', 'MODULE_SHIPPING_FLAT_ZONE', '0', 'If a zone is selected, only enable this shipping method for that zone.', 6, 0, NULL, '2016-06-28 15:02:38', 'osc_cfg_use_get_zone_class_title', 'osc_cfg_set_zone_classes_pull_down_menu'),
(169, 'Sort Order', 'MODULE_SHIPPING_FLAT_SORT_ORDER', '0', 'Sort order of display.', 6, 0, NULL, '2016-06-28 15:02:38', NULL, NULL),
(170, 'Display Sub-Total', 'MODULE_ORDER_TOTAL_SUBTOTAL_STATUS', 'true', 'Do you want to display the order sub-total cost?', 6, 1, NULL, '2016-06-28 15:02:38', NULL, 'osc_cfg_set_boolean_value(array(''true'', ''false''))'),
(171, 'Sort Order', 'MODULE_ORDER_TOTAL_SUBTOTAL_SORT_ORDER', '10', 'Sort order of display.', 6, 2, NULL, '2016-06-28 15:02:38', NULL, NULL),
(172, 'Display Shipping', 'MODULE_ORDER_TOTAL_SHIPPING_STATUS', 'true', 'Do you want to display the order shipping cost?', 6, 1, NULL, '2016-06-28 15:02:38', NULL, 'osc_cfg_set_boolean_value(array(''true'', ''false''))'),
(173, 'Sort Order', 'MODULE_ORDER_TOTAL_SHIPPING_SORT_ORDER', '20', 'Sort order of display.', 6, 2, NULL, '2016-06-28 15:02:38', NULL, NULL),
(174, 'Display Tax', 'MODULE_ORDER_TOTAL_TAX_STATUS', 'true', 'Do you want to display the order tax value?', 6, 1, NULL, '2016-06-28 15:02:38', NULL, 'osc_cfg_set_boolean_value(array(''true'', ''false''))'),
(175, 'Sort Order', 'MODULE_ORDER_TOTAL_TAX_SORT_ORDER', '50', 'Sort order of display.', 6, 2, NULL, '2016-06-28 15:02:38', NULL, NULL),
(176, 'Display Total', 'MODULE_ORDER_TOTAL_TOTAL_STATUS', 'true', 'Do you want to display the total order value?', 6, 1, NULL, '2016-06-28 15:02:38', NULL, 'osc_cfg_set_boolean_value(array(''true'', ''false''))'),
(177, 'Sort Order', 'MODULE_ORDER_TOTAL_TOTAL_SORT_ORDER', '80', 'Sort order of display.', 6, 2, NULL, '2016-06-28 15:02:38', NULL, NULL),
(178, 'Display Coupon', 'MODULE_ORDER_TOTAL_COUPON_STATUS', 'true', 'Do you want to enable coupon?', 6, 1, NULL, '2016-06-28 15:02:38', NULL, 'osc_cfg_set_boolean_value(array(''true'', ''false''))'),
(179, 'Sort Order', 'MODULE_ORDER_TOTAL_COUPON_SORT_ORDER', '40', 'Sort order of display.', 6, 2, NULL, '2016-06-28 15:02:38', NULL, NULL),
(180, 'Enable Gift Certificate', 'MODULE_ORDER_TOTAL_GIFT_CERTIFICATE_STATUS', 'true', 'Do you want to enable gift certificate?', 6, 1, NULL, '2016-06-28 15:02:38', NULL, 'osc_cfg_set_boolean_value(array(''true'', ''false''))'),
(181, 'Sort Order', 'MODULE_ORDER_TOTAL_GIFT_CERTIFICATE_SORT_ORDER', '70', 'Sort order of display.', 6, 2, NULL, '2016-06-28 15:02:38', NULL, NULL),
(182, 'Enable Store Credit', 'MODULE_ORDER_TOTAL_STORE_CREDIT_STATUS', 'true', 'Do you want to enable store credit?', 6, 1, NULL, '2016-06-28 15:02:38', NULL, 'osc_cfg_set_boolean_value(array(''true'', ''false''))'),
(183, 'Sort Order', 'MODULE_ORDER_TOTAL_STORE_CREDIT_SORT_ORDER', '65', 'Sort order of display.', 6, 2, NULL, '2016-06-28 15:02:38', NULL, NULL),
(184, 'Display Wrapping', 'MODULE_ORDER_TOTAL_GIFT_WRAPPING_STATUS', 'true', 'Do you want to enable gift wrapping?', 6, 1, NULL, '2016-06-28 15:02:38', NULL, 'osc_cfg_set_boolean_value(array(''true'', ''false''))'),
(185, 'Sort Order', 'MODULE_ORDER_TOTAL_GIFT_WRAPPING_SORT_ORDER', '25', 'Sort order of display.', 6, 2, NULL, '2016-06-28 15:02:38', NULL, NULL),
(186, 'Gift Wrapping Price', 'MODULE_ORDER_TOTAL_GIFT_WRAPPING_PRICE', '10', 'The price for the gift wrapping.', 6, 2, NULL, '2016-06-28 15:02:38', NULL, NULL),
(187, 'Gift Wrapping Tax', 'MODULE_ORDER_TOTAL_GIFT_WRAPPING_TAX', '0', 'Use the following tax class on the gift wrapping.', 6, 7, NULL, '2016-06-28 15:02:38', 'osc_cfg_use_get_tax_class_title', 'osc_cfg_set_tax_classes_pull_down_menu'),
(188, 'Interval (ms)', 'MODULE_CONTENT_SLIDE_SHOW_INTERVAL', '3000', 'slide show interval', 6, 0, NULL, '2016-06-28 15:03:16', NULL, NULL),
(189, 'Duration (ms)', 'MODULE_CONTENT_SLIDE_SHOW_DURATION', '1000', 'slide show duration', 6, 0, NULL, '2016-06-28 15:03:16', NULL, NULL),
(190, 'Image height (px)', 'MODULE_CONTENT_SLIDE_SHOW_HEIGHT', '210', 'Image height', 6, 0, NULL, '2016-06-28 15:03:16', NULL, NULL),
(191, 'Image width (px)', 'MODULE_CONTENT_SLIDE_SHOW_WIDTH', '960', 'Image width', 6, 0, NULL, '2016-06-28 15:03:16', NULL, NULL),
(192, 'Display Slide info', 'MODULE_CONTENT_SLIDE_SHOW_DISPLAY_INFO', 'False', 'Display Slide Info', 6, 0, NULL, '2016-06-28 15:03:16', NULL, 'osc_cfg_set_boolean_value(array(''True'', ''False''))'),
(193, 'Slide show mode [vertical, horizontal]', 'MODULE_CONTENT_SLIDE_SHOW_MODE', 'horizontal', 'Slideshow Mode', 6, 0, NULL, '2016-06-28 15:03:16', NULL, 'osc_cfg_set_boolean_value(array(''horizontal'', ''vertical''))'),
(194, 'Maximum List Size', 'BOX_ARTICLES_CATEGORIES_MAX_LIST', '10', 'Maximum amount of article categories to show in the listing', 6, 0, NULL, '2016-06-28 15:03:16', NULL, NULL),
(195, 'British Pounds', 'BOX_SHOP_BY_PRICE_GBP', '300;600;900;1200', 'British Pounds price interval (Price seperated by ";")', 6, 0, NULL, '2016-06-28 15:03:16', NULL, NULL),
(196, 'Euro', 'BOX_SHOP_BY_PRICE_EUR', '400;800;1200;1600', 'Euro price interval (Price seperated by ";")', 6, 0, NULL, '2016-06-28 15:03:16', NULL, NULL),
(197, 'US Dollar', 'BOX_SHOP_BY_PRICE_USD', '600;1200;1800;2400', 'US Dollar price interval (Price seperated by ";")', 6, 0, NULL, '2016-06-28 15:03:16', NULL, NULL),
(198, 'Cache Contents', 'BOX_POPULAR_SEARCH_TERM_CACHE', '60', 'Number of minutes to keep the contents cached (0 = no cache)', 6, 0, NULL, '2016-06-28 15:03:16', NULL, NULL),
(199, 'Homepage Page Title For Portuguese-Brazilian', 'HOME_PAGE_TITLE_PT_BR', 'Só Celulares', 'the page title for the front page', 6, 0, NULL, '2016-06-28 15:20:55', NULL, NULL),
(200, 'Homepage Meta Keywords For Portuguese-Brazilian', 'HOME_META_KEYWORD_PT_BR', 'celular, celulares, smartfones', 'the meta keywords for the front page', 6, 0, NULL, '2016-06-28 15:20:55', NULL, NULL),
(201, 'Homepage Meta Description For Portuguese-Brazilian', 'HOME_META_DESCRIPTION_PT_BR', 'e-commerce de celulares e smartfones', 'the meta description for the front page', 6, 0, NULL, '2016-06-28 15:20:55', NULL, NULL),
(202, 'Homepage Page Title For English', 'HOME_PAGE_TITLE_EN_US', '', 'the page title for the front page', 6, 0, NULL, '2016-06-28 15:20:55', NULL, NULL),
(203, 'Homepage Meta Keywords For English', 'HOME_META_KEYWORD_EN_US', '', 'the meta keywords for the front page', 6, 0, NULL, '2016-06-28 15:20:55', NULL, NULL),
(204, 'Homepage Meta Description For English', 'HOME_META_DESCRIPTION_EN_US', '', 'the meta description for the front page', 6, 0, NULL, '2016-06-28 15:20:55', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_configuration_group`
--

CREATE TABLE `soc_configuration_group` (
  `configuration_group_id` int(11) NOT NULL,
  `configuration_group_title` varchar(64) NOT NULL,
  `configuration_group_description` varchar(255) NOT NULL,
  `sort_order` int(5) DEFAULT NULL,
  `visible` int(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_configuration_group`
--

INSERT INTO `soc_configuration_group` (`configuration_group_id`, `configuration_group_title`, `configuration_group_description`, `sort_order`, `visible`) VALUES
(1, 'My Store', 'General information about my store', 1, 1),
(2, 'Minimum Values', 'The minimum values for functions / data', 2, 1),
(3, 'Maximum Values', 'The maximum values for functions / data', 3, 1),
(4, 'Images', 'Image parameters', 4, 1),
(5, 'Customer Details', 'Customer account configuration', 5, 1),
(6, 'Module Options', 'Hidden from configuration', 6, 0),
(7, 'Shipping/Packaging', 'Shipping options available at my store', 7, 1),
(8, 'Product Listing', 'Product Listing    configuration options', 8, 1),
(9, 'Stock', 'Stock configuration options', 9, 1),
(10, 'Product Details', 'Product info page configuration', 10, 1),
(11, 'Order Settings', 'Order Settings', 11, 1),
(12, 'E-Mail Options', 'General setting for E-Mail transport and HTML E-Mails', 12, 1),
(16, 'Regulations', 'Regulation options', 16, 1),
(17, 'Credit Cards', 'Credit card options', 17, 1),
(18, 'Program Locations', 'Locations to certain programs on the server.', 18, 1),
(19, 'Content Management System', 'Content Management System Configuration', 19, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_counter`
--

CREATE TABLE `soc_counter` (
  `startdate` datetime DEFAULT NULL,
  `counter` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_counter`
--

INSERT INTO `soc_counter` (`startdate`, `counter`) VALUES
('2016-06-28 20:13:56', 51);

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_countries`
--

CREATE TABLE `soc_countries` (
  `countries_id` int(11) NOT NULL,
  `countries_name` varchar(64) NOT NULL,
  `countries_iso_code_2` char(2) NOT NULL,
  `countries_iso_code_3` char(3) NOT NULL,
  `address_format` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_countries`
--

INSERT INTO `soc_countries` (`countries_id`, `countries_name`, `countries_iso_code_2`, `countries_iso_code_3`, `address_format`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', ''),
(2, 'Albania', 'AL', 'ALB', ''),
(3, 'Algeria', 'DZ', 'DZA', ''),
(4, 'American Samoa', 'AS', 'ASM', ''),
(5, 'Andorra', 'AD', 'AND', ''),
(6, 'Angola', 'AO', 'AGO', ''),
(7, 'Anguilla', 'AI', 'AIA', ''),
(8, 'Antarctica', 'AQ', 'ATA', ''),
(9, 'Antigua and Barbuda', 'AG', 'ATG', ''),
(10, 'Argentina', 'AR', 'ARG', ':name\n:street_address\n:postcode :city\n:country'),
(11, 'Armenia', 'AM', 'ARM', ''),
(12, 'Aruba', 'AW', 'ABW', ''),
(13, 'Australia', 'AU', 'AUS', ':name\n:street_address\n:suburb :state_code :postcode\n:country'),
(14, 'Austria', 'AT', 'AUT', ':name\n:street_address\nA-:postcode :city\n:country'),
(15, 'Azerbaijan', 'AZ', 'AZE', ''),
(16, 'Bahamas', 'BS', 'BHS', ''),
(17, 'Bahrain', 'BH', 'BHR', ''),
(18, 'Bangladesh', 'BD', 'BGD', ''),
(19, 'Barbados', 'BB', 'BRB', ''),
(20, 'Belarus', 'BY', 'BLR', ''),
(21, 'Belgium', 'BE', 'BEL', ':name\n:street_address\nB-:postcode :city\n:country'),
(22, 'Belize', 'BZ', 'BLZ', ''),
(23, 'Benin', 'BJ', 'BEN', ''),
(24, 'Bermuda', 'BM', 'BMU', ''),
(25, 'Bhutan', 'BT', 'BTN', ''),
(26, 'Bolivia', 'BO', 'BOL', ''),
(27, 'Bosnia and Herzegowina', 'BA', 'BIH', ''),
(28, 'Botswana', 'BW', 'BWA', ''),
(29, 'Bouvet Island', 'BV', 'BVT', ''),
(30, 'Brazil', 'BR', 'BRA', ':name\n:street_address\n:state\n:postcode\n:country'),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', ''),
(32, 'Brunei Darussalam', 'BN', 'BRN', ''),
(33, 'Bulgaria', 'BG', 'BGR', ''),
(34, 'Burkina Faso', 'BF', 'BFA', ''),
(35, 'Burundi', 'BI', 'BDI', ''),
(36, 'Cambodia', 'KH', 'KHM', ''),
(37, 'Cameroon', 'CM', 'CMR', ''),
(38, 'Canada', 'CA', 'CAN', ':name\n:street_address\n:city :state_code :postcode\n:country'),
(39, 'Cape Verde', 'CV', 'CPV', ''),
(40, 'Cayman Islands', 'KY', 'CYM', ''),
(41, 'Central African Republic', 'CF', 'CAF', ''),
(42, 'Chad', 'TD', 'TCD', ''),
(43, 'Chile', 'CL', 'CHL', ':name\n:street_address\n:city\n:country'),
(44, 'China', 'CN', 'CHN', ':name\n:street_address\n:postcode :city\n:country'),
(45, 'Christmas Island', 'CX', 'CXR', ''),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', ''),
(47, 'Colombia', 'CO', 'COL', ''),
(48, 'Comoros', 'KM', 'COM', ''),
(49, 'Congo', 'CG', 'COG', ''),
(50, 'Cook Islands', 'CK', 'COK', ''),
(51, 'Costa Rica', 'CR', 'CRI', ''),
(52, 'Cote D''Ivoire', 'CI', 'CIV', ''),
(53, 'Croatia', 'HR', 'HRV', ''),
(54, 'Cuba', 'CU', 'CUB', ''),
(55, 'Cyprus', 'CY', 'CYP', ''),
(56, 'Czech Republic', 'CZ', 'CZE', ''),
(57, 'Denmark', 'DK', 'DNK', ':name\n:street_address\nDK-:postcode :city\n:country'),
(58, 'Djibouti', 'DJ', 'DJI', ''),
(59, 'Dominica', 'DM', 'DMA', ''),
(60, 'Dominican Republic', 'DO', 'DOM', ''),
(61, 'East Timor', 'TP', 'TMP', ''),
(62, 'Ecuador', 'EC', 'ECU', ''),
(63, 'Egypt', 'EG', 'EGY', ''),
(64, 'El Salvador', 'SV', 'SLV', ''),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', ''),
(66, 'Eritrea', 'ER', 'ERI', ''),
(67, 'Estonia', 'EE', 'EST', ''),
(68, 'Ethiopia', 'ET', 'ETH', ''),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', ''),
(70, 'Faroe Islands', 'FO', 'FRO', ''),
(71, 'Fiji', 'FJ', 'FJI', ''),
(72, 'Finland', 'FI', 'FIN', ':name\n:street_address\nFIN-:postcode :city\n:country'),
(73, 'France', 'FR', 'FRA', ':name\n:street_address\n:postcode :city\n:country'),
(74, 'France, Metropolitan', 'FX', 'FXX', ':name\n:street_address\n:postcode :city\n:country'),
(75, 'French Guiana', 'GF', 'GUF', ':name\n:street_address\n:postcode :city\n:country'),
(76, 'French Polynesia', 'PF', 'PYF', ':name\n:street_address\n:postcode :city\n:country'),
(77, 'French Southern Territories', 'TF', 'ATF', ':name\n:street_address\n:postcode :city\n:country'),
(78, 'Gabon', 'GA', 'GAB', ''),
(79, 'Gambia', 'GM', 'GMB', ''),
(80, 'Georgia', 'GE', 'GEO', ''),
(81, 'Germany', 'DE', 'DEU', ':name\n:street_address\nD-:postcode :city\n:country'),
(82, 'Ghana', 'GH', 'GHA', ''),
(83, 'Gibraltar', 'GI', 'GIB', ''),
(84, 'Greece', 'GR', 'GRC', ''),
(85, 'Greenland', 'GL', 'GRL', ':name\n:street_address\nDK-:postcode :city\n:country'),
(86, 'Grenada', 'GD', 'GRD', ''),
(87, 'Guadeloupe', 'GP', 'GLP', ''),
(88, 'Guam', 'GU', 'GUM', ''),
(89, 'Guatemala', 'GT', 'GTM', ''),
(90, 'Guinea', 'GN', 'GIN', ''),
(91, 'Guinea-Bissau', 'GW', 'GNB', ''),
(92, 'Guyana', 'GY', 'GUY', ''),
(93, 'Haiti', 'HT', 'HTI', ''),
(94, 'Heard and McDonald Islands', 'HM', 'HMD', ''),
(95, 'Honduras', 'HN', 'HND', ''),
(96, 'Hong Kong', 'HK', 'HKG', ':name\n:street_address\n:city\n:country'),
(97, 'Hungary', 'HU', 'HUN', ''),
(98, 'Iceland', 'IS', 'ISL', ':name\n:street_address\nIS:postcode :city\n:country'),
(99, 'India', 'IN', 'IND', ':name\n:street_address\n:city-:postcode\n:country'),
(100, 'Indonesia', 'ID', 'IDN', ':name\n:street_address\n:city :postcode\n:country'),
(101, 'Iran', 'IR', 'IRN', ''),
(102, 'Iraq', 'IQ', 'IRQ', ''),
(103, 'Ireland', 'IE', 'IRL', ':name\n:street_address\nIE-:city\n:country'),
(104, 'Israel', 'IL', 'ISR', ':name\n:street_address\n:postcode :city\n:country'),
(105, 'Italy', 'IT', 'ITA', ':name\n:street_address\n:postcode-:city :state_code\n:country'),
(106, 'Jamaica', 'JM', 'JAM', ''),
(107, 'Japan', 'JP', 'JPN', ':name\n:street_address, :suburb\n:city :postcode\n:country'),
(108, 'Jordan', 'JO', 'JOR', ''),
(109, 'Kazakhstan', 'KZ', 'KAZ', ''),
(110, 'Kenya', 'KE', 'KEN', ''),
(111, 'Kiribati', 'KI', 'KIR', ''),
(112, 'Korea, North', 'KP', 'PRK', ''),
(113, 'Korea, South', 'KR', 'KOR', ''),
(114, 'Kuwait', 'KW', 'KWT', ''),
(115, 'Kyrgyzstan', 'KG', 'KGZ', ''),
(116, 'Laos', 'LA', 'LAO', ''),
(117, 'Latvia', 'LV', 'LVA', ''),
(118, 'Lebanon', 'LB', 'LBN', ''),
(119, 'Lesotho', 'LS', 'LSO', ''),
(120, 'Liberia', 'LR', 'LBR', ''),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', ''),
(122, 'Liechtenstein', 'LI', 'LIE', ''),
(123, 'Lithuania', 'LT', 'LTU', ''),
(124, 'Luxembourg', 'LU', 'LUX', ':name\n:street_address\nL-:postcode :city\n:country'),
(125, 'Macau', 'MO', 'MAC', ''),
(126, 'Macedonia', 'MK', 'MKD', ''),
(127, 'Madagascar', 'MG', 'MDG', ''),
(128, 'Malawi', 'MW', 'MWI', ''),
(129, 'Malaysia', 'MY', 'MYS', ''),
(130, 'Maldives', 'MV', 'MDV', ''),
(131, 'Mali', 'ML', 'MLI', ''),
(132, 'Malta', 'MT', 'MLT', ''),
(133, 'Marshall Islands', 'MH', 'MHL', ''),
(134, 'Martinique', 'MQ', 'MTQ', ''),
(135, 'Mauritania', 'MR', 'MRT', ''),
(136, 'Mauritius', 'MU', 'MUS', ''),
(137, 'Mayotte', 'YT', 'MYT', ''),
(138, 'Mexico', 'MX', 'MEX', ':name\n:street_address\n:postcode :city, :state_code\n:country'),
(139, 'Micronesia', 'FM', 'FSM', ''),
(140, 'Moldova', 'MD', 'MDA', ''),
(141, 'Monaco', 'MC', 'MCO', ''),
(142, 'Mongolia', 'MN', 'MNG', ''),
(143, 'Montserrat', 'MS', 'MSR', ''),
(144, 'Morocco', 'MA', 'MAR', ''),
(145, 'Mozambique', 'MZ', 'MOZ', ''),
(146, 'Myanmar', 'MM', 'MMR', ''),
(147, 'Namibia', 'NA', 'NAM', ''),
(148, 'Nauru', 'NR', 'NRU', ''),
(149, 'Nepal', 'NP', 'NPL', ''),
(150, 'Netherlands', 'NL', 'NLD', ':name\n:street_address\n:postcode :city\n:country'),
(151, 'Netherlands Antilles', 'AN', 'ANT', ':name\n:street_address\n:postcode :city\n:country'),
(152, 'New Caledonia', 'NC', 'NCL', ''),
(153, 'New Zealand', 'NZ', 'NZL', ':name\n:street_address\n:suburb\n:city :postcode\n:country'),
(154, 'Nicaragua', 'NI', 'NIC', ''),
(155, 'Niger', 'NE', 'NER', ''),
(156, 'Nigeria', 'NG', 'NGA', ''),
(157, 'Niue', 'NU', 'NIU', ''),
(158, 'Norfolk Island', 'NF', 'NFK', ''),
(159, 'Northern Mariana Islands', 'MP', 'MNP', ''),
(160, 'Norway', 'NO', 'NOR', ':name\n:street_address\nNO-:postcode :city\n:country'),
(161, 'Oman', 'OM', 'OMN', ''),
(162, 'Pakistan', 'PK', 'PAK', ''),
(163, 'Palau', 'PW', 'PLW', ''),
(164, 'Panama', 'PA', 'PAN', ''),
(165, 'Papua New Guinea', 'PG', 'PNG', ''),
(166, 'Paraguay', 'PY', 'PRY', ''),
(167, 'Peru', 'PE', 'PER', ''),
(168, 'Philippines', 'PH', 'PHL', ''),
(169, 'Pitcairn', 'PN', 'PCN', ''),
(170, 'Poland', 'PL', 'POL', ':name\n:street_address\n:postcode :city\n:country'),
(171, 'Portugal', 'PT', 'PRT', ':name\n:street_address\n:postcode :city\n:country'),
(172, 'Puerto Rico', 'PR', 'PRI', ''),
(173, 'Qatar', 'QA', 'QAT', ''),
(174, 'Reunion', 'RE', 'REU', ''),
(175, 'Romania', 'RO', 'ROM', ''),
(176, 'Russia', 'RU', 'RUS', ':name\n:street_address\n:postcode :city\n:country'),
(177, 'Rwanda', 'RW', 'RWA', ''),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', ''),
(179, 'Saint Lucia', 'LC', 'LCA', ''),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', ''),
(181, 'Samoa', 'WS', 'WSM', ''),
(182, 'San Marino', 'SM', 'SMR', ''),
(183, 'Sao Tome and Principe', 'ST', 'STP', ''),
(184, 'Saudi Arabia', 'SA', 'SAU', ''),
(185, 'Senegal', 'SN', 'SEN', ''),
(186, 'Seychelles', 'SC', 'SYC', ''),
(187, 'Sierra Leone', 'SL', 'SLE', ''),
(188, 'Singapore', 'SG', 'SGP', ':name\n:street_address\n:city :postcode\n:country'),
(189, 'Slovakia', 'SK', 'SVK', ''),
(190, 'Slovenia', 'SI', 'SVN', ''),
(191, 'Solomon Islands', 'SB', 'SLB', ''),
(192, 'Somalia', 'SO', 'SOM', ''),
(193, 'South Africa', 'ZA', 'ZAF', ':name\n:street_address\n:suburb\n:city\n:postcode :country'),
(194, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', ''),
(195, 'Spain', 'ES', 'ESP', ':name\n:street_address\n:postcode :city\n:country'),
(196, 'Sri Lanka', 'LK', 'LKA', ''),
(197, 'St. Helena', 'SH', 'SHN', ''),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', ''),
(199, 'Sudan', 'SD', 'SDN', ''),
(200, 'Suriname', 'SR', 'SUR', ''),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', ''),
(202, 'Swaziland', 'SZ', 'SWZ', ''),
(203, 'Sweden', 'SE', 'SWE', ':name\n:street_address\n:postcode :city\n:country'),
(204, 'Switzerland', 'CH', 'CHE', ':name\n:street_address\n:postcode :city\n:country'),
(205, 'Syrian Arab Republic', 'SY', 'SYR', ''),
(206, 'Taiwan', 'TW', 'TWN', ':name\n:street_address\n:city :postcode\n:country'),
(207, 'Tajikistan', 'TJ', 'TJK', ''),
(208, 'Tanzania', 'TZ', 'TZA', ''),
(209, 'Thailand', 'TH', 'THA', ''),
(210, 'Togo', 'TG', 'TGO', ''),
(211, 'Tokelau', 'TK', 'TKL', ''),
(212, 'Tonga', 'TO', 'TON', ''),
(213, 'Trinidad and Tobago', 'TT', 'TTO', ''),
(214, 'Tunisia', 'TN', 'TUN', ''),
(215, 'Turkey', 'TR', 'TUR', ''),
(216, 'Turkmenistan', 'TM', 'TKM', ''),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', ''),
(218, 'Tuvalu', 'TV', 'TUV', ''),
(219, 'Uganda', 'UG', 'UGA', ''),
(220, 'Ukraine', 'UA', 'UKR', ''),
(221, 'United Arab Emirates', 'AE', 'ARE', ''),
(222, 'United Kingdom', 'GB', 'GBR', ':name\n:street_address\n:city\n:postcode\n:country'),
(223, 'United States of America', 'US', 'USA', ':name\n:street_address\n:city :state_code :postcode\n:country'),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', ''),
(225, 'Uruguay', 'UY', 'URY', ''),
(226, 'Uzbekistan', 'UZ', 'UZB', ''),
(227, 'Vanuatu', 'VU', 'VUT', ''),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', ''),
(229, 'Venezuela', 'VE', 'VEN', ''),
(230, 'Vietnam', 'VN', 'VNM', ''),
(231, 'Virgin Islands (British)', 'VG', 'VGB', ''),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', ''),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', ''),
(234, 'Western Sahara', 'EH', 'ESH', ''),
(235, 'Yemen', 'YE', 'YEM', ''),
(236, 'Yugoslavia', 'YU', 'YUG', ''),
(237, 'Zaire', 'ZR', 'ZAR', ''),
(238, 'Zambia', 'ZM', 'ZMB', ''),
(239, 'Zimbabwe', 'ZW', 'ZWE', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_coupons`
--

CREATE TABLE `soc_coupons` (
  `coupons_id` int(11) NOT NULL,
  `coupons_type` int(1) NOT NULL,
  `coupons_status` tinyint(1) NOT NULL,
  `coupons_include_tax` tinyint(1) NOT NULL,
  `coupons_include_shipping` tinyint(1) NOT NULL,
  `coupons_code` varchar(32) NOT NULL,
  `coupons_amount` decimal(8,4) NOT NULL,
  `coupons_minimum_order` decimal(8,4) NOT NULL,
  `uses_per_coupon` int(11) NOT NULL,
  `uses_per_customer` int(11) NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `expires_date` datetime DEFAULT NULL,
  `coupons_date_created` datetime DEFAULT NULL,
  `coupons_date_modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_coupons_description`
--

CREATE TABLE `soc_coupons_description` (
  `coupons_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `coupons_name` varchar(32) NOT NULL,
  `coupons_description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_coupons_redeem_history`
--

CREATE TABLE `soc_coupons_redeem_history` (
  `coupons_redeem_history_id` int(11) NOT NULL,
  `coupons_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `redeem_amount` decimal(15,4) NOT NULL,
  `redeem_date` datetime DEFAULT NULL,
  `redeem_ip_address` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_coupons_to_categories`
--

CREATE TABLE `soc_coupons_to_categories` (
  `coupons_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_coupons_to_products`
--

CREATE TABLE `soc_coupons_to_products` (
  `coupons_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_credit_cards`
--

CREATE TABLE `soc_credit_cards` (
  `id` int(11) NOT NULL,
  `credit_card_name` varchar(32) NOT NULL,
  `pattern` varchar(64) NOT NULL,
  `credit_card_status` char(1) NOT NULL,
  `sort_order` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_credit_cards`
--

INSERT INTO `soc_credit_cards` (`id`, `credit_card_name`, `pattern`, `credit_card_status`, `sort_order`) VALUES
(1, 'American Express', '/^(34|37)\\d{13}$/', '0', 0),
(2, 'Diners Club', '/^(30|36|38)\\d{12}$/', '0', 0),
(3, 'JCB', '/^((2131|1800)\\d{11}|3[0135]\\d{14})$/', '0', 0),
(4, 'MasterCard', '/^5[1-5]\\d{14}$/', '1', 0),
(5, 'Visa', '/^4\\d{12}(\\d{3})?$/', '1', 0),
(6, 'Discover Card', '/^6011\\d{12}$/', '0', 0),
(7, 'Solo', '/^(63|67)\\d{14}(\\d{2,3})?$/', '0', 0),
(8, 'Switch', '/^(49|56|63|67)\\d{14}(\\d{2,3})?$/', '0', 0),
(9, 'Australian Bankcard', '/^5610\\d{12}$/', '0', 0),
(10, 'enRoute', '/^(2014|2149)\\d{11}$/', '0', 0),
(11, 'Laser', '/^6304\\d{12}(\\d{2,3})?$/', '0', 0),
(12, 'Maestro', '/^(50|56|57|58|6)/', '0', 0),
(13, 'Saferpay Test Card', '/^9451123100000004$/', '0', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_currencies`
--

CREATE TABLE `soc_currencies` (
  `currencies_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` char(3) NOT NULL,
  `symbol_left` varchar(12) DEFAULT NULL,
  `symbol_right` varchar(12) DEFAULT NULL,
  `decimal_places` char(1) DEFAULT NULL,
  `value` float(13,8) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_currencies`
--

INSERT INTO `soc_currencies` (`currencies_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_places`, `value`, `last_updated`) VALUES
(4, 'Real', 'BRL', 'R$', '', '2', 1.00000000, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_customers`
--

CREATE TABLE `soc_customers` (
  `customers_id` int(11) NOT NULL,
  `customers_groups_id` int(11) DEFAULT NULL,
  `customers_gender` char(1) DEFAULT NULL,
  `customers_firstname` varchar(32) NOT NULL,
  `customers_lastname` varchar(32) NOT NULL,
  `customers_dob` datetime DEFAULT NULL,
  `customers_email_address` varchar(96) NOT NULL,
  `customers_default_address_id` int(11) DEFAULT NULL,
  `customers_telephone` varchar(32) DEFAULT NULL,
  `customers_fax` varchar(32) DEFAULT NULL,
  `customers_password` varchar(40) DEFAULT NULL,
  `customers_newsletter` char(1) DEFAULT NULL,
  `customers_status` int(1) DEFAULT '0',
  `customers_ip_address` varchar(15) DEFAULT NULL,
  `customers_credits` decimal(15,4) DEFAULT '0.0000',
  `date_last_logon` datetime DEFAULT NULL,
  `number_of_logons` int(5) DEFAULT NULL,
  `date_account_created` datetime DEFAULT NULL,
  `date_account_last_modified` datetime DEFAULT NULL,
  `global_product_notifications` int(1) DEFAULT '0',
  `abandoned_cart_last_contact_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_customers_basket`
--

CREATE TABLE `soc_customers_basket` (
  `customers_basket_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `products_id` tinytext NOT NULL,
  `customers_basket_quantity` int(11) NOT NULL,
  `gift_certificates_data` text,
  `customizations` text,
  `final_price` decimal(15,4) NOT NULL,
  `customers_basket_date_added` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_customers_credits_history`
--

CREATE TABLE `soc_customers_credits_history` (
  `customers_credits_history_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `orders_id` int(11) DEFAULT NULL,
  `action_type` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `comments` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_customers_groups`
--

CREATE TABLE `soc_customers_groups` (
  `customers_groups_id` int(11) NOT NULL,
  `customers_groups_discount` int(11) NOT NULL,
  `is_default` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_customers_groups_description`
--

CREATE TABLE `soc_customers_groups_description` (
  `customers_groups_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customers_groups_name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_customers_ratings`
--

CREATE TABLE `soc_customers_ratings` (
  `customers_ratings_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `reviews_id` int(11) NOT NULL,
  `ratings_id` int(11) NOT NULL,
  `ratings_value` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_customization_fields`
--

CREATE TABLE `soc_customization_fields` (
  `customization_fields_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `is_required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_customization_fields_description`
--

CREATE TABLE `soc_customization_fields_description` (
  `customization_fields_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_departments`
--

CREATE TABLE `soc_departments` (
  `departments_id` int(11) NOT NULL,
  `departments_email_address` varchar(96) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_departments_description`
--

CREATE TABLE `soc_departments_description` (
  `departments_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `departments_title` varchar(64) NOT NULL DEFAULT '',
  `departments_description` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_email_accounts`
--

CREATE TABLE `soc_email_accounts` (
  `accounts_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `accounts_name` varchar(100) NOT NULL,
  `accounts_email` varchar(100) NOT NULL,
  `signature` text,
  `type` varchar(4) DEFAULT NULL,
  `host` varchar(100) DEFAULT NULL,
  `port` int(11) NOT NULL,
  `use_ssl` tinyint(1) NOT NULL DEFAULT '0',
  `novalidate_cert` tinyint(1) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL,
  `password` varchar(64) NOT NULL,
  `mbroot` varchar(30) DEFAULT NULL,
  `sent` varchar(100) DEFAULT NULL,
  `drafts` varchar(100) DEFAULT NULL,
  `trash` varchar(100) DEFAULT NULL,
  `spam` varchar(100) DEFAULT NULL,
  `save_copy_on_server` tinyint(1) DEFAULT '0',
  `examine_headers` tinyint(1) NOT NULL DEFAULT '0',
  `use_system_mailer` tinyint(1) NOT NULL DEFAULT '0',
  `smtp_host` varchar(100) DEFAULT NULL,
  `smtp_port` int(11) DEFAULT NULL,
  `smtp_encryption` char(3) DEFAULT NULL,
  `smtp_username` varchar(50) DEFAULT NULL,
  `smtp_password` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_email_folders`
--

CREATE TABLE `soc_email_folders` (
  `folders_id` int(11) NOT NULL,
  `accounts_id` int(11) NOT NULL,
  `folders_name` varchar(100) DEFAULT NULL,
  `folders_flag` int(4) NOT NULL DEFAULT '0',
  `subscribed` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `delimiter` char(1) NOT NULL DEFAULT '',
  `attributes` int(11) NOT NULL DEFAULT '0',
  `sort_order` tinyint(4) NOT NULL DEFAULT '0',
  `auto_check` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_email_messages`
--

CREATE TABLE `soc_email_messages` (
  `id` int(11) NOT NULL,
  `accounts_id` int(11) NOT NULL,
  `folders_id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `messages_id` varchar(255) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `from_address` varchar(100) DEFAULT NULL,
  `to_address` varchar(100) DEFAULT NULL,
  `reply_to` varchar(100) DEFAULT NULL,
  `udate` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `attachments` tinyint(1) NOT NULL,
  `priority` tinyint(1) NOT NULL,
  `new` tinyint(1) NOT NULL,
  `content_type` varchar(100) NOT NULL,
  `content_transfer_encoding` varchar(100) NOT NULL,
  `fetch_timestamp` int(11) NOT NULL,
  `messages_flag` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_email_templates`
--

CREATE TABLE `soc_email_templates` (
  `email_templates_id` int(11) NOT NULL,
  `email_templates_name` varchar(100) NOT NULL,
  `email_templates_status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_email_templates`
--

INSERT INTO `soc_email_templates` (`email_templates_id`, `email_templates_name`, `email_templates_status`) VALUES
(1, 'create_account_email', 1),
(2, 'password_forgotten', 1),
(3, 'tell_a_friend', 1),
(4, 'new_order_created', 1),
(5, 'admin_order_status_updated', 1),
(6, 'admin_create_account_email', 1),
(7, 'abandoned_cart_inquiry', 1),
(8, 'send_coupon', 1),
(9, 'admin_customer_credits_change_notification', 1),
(10, 'share_wishlist', 1),
(11, 'active_gift_certificate', 1),
(12, 'active_downloadable_product', 1),
(13, 'admin_create_order_credit_slip', 1),
(14, 'admin_create_order_store_credit', 1),
(15, 'admin_password_forgotten', 1),
(16, 'out_of_stock_alerts', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_email_templates_description`
--

CREATE TABLE `soc_email_templates_description` (
  `email_templates_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `email_title` varchar(255) NOT NULL,
  `email_content` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_email_templates_description`
--

INSERT INTO `soc_email_templates_description` (`email_templates_id`, `language_id`, `email_title`, `email_content`) VALUES
(1, 2, 'Bem vindo à Loja Virtual %%store_name%%', '<p>%%greeting_text%%</p><br /><br /><p>Seja bem vindo à loja virtual %%store_name%%!</p><br /><br /><p>Você pode usufruir de vários serviços que oferecemos. Alguns deste serviços incluem:</p><br /><br /><ul><br /><li>Carrinho Permanente - Qualquer produto adicionado ao seu Carrinho Online permanecerá lá até que você remova-o ou compre-o.</li><br /><li>Livro de Endereços - Você poderá cadastrar outros endereços para entrega de seus produtos! É perfeito para enviar produtos (presentes) a pessoas especiais, aniversariantes ou em ocasiões especiais.</li><br /><li>Histórico dos Pedidos - Visualize o histórico dos produtos que você já comprou conosco.</li><br /><li>Opiniões sobre Produtos - Compartilhe sua opinião sobre produtos com outros clientes.</li><br /></ul><br /><p>Qualquer dúvida ou solicitação de outros serviços, por favor envie-nos um e-mail: %%store_owner_email_address%%.</p><br /><br />Aviso: Este endereço de email nos foi fornecido por um de nossos clientes. Se não foi você, e se não deseja ser um de nossos clientes, por favor envie um email para %%store_owner_email_address%%.'),
(2, 2, 'Lembrete de senha', 'Uma nova senha foi solicitada de %%customer_ip_address%%.<br /><br />Sua nova senha para a loja virtual %%store_name%% é: <br /> <br /> %%customer_password%%<br /><br />Em caso de dúvidas ou se precisar de ajuda, entre em contato pelo e-mail: %%store_owner_email_address%%.<br /><br />Aviso: Se você não solicitou uma nova senha, por favor, notifique o proprietário da loja assim que possível.'),
(3, 2, 'Seu amigo %%from_name%% lhe recomendou este incrível produto da loja virtual %%store_name%%.', 'Olá %%to_name%%!<br /><br />Seu amigo, %%from_name%%, achou que você poderia se interessar pelo produto %%product_name%% da loja %%store_name%%<br /><br />%%message%%<br /><br />Para ver este produto clique no link abaixo ou copie e cole o link no seu navegador: <br /><br />%%product_link%%<br /><br />Saudações,<br /><br />%%store_name%%<br />%%store_address%%'),
(4, 2, 'Processar Pedido', 'TomatoCart<br />----------------------------------------------------<br />Número do Pedido: %%order_number%%<br />Detalhes da Fatura: %%invoice_link%%<br />Data da Compra: %%date_ordered%%<br /><br />%%order_detais%%<br /><br />Endereço de Entrega<br />----------------------------------------------------<br />%%delivery_address%%<br /><br />Endereço de Cobrança<br />----------------------------------------------------<br />%%billing_address%%<br /><br />Estado do Pedido: %%order_status%%<br />----------------------------------------------------<br />%%order_comments%%'),
(5, 2, 'Atualização de Pedido (%%store_name%%)', '%%store_name%%<br />------------------------------------------------------<br />Número do Pedido: %%order_number%%<br />Detalhes da Fatura: %%invoice_link%%<br />Data do Pedido: %%date_ordered%%<br /><br />Comentário no Pedido<br />------------------------------------------------------<br />%%order_comment%%<br /><br />Estado do Pedido<br />------------------------------------------------------<br />Novo Estado: %%new_order_status%%<br /><br />Por favor, responda a este E-Mail caso tenha alguma dúvida relativa a este pedido.'),
(6, 2, 'Bem Vindo à Loja Virtual %%store_name%%', '%%greeting_text%%<br /><br />Seja bem vindo à loja virtual %%store_name%%!<br /><br />Você pode usufruir de vários serviços que oferecemos a você. Alguns deste serviços incluem:<br /><br />* Carrinho Permanente - Qualquer produto adicionado ao seu Carrinho Online permanecerá lá até que você remova-o ou compre-o.<br />* Livro de Endereços - Você poderá cadastrar outros endereços para entrega de seus produtos! É perfeito para enviar produtos (presentes) a pessoas especiais, aniversariantes ou em ocasiões especiais.<br />* Histórico dos Pedidos - Visualize o histórico dos produtos que você já comprou conosco.<br />* Opiniões sobre Produtos - Compartilhe sua opinião sobre produtos com outros clientes.<br /><br />Qualquer dúvida ou solicitação de outros serviços, por favor, envie-nos um e-mail: %%store_owner_email_address%%.<br /><br />Aviso: Esta conta foi criada para você pelo administrador da Loja Virtual. <br /><br />Por favor use seu e-mail como login e a senha, a seguir, para logar em sua conta. Sua senha é : %%password%%'),
(7, 2, 'Nós da %%store_name%% gostaríamos de saber...', '%%greeting_text%%<br /><br />Percebemos que, durante uma visita a nossa loja você colocou o(s) seguinte(s) produtos(s) no seu carrinho de compras, mas não finalizou o pedido. <br /><br />Conteúdo do carrinho de Compras:<br /><br />%%shopping_cart_contents%%<br />  <br />Gostaríamos de saber o que aconteceu. Se houve algum motivo que fez você decidir não realizar a compra neste momento. Se você quiser nos contar e puder nos deixar saber se houve algum problema ou contratempo, ficaríamos contentes.<br /><br /> Também queremos saber a sua opinião e de outros clientes a respeito de como podemos ajudar a melhorar a experiência de comprar na Loja Virtual %%store_name%% .<br /><br />ATENÇÃO:<br /><br />Se você acha que completou a sua compra e está estranhando por que o pedido não foi entregue, este e-mail é uma indicação de que seu pedido não foi concluído corretamente, e que, portanto, não foi cobrado! Por favor, retorne à loja virtual %%store_name%% para finalizar seu pedido. <br /><br />Pedimos desculpas caso você já tenha completado a sua compra, nós tentamos não enviar mensagens nestes casos, mas mesmo assim é difícil de sabermos, dependendo das circunstâncias individuais.<br /><br />Novamente, obrigado pelo seu tempo destinado a nos atender e considere a possibilidade de ajudar a melhorar nosso atendimento na loja virtual %%store_name%%.<br /><br />%%addtional_message%%<br /><br />Cordialmente,<br />%%store_name%%'),
(8, 2, 'Você recebeu um Cupom de Desconto da loja virtual  %%store_name%%', '%%greeting_text%%<br /><br />Você recebeu um Cupom de Descontos da loja virtual  %%store_name%%. Você poderá usar este cupom durante a finalização da sua compra. Basta informar o código do Cupom de Descontos e clicar no botão.<br /><br />O código do Cupom de Descontos é: %%coupon_code%%<br /><br />Não perca este código de Cupom de Desconto, certifique-se de mantê-lo em segurança para que você possa se beneficiar desta oferta especial.<br /><br />%%addtional_message%%'),
(9, 2, 'Você recebeu, do administrador, Crédito na Loja', '%%greeting_text%% <p> O administrador atualizou o seu crédito na loja. Neste momento você possui %%customer_credits%% de créditos na sua conta. </p>'),
(10, 2, 'O(A) seu(sua) amigo(a) %%from_name%% gostaria de lhe mostrar a lista de presentes que ele(a) agradou na loja virtual %%store_name%%', 'Olái!<br /><br /> Seu(sua) amigo(a) %%from_name%% gostaria de compartilhar sua lista de presentes da loja virtual %%store_name%%.<br /><br />%%message%%<br /><br />Para visualizar a lista de presentes, clique no link abaixo ou então copie e cole o link no seu navegador:<br /><br />%%wishlist_url%%<br /><br />Saudações,<br /><br />%%store_name%% <br />%%store_address%%'),
(11, 2, 'Você recebeu um vale presente de %%sender_name%%', 'Prezado(a) %%recipient_name%%,<br /><br />Você recebeu um vale presente enviado por %%sender_name%%. Você pode usar este Vale Presentes na hora finalizar a sua compra. Basta digitar o código do Vale Presente no local apropriado e clicar no botão correspondente.<br /><br />O valor total do seu Vale Presente é %%gift_certificate_amount%% e o código deste vale presente é: %%gift_certificate_code%%<br /><br />Não perca o código do Vale Presente e certifique-se de mantê-lo seguro.<br /><br /><b>%%gift_certificate_message%%</b><br /><br />Saudações,<br /><br />%%store_name%% <br />%%store_owner_email_address%%'),
(12, 2, 'O link para baixar o arquivo %%downloadable_products%% está ativado.', 'Prezado %%customer_name%%, <br /><br />O link para download do produto que você comprou em nossa loja virtual %%store_name%%: <br /><br />%%downloadable_products%%<br /><br />está ativado.<br /><br />Por favor, vá na seção de pedidos em "Minha Conta" e baixe o produto.<br /><br />%%download_link%%<br /><br />Saudações,<br /><br />%%store_name%% <br />%%store_owner_email_address%%'),
(13, 2, 'Uma nota de crédito foi criado por conta dos produtos devolvidos', 'Prezado %%customer_name%%,<br /><br />Uma nota de crédito foi criada devido à devolução dos seguintes produtos:<br /><br /> %%returned_products%% <br /><br />Número do Pedido %%order_number%%. O número da nota de crédito é %%slip_number%% e o valor total é %%total_amount%%. Você pode imprimir a nota de crédito em "Minha conta" . <br /><br />Saudações,<br /><br />%%store_name%% <br />%%store_owner_email_address%%'),
(14, 2, 'Novo Crédito na loja foi criado pelos produtos devolvidos', 'Prezado(a) %%customer_name%%,<br /><br />Foi criado um novo crédito na loja pelos seguintes produtos devolvidos: <br /><br />%%returned_products%%<br /><br />Pedido %%order_number%%. O valor total é %%total_amount%% e o crédito da loja poder ser usado para pagar sua fatura ou em futuras compras em nossa loja.<br /><br />Saudações;<br /><br />%%store_name%%<br />%%store_owner_email_address%%'),
(15, 2, 'Lembrete de senha do administrador', 'Uma nova senha foi requisitada a partir do IP %%admin_ip_address%%.<br /><br />Sua nova senha é:<br /><br />%%admin_password%%<br /><br />Atenciosamente,<br /><br />%%store_name%%<br />%%store_owner_email_address%%'),
(16, 2, 'Produto fora de estoque', 'TomatoCartn-------------------------------------------------- -n%% products_name%%%%%% products_variants está fora de estoque.n-------------------------------------------------- -nEstoque restante:%%%% products_quantity. É aconselhável ir para a seção de Produtos no painel de administração para repor o estoque.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_faqs`
--

CREATE TABLE `soc_faqs` (
  `faqs_id` int(11) NOT NULL,
  `faqs_status` tinyint(1) NOT NULL,
  `faqs_order` int(10) NOT NULL,
  `faqs_date_added` datetime NOT NULL,
  `faqs_last_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_faqs_description`
--

CREATE TABLE `soc_faqs_description` (
  `faqs_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `faqs_question` varchar(255) NOT NULL,
  `faqs_url` varchar(255) NOT NULL,
  `faqs_answer` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_geo_zones`
--

CREATE TABLE `soc_geo_zones` (
  `geo_zone_id` int(11) NOT NULL,
  `geo_zone_name` varchar(32) NOT NULL,
  `geo_zone_description` varchar(255) NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_geo_zones`
--

INSERT INTO `soc_geo_zones` (`geo_zone_id`, `geo_zone_name`, `geo_zone_description`, `last_modified`, `date_added`) VALUES
(1, 'Florida', 'Florida local sales tax zone', NULL, '2016-06-28 15:02:37');

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_gift_certificates`
--

CREATE TABLE `soc_gift_certificates` (
  `gift_certificates_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `orders_products_id` int(11) NOT NULL,
  `gift_certificates_type` int(5) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `gift_certificates_code` varchar(32) NOT NULL,
  `senders_name` varchar(64) NOT NULL,
  `senders_email` varchar(96) NOT NULL,
  `recipients_name` varchar(64) NOT NULL,
  `recipients_email` varchar(96) NOT NULL,
  `messages` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_gift_certificates_redeem_history`
--

CREATE TABLE `soc_gift_certificates_redeem_history` (
  `gift_certificates_redeem_history_id` int(11) NOT NULL,
  `gift_certificates_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `redeem_date` datetime NOT NULL,
  `redeem_amount` decimal(15,4) NOT NULL,
  `redeem_ip_address` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_guest_books`
--

CREATE TABLE `soc_guest_books` (
  `guest_books_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `guest_books_status` tinyint(1) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `date_added` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_languages`
--

CREATE TABLE `soc_languages` (
  `languages_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` char(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `charset` varchar(32) NOT NULL,
  `date_format_short` varchar(32) NOT NULL,
  `date_format_long` varchar(32) NOT NULL,
  `time_format` varchar(32) NOT NULL,
  `text_direction` varchar(12) NOT NULL,
  `currencies_id` int(11) NOT NULL,
  `numeric_separator_decimal` varchar(12) NOT NULL,
  `numeric_separator_thousands` varchar(12) NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `sort_order` int(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_languages`
--

INSERT INTO `soc_languages` (`languages_id`, `name`, `code`, `locale`, `charset`, `date_format_short`, `date_format_long`, `time_format`, `text_direction`, `currencies_id`, `numeric_separator_decimal`, `numeric_separator_thousands`, `parent_id`, `sort_order`) VALUES
(2, 'Portuguese-Brazilian', 'pt_BR', 'pt_BR.UTF-8,pt_BR,portuguese', 'utf-8', '%d/%m/%Y', '%A %d %B, %Y', '%H:%M:%S', 'ltr', 1, ',', '.', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_languages_definitions`
--

CREATE TABLE `soc_languages_definitions` (
  `id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `content_group` varchar(32) NOT NULL,
  `definition_key` varchar(255) NOT NULL,
  `definition_value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_languages_definitions`
--

INSERT INTO `soc_languages_definitions` (`id`, `languages_id`, `content_group`, `definition_key`, `definition_value`) VALUES
(1136, 2, 'general', 'home', 'Início'),
(1137, 2, 'general', 'specials', 'Promoções'),
(1138, 2, 'general', 'special_products', 'Produtos em Promoção'),
(1139, 2, 'general', 'new_products', 'Novos Produtos'),
(1140, 2, 'general', 'feature_products', 'Produtos em Destaque'),
(1141, 2, 'general', 'contact_us', 'Fale Conosco'),
(1142, 2, 'general', 'guest_book', 'Livro de Visitas'),
(1143, 2, 'general', 'my_account', 'Minha Conta'),
(1144, 2, 'general', 'my_wishlist', 'Minha Lista de Pedidos'),
(1145, 2, 'general', 'login', 'Entrar'),
(1146, 2, 'general', 'logoff', 'Sair'),
(1147, 2, 'general', 'create_account', 'Criar Conta'),
(1148, 2, 'general', 'cart_contents', 'Carrinho de compras'),
(1149, 2, 'general', 'save_cart_status_success', 'Status do módulo Carrinho renovado no cookie.'),
(1150, 2, 'general', 'no_cart_status_setted', 'ERRO: Nenhum status configurado'),
(1151, 2, 'general', 'error_no_shipping_flat_url', 'Informações sobre o Transporte não estão disponíveis. Entre em contato conosco para obter mais informações ou envie um email para info@tomatocart.com'),
(1152, 2, 'general', 'table_heading_carrier', 'Transportador :'),
(1153, 2, 'general', 'table_heading_track_number', 'N° de Envio :'),
(1154, 2, 'general', 'table_heading_track', 'Envio :'),
(1155, 2, 'general', 'table_heading_error', 'Erro :'),
(1156, 2, 'general', 'button_track_your_order', 'Acompanhe seu pedido'),
(1157, 2, 'general', 'heading_title_order_track_infomation', 'Informações do Pedido'),
(1158, 2, 'general', 'save_cart_status_error', 'ERRO: Status ruim escolhido. Somente o status Contrair ou Expandir do módulo Carrinho está disponível.'),
(1159, 2, 'general', 'field_guestbook_title_error', 'ERRO: Favor colocar um título para a mensagem.'),
(1160, 2, 'general', 'field_guestbook_email_error', 'ERRO: Por favor, digite um endereço de e-mail válido.'),
(1161, 2, 'general', 'field_guestbook_content_error', 'ERRO: Favor digitar o conteúdo.'),
(1162, 2, 'general', 'field_guestbook_verify_code_error', 'ERRO: Favor digitar o código de verificação corretamente.'),
(1163, 2, 'general', 'success_guestbook_saved', 'A mensagem foi salva com sucesso.'),
(1164, 2, 'general', 'verification_info_note', 'Digite o código na caixa abaixo.'),
(1165, 2, 'general', 'checkout', 'Finalizar compra'),
(1166, 2, 'general', 'breadcrumb_top', 'Topo'),
(1167, 2, 'general', 'breadcrumb_shop', 'Compra Online'),
(1168, 2, 'general', 'bookmark', 'Favoritos'),
(1169, 2, 'general', 'text_items', 'Item (s)'),
(1170, 2, 'general', 'sign_in', 'Entrar'),
(1171, 2, 'general', 'sign_out', 'Sair'),
(1172, 2, 'general', 'gender_male', 'Masculino'),
(1173, 2, 'general', 'gender_female', 'Feminino'),
(1174, 2, 'general', 'close', 'Fechar'),
(1175, 2, 'general', 'pull_down_default', 'Por Favor, Selecione'),
(1176, 2, 'general', 'admin_logout', 'Sair da Administração'),
(1177, 2, 'general', 'field_username', 'Nome de Usuário:'),
(1178, 2, 'general', 'field_password', 'Senha:'),
(1179, 2, 'general', 'button_login', 'Entrar'),
(1180, 2, 'general', 'introduction_maintenance_mode_text', 'Estamos em manutenção para melhorar o funcionamento do site. Pedimos desculpas, por favor! Volte mais tarde!'),
(1181, 2, 'general', 'error_admin_login_no_match', 'Usuário e/ou Senha inválidos. Por favor, tente novamente.'),
(1182, 2, 'general', 'js_error', 'Erros ocorreram durante o processamento do seu formulário.nnPor favor, faça as seguintes correções:nn'),
(1183, 2, 'general', 'js_error_already_submitted', 'Este formulário já foi enviado. Por favor, pressione Ok e aguarde até que este processo esteja completo.'),
(1184, 2, 'general', 'error_download_max_num_of_days', 'Você alcançou o máximo de dias para download.'),
(1185, 2, 'general', 'error_download_max_num_of_times', 'Você alcançou a quantidade máxima de downloads.'),
(1186, 2, 'general', 'error_download_file_not_exist', 'O arquivo requisitado não existe.'),
(1187, 2, 'general', 'products', 'Produtos'),
(1188, 2, 'general', 'shipping', 'Envio'),
(1189, 2, 'general', 'total', 'Total'),
(1190, 2, 'general', 'product', 'Produto'),
(1191, 2, 'general', 'No products', 'Sem produtos'),
(1192, 2, 'general', 'form_required_information', '* Informação obrigatória'),
(1193, 2, 'general', 'result_set_current_page', 'Página %s de %d'),
(1194, 2, 'general', 'result_set_number_of_products', 'Mostrando <b>%d</b> de <b>%d</b> (de <b>%d</b> produtos)'),
(1195, 2, 'general', 'result_set_number_of_orders', 'Mostrando <b>%d</b> de <b>%d</b> (de <b>%d</b> pedidos)'),
(1196, 2, 'general', 'result_set_number_of_orders_returns', 'Mostrando %d até %d (de %d pedidos devolvidos)'),
(1197, 2, 'general', 'result_set_number_of_reviews', 'Mostrando <b>%d</b> de <b>%d</b> (de <b>%d</b> comentários)'),
(1198, 2, 'general', 'result_set_number_of_articles', 'Mostrando <b>%d</b> até <b>%d</b> (de <b>%d</b> artigos)'),
(1199, 2, 'general', 'result_set_previous_page', '[<< Anterior]'),
(1200, 2, 'general', 'result_set_next_page', '[Próxima >>]'),
(1201, 2, 'general', 'button_add_address', 'Adicionar Endereço'),
(1202, 2, 'general', 'button_back', 'Voltar'),
(1203, 2, 'general', 'button_buy_now', 'Comprar Agora'),
(1204, 2, 'general', 'button_write_message', 'Escrever mensagem'),
(1205, 2, 'general', 'button_read_more', 'Leia mais'),
(1206, 2, 'general', 'button_add', 'Incluir'),
(1207, 2, 'general', 'button_clear', 'Limpar'),
(1208, 2, 'general', 'button_compare_now', 'Comparar Agora'),
(1209, 2, 'general', 'add_to_wishlist', 'Adicionar Produto à Lista de Pedidos'),
(1210, 2, 'general', 'add_to_compare', 'Adicionar Para Comparar'),
(1211, 2, 'general', 'print', 'Imprimir'),
(1212, 2, 'general', 'button_change_address', 'Mudar Endereço'),
(1213, 2, 'general', 'button_checkout', 'Finalizar Compra'),
(1214, 2, 'general', 'button_confirm_order', 'Confirmar Pedido'),
(1215, 2, 'general', 'button_continue', 'Continuar'),
(1216, 2, 'general', 'submit_reviews', 'Enviar Comentários'),
(1217, 2, 'general', 'button_delete', 'Apagar'),
(1218, 2, 'general', 'button_edit', 'Editar'),
(1219, 2, 'general', 'button_view', 'Visualizar'),
(1220, 2, 'general', 'button_print', 'Imprimir'),
(1221, 2, 'general', 'button_sign_in', 'Entrar'),
(1222, 2, 'general', 'button_add_to_cart', 'Adicionar no Carrinho de Compras'),
(1223, 2, 'general', 'button_reviews', 'Comentários'),
(1224, 2, 'general', 'button_search', 'Pesquisar'),
(1225, 2, 'general', 'button_update_cart', 'Atualizar Carrinho de Compras'),
(1226, 2, 'general', 'button_continue_shopping', 'Continuar Comprando'),
(1227, 2, 'general', 'button_write_review', 'Escrever Comentário'),
(1228, 2, 'general', 'button_result', 'Resultado'),
(1229, 2, 'general', 'button_vote', 'Votar'),
(1230, 2, 'general', 'icon_in_cart', 'Adicionar ao Carrinho de Compras'),
(1231, 2, 'general', 'tax_rate_unknown', 'Taxa de imposto desconhecida'),
(1232, 2, 'general', 'footer', 'Direitos Autorais © %s <a href="%s">%s</a><br />\nDesenvolvido por <a href="http://www.tomatocart.com" target="_blank">TomatoCart</a>'),
(1233, 2, 'index', 'rss_heading', 'Feeds RSS'),
(1234, 2, 'index', 'rss_categories', 'Categorias'),
(1235, 2, 'index', 'index_heading', 'Bem-vindo à %s!'),
(1236, 2, 'index', 'index_text', 'Você encontrará as melhores marcas, descontos e produtos no nosso incrível e-commerce de celulares'),
(1237, 2, 'general', 'listing_image_heading', 'Imagem'),
(1238, 2, 'general', 'listing_sku_heading', 'UME'),
(1239, 2, 'general', 'listing_products_heading', 'Produtos'),
(1240, 2, 'general', 'listing_manufacturer_heading', 'Fabricantes'),
(1241, 2, 'general', 'listing_quantity_heading', 'Quantidade'),
(1242, 2, 'general', 'listing_price_heading', 'Preço'),
(1243, 2, 'general', 'listing_weight_heading', 'Peso'),
(1244, 2, 'general', 'listing_buy_now_heading', 'Comprar Agora'),
(1245, 2, 'general', 'products_attributes_filter', 'Atributos do Produto'),
(1246, 2, 'general', 'section_heading_products_attachments', 'Anexos'),
(1247, 2, 'general', 'section_heading_products_accessories', 'Acessórios'),
(1248, 2, 'general', 'no_products_in_category', 'Não há nenhum produto disponível nesta categoria.'),
(1249, 2, 'general', 'filter_show', 'Exibir:'),
(1250, 2, 'general', 'filter_all_categories', 'Todas as Categorias'),
(1251, 2, 'general', 'close_panel', 'Fechar Painel'),
(1252, 2, 'general', 'hello_guest', 'Olá Visitante!'),
(1253, 2, 'general', 'register', 'Registrar'),
(1254, 2, 'general', 'welcome', 'Bem Vindo'),
(1255, 2, 'general', 'filter_all_manufacturers', 'Todos os Fabricantes'),
(1256, 2, 'index', 'greeting_guest', 'Bem-vindo! Entre e veja o que há de novo desde a sua última visita.'),
(1257, 2, 'index', 'greeting_customer', 'Bem-vindo novamente %s! Dê uma olhada no que há de novo desde a sua última visita!'),
(1258, 2, 'general', 'listing_sort_ascendingly', 'Ordenar por %s ascendente'),
(1259, 2, 'general', 'listing_sort_descendingly', 'Ordenar por %s descendente'),
(1260, 2, 'general', 'wishlist_title', 'Minha Lista de Desejos'),
(1261, 2, 'account', 'share_your_wishlist_title', 'Compartilhe sua Lista de Desejos'),
(1262, 2, 'account', 'field_share_wishlist_customer_name', 'Seu Nome:'),
(1263, 2, 'account', 'field_share_wishlist_customer_email', 'Seu Endereço de Email:'),
(1264, 2, 'account', 'field_share_wishlist_emails', 'Emails: (separados por vírgula)'),
(1265, 2, 'account', 'field_share_wishlist_message', 'Mensagem:'),
(1266, 2, 'account', 'field_share_wishlist_customer_name_error', 'Por favor informe seu Nome.'),
(1267, 2, 'account', 'field_share_wishlist_customer_email_error', 'Por favor informe seu E-Mail.'),
(1268, 2, 'account', 'field_share_wishlist_emails_error', 'Por favor informe o(s) Endereço(s) de Email de seus Amigo(s)'),
(1269, 2, 'account', 'field_share_wishlist_message_error', 'Por favor informe a mensagem.'),
(1270, 2, 'account', 'listing_comments_heading', 'Comentários.'),
(1271, 2, 'account', 'listing_date_added_heading', 'Adicionar Data:'),
(1272, 2, 'account', 'success_wishlist_entry_deleted', 'O produto selecionado foi removido com sucesso da seu lista de pedidos.'),
(1273, 2, 'account', 'success_wishlist_entry_updated', 'Sua lista de desejos foi atualizada com sucesso.'),
(1274, 2, 'account', 'success_share_wishlist_email_sent', 'Sua Lista de Desejos foi enviada com sucesso à seus amigos.'),
(1275, 2, 'account', 'wishlist_empty', 'Não há produtos em sua lista de desejos.'),
(1276, 2, 'account', 'breadcrumb_sign_in', 'Entrar'),
(1277, 2, 'account', 'breadcrumb_sign_out', 'Sair'),
(1278, 2, 'account', 'breadcrumb_my_account', 'Minha Conta'),
(1279, 2, 'account', 'breadcrumb_edit_account', 'Editar Conta'),
(1280, 2, 'account', 'breadcrumb_edit_password', 'Mudar Senha'),
(1281, 2, 'account', 'breadcrumb_my_orders', 'Pedidos'),
(1282, 2, 'account', 'breadcrumb_order_information', 'Ordem #%s'),
(1283, 2, 'account', 'breadcrumb_newsletters', 'Nova sletters'),
(1284, 2, 'account', 'breadcrumb_notifications', 'Notificações'),
(1285, 2, 'account', 'breadcrumb_address_book', 'Livro de Endereços'),
(1286, 2, 'account', 'breadcrumb_wishlist', 'Minha Lista de Desejos'),
(1287, 2, 'account', 'breadcrumb_address_book_add_entry', 'Adicionar Registro'),
(1288, 2, 'account', 'breadcrumb_address_book_edit_entry', 'Editar Registro'),
(1289, 2, 'account', 'breadcrumb_address_book_delete_entry', 'Deletar Registro'),
(1290, 2, 'account', 'breadcrumb_create_account', 'Criar uma Conta'),
(1291, 2, 'account', 'breadcrumb_password_forgotten', 'Esqueci a Senha'),
(1292, 2, 'account', 'sign_in_heading', 'Bem-Vindo, Por favor Entre'),
(1293, 2, 'account', 'sign_out_heading', 'Desconectar de Sua Conta'),
(1294, 2, 'account', 'wishlist_heading', 'Minha Lista de Desejos'),
(1295, 2, 'account', 'account_heading', 'Minha Conta'),
(1296, 2, 'account', 'account_edit_heading', 'Informações da Minha Conta'),
(1297, 2, 'account', 'account_password_heading', 'Senha da Minha Conta'),
(1298, 2, 'account', 'orders_heading', 'Meus Pedidos'),
(1299, 2, 'account', 'order_information_heading', 'Ordem #%s'),
(1300, 2, 'account', 'return_slip_heading_title', 'Nota de Devolução'),
(1301, 2, 'account', 'operation_heading_return_id', 'Número da Devolução::'),
(1302, 2, 'account', 'operation_heading_return_date', 'Data da Devolução:'),
(1303, 2, 'account', 'operation_heading_order_id', 'Número do Pedido:'),
(1304, 2, 'account', 'operation_heading_order_date', 'Data do Pedido:'),
(1305, 2, 'account', 'operation_heading_comments', 'Comentário:'),
(1306, 2, 'account', 'heading_products_name', 'Nome do Produto'),
(1307, 2, 'account', 'heading_products_quantity', 'Qtd.'),
(1308, 2, 'account', 'operation_heading_reminder', 'Lembrete:'),
(1309, 2, 'account', 'return_slip_reminder', '- Os produtos devem ser devolvidos em suas embalagens originais e sem nenhum dano ou desgaste. <br /> - Por favor imprima esta nota de devolução e inclua no pacote de devolução. <br /> - Nos reservamos ao direito de recusar os pacotes se as condições listadas acima não forem respeitadas.'),
(1310, 2, 'account', 'credit_slip_heading_title', 'Crédito Slip'),
(1311, 2, 'account', 'pdf_order_heading_title', 'Pedido'),
(1312, 2, 'account', 'pdf_invoice_heading_title', 'Fatura'),
(1313, 2, 'account', 'operation_heading_invoice_number', 'Número da Fatura:'),
(1314, 2, 'account', 'operation_heading_invoice_date', 'Data da Fatura:'),
(1315, 2, 'account', 'operation_heading_credit_slip_id', 'Número do Comprovante:'),
(1316, 2, 'account', 'operation_heading_credit_slip_date', 'Data da Criação:'),
(1317, 2, 'account', 'heading_products_price', 'Preço'),
(1318, 2, 'account', 'heading_products_total', 'Total'),
(1319, 2, 'account', 'refund_sub_total', 'Sub Total:'),
(1320, 2, 'account', 'refund_shipping', 'Entrega:'),
(1321, 2, 'account', 'refund_handling', 'Emolumentos:'),
(1322, 2, 'account', 'refund_total', 'Restituição total'),
(1323, 2, 'account', 'credit_slips_heading', 'Deslizamentos de crédito'),
(1324, 2, 'account', 'credit_slip_number', 'Número do Comprovante:'),
(1325, 2, 'account', 'date_added', 'Data de Adição:'),
(1326, 2, 'account', 'orders_returns_heading', 'Solicitações de Devolução'),
(1327, 2, 'account', 'orders_returns_information_heading', 'Voltar item(s) para o fim #%s'),
(1328, 2, 'account', 'field_return_comments', 'Comentário para retornar item(s):'),
(1329, 2, 'account', 'error_quantity_for_return_product', 'Comentário para retornar item(s):'),
(1330, 2, 'account', 'error_return_comments_empty', 'Por favor, especifique os comentários para o item de retorno(s).'),
(1331, 2, 'account', 'error_return_items_empty', 'Por favor, escolha pelo menos um produto de retorno.'),
(1332, 2, 'account', 'no_products_available_for_return', 'Não há produtos disponíveis para troca.'),
(1333, 2, 'account', 'order_return_number', 'retorno Ordem ID:'),
(1334, 2, 'account', 'order_return_date_added', 'Data de Adição:'),
(1335, 2, 'account', 'order_return_products', 'Produtos:'),
(1336, 2, 'account', 'order_return_comments', 'Comentario:'),
(1337, 2, 'account', 'newsletters_heading', 'Minha nova Inscrição no sletter'),
(1338, 2, 'account', 'notifications_heading', 'Minhas Notificações de Produtos'),
(1339, 2, 'account', 'address_book_heading', 'Meu Livro de Endereços'),
(1340, 2, 'account', 'address_book_add_entry_heading', 'Novo Registro do Livro de Endereços'),
(1341, 2, 'account', 'address_book_edit_entry_heading', 'Editar Registro do Livro de Endereços'),
(1342, 2, 'account', 'address_book_delete_entry_heading', 'Remover Registro do Livro de Endereços'),
(1343, 2, 'account', 'create_account_heading', 'Criar Conta'),
(1344, 2, 'account', 'create_account_success_heading', 'Sua Conta Foi Criada!'),
(1345, 2, 'account', 'login_new_customer_heading', 'Novo Cliente'),
(1346, 2, 'account', 'login_new_customer_text', 'Sou um novo cliente e ainda não tenho uma conta aqui.<br /><br />Criando sua conta você estará apto a ter algumas vantagens nesta loja, esteja atualizado com os status de seus pedidos e monitore os pedidos realizados.'),
(1347, 2, 'account', 'login_returning_customer_heading', 'Cliente cadastrado'),
(1348, 2, 'account', 'login_returning_customer_text', 'Já sou um cliente e tenho uma conta aqui.'),
(1349, 2, 'account', 'login_returning_customer_password_forgotten', 'Esqueceu a Senha? <a href="%s">Clique Aqui</a>.'),
(1350, 2, 'account', 'error_login_no_match', 'Não houve correspondência para o endereço de e-mail e ou senha. Por favor, tente novamente.'),
(1351, 2, 'account', 'error_login_status_disabled', 'Sua conta está desativada, por favor contate o administrador.'),
(1352, 2, 'account', 'guest', 'Não sou um membro'),
(1353, 2, 'account', 'lost_password', 'Perdi a Senha'),
(1354, 2, 'account', 'register_success', 'Obrigado. Registro completado com sucesso!'),
(1355, 2, 'checkout', 'date_added_to_shopping_cart', 'Adiconar Data: %s'),
(1356, 2, 'account', 'sign_out_text', 'Você se desconectou com sucesso de sua conta. Seu carrinho de compras será salvo e será restaurado na próxima vez que você se conectar.<br /><br />Agora é seguro sair do site.'),
(1357, 2, 'account', 'my_account_title', 'Minha Conta'),
(1358, 2, 'info', 'guestbook_heading', 'Livro de visitas'),
(1359, 2, 'info', 'breadcrumb_guestbook', 'Livro de Visitas'),
(1360, 2, 'info', 'guestbook_new_heading', 'Nova mensagem'),
(1361, 2, 'info', 'field_title', 'Título:'),
(1362, 2, 'info', 'field_email', 'E-mail:'),
(1363, 2, 'info', 'field_url', 'URL:'),
(1364, 2, 'info', 'field_content', 'Conteúdo:'),
(1365, 2, 'info', 'field_image_verification', 'Verificação de Imagem'),
(1366, 2, 'info', 'information_title', 'Informação'),
(1367, 2, 'info', 'info_article_categories_heading', 'Artigos'),
(1368, 2, 'info', 'info_faqs_heading', 'Perguntas Freqüentes'),
(1369, 2, 'info', 'info_not_found_heading', 'Informação não encontrada'),
(1370, 2, 'info', 'info_not_found', 'Informação não encontrada!'),
(1371, 2, 'info', 'no_article_in_this_category', 'Não há artigos nesta categoria ainda!'),
(1372, 2, 'account', 'my_account_information', 'Visualizar ou modificar informações da minha conta.'),
(1373, 2, 'account', 'my_account_address_book', 'Visualizar ou alterar registros no meu livro de endereços.'),
(1374, 2, 'account', 'my_account_password', 'Alterar Senha da MInha Conta.'),
(1375, 2, 'account', 'my_wishlist_title', 'Minha Lista de Desejos'),
(1376, 2, 'account', 'my_wishlist_view', 'Visualizar os produtos em minha lista de desejos.'),
(1377, 2, 'account', 'my_orders_title', 'Meus Pedidos'),
(1378, 2, 'account', 'my_orders_return_view', 'Visualizar as solicitações de devolução que eu fiz.'),
(1379, 2, 'account', 'no_orders_returns_made_yet', 'Não há solicitações de devolução!'),
(1380, 2, 'account', 'credit_slips', 'Imprimir Notas de Crédito'),
(1381, 2, 'account', 'orders_id', 'Números dos Pedidos:'),
(1382, 2, 'account', 'no_credit_slips', 'Não há notas de crédito!'),
(1383, 2, 'account', 'result_set_number_of_credit_slips', 'Resultados <b>%d</b> to <b>%d</b> (of <b>%d</b> deslizamentos de crédito)'),
(1384, 2, 'account', 'my_credit_slips_view', 'Ver o meu crédito deslizamentos.'),
(1385, 2, 'account', 'my_orders_view', 'Visualizar os pedidos que eu fiz.'),
(1386, 2, 'account', 'my_notifications_title', 'Minhas Notificações'),
(1387, 2, 'account', 'my_notifications_newsletters', 'Inscrever-se e sair sletters novo.'),
(1388, 2, 'account', 'my_notifications_products', 'Visualizar ou alterar minha lista de notificações de produtos.'),
(1389, 2, 'account', 'my_password_title', 'Minha Senha'),
(1390, 2, 'account', 'order_number', 'Número do Pedido:'),
(1391, 2, 'account', 'order_status', 'Status do Pedido'),
(1392, 2, 'account', 'return_status', 'Status:'),
(1393, 2, 'account', 'order_date', 'Data do Pedido'),
(1394, 2, 'account', 'order_shipped_to', 'Enviado Para:'),
(1395, 2, 'account', 'order_billed_to', 'Faturados a:'),
(1396, 2, 'account', 'order_products', 'Produtos:'),
(1397, 2, 'account', 'order_cost', 'Custo Ordem:'),
(1398, 2, 'account', 'no_orders_made_yet', 'Você ainda não fez nenhuma compra.'),
(1399, 2, 'account', 'order_number_heading', 'Pedido #%s'),
(1400, 2, 'account', 'order_date_heading', 'Data do Pedido:'),
(1401, 2, 'account', 'order_total_heading', 'Total do Pedido:'),
(1402, 2, 'account', 'download_file', 'Download de arquivos'),
(1403, 2, 'account', 'gift_wrapping_message_heading', 'Mensagem da embalagem'),
(1404, 2, 'account', 'order_history_heading', 'Histórico de Pedidos'),
(1405, 2, 'account', 'download_heading', 'Links de Download'),
(1406, 2, 'account', 'download_link_expires', 'Link expira :%s'),
(1407, 2, 'account', 'download_counter_remaining', 'downloads restantes'),
(1408, 2, 'account', 'newsletter_subscriptions_heading', 'Minhas Assinaturas Newletter'),
(1409, 2, 'account', 'newsletter_general', 'Nova carta-Geral'),
(1410, 2, 'account', 'newsletter_general_description', 'Incluindo notícias loja, novos produtos, ofertas especiais, e outros anúncios promocionais.'),
(1411, 2, 'account', 'newsletter_product_notifications', 'Minhas Notificações de Produtos'),
(1412, 2, 'account', 'newsletter_product_notifications_description', 'A lista de notificações de produtos lhe permite ficar atualizado sobre os produtos que você encontrar e lhe interessar.<br /><br />Para ficar atualizado sobre todos os produtos, selecione <b>Notificação Global de Produtos</b>.'),
(1413, 2, 'account', 'newsletter_product_notifications_global', 'Notificações Globais de Produtos'),
(1414, 2, 'account', 'newsletter_product_notifications_global_description', 'Receber notificações sobre todos os produtos disponíveis.'),
(1415, 2, 'account', 'newsletter_product_notifications_products', 'Notificações de Produtos'),
(1416, 2, 'account', 'newsletter_product_notifications_products_description', 'Para remover a notificação de um produto, demarque a caixa referente ao item desejado e clique em Continuar.'),
(1417, 2, 'account', 'newsletter_product_notifications_products_none', 'Atualmente não há produtos marcados à serem notificados.<br /><br />Para adicionar produtos a sua lista de notificações, clique no link de notificação disponivel na página de informações do produto.'),
(1418, 2, 'account', 'primary_address_title', 'Endereço Primário'),
(1419, 2, 'account', 'primary_address_description', 'Este endereço é usado como o transporte pré-seleccionados e endereço de cobrança para encomendas nesta loja. <br /> <br /> Este endereço também é usado como base para os produtos e serviços de cálculos de impostos.'),
(1420, 2, 'account', 'address_book_title', 'Entradas Livro de Endereços'),
(1421, 2, 'account', 'primary_address_marker', '(Endereço principal)'),
(1422, 2, 'account', 'address_book_maximum_entries', '<font color="#ff0000"><b>NOTA:</b></font> É permitido somente um número máximo de %s registros de endereços.'),
(1423, 2, 'account', 'address_book_delete_address_title', 'Deletar Endereços'),
(1424, 2, 'account', 'address_book_delete_address_description', 'Você tem certeza que deseja deletar os endereços selecionados ?'),
(1425, 2, 'account', 'address_book_new_address_title', 'Novo Endereço'),
(1426, 2, 'account', 'selected_address_title', 'Endereço Selecionado'),
(1427, 2, 'account', 'set_as_primary', 'Marcar como endereço primário.'),
(1428, 2, 'account', 'create_account_terms_heading', 'Politicas de Privacidade'),
(1429, 2, 'account', 'create_account_terms_description', 'Por favor leia e certifique-se que concorda com nossa política de privacidade assinalando a caixa abaixo. A política de privacidade por ser lida  <a href="%s">aqui</a>.'),
(1430, 2, 'account', 'create_account_terms_confirm', 'Eu li e concordo com a política de privacidade.'),
(1431, 2, 'account', 'password_forgotten_heading', 'Esqueceu a Senha'),
(1432, 2, 'account', 'password_forgotten', 'Se você esqueceu a senha, informe seu endereço de email abaixo e iremos lhe enviar uma mensagem contendo sua nova senha.'),
(1433, 2, 'account', 'email_create_account_subject', 'Bem-Vindo à %s'),
(1434, 2, 'account', 'email_create_account_body', 'Convidamos você a% s!\n\nVocê agora pode participar de vários serviços que temos para oferecer para você. Alguns desses serviços incluem:\n\n<li> Permanente Carrinho - Qualquer produto adicionado ao carrinho de compras online permanecer lá até que você removê-los ou vê-los. </li>\n<li> Address Book - Nós podemos agora entregar seus produtos para outro endereço que não seja a sua! Isto é perfeito para enviar presentes de aniversário direto para o aniversário-se pessoa. </li>\n<li> Histórico de Pedidos - Ver o seu histórico de compras que você fez com a gente. </li>\n<li> Produtos Reviews - Compartilhe suas opiniões sobre os produtos com outros clientes. </li>\n\nPara ajudar com qualquer dos nossos serviços online, por favor enviar e-mail do proprietário da loja: %s.\n\nNota: Este endereço de e-mail nos foi dado por um de nossos clientes. Se você não inscrição para ser membro, por favor envie um e-mail para o dono da loja.'),
(1435, 2, 'general', 'email_addressing_gender_male', 'Caro Sr. %s,'),
(1436, 2, 'general', 'email_addressing_gender_female', 'Cara Sra. %s,'),
(1437, 2, 'general', 'email_addressing_gender_unknown', 'Caro %s,'),
(1438, 2, 'account', 'email_password_reminder_subject', 'Lembrete de senha para'),
(1439, 2, 'account', 'email_password_reminder_body', 'Uma nova senha foi solicitada %s.\n\nSua nova senha para é:\n\n%S\n\nPara ajudar com qualquer dos nossos serviços online, por favor enviar e-mail do proprietário da loja: %s.\n\nNota: Se você não solicitou esta ação através da nossa página esquecido a senha, por favor notifique o proprietário da loja, logo que possível.'),
(1440, 2, 'account', 'success_account_created', 'Parabéns! Sua nova conta foi criada com sucesso! Você pode agora tirar vantagens como membro e melhorar sua experiência de compras online conosco. Se você possuir alguma dúvida sobre às operações em nossa Loja Virtual, por favor envie um email para <a href="%s">store owner</a>.<br /><br />Uma confirmação foi enviada ao email informado. Se você não a receber em uma hora , por favor contate nos.'),
(1441, 2, 'account', 'success_account_updated', 'Sua conta foi atualizada com sucesso!'),
(1442, 2, 'account', 'success_password_updated', 'A senha da sua conta foi atualizada com sucesso!'),
(1443, 2, 'account', 'success_newsletter_updated', 'Seu boletim de assinaturas foram atualizadas com sucesso!'),
(1444, 2, 'account', 'success_notifications_updated', 'Suas notificações de produtos foram atualizadas com sucesso!'),
(1445, 2, 'account', 'success_address_book_entry_deleted', 'O endereço selecionado foi removido com sucesso do seu livro de endereços.'),
(1446, 2, 'account', 'success_address_book_entry_updated', 'Seu livro de endereços foi atualizado com sucesso.'),
(1447, 2, 'account', 'success_password_forgotten_sent', 'Sucesso: Uma nova senha foi enviada ao seu email.'),
(1448, 2, 'account', 'warning_primary_address_deletion', 'O endereço primário não pode ser deletado. Por favor configure outro endereço como primário e então tente novamente.'),
(1449, 2, 'account', 'error_current_password_not_matching', 'Sua senha atual não confere com nossos registros. Por favor tente novamente.'),
(1450, 2, 'account', 'error_address_book_entry_non_existing', 'A entrada do livro de endereço não existe.'),
(1451, 2, 'account', 'error_address_book_full', 'Seu livro de endereços está cheio. Por favor delete alguns endereços não utilizados para salvar um novo.'),
(1452, 2, 'account', 'error_password_forgotten_no_email_address_found', 'Erro: O endereço de email informado não foi encontrado em nossos registros, por favor tente novamente.'),
(1453, 2, 'account', 'email_address', 'Endereço de Email:'),
(1454, 2, 'general', 'warning_install_directory_exists', 'Diretório de instalação existente em: %s.\nPor favor, remova o diretório por razões de segurança.'),
(1455, 2, 'general', 'warning_config_file_writeable', 'Eu consigo escrever no arquivo de configuração: %s. Isto é um risco de segurança - por favor, coloque as devidas permissões neste arquivo.'),
(1456, 2, 'general', 'warning_session_directory_non_existent', 'O diretório de sessões não existe: %s. Sessões não irão funcionar até que este diretório seja criado.'),
(1457, 2, 'general', 'warning_session_directory_not_writeable', 'Eu não consigo escrever no diretório de sessões: %s. Sessões não irão funcionar até que as devidas permissões sejam configuradas.'),
(1458, 2, 'general', 'warning_session_auto_start', 'session.auto_start está ativado - por favor desabilite esta funcionalidade no php.ini e reinicie o servidor web.'),
(1459, 2, 'general', 'warning_download_directory_non_existent', 'O diretório de produtos para download não existe: %s. Produtos para download não irão funcionar até que o diretório seja válido.'),
(1460, 2, 'checkout', 'breadcrumb_checkout', 'Comprar'),
(1461, 2, 'checkout', 'alternative_checkout_methods', '- Ou -'),
(1462, 2, 'checkout', 'shipping', 'Expedição'),
(1463, 2, 'checkout', 'choose_billing_address', 'Por favor, selecione o endereço de faturamento preferido.'),
(1464, 2, 'checkout', 'create_new_billing_address', 'Criar um novo endereço de cobrança'),
(1465, 2, 'checkout', 'ship_to_this_address', 'Enviar para este endereço'),
(1466, 2, 'checkout', 'choose_shipping_address', 'Por favor, selecione o endereço de envio preferido.'),
(1467, 2, 'checkout', 'create_new_shipping_address', 'Criar um novo endereço de entrega'),
(1468, 2, 'checkout', 'breadcrumb_checkout_shopping_cart', 'Carrinho de Compras'),
(1469, 2, 'checkout', 'breadcrumb_checkout_shipping', 'Forma de Envio'),
(1470, 2, 'checkout', 'breadcrumb_checkout_shipping_address', 'Endereço de Entrega'),
(1471, 2, 'checkout', 'breadcrumb_checkout_payment', 'Forma de Pagamento'),
(1472, 2, 'checkout', 'breadcrumb_checkout_payment_address', 'Endereço de Pagamento'),
(1473, 2, 'checkout', 'error_shopping_cart_order_total_zero', 'O total  carrinho de compra" ordem já está zero, você não tem que usar o crédito da loja para pagar este fim.'),
(1474, 2, 'checkout', 'breadcrumb_checkout_confirmation', 'Confirmação'),
(1475, 2, 'checkout', 'breadcrumb_checkout_success', 'Sucesso!'),
(1476, 2, 'general', 'error_minimum_order_quantity', 'A quantidade mínima de pedido de %s é %s'),
(1477, 2, 'general', 'error_maximum_order_quantity', 'A quantidade disponível para %s é %s'),
(1478, 2, 'general', 'error_gift_certificate_quantity_must_be_one', 'Erro: A quantidade de vale-presente não deve ser maior que um.'),
(1479, 2, 'general', 'error_order_increment', 'O acréscimo no pedido de %s é %s.'),
(1480, 2, 'checkout', 'senders_name', 'Nome do remetente'),
(1481, 2, 'checkout', 'senders_email', 'Email'),
(1482, 2, 'checkout', 'recipients_name', 'Nome do destinatário'),
(1483, 2, 'checkout', 'recipients_email', 'Destinatário Email'),
(1484, 2, 'checkout', 'shopping_cart_heading', 'Carrinho de Compras'),
(1485, 2, 'checkout', 'shipping_method_heading', 'Forma de Envio'),
(1486, 2, 'checkout', 'checkout_method', 'Método Compra'),
(1487, 2, 'checkout', 'checkout_billing_information', 'Informações de Cobrança'),
(1488, 2, 'checkout', 'checkout_shipping_information', 'Informações de Envio'),
(1489, 2, 'checkout', 'checkout_shipping_method', 'Forma de Envio'),
(1490, 2, 'checkout', 'checkout_payment_information', 'Informações do Pagamento'),
(1491, 2, 'checkout', 'checkout_order_review', 'Revisão'),
(1492, 2, 'checkout', 'shipping_address_heading', 'Endereço de Entrega'),
(1493, 2, 'checkout', 'payment_method_heading', 'Forma de Pagamento'),
(1494, 2, 'checkout', 'payment_address_heading', 'Endereço da Cobrança'),
(1495, 2, 'checkout', 'confirmation_heading', 'Confirmação'),
(1496, 2, 'checkout', 'coupons_redeem_heading', 'Cupom de Promoções'),
(1497, 2, 'checkout', 'coupons_redeem_information_title', 'Por favor, digite um código do cupom.'),
(1498, 2, 'checkout', 'fields_coupons_redeem_code', 'Código de Cupom:'),
(1499, 2, 'checkout', 'gift_certificates_redeem_heading', 'Resgatar Vale-Presente'),
(1500, 2, 'checkout', 'gift_certificates_redeem_information_title', 'Por favor, indique o código vale-presente.'),
(1501, 2, 'checkout', 'fields_gift_certificates_redeem_code', 'Presente Código Certificado:'),
(1502, 2, 'checkout', 'success_heading', 'Seu Pedido Foi Processado!'),
(1503, 2, 'checkout', 'shipping_address_title', 'Endereço de Entrega'),
(1504, 2, 'checkout', 'choose_shipping_destination', 'Por favor selecione em seu livro de endereços onde os itens serão entregeues.'),
(1505, 2, 'checkout', 'selected_shipping_destination', 'Este é o endereço de entrega selecionado para onde os itens serão entregues.'),
(1506, 2, 'checkout', 'current_shipping_address_title', 'Endereço de Entrega:'),
(1507, 2, 'checkout', 'please_select', 'Por favor Selecione'),
(1508, 2, 'checkout', 'shipping_method_title', 'Forma de Envio'),
(1509, 2, 'checkout', 'choose_shipping_method', 'Por favor selecione a forma de envio preferida para usar neste pedido.'),
(1510, 2, 'checkout', 'only_one_shipping_method_available', 'Este é atualmente a única forma de envio disponível neste pedido.'),
(1511, 2, 'checkout', 'add_comment_to_order_title', 'Adicionar Comentário a este Pedido.'),
(1512, 2, 'checkout', 'address_book_entries_title', 'Entradas Livro de Endereços'),
(1513, 2, 'checkout', 'select_another_shipping_destination', 'Por favor, selecione o endereço de entrega preferido se os itens nessa ordem devem ser entregues em outros lugares.'),
(1514, 2, 'checkout', 'select_another_billing_destination', 'Por favor, selecione o endereço de faturamento de preferência se a factura a esta ordem é para ser entregue em outro lugar.'),
(1515, 2, 'checkout', 'new_shipping_address_title', 'Novo Endereço de Entrega'),
(1516, 2, 'checkout', 'new_shipping_address', 'Por favor use o formulário abaixo para criar um novo endereço de entrega para usar esta ordem.'),
(1517, 2, 'checkout', 'new_billing_address_title', 'Novo Endereço de Cobrança'),
(1518, 2, 'checkout', 'create_new_billing_address_title', 'Criar um novo endereço de cobrança'),
(1519, 2, 'checkout', 'create_new_shipping_address_title', 'Criar um endereço de transporte novos'),
(1520, 2, 'checkout', 'use_billing_address_title', 'Use o endereço de faturamento'),
(1521, 2, 'checkout', 'estimate_shipping', 'Calcular Frete'),
(1522, 2, 'checkout', 'introduce_estimate_shipping', 'Informe seu destino para ser feito o cálculo do frete.'),
(1523, 2, 'checkout', 'get_a_quote', 'Peça um Orçamento'),
(1524, 2, 'checkout', 'update_total', 'Atualizar Total'),
(1525, 2, 'checkout', 'ship_to_this_address', 'Enviar para este endereço'),
(1526, 2, 'checkout', 'new_billing_address', 'Por favor use o formulário abaixo para criar um novo endereço de cobrança para o uso para este fim.'),
(1527, 2, 'checkout', 'billing_address_title', 'Endereço de Cobrança'),
(1528, 2, 'checkout', 'selected_billing_destination', 'Este é o endereço de faturamento selecionado quando a factura para este fim serão entregues.'),
(1529, 2, 'checkout', 'choose_billing_destination', 'Por favor, escolha o seu livro de endereços onde você gostaria que a fatura seja enviada.'),
(1530, 2, 'checkout', 'current_billing_address_title', 'Endereço de Cobrança:'),
(1531, 2, 'checkout', 'continue_checkout_procedure_title', 'Continue o procedimento da Compra'),
(1532, 2, 'checkout', 'continue_checkout_procedure_to_shipping', 'para selecionar o método de envio preferido.'),
(1533, 2, 'checkout', 'continue_checkout_procedure_to_payment', 'para selecionar o método de pagamento preferido.'),
(1534, 2, 'checkout', 'continue_checkout_procedure_to_confirmation', 'para confirmar este pedido.'),
(1535, 2, 'checkout', 'shopping_cart_empty', 'Seu Carrinho de Compras está vazio!'),
(1536, 2, 'checkout', 'subtotal_title', 'Sub-Total:'),
(1537, 2, 'checkout', 'total_title', 'Total:'),
(1538, 2, 'checkout', 'products_out_of_stock_checkout_not_possible', 'Os produtos marcados com não existem em quantidade desejada em nosso estoque. <br /> Por favor, altere a quantidade dos produtos marcados.'),
(1539, 2, 'checkout', 'products_out_of_stock_checkout_possible', 'Os produtos marcados com não existem em quantidade desejada em nosso estoque. <br /> Você pode comprá-los de qualquer maneira e verificar a quantidade que temos em estoque para entrega imediata no processo de compra.'),
(1540, 2, 'checkout', 'order_conditions_title', 'Termos e Condições'),
(1541, 2, 'checkout', 'order_conditions_description', 'Por favor, confirmar os termos e condições vinculadas a este fim, assinalando a caixa seguinte. Os termos e condições podem ser lidos <a href="%s"><u>aqui</u></a>.'),
(1542, 2, 'checkout', 'order_conditions_acknowledge', 'Eu li e concordo com os termos e condições vinculadas a este fim.'),
(1543, 2, 'checkout', 'payment_method_title', 'Forma de Pagamento'),
(1544, 2, 'checkout', 'choose_payment_method', 'Por favor, selecione o método de pagamento preferido para usar nesta ordem.'),
(1545, 2, 'checkout', 'only_one_payment_method_available', 'Esta é atualmente a única forma de pagamento disponível neste pedido.'),
(1546, 2, 'checkout', 'pay_with_store_credit_title', 'Pague com crédito Store (%s)'),
(1547, 2, 'checkout', 'error_coupon_not_exist', 'O código do cupom não existe.'),
(1548, 2, 'checkout', 'error_coupon_not_valid', 'Por favor informe um cupom válido.'),
(1549, 2, 'checkout', 'error_coupon_invalid_date', 'O cupom expirou.'),
(1550, 2, 'checkout', 'error_coupon_exceed_uses_per_coupon', 'O cupom atingiu o número máximo de uso.'),
(1551, 2, 'checkout', 'error_coupon_exceed_uses_per_customer', 'O cupom atingiu o número máximo de clientes.'),
(1552, 2, 'checkout', 'error_coupon_no_match_products', 'O cupom não pode ser aplicado a qualquer um dos produtos no carrinho de compras.'),
(1553, 2, 'checkout', 'error_coupon_minimum_order_quantity', 'O total de carro é menor que o cupom''s total mínimo de ordem.'),
(1554, 2, 'checkout', 'error_shopping_cart_total_zero', 'O total de carrinho já é zero, você não tem que usar o certificado de presente.'),
(1555, 2, 'checkout', 'error_gift_certificate_exist', 'O presente certificado não existe.'),
(1556, 2, 'checkout', 'error_invalid_gift_certificate', 'Por favor, especifique um certificado de oferta válida.'),
(1557, 2, 'checkout', 'button_coupon_redeem', 'Cupom de Resgate'),
(1558, 2, 'checkout', 'button_gift_certificate_redeem', 'Resgatar Vale-Presente'),
(1559, 2, 'order', 'order_delivery_address_title', 'Endereço de entrega'),
(1560, 2, 'order', 'order_shipping_method_title', 'Forma de Envio'),
(1561, 2, 'order', 'order_shipping_tracking_no_title', 'Encaminando'),
(1562, 2, 'order', 'order_products_title', 'Produtos'),
(1563, 2, 'order', 'order_tax_title', 'Imposto'),
(1564, 2, 'order', 'order_total_title', 'Total'),
(1565, 2, 'order', 'order_billing_address_title', 'Endereço de faturamento'),
(1566, 2, 'order', 'order_payment_method_title', 'Forma de Pagamento'),
(1567, 2, 'order', 'order_payment_information_title', 'Informações de pagamento'),
(1568, 2, 'order', 'order_comments_title', 'Comentários adicionado à sua encomenda'),
(1569, 2, 'order', 'order_text_edit_title', '(editar)'),
(1570, 2, 'checkout', 'store_credit_title', 'Loja de crédito'),
(1571, 2, 'checkout', 'store_credit_order_number', 'Ordem: #%s'),
(1572, 2, 'checkout', 'email_order_subject', 'Processar Pedido'),
(1573, 2, 'checkout', 'email_order_order_number', 'Número do Pedido: %s'),
(1574, 2, 'checkout', 'email_order_invoice_url', 'Fatura Detalhada: %s'),
(1575, 2, 'checkout', 'email_order_date_ordered', 'Data do Pedido: %s'),
(1576, 2, 'checkout', 'email_order_status', 'Status do Pedido: %s'),
(1577, 2, 'checkout', 'email_order_products', 'Produtos'),
(1578, 2, 'checkout', 'email_order_delivery_address', 'Endereço de Entrega'),
(1579, 2, 'checkout', 'email_order_billing_address', 'Endereço de Cobrança'),
(1580, 2, 'checkout', 'email_order_payment_method', 'Forma de Pagamento'),
(1581, 2, 'checkout', 'email_order_separator', '------------------------------------------------------'),
(1582, 2, 'checkout', 'order_processed_successfully', 'Seu pedido foi processado com sucesso! Seus produtos serão entregues no destino em até 2-5 dias úteis.'),
(1583, 2, 'checkout', 'add_selection_to_product_notifications', 'Por favor notifique-me sobre atualizações dos produtos que selecionei abaixo.'),
(1584, 2, 'checkout', 'view_order_history', 'Você pode ver a sua história a fim de ir ao <a href="%s"> Minha conta </a> e clicando em <a href="%s">História </a>.'),
(1585, 2, 'checkout', 'contact_store_owner', 'Todas as perguntas que você tem a <a href="%s">dono da loja </a>.'),
(1586, 2, 'checkout', 'thanks_for_shopping_with_us', 'Obrigado por fazer compras com a gente!'),
(1587, 2, 'general', 'download_footer', 'Você também pode efetuar o download de seus produtos posteriormente em %s'),
(1588, 2, 'info', 'breadcrumb_information', 'Informação'),
(1589, 2, 'info', 'breadcrumb_conditions', 'Condições'),
(1590, 2, 'info', 'breadcrumb_contact', 'Contato'),
(1591, 2, 'info', 'breadcrumb_privacy', 'Privacidade'),
(1592, 2, 'info', 'breadcrumb_shipping', 'Entrega'),
(1593, 2, 'info', 'breadcrumb_sitemap', 'Mapa do Site'),
(1594, 2, 'info', 'breadcrumb_cookie_usage', 'Uso de Cookies'),
(1595, 2, 'info', 'breadcrumb_ssl_check', 'Checagem de Segurança'),
(1596, 2, 'info', 'info_heading', 'Informação e Ajuda'),
(1597, 2, 'info', 'info_conditions_heading', 'Termos e Condições'),
(1598, 2, 'info', 'info_contact_heading', 'Contato'),
(1599, 2, 'info', 'contact_departments_title', 'Departamento:'),
(1600, 2, 'info', 'info_privacy_heading', 'Nota de Privacidade'),
(1601, 2, 'info', 'contact_telephone_title', 'Telefone:'),
(1602, 2, 'info', 'info_shipping_heading', 'Entrega e Devolução'),
(1603, 2, 'info', 'info_sitemap_heading', 'Mapa do Site'),
(1604, 2, 'info', 'info_cookie_usage_heading', 'Uso de Cookies'),
(1605, 2, 'info', 'info_ssl_check_heading', 'Checagem de Segurança'),
(1606, 2, 'info', 'conditions', 'Insira aqui as informações necessárias.'),
(1607, 2, 'info', 'contact_code_title', 'Verificação de Imagem:'),
(1608, 2, 'info', 'contact_code_notice_title', 'Digite o código na caixa abaixo:'),
(1609, 2, 'info', 'contact', 'Insira aqui as informações necessárias.'),
(1610, 2, 'info', 'privacy', 'Insira aqui as informações necessárias.'),
(1611, 2, 'info', 'shipping', 'Insira aqui as informações necessárias.'),
(1612, 2, 'info', 'cookie_usage', 'Foi detectado que seu navegador não suporta cookies, ou a gravação de cookies está desativada.<br /><br /> Para continuar em nossa loja virtual, nós o incentivamos a habilitar os cookies em seu navegador. <br /><br />Para navegadores  <b>Internet Explorer </b>, siga por favor estas instruções: <br /><ol><li>Clique sobre o menu Ferramentas e selecione Opções da Internet</li><li> Selecione a aba Segurança, e restaure o nível de segurança para Médio.</li></ol>Nós tomamos esta medida de segurança para seu benefício, e pedimos desculpas por quaisquer inconveniências. <br /><br />Contate por favor o proprietário de loja se você tem alguma pergunta em relação a esta exigência, ou para continuar a comprar produtos sem utilizar a loja virtual.'),
(1613, 2, 'info', 'ssl_check', 'Detectamos que seu navegador gerou um ID da sessão SSL diferentes utilizados em toda a nossa páginas seguras.<br /> <br />Para as medidas de segurança que você vai precisar fazer logon na sua conta novamente para continuar a fazer compras online.<br /> <Br />Alguns browsers mais antigos não têm a capacidade de gerar um Identificador de Sessão Segura automaticamente que nós exigimos. Se você usar este navegador, recomendamos mudar para outro navegador como <a href="http://www.microsoft.com/ie/" target="_blank"> Microsoft Internet Explorer </a>, <a href href="http://www.opera.com" = "target" http://www.mozilla.com/firefox/ target= "_blank"> Firefox </a>, ou <a target="_blank"> Opera </a> para continuar a sua experiência de compra online. <br /> <br />Tomámos esta medida de segurança para seu benefício, e pedimos desculpas por quaisquer inconvenientes causados.<br /> <br /> Entre em contato com o proprietário da loja se você tiver quaisquer perguntas relacionadas com esta exigência, ou para continuar comprando offline.'),
(1614, 2, 'info', 'contact_title', 'Informação de Contato'),
(1615, 2, 'info', 'contact_store_address_title', 'Endereço da Loja'),
(1616, 2, 'info', 'contact_name_title', 'Nome Completo:'),
(1617, 2, 'info', 'contact_email_address_title', 'Endereço de Email:'),
(1618, 2, 'info', 'contact_enquiry_title', 'Mensagem:'),
(1619, 2, 'info', 'contact_email_sent_successfully', 'Sua pergunta foi enviada com sucesso para o dono da loja.'),
(1620, 2, 'info', 'contact_email_subject', 'Contato e Dúvidas'),
(1621, 2, 'info', 'sitemap_account', 'Minha Conta'),
(1622, 2, 'info', 'sitemap_account_edit', 'Informação da Conta'),
(1623, 2, 'info', 'sitemap_address_book', 'Livro de Endereços'),
(1624, 2, 'info', 'sitemap_account_history', 'Histórico de Pedidos'),
(1625, 2, 'info', 'sitemap_account_notifications', 'sletter novas assinaturas'),
(1626, 2, 'info', 'sitemap_shopping_cart', 'Carrinho de Compras'),
(1627, 2, 'info', 'sitemap_checkout_shipping', 'Finalizar Compra'),
(1628, 2, 'info', 'sitemap_advanced_search', 'Busca Avançada'),
(1629, 2, 'info', 'sitemap_products_new', 'Novos Produtos'),
(1630, 2, 'info', 'sitemap_specials', 'Promoções'),
(1631, 2, 'info', 'sitemap_reviews', 'Comentários'),
(1632, 2, 'info', 'cookie_usage_box_heading', 'Segurança e Privacidade dos Cookies'),
(1633, 2, 'info', 'cookie_usage_box_contents', 'Cookies devem estar habilitados para comprar online nesta loja para garantir privacidade e segurança em sua visita a este site. <br /> <br />Ao habilitar cookies em seu browser, a comunicação entre você e este site é reforçada a a certeza que é você quem está fazendo transações de seu próprio nome, e para evitar fugas de informação privada.'),
(1634, 2, 'info', 'ssl_check_box_heading', 'Privacidade e Segurança'),
(1635, 2, 'info', 'ssl_check_box_contents', 'Nós validamos a identificação da Sessão do SSL gerada automaticamente por seu navegador a cada pedido de página segura ao servidor. <br /><br />Esta validação assegura que é você mesmo que está navegando neste local com sua conta.'),
(1636, 2, 'products', 'table_heading_weight', 'Peso'),
(1637, 2, 'products', 'table_heading_quantity', 'Quantidade'),
(1638, 2, 'products', 'table_heading_discount', 'Desconto'),
(1639, 2, 'products', 'table_heading_price', 'Preço'),
(1640, 2, 'products', 'section_heading_attributes', 'Atributos'),
(1641, 2, 'products', 'table_heading_sku', 'UME'),
(1642, 2, 'products', 'section_heading_variants', 'Variantes do produto'),
(1643, 2, 'products', 'section_heading_customizations', 'Personalizações'),
(1644, 2, 'products', 'section_heading_reviews', 'Comentários'),
(1645, 2, 'products', 'section_heading_quantity_discount', 'Desconto por Quantidade'),
(1646, 2, 'products', 'breadcrumb_new_products', 'Novos Produtos'),
(1647, 2, 'products', 'breadcrumb_specials', 'Promoções'),
(1648, 2, 'products', 'breadcrumb_reviews', 'Comentários'),
(1649, 2, 'products', 'breadcrumb_reviews_new', 'Novo Comentário'),
(1650, 2, 'products', 'breadcrumb_tell_a_friend', 'Indique a um amigo'),
(1651, 2, 'products', 'product_not_found_heading', 'Produto não encontrado'),
(1652, 2, 'products', 'no_new_products', 'Atualmente não há produtos disponíveis.'),
(1653, 2, 'products', 'new_products_heading', 'Novos Produtos'),
(1654, 2, 'products', 'compare_products_heading', 'Compare Produtos'),
(1655, 2, 'products', 'specials_heading', 'Promoções'),
(1656, 2, 'products', 'reviews_heading', 'Comentários'),
(1657, 2, 'products', 'product_not_found', 'Produto não encontrado!'),
(1658, 2, 'products', 'number_of_product_reviews', 'Comente nesse artigo:'),
(1659, 2, 'products', 'including_tax', 'incl. imposto'),
(1660, 2, 'products', 'in_stock', 'Em stock'),
(1661, 2, 'products', 'out_of_stock', 'Fora de estoque'),
(1662, 2, 'products', 'not_available', 'Não disponível'),
(1663, 2, 'products', 'field_sku', 'UME'),
(1664, 2, 'products', 'field_availability', 'Disponibilidade:'),
(1665, 2, 'products', 'field_quantity', 'Quantidade:'),
(1666, 2, 'products', 'field_moq', 'Quantidade mínima Ordem:'),
(1667, 2, 'products', 'field_order_increment', 'Incremento Ordem:'),
(1668, 2, 'products', 'field_sample_url', 'Exemplo de arquivo:'),
(1669, 2, 'products', 'field_gift_certificate_amount', 'Valor:'),
(1670, 2, 'products', 'field_senders_name', 'Nome do remetente:'),
(1671, 2, 'products', 'field_senders_email', 'Email:'),
(1672, 2, 'products', 'field_recipients_name', 'Nome do destinatário:'),
(1673, 2, 'products', 'field_recipients_email', 'E-mail do destinatário:'),
(1674, 2, 'products', 'fields_gift_certificate_message', 'Mensagem:'),
(1675, 2, 'products', 'field_short_quantity', 'Qtd:'),
(1676, 2, 'products', 'field_products_name', 'Nome do produto:'),
(1677, 2, 'products', 'field_products_price', 'Preço do produto:'),
(1678, 2, 'products', 'field_products_weight', 'Peso do produto:'),
(1679, 2, 'products', 'field_products_sku', 'Produtos UME:'),
(1680, 2, 'products', 'field_products_manufacturer', 'Fabricante:'),
(1681, 2, 'products', 'field_products_description', 'Descrição do produto:'),
(1682, 2, 'products', 'error_sender_name_empty', 'Por favor, especifique o envio de nome.'),
(1683, 2, 'products', 'error_sender_email_empty', 'Por favor, especifique o envio de e-mail.'),
(1684, 2, 'products', 'error_recipient_name_empty', 'Por favor, especifique o nome do destinatário.'),
(1685, 2, 'products', 'error_recipient_email_empty', 'Por favor, especifique o e-mail do destinatário.'),
(1686, 2, 'products', 'error_message_empty', 'Por favor, especifique a mensagem.'),
(1687, 2, 'products', 'error_message_open_gift_certificate_amount', 'O valor presente certificado deve ser maior do que %s e menos %s.'),
(1688, 2, 'products', 'error_customization_field_must_be_specified', 'Por favor, especifique um valor para o campo de personalização:% s.'),
(1689, 2, 'products', 'error_gift_certificate_data_missing', 'Por favor, especifique os dados para o vale presente.'),
(1690, 2, 'products', 'error_customization_fields_missing', 'Por favor, verifique a personalização do produto antes de adicionar o produto ao carrinho de compras.'),
(1691, 2, 'products', 'go_to_external_products_webpage', 'Para obter mais informações, visite a produtos <a href="%s" target="_blank">webpage</a>.'),
(1692, 2, 'products', 'date_availability', '<font color="#ff0000"> Este produto estará em estoque % s. </font>'),
(1693, 2, 'products', 'section_heading_products_description', 'A descrição do produto'),
(1694, 2, 'products', 'product_attributes', 'Opções disponíveis:'),
(1695, 2, 'products', 'enlarge_image', 'Clique para Ampliar'),
(1696, 2, 'products', 'date_added', 'Adicionar Data:'),
(1697, 2, 'products', 'manufacturer', 'Fabricante:'),
(1698, 2, 'products', 'price', 'Preço:'),
(1699, 2, 'products', 'login_to_write_review', 'Por favor, para escrever um comentário <a href="%s"><b>clique aqui</b></a> e acesse a sua conta.'),
(1700, 2, 'products', 'average_rating', 'Avaliação:');
INSERT INTO `soc_languages_definitions` (`id`, `languages_id`, `content_group`, `definition_key`, `definition_value`) VALUES
(1701, 2, 'products', 'login_to_write_review', 'Por favor, para escrever um comentário <a href="%s"><b>clique aqui</b></a> e acesse a sua conta.'),
(1702, 2, 'products', 'no_review', 'Não foram feitos comentários para este produto ainda.'),
(1703, 2, 'products', 'heading_write_review', 'ESCREVER COMENTÁRIO'),
(1704, 2, 'products', 'introduction_rating', 'Como você avalia este produto?'),
(1705, 2, 'products', '1_star', '1 Estrela'),
(1706, 2, 'products', '2_star', '2 Estrelas'),
(1707, 2, 'products', '3_star', '3 Estrelas'),
(1708, 2, 'products', '4_star', '4 Estrelas'),
(1709, 2, 'products', '5_star', '5 Estrelas'),
(1710, 2, 'products', 'rating_of_5_stars', '%s de 5 estrelas!'),
(1711, 2, 'products', 'no_reviews_available', 'Nenhum comentário encontrado.'),
(1712, 2, 'products', 'new_review_title', 'Nova Revisão'),
(1713, 2, 'products', 'field_review_rating', 'Classificação'),
(1714, 2, 'products', 'field_review', 'Comente'),
(1715, 2, 'products', 'field_review_from', 'De:'),
(1716, 2, 'products', 'introduction_rating', 'Como você avalia este produto?'),
(1717, 2, 'products', 'login_to_write', 'Acesse a sua conta para escrever seus comentários.'),
(1718, 2, 'products', 'review_lowest_rating_title', 'Ruim'),
(1719, 2, 'products', 'review_highest_rating_title', 'Bom'),
(1720, 2, 'products', 'customer_details_title', 'Seus detalhes'),
(1721, 2, 'products', 'friend_details_title', 'Dados do seu amigo'),
(1722, 2, 'products', 'tell_a_friend_message', 'Sua mensagem'),
(1723, 2, 'products', 'field_tell_a_friend_customer_name', 'Seu Nome:'),
(1724, 2, 'products', 'field_tell_a_friend_customer_email_address', 'Seu endereço de E-Mail:'),
(1725, 2, 'products', 'field_tell_a_friend_friends_name', 'Nome de seu amigo:'),
(1726, 2, 'products', 'field_tell_a_friend_friends_email_address', 'Seus Amigos E-Mail:'),
(1727, 2, 'products', 'email_tell_a_friend_subject', 'Seu amigo %s recomendou este produto %s'),
(1728, 2, 'products', 'email_tell_a_friend_intro', 'Oi %s!\n\nSeu amigo, %s pensei que você estaria interessado em %s'),
(1729, 2, 'products', 'email_tell_a_friend_link', 'Para visualizar o produto clique no link abaixo ou copie e cole o link no seu navegador web:'),
(1730, 2, 'products', 'email_tell_a_friend_signature', 'Atenciosamente,\n\n%s'),
(1731, 2, 'products', 'success_review_new', 'Obrigado pela sua opinião! Ela foi recebida e está ativa!'),
(1732, 2, 'products', 'success_review_moderation', 'Obrigado pela sua opinião! Ela foi recebida e está pendente para aprovação.'),
(1733, 2, 'products', 'success_tell_a_friend_email_sent', 'Seu e-mail sobre %s foi enviada com sucesso para %s.'),
(1734, 2, 'products', 'error_tell_a_friend_friends_name_empty', 'Erro: Nome do seu amigo não deve estar vazio.'),
(1735, 2, 'products', 'error_tell_a_friend_invalid_friends_email_address', 'Erro Endereço: Seus amigos de correio eletrónico deve ser um email válido.'),
(1736, 2, 'products', 'error_tell_a_friend_customers_name_empty', 'Erro: O seu nome não deve ser vazio.'),
(1737, 2, 'products', 'error_tell_a_friend_invalid_customers_email_address', 'Erro: O seu endereço de e-mail deve ser um endereço válido de e-mail.'),
(1738, 2, 'search', 'breadcrumb_search', 'Busca'),
(1739, 2, 'search', 'breadcrumb_search_results', 'Resultados'),
(1740, 2, 'search', 'search_heading', 'Busca'),
(1741, 2, 'search', 'advanced_search_heading', 'Busca Avançada'),
(1742, 2, 'search', 'search_results_heading', 'Resultados da Busca'),
(1743, 2, 'search', 'search_criteria_title', 'Critérios da Busca'),
(1744, 2, 'search', 'field_search_categories', 'Categorias:'),
(1745, 2, 'search', 'field_search_recursive', 'Incluir Subcategorias'),
(1746, 2, 'search', 'field_search_manufacturers', 'Fabricantes:'),
(1747, 2, 'search', 'field_search_price_from', 'Preço de:'),
(1748, 2, 'search', 'field_search_price_to', 'Preço até:'),
(1749, 2, 'search', 'field_search_date_from', 'Data de:'),
(1750, 2, 'search', 'field_search_date_to', 'Data até:'),
(1751, 2, 'search', 'search_help_tips', 'Ajuda da Busca'),
(1752, 2, 'search', 'search_help_heading', 'Ajuda da Busca'),
(1753, 2, 'search', 'search_help', 'Palavras-Chave devem ser separadas pelos parâmetros E e/ou OU para um maior controle nos resultados da busca.<br /><br />Por exemplo, <u>Microsoft E mouse</u> irão gerar um resultado que contém ambas as palavras. Entretanto, para <u>mouse OU teclado</u>, o resultado irá conter ambas as palavras ou apenas uma.<br /><br />Resultados exatos podem ser feitos juntando as palvras-chave em quotas dupla.<br /><br />Por exemplo, <u>"computador notebook"</u> irá gerar um resultado exato com a frase desejada.<br /><br />Parênteses podem ser usados para um controle maior no resultado da busca.<br /><br />Por exemplo, <u>Microsoft e (teclado ou mouse ou "visual basic")</u>.'),
(1754, 2, 'general', 'close_window', 'Fechar Janela'),
(1755, 2, 'search', 'error_search_at_least_one_input', 'Ao menos um dos campos no formulario de busca deve ser preenchido.'),
(1756, 2, 'search', 'error_search_invalid_from_date', '''Data de'' inválida.'),
(1757, 2, 'search', 'error_search_invalid_to_date', '''Data até'' inválida.'),
(1758, 2, 'search', 'error_search_to_date_less_than_from_date', 'A ''Data de:'' deve ser maior ou igual à ''Data até:''.'),
(1759, 2, 'search', 'error_search_price_from_not_numeric', '''Preço de:'' deve ser um número.'),
(1760, 2, 'search', 'error_search_price_to_not_numeric', '''Preço até:'' deve ser um número.'),
(1761, 2, 'search', 'error_search_price_to_less_than_price_from', '''Preço até:'' deve ser maior ou igual ao ''Preço de:'''),
(1762, 2, 'search', 'error_search_invalid_keywords', 'Palavras-chave inválidas.'),
(1763, 2, 'products', 'js_review_text', '* Rever o texto deve ter pelo menos caracteres.'),
(1764, 2, 'products', 'js_review_rating', '* Você taxa deve o produto para sua revisão.'),
(1765, 2, 'products', 'js_customization_file_size', 'O tamanho do arquivo deve ser menor que %s.'),
(1766, 2, 'checkout', 'js_no_payment_module_selected', '* Por favor seleccione um método de pagamento para o seu fim.'),
(1767, 2, 'checkout', 'error_no_payment_module_selected', 'Por favor selecione um método de pagamento para o seu fim.'),
(1768, 2, 'checkout', 'error_conditions_not_accepted', 'Por favor, confirme os termos e condições vinculadas a este fim, assinalando a caixa abaixo.'),
(1769, 2, 'account', 'error_privacy_statement_not_accepted', 'Por favor confirme a política de privacidade assinalando a caixa abaixo.'),
(1770, 2, 'general', 'field_customer_gender', 'Sexo:'),
(1771, 2, 'general', 'field_customer_gender_error', 'Por favor, selecione o sexo.'),
(1772, 2, 'general', 'field_customer_first_name', 'Primeiro Nome:'),
(1773, 2, 'general', 'field_customer_first_name_error', 'Seu Primeiro Nome precisa ter no mínimo %s caracteres.'),
(1774, 2, 'general', 'field_customer_last_name', 'Último Nome:'),
(1775, 2, 'general', 'field_customer_last_name_error', 'Seu último nome precisa ter no mínimo %s caracteres.'),
(1776, 2, 'general', 'field_customer_date_of_birth', 'Data de Nascimento:'),
(1777, 2, 'general', 'field_customer_date_of_birth_error', 'Informe sua data de nascimento corretamente.'),
(1778, 2, 'general', 'field_customer_email_address', 'Endereço de Email:'),
(1779, 2, 'general', 'field_customer_group', 'Grupo de Clientes'),
(1780, 2, 'general', 'field_customer_store_credit', 'Crédito na Loja'),
(1781, 2, 'general', 'field_customer_email_address_error', 'Seu Email deve ter no mínimo %S caracteres.'),
(1782, 2, 'general', 'field_customer_email_address_check_error', 'Seu endereço de e-mail não é válido - por favor, corrija-o.'),
(1783, 2, 'general', 'field_customer_email_address_exists_error', 'Seu endereço de e-mail já existe em nossos registros - por favor, efetue login com esse endereço ou crie uma conta usando um novo endereço.'),
(1784, 2, 'general', 'field_customer_company', 'Nome da empresa:'),
(1785, 2, 'general', 'field_customer_company_error', 'O nome da sua empresa deve conter um mínimo de %s caracteres.'),
(1786, 2, 'general', 'field_customer_street_address', 'Endereço (rua):'),
(1787, 2, 'general', 'field_customer_street_address_error', 'Seu endereço deve conter um mínimo de %s caracteres.'),
(1788, 2, 'general', 'field_customer_suburb', 'Bairro:'),
(1789, 2, 'general', 'field_customer_suburb_error', 'Seu bairro deve conter no mínimo %s caracteres.'),
(1790, 2, 'general', 'field_customer_post_code', 'Código Postal (CEP):'),
(1791, 2, 'general', 'field_customer_post_code_error', 'Seu código postal deve conter no mínimo %s caracteres.'),
(1792, 2, 'general', 'field_customer_city', 'Cidade:'),
(1793, 2, 'general', 'field_customer_city_error', 'Sua cidade deve conter no mínimo %s caracteres.'),
(1794, 2, 'general', 'field_customer_state', 'Estado/Província:'),
(1795, 2, 'general', 'field_customer_state_error', 'Seu estado deve conter um mínimo de %s caracteres.'),
(1796, 2, 'general', 'field_customer_state_select_pull_down_error', 'Por favor, selecione um estado na lista de estados.'),
(1797, 2, 'general', 'field_customer_country', 'País:'),
(1798, 2, 'general', 'field_customer_country_error', 'Você deve selecionar um país na lista de países.'),
(1799, 2, 'general', 'field_customer_telephone_number', 'Número de Telefone:'),
(1800, 2, 'general', 'field_customer_telephone_number_error', 'Seu número de telefone deve conter no mínimo %s caracteres.'),
(1801, 2, 'general', 'field_customer_fax_number', 'Número Fax:'),
(1802, 2, 'general', 'field_customer_fax_number_error', 'Seu número de Fax deve conter um mínimo de %s'),
(1803, 2, 'general', 'field_customer_newsletter', 'Boletim de notícias:'),
(1804, 2, 'general', 'field_customer_password', 'Senha:'),
(1805, 2, 'general', 'field_customer_password_error', 'A sua senha deverá conter um mínimo de %s caracteres.'),
(1806, 2, 'general', 'field_customer_password_mismatch_with_confirmation', 'A confirmação da senha deve coincidir com aquela anteriormente digitada.'),
(1807, 2, 'general', 'field_customer_password_confirmation', 'Confirme a senha:'),
(1808, 2, 'general', 'field_customer_password_current', 'Senha atual.'),
(1809, 2, 'general', 'field_customer_password_current_error', 'Sua senha deve conter no mínimo %s caracteres.'),
(1810, 2, 'general', 'field_customer_password_new', 'Nova Senha'),
(1811, 2, 'general', 'field_customer_password_new_error', 'A sua nova senha deverá conter no mínimo %s caracteres.'),
(1812, 2, 'general', 'field_customer_password_new_mismatch_with_confirmation_error', 'A confirmação da senha deve coincidir com a nova senha escolhida.'),
(1813, 2, 'products', 'reviewed_by', 'por %s'),
(1814, 2, 'products', 'review_rating', 'Avaliação: %s [%s]'),
(1815, 2, 'products', 'no_review', 'Não foram feitos comentários para este produto ainda.'),
(1816, 2, 'products', 'field_posted_on', 'Postado em'),
(1817, 2, 'products', 'heading_write_review', 'ESCREVER COMENTÁRIO'),
(1818, 2, 'products', 'review_date_added', 'Adicionar Data: %s'),
(1819, 2, 'general', 'credit_card_number_error', 'O número do cartão de crédito é inválido.<br />Favor verificar e tentar novamente.'),
(1820, 2, 'general', 'maximum_file_upload_size', '(Máx: %s)'),
(1821, 2, 'general', 'field_concat_captcha_check_error', 'ERRO: Por favor, especifique o texto de verificação correto.'),
(1822, 2, 'general', 'field_customer_name_error', 'ERRO: Favor digitar seu nome completo'),
(1823, 2, 'general', 'field_customer_concat_email_error', 'ERRO: Por favor, digite um endereço de e-mail válido'),
(1824, 2, 'general', 'field_departments_email_error', 'ERRO: Por favor, especifique o departamento correto para entrar em contato por e-mail'),
(1825, 2, 'general', 'field_customer_name_required', 'ERRO: Favor digitar seu nome completo'),
(1826, 2, 'general', 'field_enquiry_error', 'ERRO: Por favor, digite sua intenção de busca'),
(1827, 2, 'general', 'field_telephone_error', 'ERRO: Por favor, digite o telefone de contato'),
(1828, 2, 'modules-boxes', 'box_articles_categories_heading', 'Categorias de Artigos'),
(1829, 2, 'modules-boxes', 'box_best_sellers_heading', 'Best Sellers'),
(1830, 2, 'modules-boxes', 'box_categories_heading', 'Categorias'),
(1831, 2, 'modules-boxes', 'box_ordering_steps_heading', 'Ordenação de Passos'),
(1832, 2, 'modules-boxes', 'box_ordering_steps_delivery', 'Informação sobre remessa'),
(1833, 2, 'modules-boxes', 'box_ordering_steps_payment', 'Informação sobre Pagamento'),
(1834, 2, 'modules-boxes', 'box_ordering_steps_confirmation', 'Confirmação'),
(1835, 2, 'modules-boxes', 'box_ordering_steps_complete', 'Finalizado!'),
(1836, 2, 'modules-boxes', 'box_compare_products_heading', 'Comparar Produtos'),
(1837, 2, 'modules-boxes', 'box_currencies_heading', 'Moedas'),
(1838, 2, 'modules-boxes', 'box_faqs_heading', 'FAQs'),
(1839, 2, 'modules-boxes', 'box_guest_book_heading', 'Livro de visitas'),
(1840, 2, 'modules-boxes', 'box_information_heading', 'Informação'),
(1841, 2, 'modules-boxes', 'box_information_privacy', 'Privacidade'),
(1842, 2, 'modules-boxes', 'box_information_conditions', 'Condições de Uso'),
(1843, 2, 'modules-boxes', 'box_information_shipping', 'Remessas e Retornos'),
(1844, 2, 'modules-boxes', 'box_information_contact', 'Fale Conosco'),
(1845, 2, 'modules-boxes', 'box_information_sitemap', 'Mapa do Site'),
(1846, 2, 'modules-boxes', 'box_languages_heading', 'Idiomas'),
(1847, 2, 'modules-boxes', 'box_lastest_news_heading', 'Últimas Notícias'),
(1848, 2, 'modules-boxes', 'box_manufacturer_info_heading', 'Informações de Fabricantes'),
(1849, 2, 'modules-boxes', 'box_manufacturer_info_website', '%s''s Visitas no website'),
(1850, 2, 'modules-boxes', 'box_manufacturer_info_products', 'Ver outros produtos'),
(1851, 2, 'modules-boxes', 'box_manufacturers_heading', 'Fabricantes'),
(1852, 2, 'modules-boxes', 'box_order_history_heading', 'Histórico de Pedidos'),
(1853, 2, 'modules-boxes', 'box_polls_heading', 'Pesquisa'),
(1854, 2, 'modules-boxes', 'box_polls_one_vote_per_ip_error', 'Erro: Somente um voto por IP é permitido por enquete.'),
(1855, 2, 'modules-boxes', 'box_polls_votes', 'Votos'),
(1856, 2, 'modules-boxes', 'box_popular_search_terms_tag_cloud_heading', 'Termos de busca mais usados'),
(1857, 2, 'modules-boxes', 'box_product_notifications_heading', 'Atualizações de produto'),
(1858, 2, 'modules-boxes', 'box_product_notifications_add', 'Avise-me de atualizações do produto %s'),
(1859, 2, 'modules-boxes', 'box_product_notifications_remove', 'Não me avise de atualizações do produto %s'),
(1860, 2, 'modules-boxes', 'box_products_scroller_heading', 'Produtos Scroller'),
(1861, 2, 'modules-content', 'products_scroller_new_products_title', 'Produtos Novos'),
(1862, 2, 'modules-content', 'products_scroller_special_products_title', 'Produtos Especiais'),
(1863, 2, 'modules-content', 'products_scroller_best_sellers_title', 'Mais Vendidos'),
(1864, 2, 'modules-boxes', 'box_reviews_heading', 'Comentários'),
(1865, 2, 'modules-boxes', 'box_reviews_write', 'Escreva um comentário neste produto!'),
(1866, 2, 'modules-boxes', 'box_reviews_stars_rating', '%5 de 5 estrelas!'),
(1867, 2, 'modules-boxes', 'box_search_heading', 'Pesquisar'),
(1868, 2, 'modules-boxes', 'box_search_text', '(tente a busca avançada)'),
(1869, 2, 'modules-boxes', 'box_shop_by_price_heading', 'Comprar por preço'),
(1870, 2, 'modules-boxes', 'box_shopping_cart_heading', 'Carrinho de Compras'),
(1871, 2, 'modules-boxes', 'box_shopping_cart_empty', '0 items'),
(1872, 2, 'modules-boxes', 'box_shopping_cart_subtotal', 'Subtotal:'),
(1873, 2, 'modules-boxes', 'box_specials_heading', 'Promoções'),
(1874, 2, 'modules-boxes', 'box_tell_a_friend_heading', 'Indique a um amigo'),
(1875, 2, 'modules-boxes', 'box_tell_a_friend_text', 'Indique este produto para alguém.'),
(1876, 2, 'modules-boxes', 'box_templates_heading', 'Templates'),
(1877, 2, 'modules-boxes', 'box_whats_new_heading', 'Produtos Novos'),
(1878, 2, 'modules-content', 'customers_also_purchased_title', 'Clientes que compraram este produto também compraram'),
(1879, 2, 'modules-content', 'feature_products_title', 'Destacar Produtos'),
(1880, 2, 'modules-content', 'box_guestbook_heading', 'Livro de visitas'),
(1881, 2, 'modules-content', 'box_list_guest_book_heading', 'Todos os livros de visitas'),
(1882, 2, 'modules-content', 'box_guest_book_info_heading', 'Informações do Livro de Visitas'),
(1883, 2, 'modules-content', 'image_menu_show_title', 'Menu'),
(1884, 2, 'modules-content', 'new_products_title', 'Produtos Novos'),
(1885, 2, 'modules-content', 'products_slider_title', 'Produtos Slider'),
(1886, 2, 'modules-content', 'products_slider_new_products_title', 'Produtos Novos'),
(1887, 2, 'modules-content', 'products_slider_special_products_title', 'Produtos Especiais'),
(1888, 2, 'modules-content', 'products_slider_best_sellers_title', 'Melhor Loja'),
(1889, 2, 'modules-content', 'recently_visited_title', 'Histórico da navegação'),
(1890, 2, 'modules-content', 'recently_visited_products_title', 'Produtos visitados recentemente'),
(1891, 2, 'modules-content', 'recently_visited_categories_title', 'Categorias recentes'),
(1892, 2, 'modules-content', 'recently_visited_searches_title', 'Pesquisas recentes'),
(1893, 2, 'modules-content', 'recently_visited_item_in_category', 'em %s'),
(1894, 2, 'modules-content', 'slide_show_title', 'Slideshow'),
(1895, 2, 'modules-content', 'upcoming_products_title', 'Próximos Produtos'),
(1896, 2, 'modules-content', 'xsell_products_title', 'Cross Venda de Produtos'),
(1897, 2, 'modules-order_total', 'order_total_coupon_title', 'Cupom'),
(1898, 2, 'modules-order_total', 'order_total_coupon_description', 'Cupom'),
(1899, 2, 'modules-order_total', 'order_total_gift_certificate_title', 'Certidão Gift'),
(1900, 2, 'modules-order_total', 'order_total_gift_certificate_description', 'Certidão Gift'),
(1901, 2, 'modules-order_total', 'order_total_gift_wrapping_title', 'Embrulhos'),
(1902, 2, 'modules-order_total', 'order_total_gift_wrapping_description', 'Embrulhos'),
(1903, 2, 'modules-order_total', 'gift_wrapping_heading', 'Embrulhos'),
(1904, 2, 'modules-order_total', 'gift_wrapping_description', 'Por favor, marque a caixa de seleção para pedir que seu Produto (s) seja embrulhado para presente. O acréscimo deste serviço é de -s%.'),
(1905, 2, 'modules-order_total', 'order_total_loworderfee_title', 'Baixa Taxa de Ordem'),
(1906, 2, 'modules-order_total', 'order_total_loworderfee_description', 'Baixa Taxa de Ordem'),
(1907, 2, 'modules-order_total', 'order_total_shipping_title', 'Expedição'),
(1908, 2, 'modules-order_total', 'order_total_shipping_description', 'O custo de expedição de ordem'),
(1909, 2, 'modules-order_total', 'order_total_store_credit_title', 'Crédito na Loja'),
(1910, 2, 'modules-order_total', 'order_total_store_credit_description', 'Crédito na Loja'),
(1911, 2, 'modules-order_total', 'order_total_subtotal_title', 'Subtotal'),
(1912, 2, 'modules-order_total', 'order_total_subtotal_description', 'Subtotal do Pedido'),
(1913, 2, 'modules-order_total', 'order_total_tax_title', 'Imposto'),
(1914, 2, 'modules-order_total', 'order_total_tax_description', 'Imposto do Pedido'),
(1915, 2, 'modules-order_total', 'order_total_total_title', 'Total'),
(1916, 2, 'modules-order_total', 'order_total_total_description', 'Ordem Total'),
(1917, 2, 'modules-payment', 'payment_amazon_title', 'Amazon IPN'),
(1918, 2, 'modules-payment', 'payment_amazon_description', 'Amazon IPN'),
(1919, 2, 'modules-payment', 'payment_amazon_method_title', 'Amazon IPN'),
(1920, 2, 'modules-payment', 'payment_authorizenet_cc_title', 'Authorize.net Cartão de Crédito'),
(1921, 2, 'modules-payment', 'payment_authorizenet_cc_description', 'Authorize.net Cartão de Crédito Transações'),
(1922, 2, 'modules-payment', 'payment_authorizenet_cc_method_title', 'Cartão de Crédito'),
(1923, 2, 'modules-payment', 'payment_authorizenet_cc_credit_card_owner', 'Proprietário do cartão de crédito:'),
(1924, 2, 'modules-payment', 'payment_authorizenet_cc_credit_card_number', 'Número do Cartão:'),
(1925, 2, 'modules-payment', 'payment_authorizenet_cc_credit_card_expiry_date', 'Data de vencimento do cartão de crédito:'),
(1926, 2, 'modules-payment', 'payment_authorizenet_cc_credit_card_cvc', 'Crartão de Crédito Check Numero (CVC):'),
(1927, 2, 'modules-payment', 'payment_authorizenet_cc_js_credit_card_owner', '* O nome do proprietário do cartão de crédito deve ser de pelo menos caracteres'),
(1928, 2, 'modules-payment', 'payment_authorizenet_cc_js_credit_card_number', '* O número do cartão de crédito deve ser de pelo meno caracteres.'),
(1929, 2, 'modules-payment', 'payment_authorizenet_cc_js_credit_card_not_accepted', '* Este tipo de cartão de crédito não é aceite. Por favor, tente novamente com outro cartão ou o método de pagamento'),
(1930, 2, 'modules-payment', 'payment_authorizenet_cc_js_credit_card_cvc', '* O número de segurança do  cartão de crédito (CVC) deve ser pelo menos 3 caracteres.'),
(1931, 2, 'modules-payment', 'payment_authorizenet_cc_error_general', 'Houve um problema ao processar o cartão de crédito. Por favor, verifique as informações do cartão e tente novamente.'),
(1932, 2, 'modules-payment', 'payment_authorizenet_cc_error_not_accepted', 'Este tipo de cartão de crédito não é aceite. Por favor, tente novamente com outro cartão ou o método de pagamento.'),
(1933, 2, 'modules-payment', 'payment_authorizenet_cc_error_invalid_expiration_date', 'A data de vencimento do cartão de crédito é inválido. Por favor, verifique as informações do cartão e tente novamente.'),
(1934, 2, 'modules-payment', 'payment_authorizenet_cc_error_expired', 'O cartão de crédito expirou. Por favor, tente novamente com outro cartão ou o método de pagamento.'),
(1935, 2, 'modules-payment', 'payment_authorizenet_cc_error_unknown_card', 'O cartão de crédito expirou. Por favor, tente novamente com outro cartão ou o método de pagamento.'),
(1936, 2, 'modules-payment', 'payment_authorizenet_echeck_title', 'Verifique e Authorize.net'),
(1937, 2, 'modules-payment', 'payment_authorizenet_echeck_description', 'Verifique Transações Authorize.net'),
(1938, 2, 'modules-payment', 'payment_authorizenet_echeck_method_title', 'Conta bancária/cheque'),
(1939, 2, 'modules-payment', 'payment_authorizenet_echeck_owner', 'Proprietário da Conta:'),
(1940, 2, 'modules-payment', 'payment_authorizenet_echeck_account_type', 'Tipo de conta:'),
(1941, 2, 'modules-payment', 'payment_authorizenet_echeck_account_type_checking', 'Verificação'),
(1942, 2, 'modules-payment', 'payment_authorizenet_echeck_account_type_business_checking', 'Business Verificação'),
(1943, 2, 'modules-payment', 'payment_authorizenet_echeck_account_type_savings', 'Poupança'),
(1944, 2, 'modules-payment', 'payment_authorizenet_echeck_account_number', 'Número da conta:'),
(1945, 2, 'modules-payment', 'payment_authorizenet_echeck_bank_name', 'Nome do Banco:'),
(1946, 2, 'modules-payment', 'payment_authorizenet_echeck_routing_code', 'Encaminhamento Code::'),
(1947, 2, 'modules-payment', 'payment_authorizenet_echeck_tax_id', 'Tax ID ou CPF:'),
(1948, 2, 'modules-payment', 'payment_authorizenet_echeck_org_type', 'Tipo de Organização:'),
(1949, 2, 'modules-payment', 'payment_authorizenet_echeck_org_type_individual', 'Individual'),
(1950, 2, 'modules-payment', 'payment_authorizenet_echeck_org_type_business', 'Negócio'),
(1951, 2, 'modules-payment', 'payment_authorizenet_echeck_js_owner', '* Por favor, indique o nome dos proprietários da conta bancária.'),
(1952, 2, 'modules-payment', 'payment_authorizenet_echeck_js_account_number', '* Por favor, indique o número da conta da conta bancária.'),
(1953, 2, 'modules-payment', 'payment_authorizenet_echeck_js_bank_name', '* Por favor insira o nome do banco da conta bancária.'),
(1954, 2, 'modules-payment', 'payment_authorizenet_echeck_js_routing_code', '* O banco código de roteamento deve consistir em números.'),
(1955, 2, 'modules-payment', 'payment_authorizenet_echeck_js_tax_id', '* O número de identificação fiscal ou CPF deve consistir em números.'),
(1956, 2, 'modules-payment', 'payment_authorizenet_echeck_error_general', 'Houve um problema de processamento desta conta bancária. Por favor, verifique as informações da conta e tente novamente'),
(1957, 2, 'modules-payment', 'payment_authorizenet_echeck_error_routing_code', 'O banco de código de roteamento deve consistir em números. Por favor, verifique as informações da conta e tente novamente'),
(1958, 2, 'modules-payment', 'payment_authorizenet_echeck_error_invalid_routing_code', 'Houve um problema de processamento do banco de roteamento de código. Por favor, verifique as informações da conta e tente novamente.'),
(1959, 2, 'modules-payment', 'payment_authorizenet_echeck_error_invalid_account', 'Houve um problema ao processar o número da conta bancária. Por favor, verifique as informações da conta e tente novamente.'),
(1960, 2, 'modules-payment', 'payment_authorizenet_echeck_error_tax_id', 'O número de identificação fiscal ou CPF deve consistir em números. Por favor, verifique as informações da conta e tente novamente.'),
(1961, 2, 'modules-payment', 'payment_authorizenet_echeck_error_invalid_tax_id', 'Houve um problema ao processar o número de identificação fiscal ou CPF. Por favor, verifique as informações da conta e tente novamente.'),
(1962, 2, 'modules-payment', 'payment_authorizenet_echeck_confirmation_message', 'Ao confirmar esta ordem Autorizo %s para carregar a minha conta %s em para a quantidade de para os itens nessa ordem.'),
(1963, 2, 'modules-payment', 'payment_bank_wire_title', 'Transferência Bancária'),
(1964, 2, 'modules-payment', 'payment_bank_wire_description', 'Transferência Bancária'),
(1965, 2, 'modules-payment', 'payment_bank_wire_method_title', 'Transferência Bancária'),
(1966, 2, 'modules-payment', 'payment_bank_wire_bank_account_owner', 'Titular da Conta'),
(1967, 2, 'modules-payment', 'payment_bank_wire_bank_detail', 'Informações Bancárias'),
(1968, 2, 'modules-payment', 'payment_bank_wire_bank_address', 'Endereço Bancário'),
(1969, 2, 'modules-payment', 'payment_cc_title', 'Cartão de Crédito'),
(1970, 2, 'modules-payment', 'payment_cc_description', 'Infor. Cartão de Crédito:<br /><br />CC#: 4111111111111111<br />Prazo de vencimento: Qualquer'),
(1971, 2, 'modules-payment', 'payment_cc_method_title', 'Cartão de Crédito'),
(1972, 2, 'modules-payment', 'payment_cc_credit_card_owner', 'Proprietário do cartão de crédito:'),
(1973, 2, 'modules-payment', 'payment_cc_credit_card_number', 'Número do Cartão:'),
(1974, 2, 'modules-payment', 'payment_cc_credit_card_expiry_date', 'Data de vencimento do cartão de crédito:'),
(1975, 2, 'modules-payment', 'payment_cc_js_credit_card_owner', '* O nome do proprietário do cartão de crédito deve ser de pelo menos caracteres'),
(1976, 2, 'modules-payment', 'payment_cc_js_credit_card_number', '* O número do cartão de crédito deve ser de pelo menos caracteres.'),
(1977, 2, 'modules-payment', 'payment_cc_js_credit_card_not_accepted', '* Este tipo de cartão de crédito não é aceite. Por favor, tente novamente com outro cartão ou o método de pagamento.'),
(1978, 2, 'modules-payment', 'payment_cc_error_general', 'Houve um problema ao processar o cartão de crédito. Por favor, verifique as informações do cartão e tente novamente.'),
(1979, 2, 'modules-payment', 'payment_cc_error_not_accepted', 'Este tipo de cartão de crédito não é aceite. Por favor, tente novamente com outro cartão ou o método de pagamento.'),
(1980, 2, 'modules-payment', 'payment_cc_error_invalid_expiration_date', 'A data de vencimento do cartão de crédito é inválido. Por favor, verifique as informações do cartão e tente novamente.'),
(1981, 2, 'modules-payment', 'payment_cc_error_expired', 'O cartão de crédito expirou. Por favor, tente novamente com outro cartão ou o método de pagamento.'),
(1982, 2, 'modules-payment', 'payment_cc_error_unknown_card', 'Este é um cartão de crédito desconhecido que não pode ser processado. Por favor, tente novamente com outro cartão ou o método de pagamento.'),
(1983, 2, 'modules-payment', 'payment_cheque_title', 'Cheque'),
(1984, 2, 'modules-payment', 'payment_cheque_description', 'Cheque'),
(1985, 2, 'modules-payment', 'payment_cheque_method_title', 'Cheque'),
(1986, 2, 'modules-payment', 'payment_cheque_account_owner', 'Para o pedido de'),
(1987, 2, 'modules-payment', 'payment_cheque_address', 'Endereço'),
(1988, 2, 'modules-payment', 'payment_chronopay_title', 'ChronoPay'),
(1989, 2, 'modules-payment', 'payment_chronopay_description', 'ChronoPay'),
(1990, 2, 'modules-payment', 'payment_chronopay_method_title', 'Cartão de Crédito'),
(1991, 2, 'modules-payment', 'payment_cod_title', 'Pagamento na entrega'),
(1992, 2, 'modules-payment', 'payment_cod_description', 'Pagamento na entrega'),
(1993, 2, 'modules-payment', 'payment_cod_method_title', 'Pagamento na entrega'),
(1994, 2, 'modules-payment', 'payment_eway_title', 'eWay Pagamento com cartão de crédito'),
(1995, 2, 'modules-payment', 'payment_eway_description', 'eWay Pagamento com cartão de crédito'),
(1996, 2, 'modules-payment', 'payment_eway_method_title', 'eWay Pagamento com cartão de crédito'),
(1997, 2, 'modules-payment', 'payment_eway_au_title', 'Pagamento eWay'),
(1998, 2, 'modules-payment', 'payment_eway_au_description', 'Pagamento eWay'),
(1999, 2, 'modules-payment', 'payment_eway_au_method_title', 'Pagamento eWay'),
(2000, 2, 'modules-payment', 'payment_eway_au_credit_card_owner', 'Proprietário do Cartão de Crédito:'),
(2001, 2, 'modules-payment', 'payment_eway_au_credit_card_number', 'Número do cartão de crédito:'),
(2002, 2, 'modules-payment', 'payment_eway_au_credit_card_expiry_date', 'Validade do Cartão de Crédito:'),
(2003, 2, 'modules-payment', 'payment_eway_au_credit_card_cvv', 'Digito de Verificação:'),
(2004, 2, 'modules-payment', 'payment_eway_eu_js_credit_card_owner', '* O nome do proprietário  ''s do cartão de crédito deve ter pelo menos% s caracteres.'),
(2005, 2, 'modules-payment', 'payment_eway_eu_js_credit_card_number', '* O número do cartão de crédito deve ter pelo menos% s caracteres.'),
(2006, 2, 'modules-payment', 'payment_eway_eu_cc_js_credit_card_cvc', '* O número verificador do cartão (CVC) deve ser de pelo menos 3 caracteres.'),
(2007, 2, 'modules-payment', 'payment_gcheckout_title', 'Google Checkout'),
(2008, 2, 'modules-payment', 'payment_gcheckout_description', 'Google Checkout'),
(2009, 2, 'modules-payment', 'payment_gcheckout_method_title', 'Google Checkout'),
(2010, 2, 'modules-payment', 'payment_gcheckout_merchant_id', 'Usuário da conta do Google'),
(2011, 2, 'modules-payment', 'payment_gcheckout_merchant_key', 'Senha da conta do Google'),
(2012, 2, 'modules-payment', 'payment_inpay_title', 'Inpay - transferências bancárias on-line'),
(2013, 2, 'modules-payment', 'payment_inpay_method_title', 'Pague com o seu banco online - é 100% seguro'),
(2014, 2, 'modules-payment', 'payment_ipayment_title', 'iPayment'),
(2015, 2, 'modules-payment', 'payment_ipayment_description', 'Infor. Teste do Cartão de Crédito:<br /><br />CC#: 4111111111111111<br />Prazo de vencimento: Qualquer'),
(2016, 2, 'modules-payment', 'payment_ipayment_error_heading', 'Houve um erro ao processar seu cartão de crédito'),
(2017, 2, 'modules-payment', 'payment_ipayment_error_message', 'Por favor, verifique o seu cartão de crédito!'),
(2018, 2, 'modules-payment', 'payment_ipayment_credit_card_owner', 'Proprietário do cartão de crédito:'),
(2019, 2, 'modules-payment', 'payment_ipayment_credit_card_number', 'Número do Cartão:'),
(2020, 2, 'modules-payment', 'payment_ipayment_credit_card_expiry_date', 'Data de vencimento do cartão de crédito:'),
(2021, 2, 'modules-payment', 'payment_ipayment_credit_card_checknumber', 'Verifique o número do cartão de crédito:'),
(2022, 2, 'modules-payment', 'payment_ipayment_credit_card_checknumber_location', '(Localizado na parte de trás do cartão de crédito)'),
(2023, 2, 'modules-payment', 'payment_ipayment_js_credit_card_owner', '* O nome do proprietário do cartão de crédito deve ser de pelo menos caracteres.'),
(2024, 2, 'modules-payment', 'payment_ipayment_js_credit_card_number', '* O número do cartão de crédito deve ser de pelo menos caracteres.'),
(2025, 2, 'modules-payment', 'payment_ipayment_credit_card_type', 'Tipo de Cartão de crédito:'),
(2026, 2, 'modules-payment', 'payment_moneybookers_title', 'Moneybookers'),
(2027, 2, 'modules-payment', 'payment_moneybookers_description', 'Moneybookers'),
(2028, 2, 'modules-payment', 'payment_moneybookers_method_title', 'Moneybookers'),
(2029, 2, 'modules-payment', 'payment_moneybookers_email', 'E-mail'),
(2030, 2, 'modules-payment', 'payment_moneyorder_title', 'Verificar/Ordem de Pagamento'),
(2031, 2, 'modules-payment', 'payment_moneyorder_description', 'Para fazer a Pagar:&nbsp;%s<br /><br />Enviar para:<br />%s<br /><br />Seu pedido não será enviado até que recebamos o pagamento.'),
(2032, 2, 'modules-payment', 'payment_moneyorder_email_footer', 'Fazer pagamento para: %s\n\nEnviar para:\n%\n\nSeu pedido não será enviado até que recebamos o pagamento.'),
(2033, 2, 'modules-payment', 'payment_nochex_title', 'NOCHEX'),
(2034, 2, 'modules-payment', 'payment_nochex_method_title', 'NoChex'),
(2035, 2, 'modules-payment', 'payment_nochex_description', 'NOCHEX<br />Requer a moeda GBP.'),
(2036, 2, 'modules-payment', 'payment_ogone_directlink_cc_title', 'Ogone Cartão de Crédito DirectLink'),
(2037, 2, 'modules-payment', 'payment_ogone_directlink_cc_description', 'DirectLink Ogone transações do cartão de crédito'),
(2038, 2, 'modules-payment', 'payment_ogone_directlink_cc_method_title', 'Cartão de Crédito'),
(2039, 2, 'modules-payment', 'payment_ogone_directlink_cc_credit_card_owner', 'Proprietário do cartão de crédito:'),
(2040, 2, 'modules-payment', 'payment_ogone_directlink_cc_credit_card_number', 'Número do Cartão:'),
(2041, 2, 'modules-payment', 'payment_ogone_directlink_cc_credit_card_expiry_date', 'Data de vencimento do cartão de crédito:'),
(2042, 2, 'modules-payment', 'payment_ogone_directlink_cc_credit_card_cvc', 'Cartão de Crédito Numero de Segurança (CVC)'),
(2043, 2, 'modules-payment', 'payment_ogone_directlink_cc_js_credit_card_owner', '* O nome do proprietário do cartão de crédito deve ser de pelo menos caracteres.'),
(2044, 2, 'modules-payment', 'payment_ogone_directlink_cc_js_credit_card_number', '* O número do cartão de crédito deve ser de pelo menos caracteres.'),
(2045, 2, 'modules-payment', 'payment_ogone_directlink_cc_js_credit_card_not_accepted', '* Este tipo de cartão de crédito não é aceite. Por favor, tente novamente com outro cartão ou o método de pagamento.'),
(2046, 2, 'modules-payment', 'payment_ogone_directlink_cc_js_credit_card_cvc', '* O número de segurança do cartão de crédito (CVC) deve ser pelo menos 3 caracteres.'),
(2047, 2, 'modules-payment', 'payment_ogone_directlink_cc_error_general', 'Houve um problema ao processar o cartão de crédito. Por favor, verifique as informações do cartão e tente novamente.'),
(2048, 2, 'modules-payment', 'payment_ogone_directlink_cc_error_not_accepted', 'Este tipo de cartão de crédito não é aceite. Por favor, tente novamente com outro cartão ou o método de pagamento.'),
(2049, 2, 'modules-payment', 'payment_paypal_direct_title', 'PayPal Site  (EUA) Pagamentos Diretos'),
(2050, 2, 'modules-payment', 'payment_paypal_direct_description', '<b> Nota: PayPal exige o módulo de pagamento expresso para o pagamento ser ativado. Verifique se o módulo está ativado.</b><br /><br /><img src="images/icon_popup.gif" border="0">&nbsp;<a href="https://www.paypal.com/mrb/pal=PS2X9Q773CKG4" target="_blank" style="text-decoration: underline; font-weight: bold;">Visite o site da PayPal</a>&nbsp;<a href="javascript:toggleDivBlock(\\''paypalDirectInfo\\'');">(info)</a><span id="paypalDirectInfo" style="display: none;"><br><i>Use o link acima para se cadastrar no PayPal e ofereça a seus clientes um meio de pagamento alternativo.</ i> </ span>'),
(2051, 2, 'modules-payment', 'payment_paypal_direct_method_title', 'Crédito ou Débito (processados ​​de forma segura através do PayPal)'),
(2052, 2, 'modules-payment', 'payment_paypal_direct_card_owner', 'Proprietário do Cartão:'),
(2053, 2, 'modules-payment', 'payment_paypal_direct_card_type', 'Tipo de cartão:'),
(2054, 2, 'modules-payment', 'payment_paypal_direct_card_number', 'Número do cartão:'),
(2055, 2, 'modules-payment', 'payment_paypal_direct_card_valid_from', 'Cartão Válido a partir de:'),
(2056, 2, 'modules-payment', 'payment_paypal_direct_card_valid_from_info', '(se disponível)'),
(2057, 2, 'modules-payment', 'payment_paypal_direct_card_expires', 'Data de validade do cartão:'),
(2058, 2, 'modules-payment', 'payment_paypal_direct_card_cvc', 'Código de Segurança do cartão'),
(2059, 2, 'modules-payment', 'payment_paypal_direct_card_issue_number', 'Número do cartão:'),
(2060, 2, 'modules-payment', 'payment_paypal_direct_card_issue_number_info', 'Para cartões master e solo apenas'),
(2061, 2, 'modules-payment', 'payment_paypal_direct_error_all_fields_required', 'Erro: Todos os campos de informações de pagamento são obrigatórios.'),
(2062, 2, 'modules-payment', 'payment_paypal_express_title', 'PayPal Express Checkout'),
(2063, 2, 'modules-payment', 'payment_paypal_express_description', 'PayPal Express Checkout'),
(2064, 2, 'modules-payment', 'payment_paypal_express_method_title', 'PayPal Express (including Credit Cards and Debit Cards)'),
(2065, 2, 'modules-payment', 'payment_paypal_express_button_title', 'Pay with PayPal Express Checkout'),
(2066, 2, 'modules-payment', 'payment_paypal_ipn_title', 'PayPal IPN'),
(2067, 2, 'modules-payment', 'payment_paypal_ipn_description', 'PayPal IPN'),
(2068, 2, 'modules-payment', 'payment_paypal_ipn_method_title', 'PayPal'),
(2069, 2, 'modules-payment', 'payment_paypal_standard_title', 'PayPal Website Payments Standard'),
(2070, 2, 'modules-payment', 'payment_paypal_standard_method_title', 'PayPal Website Payments Standard'),
(2071, 2, 'modules-payment', 'payment_paypal_uk_direct_title', 'PayPal Website Payments Pro (UK) Direct Payments'),
(2072, 2, 'modules-payment', 'payment_paypal_uk_direct_description', 'PayPal UK Direct'),
(2073, 2, 'modules-payment', 'payment_paypal_uk_direct_method_title', 'PayPal UK Direct (including Credit Cards and Debit Cards)'),
(2074, 2, 'modules-payment', 'payment_paypal_uk_direct_card_owner', 'Card Owner:'),
(2075, 2, 'modules-payment', 'payment_paypal_uk_direct_card_type', 'Card Type:'),
(2076, 2, 'modules-payment', 'payment_paypal_uk_direct_card_number', 'Card Number:'),
(2077, 2, 'modules-payment', 'payment_paypal_uk_direct_card_valid_from', 'Card Valid From Date:'),
(2078, 2, 'modules-payment', 'payment_paypal_uk_direct_card_valid_from_info', '(if available)'),
(2079, 2, 'modules-payment', 'payment_paypal_uk_direct_card_expires', 'Card Expiry Date:'),
(2080, 2, 'modules-payment', 'payment_paypal_uk_direct_card_cvc', 'Card Security Code (CVV2):'),
(2081, 2, 'modules-payment', 'payment_paypal_uk_direct_card_issue_number', 'Card Issue Number:'),
(2082, 2, 'modules-payment', 'payment_paypal_uk_direct_card_issue_number_info', '(for Maestro and Solo cards only)'),
(2083, 2, 'modules-payment', 'payment_paypal_uk_direct_error_general', 'Error: A general problem has occurred with the transaction. Please try again.'),
(2084, 2, 'modules-payment', 'payment_paypal_uk_direct_error_cfg_error', 'Error: Payment module configuration error. Please verify the login credentials.'),
(2085, 2, 'modules-payment', 'payment_paypal_uk_direct_error_address', 'Error: A match of the Shipping Address City, State, and Postal Code failed. Please try again.'),
(2086, 2, 'modules-payment', 'payment_paypal_uk_direct_error_all_fields_required', 'Error: All payment information fields are required.'),
(2087, 2, 'modules-payment', 'payment_paypal_uk_direct_error_declined', 'Error: This transaction has been declined. Please try again.'),
(2088, 2, 'modules-payment', 'payment_paypal_uk_direct_error_invalid_credit_card', 'Error: The provided credit card information is invalid. Please try again.'),
(2089, 2, 'modules-payment', 'payment_paypal_uk_express_title', 'Site Pagamentos PayPal Express'),
(2090, 2, 'modules-payment', 'payment_paypal_uk_express_description', 'PayPal Express'),
(2091, 2, 'modules-payment', 'payment_paypal_uk_express_method_title', 'PayPal Express (pague com cartões de crédito e de débito)'),
(2092, 2, 'modules-payment', 'payment_paypal_uk_express_error_cfg_error', 'Erro: erro na configuração do módulo de pagamento. Por favor, verificar as credenciais de login.'),
(2093, 2, 'modules-payment', 'payment_paypal_uk_express_error_address', 'Erro: Houve um erro no Endereço para envio, confira a Cidade, o Estado ou o CEP. Por favor, tente novamente.'),
(2094, 2, 'modules-payment', 'payment_paypal_uk_express_error_declined', 'Erro: Esta operação foi cancelada. Por favor, tente novamente.'),
(2095, 2, 'modules-payment', 'payment_paypal_uk_express_error_express_disabled', 'Erro: o pagamento PayPal Express foi desativado para este comerciante. Entre em contato com Atendimento ao Cliente PayPal.'),
(2096, 2, 'modules-payment', 'payment_paypal_uk_express_error_general', 'Erro: Um problema geral com a transação. Por favor, tente novamente.'),
(2097, 2, 'modules-payment', 'payment_payquake_cc_title', 'Cartão de Crédito PayQuake'),
(2098, 2, 'modules-payment', 'payment_payquake_cc_description', 'Operações do Cartão de Crédito'),
(2099, 2, 'modules-payment', 'payment_payquake_cc_method_title', 'Cartão de Crédito'),
(2100, 2, 'modules-payment', 'payment_payquake_cc_credit_card_owner', 'Proprietário do cartão de crédito:'),
(2101, 2, 'modules-payment', 'payment_payquake_cc_credit_card_number', 'Número do Cartão:'),
(2102, 2, 'modules-payment', 'payment_payquake_cc_credit_card_expiry_date', 'Data de validade do cartão de crédito:'),
(2103, 2, 'modules-payment', 'payment_payquake_cc_credit_card_cvc', 'Catão de Credito Check Numero (CVC):'),
(2104, 2, 'modules-payment', 'payment_payquake_cc_js_credit_card_owner', '* O nome do proprietário do cartão de crédito deve ser de pelo menos% s caracteres.'),
(2105, 2, 'modules-payment', 'payment_payquake_cc_js_credit_card_number', '* O número do cartão de crédito deve ser de pelo menos% s caracteres.'),
(2106, 2, 'modules-payment', 'payment_payquake_cc_js_credit_card_not_accepted', '* Este tipo de cartão de crédito não é aceite. Por favor, tente novamente com outro cartão ou o método de pagamento.'),
(2107, 2, 'modules-payment', 'payment_payquake_cc_js_credit_card_cvc', '* O número de cheque, cartão de crédito (CVC) deve ser pelo menos 3 caracteres.'),
(2108, 2, 'modules-payment', 'payment_payquake_cc_error_general', 'Houve um problema ao processar o cartão de crédito. Por favor, verifique as informações do cartão e tente novamente.'),
(2109, 2, 'modules-payment', 'payment_payquake_cc_error_not_accepted', 'Este tipo de cartão de crédito não é aceite. Por favor, tente novamente com outro cartão ou o método de pagamento.'),
(2110, 2, 'modules-payment', 'payment_payquake_cc_error_invalid_expiry_date', 'A data de vencimento do cartão de crédito é inválido. Por favor, verifique as informações do cartão e tente novamente.'),
(2111, 2, 'modules-payment', 'payment_payquake_cc_error_expired', 'O cartão de crédito expirou. Por favor, tente novamente com outro cartão ou o método de pagamento.'),
(2112, 2, 'modules-payment', 'payment_2checkout_title', 'Receber sobre 2 formas'),
(2113, 2, 'modules-payment', 'payment_2checkout_description', 'Teste Infor. Cartão Credito:<br /><br />CC#: 4111111111111111<br />Expira: Data'),
(2114, 2, 'modules-payment', 'payment_2checkout_credit_cart_type', 'Tipo:'),
(2115, 2, 'modules-payment', 'payment_2checkout_credit_card_owner', 'Proprietário do cartão de crédito:'),
(2116, 2, 'modules-payment', 'payment_2checkout_credit_card_owner_first_name', 'Proprietário do cartão de crédito Nome:'),
(2117, 2, 'modules-payment', 'payment_2checkout_credit_card_owner_last_name', 'Proprietário do cartão de crédito Sobrenome:'),
(2118, 2, 'modules-payment', 'payment_2checkout_credit_card_number', 'Número do Cartão:'),
(2119, 2, 'modules-payment', 'payment_2checkout_credit_card_expiry_date', 'Data de vencimento do cartão de crédito:'),
(2120, 2, 'modules-payment', 'payment_2checkout_credit_card_checknumber', 'Verifique o número de segurança do cartão de crédito:'),
(2121, 2, 'modules-payment', 'payment_2checkout_credit_card_checknumber_location', '(Localizado na parte de trás do cartão de crédito)'),
(2122, 2, 'modules-payment', 'payment_2checkout_js_credit_card_number', '* O número do cartão de crédito deve ser de pelo menos% s caracteres.'),
(2123, 2, 'modules-payment', 'payment_2checkout_error_message', 'Houve um erro ao processar seu cartão de crédito. Por favor, tente novamente.'),
(2124, 2, 'modules-payment', 'payment_psigate_title', 'PSiGate'),
(2125, 2, 'modules-payment', 'payment_psigate_description', 'Infor. Teste do Cartão de Credito:<br /><br />CC#: 4111111111111111<br />Prazo de validade: Qualquer'),
(2126, 2, 'modules-payment', 'payment_psigate_credit_card_owner', 'Proprietário do cartão de crédito:'),
(2127, 2, 'modules-payment', 'payment_psigate_credit_card_number', 'Número do Cartão:'),
(2128, 2, 'modules-payment', 'payment_psigate_credit_card_expiry_date', 'Data do Vencimento do cartão de crédito:'),
(2129, 2, 'modules-payment', 'payment_psigate_credit_card_type', 'Tipo:'),
(2130, 2, 'modules-payment', 'payment_psigate_js_credit_card_number', '* O número do cartão de crédito deve ser de pelo menos '' . CC_NUMBER_MIN_LENGTH . '' caracteres.n'),
(2131, 2, 'modules-payment', 'payment_psigate_error_message', 'Houve um erro ao processar seu cartão de crédito. Por favor, tente novamente.'),
(2132, 2, 'modules-payment', 'payment_psigate_error', 'Erro no Cartão de Credito!'),
(2133, 2, 'modules-payment', 'payment_saferpay_cc_title', 'Mais seguro pagar com cartão de crédito'),
(2134, 2, 'modules-payment', 'payment_saferpay_cc_description', 'Mais seguro pagar transações com cartões de crédito'),
(2135, 2, 'modules-payment', 'payment_saferpay_cc_method_title', 'Cartão de Crédito'),
(2136, 2, 'modules-payment', 'payment_saferpay_cc_credit_card_owner', 'Proprietário do cartão de crédito:'),
(2137, 2, 'modules-payment', 'payment_saferpay_cc_credit_card_number', 'Número do Cartão:'),
(2138, 2, 'modules-payment', 'payment_saferpay_cc_credit_card_expiry_date', 'Data de vencimento do cartão de crédito:'),
(2139, 2, 'modules-payment', 'payment_saferpay_cc_credit_card_cvc', 'Cartão de Credito Check Numero (CVC):'),
(2140, 2, 'modules-payment', 'payment_saferpay_cc_js_credit_card_owner', '* O nome do proprietário do cartão de crédito deve ser de pelo menos caracteres.'),
(2141, 2, 'modules-payment', 'payment_saferpay_cc_js_credit_card_number', '* O número do cartão de crédito deve ser de pelo menos caracteres.'),
(2142, 2, 'modules-payment', 'payment_saferpay_cc_js_credit_card_not_accepted', '* Este tipo de cartão de crédito não é aceite. Por favor, tente novamente com outro cartão ou o método de pagamento.'),
(2143, 2, 'modules-payment', 'payment_saferpay_cc_js_credit_card_cvc', '* O número de segurança do cartão de crédito (CVC) deve ser pelo menos 3 caracteres.'),
(2144, 2, 'modules-payment', 'payment_saferpay_cc_error_general', 'Houve um problema ao processar o cartão de crédito. Por favor, verifique as informações do cartão e tente novamente.'),
(2145, 2, 'modules-payment', 'payment_saferpay_cc_error_not_accepted', 'Este tipo de cartão de crédito não é aceite. Por favor, tente novamente com outro cartão ou o método de pagamento.'),
(2146, 2, 'modules-payment', 'payment_saferpay_cc_error_62', 'A data de vencimento do cartão de crédito é inválido. Por favor, verifique as informações do cartão e tente novamente.'),
(2147, 2, 'modules-payment', 'payment_saferpay_cc_error_63', 'O cartão de crédito expirou. Por favor, tente novamente com outro cartão ou o método de pagamento.'),
(2148, 2, 'modules-payment', 'payment_saferpay_cc_error_64', 'Este é um cartão de crédito desconhecido que não pode ser processado. Por favor, tente novamente com outro cartão ou o método de pagamento.'),
(2149, 2, 'modules-payment', 'payment_saferpay_elv_title', 'Saferpay Transferência Bancária'),
(2150, 2, 'modules-payment', 'payment_saferpay_elv_description', 'Transações Saferpay Transferência Bancária'),
(2151, 2, 'modules-payment', 'payment_saferpay_elv_method_title', 'Transferência Bancária'),
(2152, 2, 'modules-payment', 'payment_saferpay_elv_bank_owner', 'Nome da Conta Proprietário:'),
(2153, 2, 'modules-payment', 'payment_saferpay_elv_bank_account_number', 'Número da conta:'),
(2154, 2, 'modules-payment', 'payment_saferpay_elv_bank_code', 'Código do Banco:'),
(2155, 2, 'modules-payment', 'payment_saferpay_elv_js_error', '* Todos os campos obrigatórios.'),
(2156, 2, 'modules-payment', 'payment_saferpay_elv_error_general', 'Houve um problema de processamento desta conta bancária. Por favor, verifique as informações da conta e tente novamente.'),
(2157, 2, 'modules-payment', 'payment_saferpay_vt_title', 'Saferpay Terminal Virtual'),
(2158, 2, 'modules-payment', 'payment_saferpay_vt_description', 'Saferpay Transações Terminal Virtual'),
(2159, 2, 'modules-payment', 'payment_saferpay_vt_method_title', 'Cartão de Crédito'),
(2160, 2, 'modules-payment', 'payment_saferpay_vt_error_general', 'Houve um problema de processamento nesta ordem. Por favor, verifique as informações de faturamento e tente novamente'),
(2161, 2, 'modules-payment', 'payment_secpay_title', 'SECPay'),
(2162, 2, 'modules-payment', 'payment_secpay_description', 'Infor. Teste do Cartão de Credito:<br /><br />CC#: 4444333322221111<br />Prazo de validade: Qualquer'),
(2163, 2, 'modules-payment', 'payment_secpay_error', 'Erro no Cartão de Credito'),
(2164, 2, 'modules-payment', 'payment_secpay_error_message', 'Houve um erro ao processar seu cartão de crédito. Por favor, tente novamente.'),
(2165, 2, 'modules-payment', 'payment_western_union_title', 'Western Union'),
(2166, 2, 'modules-payment', 'payment_western_union_description', 'Western Union'),
(2167, 2, 'modules-payment', 'payment_western_union_method_title', 'Western Union'),
(2168, 2, 'modules-payment', 'payment_western_union_owner_country', 'País'),
(2169, 2, 'modules-payment', 'payment_western_union_owner_city', 'Cidade'),
(2170, 2, 'modules-payment', 'payment_western_union_owner_name', 'Nome:'),
(2171, 2, 'modules-payment', 'payment_western_union_owner_email', 'E-mail:'),
(2172, 2, 'modules-payment', 'payment_western_union_owner_telephone', 'Telefone:'),
(2173, 2, 'modules-payment', 'payment_wirecard_cc_title', 'Wire Cartão de Crédito'),
(2174, 2, 'modules-payment', 'payment_wirecard_cc_description', 'Wire Cartão de Crédito Transferencia'),
(2175, 2, 'modules-payment', 'payment_wirecard_cc_method_title', 'Cartão de Crédito');
INSERT INTO `soc_languages_definitions` (`id`, `languages_id`, `content_group`, `definition_key`, `definition_value`) VALUES
(2176, 2, 'modules-payment', 'payment_wirecard_cc_credit_card_owner', 'Proprietário do cartão de crédito:'),
(2177, 2, 'modules-payment', 'payment_wirecard_cc_credit_card_number', 'Número do Cartão:'),
(2178, 2, 'modules-payment', 'payment_wirecard_cc_credit_card_expiry_date', 'Data de vencimento do cartão de crédito:'),
(2179, 2, 'modules-payment', 'payment_wirecard_cc_credit_card_cvc', 'Cartão de Crédito Check Numero (CVC)'),
(2180, 2, 'modules-payment', 'payment_wirecard_cc_js_credit_card_owner', '* O nome do proprietário do cartão de crédito deve ser de pelo menos caracteres.'),
(2181, 2, 'modules-payment', 'payment_wirecard_cc_js_credit_card_number', '* O número do cartão de crédito deve ser de pelo menos% s caracteres.'),
(2182, 2, 'modules-payment', 'payment_wirecard_cc_js_credit_card_not_accepted', '* Este tipo de cartão de crédito não é aceite. Por favor, tente novamente com outro cartão ou o método de pagamento.'),
(2183, 2, 'modules-payment', 'payment_wirecard_cc_js_credit_card_cvc', '* O número de segurança do cartão de crédito (CVC) deve ser pelo menos 3 caracteres.'),
(2184, 2, 'modules-payment', 'payment_wirecard_cc_error_general', 'Houve um problema ao processar o cartão de crédito. Por favor, verifique as informações do cartão e tente novamente.'),
(2185, 2, 'modules-payment', 'payment_wirecard_cc_error_not_accepted', 'Este tipo de cartão de crédito não é aceite. Por favor, tente novamente com outro cartão ou o método de pagamento'),
(2186, 2, 'modules-payment', 'payment_wirecard_cc_error_20071', 'Tradução do inglês para portuguêsMostrar romanização\nA data de vencimento do cartão de crédito é inválido. Por favor, verifique as informações do cartão e tente novamente.'),
(2187, 2, 'modules-payment', 'payment_wirecard_cc_error_33', 'O cartão de crédito expirou. Por favor, tente novamente com outro cartão ou o método de pagamento.'),
(2188, 2, 'modules-payment', 'payment_wirecard_cc_error_unkown_card', 'Este é um cartão de crédito desconhecido que não pode ser processado. Por favor, tente novamente com outro cartão ou o método de pagamento.'),
(2189, 2, 'modules-payment', 'payment_wirecard_eft_title', 'Wire Card EFT'),
(2190, 2, 'modules-payment', 'payment_wirecard_eft_description', 'Wire Card EFT Transaçãos'),
(2191, 2, 'modules-payment', 'payment_wirecard_eft_method_title', 'Transferência Bancária'),
(2192, 2, 'modules-payment', 'payment_wirecard_eft_bank_owner', 'Nome da Conta Proprietário:'),
(2193, 2, 'modules-payment', 'payment_wirecard_eft_bank_owner_firstname', 'Proprietário da conta Nome:'),
(2194, 2, 'modules-payment', 'payment_wirecard_eft_bank_owner_lastname', 'Proprietário da conta Sobrenome:'),
(2195, 2, 'modules-payment', 'payment_wirecard_eft_account_type', 'Tipo de conta:'),
(2196, 2, 'modules-payment', 'payment_wirecard_eft_account_type_checking', 'Verificação'),
(2197, 2, 'modules-payment', 'payment_wirecard_eft_account_type_savings', 'Poupança'),
(2198, 2, 'modules-payment', 'payment_wirecard_eft_bank_account_number', 'Número da conta:'),
(2199, 2, 'modules-payment', 'payment_wirecard_eft_bank_code', 'Código do Banco:'),
(2200, 2, 'modules-payment', 'payment_wirecard_eft_check_number', 'Número de segurança:'),
(2201, 2, 'modules-payment', 'payment_wirecard_eft_id_number', 'Número de Identificação:'),
(2202, 2, 'modules-payment', 'payment_wirecard_eft_js_error', '* Todos os campos obrigatórios.'),
(2203, 2, 'modules-payment', 'payment_wirecard_eft_error_general', 'Houve um problema de processamento desta conta bancária. Por favor, verifique as informações da conta e tente novamente.'),
(2204, 2, 'modules-shipping', 'shipping_flat_title', 'Taxa Apartamento'),
(2205, 2, 'modules-shipping', 'shipping_flat_description', 'Taxa Apartamento'),
(2206, 2, 'modules-shipping', 'shipping_flat_method', 'A Melhor  Maneira'),
(2207, 2, 'modules-shipping', 'shipping_free_title', 'Frete Grátis'),
(2208, 2, 'modules-shipping', 'shipping_free_description', 'Frete Grátis'),
(2209, 2, 'modules-shipping', 'shipping_free_for_amount', 'para pedidos acima de %s'),
(2210, 2, 'modules-shipping', 'shipping_item_title', 'Item por'),
(2211, 2, 'modules-shipping', 'shipping_item_description', 'Item por'),
(2212, 2, 'modules-shipping', 'shipping_item_method', 'A Melhor Maneira'),
(2213, 2, 'modules-shipping', 'shipping_self_pickup_title', 'Pegar em mãos'),
(2214, 2, 'modules-shipping', 'shipping_self_pickup_description', 'Pegar em mãos'),
(2215, 2, 'modules-shipping', 'shipping_self_pickup_method', 'Melhor alternativa'),
(2216, 2, 'modules-shipping', 'shipping_table_title', 'Tabela de taxas'),
(2217, 2, 'modules-shipping', 'shipping_table_description', 'Tabela de taxas'),
(2218, 2, 'modules-shipping', 'shipping_table_method', 'A Melhor  Maneiras'),
(2219, 2, 'modules-shipping', 'shipping_usps_title', 'Estados Unidos Postal Serviço (USPS)'),
(2220, 2, 'modules-shipping', 'shipping_usps_description', 'Estados Unidos Postal Serviço<br /><br />Você vai precisar de ter registrado uma conta com a USPS http://www.uspsprioritymail.com/et_regcert.html usar este módulo<br /><br />USPS espera que você use libras como medida de peso para o seu produto.'),
(2221, 2, 'modules-shipping', 'shipping_usps_error', 'Ocorreu um erro com os cálculos de navegação USPS.<br />Se você preferir usar o USPS como seu método de envio, entre em contato com o proprietário da loja.'),
(2222, 2, 'modules-shipping', 'shipping_zones_title', 'Zona Preços'),
(2223, 2, 'modules-shipping', 'shipping_zones_description', 'Preços Zone base'),
(2224, 2, 'modules-shipping', 'shipping_zones_method', 'Envio para'),
(2225, 2, 'modules-shipping', 'shipping_zones_invalid_zone', 'Nenhum transporte disponível para o país selecionado'),
(2226, 2, 'modules-shipping', 'shipping_zones_undefined_rate', 'A taxa de transporte não pode ser determinado no momento');

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_manufacturers`
--

CREATE TABLE `soc_manufacturers` (
  `manufacturers_id` int(11) NOT NULL,
  `manufacturers_name` varchar(32) NOT NULL,
  `manufacturers_image` varchar(64) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_manufacturers`
--

INSERT INTO `soc_manufacturers` (`manufacturers_id`, `manufacturers_name`, `manufacturers_image`, `date_added`, `last_modified`) VALUES
(8, 'LG', 'lg.png', '2016-06-28 16:50:38', NULL),
(7, 'Motorola', 'motorola.png', '2016-06-28 16:44:47', NULL),
(6, 'Samsung', 'samsung.png', '2016-06-28 16:09:57', '2016-06-28 16:10:52');

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_manufacturers_info`
--

CREATE TABLE `soc_manufacturers_info` (
  `manufacturers_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `manufacturers_url` varchar(255) NOT NULL,
  `manufacturers_friendly_url` varchar(64) NOT NULL,
  `manufacturers_page_title` varchar(255) NOT NULL,
  `manufacturers_meta_keywords` varchar(255) NOT NULL,
  `manufacturers_meta_description` varchar(255) NOT NULL,
  `url_clicked` int(5) NOT NULL DEFAULT '0',
  `date_last_click` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_manufacturers_info`
--

INSERT INTO `soc_manufacturers_info` (`manufacturers_id`, `languages_id`, `manufacturers_url`, `manufacturers_friendly_url`, `manufacturers_page_title`, `manufacturers_meta_keywords`, `manufacturers_meta_description`, `url_clicked`, `date_last_click`) VALUES
(6, 2, 'http://', 'samsumg', '', '', '', 0, NULL),
(8, 2, 'http://', 'lg', '', '', '', 0, NULL),
(7, 2, 'http://', 'motorola', '', '', '', 0, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_newsletters`
--

CREATE TABLE `soc_newsletters` (
  `newsletters_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `module` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_sent` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `locked` int(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_newsletters_log`
--

CREATE TABLE `soc_newsletters_log` (
  `newsletters_id` int(11) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `date_sent` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_orders`
--

CREATE TABLE `soc_orders` (
  `orders_id` int(11) NOT NULL,
  `invoice_number` varchar(10) DEFAULT NULL,
  `customers_id` int(11) NOT NULL,
  `customers_name` varchar(64) NOT NULL,
  `customers_company` varchar(32) DEFAULT NULL,
  `customers_street_address` varchar(64) NOT NULL,
  `customers_suburb` varchar(32) DEFAULT NULL,
  `customers_city` varchar(32) NOT NULL,
  `customers_postcode` varchar(10) NOT NULL,
  `customers_state` varchar(32) DEFAULT NULL,
  `customers_state_code` varchar(32) DEFAULT NULL,
  `customers_country` varchar(64) NOT NULL,
  `customers_country_iso2` char(2) NOT NULL,
  `customers_country_iso3` char(3) NOT NULL,
  `customers_telephone` varchar(32) NOT NULL,
  `customers_email_address` varchar(96) NOT NULL,
  `customers_address_format` varchar(255) NOT NULL,
  `customers_ip_address` varchar(15) DEFAULT NULL,
  `delivery_name` varchar(64) NOT NULL,
  `delivery_company` varchar(32) DEFAULT NULL,
  `delivery_street_address` varchar(64) NOT NULL,
  `delivery_suburb` varchar(32) DEFAULT NULL,
  `delivery_city` varchar(32) NOT NULL,
  `delivery_postcode` varchar(10) NOT NULL,
  `delivery_state` varchar(32) DEFAULT NULL,
  `delivery_zone_id` int(11) NOT NULL,
  `delivery_state_code` varchar(32) DEFAULT NULL,
  `delivery_country_id` int(11) NOT NULL,
  `delivery_country` varchar(64) NOT NULL,
  `delivery_country_iso2` char(2) NOT NULL,
  `delivery_country_iso3` char(3) NOT NULL,
  `delivery_address_format` varchar(255) NOT NULL,
  `delivery_telephone` varchar(32) NOT NULL,
  `billing_name` varchar(64) NOT NULL,
  `billing_company` varchar(32) DEFAULT NULL,
  `billing_street_address` varchar(64) NOT NULL,
  `billing_suburb` varchar(32) DEFAULT NULL,
  `billing_city` varchar(32) NOT NULL,
  `billing_postcode` varchar(10) NOT NULL,
  `billing_state` varchar(32) DEFAULT NULL,
  `billing_zone_id` int(11) NOT NULL,
  `billing_state_code` varchar(32) DEFAULT NULL,
  `billing_country_id` int(11) NOT NULL,
  `billing_country` varchar(64) NOT NULL,
  `billing_country_iso2` char(2) NOT NULL,
  `billing_country_iso3` char(3) NOT NULL,
  `billing_address_format` varchar(255) NOT NULL,
  `billing_telephone` varchar(32) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `payment_module` varchar(255) NOT NULL,
  `uses_store_credit` tinyint(1) NOT NULL,
  `store_credit_amount` decimal(15,4) NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_purchased` datetime DEFAULT NULL,
  `orders_status` int(5) NOT NULL,
  `customers_comment` text,
  `admin_comment` text,
  `orders_date_finished` datetime DEFAULT NULL,
  `currency` char(3) DEFAULT NULL,
  `currency_value` decimal(14,6) DEFAULT NULL,
  `invoice_date` datetime DEFAULT NULL,
  `tracking_no` varchar(64) DEFAULT NULL,
  `gift_wrapping` tinyint(1) NOT NULL,
  `wrapping_message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_orders_products`
--

CREATE TABLE `soc_orders_products` (
  `orders_products_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_type` int(4) NOT NULL DEFAULT '0',
  `products_sku` varchar(64) DEFAULT NULL,
  `products_name` varchar(255) NOT NULL,
  `products_price` decimal(15,4) NOT NULL,
  `final_price` decimal(15,4) NOT NULL,
  `products_tax` decimal(7,4) NOT NULL,
  `products_quantity` int(2) NOT NULL,
  `products_return_quantity` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_orders_products_customizations`
--

CREATE TABLE `soc_orders_products_customizations` (
  `orders_products_customizations_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `orders_products_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_orders_products_customizations_values`
--

CREATE TABLE `soc_orders_products_customizations_values` (
  `orders_products_customizations_values_id` int(11) NOT NULL,
  `orders_products_customizations_id` int(11) NOT NULL,
  `customization_fields_id` int(11) NOT NULL,
  `customization_fields_name` varchar(64) NOT NULL,
  `customization_fields_type` tinyint(1) NOT NULL,
  `customization_fields_value` varchar(255) NOT NULL,
  `cache_file_name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_orders_products_download`
--

CREATE TABLE `soc_orders_products_download` (
  `orders_products_download_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `orders_products_id` int(11) NOT NULL,
  `orders_products_filename` varchar(255) NOT NULL,
  `orders_products_cache_filename` varchar(255) NOT NULL,
  `download_maxdays` int(2) NOT NULL,
  `download_count` int(2) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_orders_products_variants`
--

CREATE TABLE `soc_orders_products_variants` (
  `orders_products_variants_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `orders_products_id` int(11) NOT NULL,
  `products_variants_groups_id` int(11) NOT NULL,
  `products_variants_groups` varchar(32) NOT NULL,
  `products_variants_values_id` int(11) NOT NULL,
  `products_variants_values` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_orders_refunds`
--

CREATE TABLE `soc_orders_refunds` (
  `orders_refunds_id` int(11) NOT NULL,
  `orders_refunds_type` tinyint(1) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `credit_slips_id` int(11) DEFAULT NULL,
  `sub_total` decimal(15,4) NOT NULL,
  `shipping` decimal(15,4) NOT NULL,
  `handling` decimal(15,4) NOT NULL,
  `refund_total` decimal(15,4) NOT NULL,
  `comments` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_orders_refunds_products`
--

CREATE TABLE `soc_orders_refunds_products` (
  `orders_refunds_products_id` int(11) NOT NULL,
  `orders_refunds_id` int(11) NOT NULL,
  `orders_products_id` int(11) NOT NULL,
  `products_quantity` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_orders_returns`
--

CREATE TABLE `soc_orders_returns` (
  `orders_returns_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `orders_returns_status_id` int(5) NOT NULL,
  `customers_comments` text,
  `admin_comments` text,
  `date_added` datetime NOT NULL,
  `date_updated` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_orders_returns_products`
--

CREATE TABLE `soc_orders_returns_products` (
  `orders_returns_id` int(11) NOT NULL,
  `orders_products_id` int(11) NOT NULL,
  `products_quantity` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_orders_returns_status`
--

CREATE TABLE `soc_orders_returns_status` (
  `orders_returns_status_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `orders_returns_status_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_orders_returns_status`
--

INSERT INTO `soc_orders_returns_status` (`orders_returns_status_id`, `languages_id`, `orders_returns_status_name`) VALUES
(1, 2, 'Pendente'),
(2, 2, 'Confirmado'),
(3, 2, 'Recebido'),
(4, 2, 'Retorno Autorizado'),
(5, 2, 'Retorno Reembolsado (Nota de Crédito)'),
(6, 2, 'Retorno Reembolsado (Crédito na Loja)'),
(7, 2, 'Retorno Rejeitado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_orders_status`
--

CREATE TABLE `soc_orders_status` (
  `orders_status_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `orders_status_name` varchar(32) NOT NULL,
  `public_flag` tinyint(1) NOT NULL DEFAULT '1',
  `downloads_flag` tinyint(1) NOT NULL DEFAULT '0',
  `returns_flag` tinyint(1) NOT NULL DEFAULT '0',
  `gift_certificates_flag` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_orders_status`
--

INSERT INTO `soc_orders_status` (`orders_status_id`, `language_id`, `orders_status_name`, `public_flag`, `downloads_flag`, `returns_flag`, `gift_certificates_flag`) VALUES
(1, 2, 'Pendente', 1, 0, 0, 0),
(2, 2, 'Processando', 1, 0, 0, 0),
(3, 2, 'Preparando', 1, 0, 0, 0),
(4, 2, 'Parcialmente Pago', 1, 0, 0, 0),
(5, 2, 'Pago', 1, 1, 0, 1),
(6, 2, 'Parcialmente Entregue', 1, 1, 1, 1),
(7, 2, 'Entregue', 1, 1, 1, 1),
(8, 2, 'Cancelado', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_orders_status_history`
--

CREATE TABLE `soc_orders_status_history` (
  `orders_status_history_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `orders_status_id` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  `customer_notified` int(1) DEFAULT '0',
  `comments` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_orders_total`
--

CREATE TABLE `soc_orders_total` (
  `orders_total_id` int(10) UNSIGNED NOT NULL,
  `orders_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL,
  `class` varchar(32) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_orders_transactions_history`
--

CREATE TABLE `soc_orders_transactions_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `orders_id` int(10) UNSIGNED NOT NULL,
  `transaction_code` int(11) NOT NULL,
  `transaction_return_value` text NOT NULL,
  `transaction_return_status` int(11) NOT NULL,
  `date_added` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_orders_transactions_status`
--

CREATE TABLE `soc_orders_transactions_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `status_name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_orders_transactions_status`
--

INSERT INTO `soc_orders_transactions_status` (`id`, `language_id`, `status_name`) VALUES
(1, 2, 'Autorizar'),
(2, 2, 'Cancelar'),
(3, 2, 'Aprovar'),
(4, 2, 'Questionar');

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_polls`
--

CREATE TABLE `soc_polls` (
  `polls_id` int(11) NOT NULL,
  `polls_type` tinyint(1) NOT NULL,
  `polls_status` tinyint(1) NOT NULL,
  `votes_count` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_polls_answers`
--

CREATE TABLE `soc_polls_answers` (
  `polls_answers_id` int(11) NOT NULL,
  `polls_id` int(10) NOT NULL,
  `votes_count` int(10) NOT NULL DEFAULT '0',
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_polls_answers_description`
--

CREATE TABLE `soc_polls_answers_description` (
  `polls_answers_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `answers_title` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_polls_description`
--

CREATE TABLE `soc_polls_description` (
  `polls_id` int(11) NOT NULL,
  `polls_title` varchar(255) NOT NULL,
  `languages_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_polls_votes`
--

CREATE TABLE `soc_polls_votes` (
  `polls_votes_id` int(11) NOT NULL,
  `polls_id` int(11) NOT NULL,
  `polls_answers_id` int(11) NOT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `date_voted` datetime NOT NULL,
  `customers_ip_address` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_products`
--

CREATE TABLE `soc_products` (
  `products_id` int(11) NOT NULL,
  `products_type` int(4) NOT NULL DEFAULT '0',
  `products_quantity` int(4) NOT NULL DEFAULT '1',
  `products_moq` int(11) NOT NULL DEFAULT '1',
  `products_max_order_quantity` int(11) NOT NULL DEFAULT '-1',
  `products_price` decimal(15,4) NOT NULL,
  `products_sku` varchar(64) NOT NULL,
  `products_model` varchar(64) NOT NULL,
  `products_date_added` datetime NOT NULL,
  `products_last_modified` datetime DEFAULT NULL,
  `products_date_available` datetime DEFAULT NULL,
  `products_weight` decimal(5,2) NOT NULL,
  `products_weight_class` int(11) NOT NULL,
  `products_status` tinyint(1) NOT NULL,
  `products_tax_class_id` int(11) NOT NULL,
  `manufacturers_id` int(11) DEFAULT NULL,
  `products_ordered` int(11) NOT NULL DEFAULT '0',
  `quantity_discount_groups_id` int(11) DEFAULT NULL,
  `quantity_unit_class` int(11) NOT NULL,
  `order_increment` int(11) NOT NULL DEFAULT '1',
  `products_attributes_groups_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_products`
--

INSERT INTO `soc_products` (`products_id`, `products_type`, `products_quantity`, `products_moq`, `products_max_order_quantity`, `products_price`, `products_sku`, `products_model`, `products_date_added`, `products_last_modified`, `products_date_available`, `products_weight`, `products_weight_class`, `products_status`, `products_tax_class_id`, `manufacturers_id`, `products_ordered`, `quantity_discount_groups_id`, `quantity_unit_class`, `order_increment`, `products_attributes_groups_id`) VALUES
(20, 0, 10, 1, -1, '949.0000', '', '', '2016-06-28 16:05:19', '2016-06-28 16:11:19', NULL, '0.00', 2, 1, 0, 6, 0, 0, 1, 1, NULL),
(21, 0, 10, 1, -1, '949.0000', '', '', '2016-06-28 16:47:43', NULL, NULL, '0.00', 2, 1, 0, 7, 0, 0, 1, 1, NULL),
(22, 0, 10, 1, -1, '858.0000', '', '', '2016-06-28 16:57:18', NULL, NULL, '0.00', 2, 1, 0, 8, 0, 0, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_products_accessories`
--

CREATE TABLE `soc_products_accessories` (
  `products_id` int(11) NOT NULL,
  `accessories_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_products_attachments`
--

CREATE TABLE `soc_products_attachments` (
  `attachments_id` int(11) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `cache_filename` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_products_attachments_description`
--

CREATE TABLE `soc_products_attachments_description` (
  `attachments_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL DEFAULT '1',
  `attachments_name` varchar(128) NOT NULL,
  `attachments_description` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_products_attachments_to_products`
--

CREATE TABLE `soc_products_attachments_to_products` (
  `attachments_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_products_attributes`
--

CREATE TABLE `soc_products_attributes` (
  `products_id` int(11) NOT NULL,
  `products_attributes_values_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_products_attributes_groups`
--

CREATE TABLE `soc_products_attributes_groups` (
  `products_attributes_groups_id` int(11) NOT NULL,
  `products_attributes_groups_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_products_attributes_values`
--

CREATE TABLE `soc_products_attributes_values` (
  `products_attributes_values_id` int(11) NOT NULL,
  `products_attributes_groups_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `status` int(4) NOT NULL,
  `module` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_products_description`
--

CREATE TABLE `soc_products_description` (
  `products_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '1',
  `products_name` varchar(255) NOT NULL DEFAULT '',
  `products_short_description` text,
  `products_description` text,
  `products_keyword` varchar(64) DEFAULT NULL,
  `products_tags` varchar(255) DEFAULT NULL,
  `products_url` varchar(255) DEFAULT NULL,
  `products_friendly_url` varchar(255) DEFAULT NULL,
  `products_page_title` varchar(255) NOT NULL,
  `products_meta_keywords` varchar(255) NOT NULL,
  `products_meta_description` varchar(255) NOT NULL,
  `products_viewed` int(5) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_products_description`
--

INSERT INTO `soc_products_description` (`products_id`, `language_id`, `products_name`, `products_short_description`, `products_description`, `products_keyword`, `products_tags`, `products_url`, `products_friendly_url`, `products_page_title`, `products_meta_keywords`, `products_meta_description`, `products_viewed`) VALUES
(20, 2, 'Smartphone Samsung Galaxy J5 Duos Dourado com Dual chip, Tela 5.0", 4G, Câmera 13MP, Android 5.1 e Processador Quad Core de 1.2 Ghz', 'Smartphone Samsung Galaxy J5 Duos Dourado com Dual chip, Tela 5.0", 4G, Câmera 13MP, Android 5.1 e Processador Quad Core de 1.2 Ghz', '<span style="color: rgb(72, 186, 197); font-family: plutobold; font-size: 20px; line-height: 20px; text-align: center; text-transform: uppercase;">APOSENTE O SEU ANTIGO CELULAR:</span><div><span style="color: rgb(72, 186, 197); font-family: plutobold; font-size: 20px; line-height: 20px; text-align: center; text-transform: uppercase;">VOCÊ VAI SE APAIXONAR POR ESTE SMARTPHONE</span><p style="text-align: left; box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px; font-stretch: inherit; font-size: 13px; line-height: 1.286em; font-family: ''Segoe UI'', Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(102, 102, 102);">Conte com a qualidade&nbsp;<a href="http://www.extra.com.br/?Filtro=M459" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; transition: color 0.5s ease-out; color: rgb(235, 29, 41);">Samsung</a><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">&nbsp;para manter-se conectado o tempo todo. O&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">smartphone Galaxy J5 Duos</span>&nbsp;pode navegar pela web via Wi-Fi 802.11n ou pela rede 4G, muito mais rápida do que sua versão anterior.</span></p><p style="text-align: left; box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px; font-stretch: inherit; font-size: 13px; line-height: 1.286em; font-family: ''Segoe UI'', Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(102, 102, 102);">O sistema operacional&nbsp;<a href="http://www.extra.com.br/TelefoneseCelulares/Smartphones/Android/?Filtro=C38_C326_C3266" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; transition: color 0.5s ease-out; color: rgb(235, 29, 41);">Android</a><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">&nbsp;5.1 é fácil de mexer e compatível com diversos aplicativos, disponíveis para download pela loja virtual oficial do Google. Você os armazena na&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">memória de 16GB*&nbsp;</span>e consegue expandi-la para até 128GB. Basta adquirir separadamente um cartão microSD.</span></p><p style="text-align: left; box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px; font-stretch: inherit; font-size: 13px; line-height: 1.286em; font-family: ''Segoe UI'', Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(102, 102, 102);"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">Quer executar diversas tarefas ao mesmo tempo sem perder a agilidade? Este telefone móvel tem&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">processador Quad Core de 1.2 Ghz</span>, que elimina a lentidão e os eventuais travamentos.&nbsp;</span></p><p style="text-align: left; box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px; font-stretch: inherit; font-size: 13px; line-height: 1.286em; font-family: ''Segoe UI'', Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(102, 102, 102);"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;"><br></span></p><h3 class="tit" style="box-sizing: inherit; margin: 0px 0px 20px; padding: 0px; border: 0px; font-weight: normal; font-stretch: inherit; font-size: 1.625em; line-height: inherit; font-family: Pluto; vertical-align: baseline; color: rgb(109, 109, 109);">Características</h3><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl00_dlCategoria" class="RAM" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">RAM</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">1.5 GB</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl01_dlCategoria" class="Sistema-Operacional even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Sistema Operacional</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Android 5.1 Lollipop</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl02_dlCategoria" class="Tipo" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Tipo</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Barra</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl03_dlCategoria" class="Tecnologia even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Tecnologia</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">GSM,&nbsp;</dd><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">3G,&nbsp;</dd><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">4G</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl04_dlCategoria" class="Slot-para-cartao" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Slot para cartão</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">MicroSD até 128GB</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl05_dlCategoria" class="Cartao-incluso even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Cartão incluso</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Não</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl06_dlCategoria" class="Radio-FM" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Rádio FM</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Sim</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl07_dlCategoria" class="MP3-player even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">MP3 player</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Sim</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl08_dlCategoria" class="Bluetooth" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Bluetooth</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Sim</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl09_dlCategoria" class="Bluetooth-Estereo--ouca-suas-musicas-em-um-dispositivo-Bluetooth- even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Bluetooth Estéreo (ouça suas músicas em um dispositivo Bluetooth)</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Não</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl10_dlCategoria" class="Wi-Fi" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Wi-Fi</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Sim</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl11_dlCategoria" class="Visualizador-de-arquivos even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Visualizador de arquivos</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Não</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl12_dlCategoria" class="Suporte-a-GPS" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Suporte a GPS</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Sim</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl13_dlCategoria" class="Mensagens even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Mensagens</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">SMS,&nbsp;</dd><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">MMS,&nbsp;</dd><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">E-mail</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl14_dlCategoria" class="Toques" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Toques</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Polifônicos,&nbsp;</dd><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">MP3</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl15_dlCategoria" class="Processador even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Processador</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Quad Core de 1.2 Ghz</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl16_dlCategoria" class="Som" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Som</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Rádio FM,&nbsp;</dd><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">MP3 Player</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl17_dlCategoria" class="Resolucao-da-camera even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Resolução da câmera</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Traseira 13MP e Frontal 5MP</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl18_dlCategoria" class="Cor" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Cor</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Dourado</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl19_dlCategoria" class="Grava-video even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Grava vídeo</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Sim</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl20_dlCategoria" class="Memoria-interna" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Memória interna</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">16GB Total sendo uma parte usada para o sistema operacional e aplicativos pré-instalados</dd></dl><p style="box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px; font-stretch: inherit; font-size: 13px; line-height: 1.286em; font-family: ''Segoe UI'', Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(102, 102, 102);"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;"></span></p><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl21_dlCategoria" class="Caracteristicas-Gerais even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border: 0px; font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Características Gerais</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;"><span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">Ideal para Selfies</span>&nbsp;<br style="box-sizing: inherit;">-Tire selfies de alta qualidade com a câmera frontal de 5MP e também registre os melhores momentos com a câmera principal de 13MP.(Ambas com Flash Frontal e Traseira).&nbsp;<br style="box-sizing: inherit;"><br style="box-sizing: inherit;"><span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">Processador Quad Core de 1.2 Ghz&nbsp;</span><br style="box-sizing: inherit;">-Use vários aplicativos ao mesmo tempo com o processador Quad Core de 1.2GHz e não perca agilidade.&nbsp;<br style="box-sizing: inherit;"><br style="box-sizing: inherit;"><span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">Tela de 5.0” Super Amoled</span>&nbsp;<br style="box-sizing: inherit;">-Veja vídeos, edite fotos e navegue pelas redes sociais em um display com tamanho ideal para você.&nbsp;<br style="box-sizing: inherit;"><br style="box-sizing: inherit;"><span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">A melhor experiência Dual Chip</span>&nbsp;<br style="box-sizing: inherit;">-O Samsung Galaxy J5 Duos suporta 2 Chips no mesmo aparelho. Aproveite o dobro de vantagens, promoções e descontos com os serviços de até duas operadoras de telefonia diferentes.</dd></dl></div>', NULL, 'Smartphone Samsung Galaxy J5', '', 'smartphone-samsung-galaxy-j5-duos-dourado-com-dual-chip-tela-5-0-4g-c-mera-13mp-android-5-1-e-processador-quad-core-de-1-2-ghz', 'Smartphone Samsung Galaxy J5 Duos Dourado com Dual chip, Tela 5.0", 4G, Câmera 13MP, Android 5.1 e Processador Quad Core de 1.2 Ghz', '', '', 1);
INSERT INTO `soc_products_description` (`products_id`, `language_id`, `products_name`, `products_short_description`, `products_description`, `products_keyword`, `products_tags`, `products_url`, `products_friendly_url`, `products_page_title`, `products_meta_keywords`, `products_meta_description`, `products_viewed`) VALUES
(21, 2, 'Smartphone Moto G™ (3ª Geração) Colors HDTV XT1544 Preto com Tela de 5'''', Dual Chip, Android 5.1, 4G, Câmera 13MP e Processador Quad-Core de 1.4 GHz', 'Smartphone Moto G™ (3ª Geração)', '&nbsp;<span style="color: rgb(72, 186, 197); font-family: plutobold; font-size: 20px; line-height: 20px; text-align: center; text-transform: uppercase;">COMUNICAÇÃO E MOBILIDADE ANDAM JUNTAS</span><p style="text-align: left; box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px; font-stretch: inherit; font-size: 13px; line-height: 1.286em; font-family: ''Segoe UI'', Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(102, 102, 102);">Diante das responsabilidades que a vida moderna nos apresenta todos os dias, manter-se sempre muito bem informado nos faz ficar mais integrado aos acontecimentos do momento e faz com que tenhamos a informação precisa para expor sempre que necessário. Nas reuniões de trabalho ou no simples bate-papo com os amigos, ter o que argumentar durante as conversas ajuda a nos manter em destaque.</p><p style="text-align: left; box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px; font-stretch: inherit; font-size: 13px; line-height: 1.286em; font-family: ''Segoe UI'', Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(102, 102, 102);">E para que você tenha acesso a uma infinidade de informações a qualquer momento e lugar, a Motorola desenvolveu um aparelho que vai transformar o seu modo de consumir conteúdo. Muito prático de manusear e integrado com diversos recursos, o&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">smartphone Moto G 3ª Geração Colors HDTV</span>&nbsp;será o seu parceiro do seu dia a dia, ele vai lhe ajudar a acessar a internet via&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">Wi-Fi, 3G/4G</span>&nbsp;e assim desfrutar de uma quantidade relevante de conhecimento, além de poder verificar a sua caixa de e-mail, redes sociais, aplicativos,&nbsp;<a href="http://www.extra.com.br/Games/?Filtro=C336" target="_blank" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; transition: color 0.5s ease-out; color: rgb(235, 29, 41);">games</a>, entre outros recursos.</p><p style="text-align: left; box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px; font-stretch: inherit; font-size: 13px; line-height: 1.286em; font-family: ''Segoe UI'', Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(102, 102, 102);">Com&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">design moderno e exclusivo</span>, com o Moto G 3ª Geração Colors HDTV você será não apenas um receptor, mas também, um emissor de conteúdo utilizando ferramentas como o seu impressionante conjunto de câmeras capazes de tirar lindas fotos e registrar vídeos incríveis.</p><h3 class="tit" style="box-sizing: inherit; margin: 0px 0px 20px; padding: 0px; border: 0px; font-weight: normal; font-stretch: inherit; font-size: 1.625em; line-height: inherit; font-family: Pluto; vertical-align: baseline; color: rgb(109, 109, 109);">Características</h3><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl00_dlCategoria" class="RAM" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">RAM</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">1GB</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl01_dlCategoria" class="Sistema-Operacional even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Sistema Operacional</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Android 5.1 Lollipop</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl02_dlCategoria" class="Tipo" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Tipo</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Barra</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl03_dlCategoria" class="Tecnologia even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Tecnologia</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">GSM,&nbsp;</dd><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">3G,&nbsp;</dd><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">4G</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl04_dlCategoria" class="Slot-para-cartao" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Slot para cartão</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">MicroSD até 32GB</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl05_dlCategoria" class="Cartao-incluso even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Cartão incluso</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Não</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl06_dlCategoria" class="Radio-FM" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Rádio FM</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Sim</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl07_dlCategoria" class="MP3-player even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">MP3 player</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Sim</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl08_dlCategoria" class="Bluetooth" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Bluetooth</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Sim</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl09_dlCategoria" class="Bluetooth-Estereo--ouca-suas-musicas-em-um-dispositivo-Bluetooth- even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Bluetooth Estéreo (ouça suas músicas em um dispositivo Bluetooth)</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Não</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl10_dlCategoria" class="Wi-Fi" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Wi-Fi</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Sim</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl11_dlCategoria" class="Suporte-a-GPS even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Suporte a GPS</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Sim</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl12_dlCategoria" class="Mensagens" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Mensagens</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">SMS,&nbsp;</dd><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">MMS,&nbsp;</dd><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">E-mail</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl13_dlCategoria" class="Processador even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Processador</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Qualcomm Snapdragon 410 (MSM8916) Quad-Core de 1.4 GHz</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl14_dlCategoria" class="Sintonizador-de-TV" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Sintonizador de TV</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Digital</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl15_dlCategoria" class="Som even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Som</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Rádio FM,&nbsp;</dd><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">MP3 Player</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl16_dlCategoria" class="Resolucao-da-camera" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Resolução da câmera</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Traseira 13MP e frontal de 5MP</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl17_dlCategoria" class="Cor even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Cor</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Preto</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl18_dlCategoria" class="Grava-video" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Grava vídeo</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Sim</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl19_dlCategoria" class="Memoria-interna even" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Memória interna</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">16GB Total sendo uma parte usada para o sistema operacional e aplicativos pré-instalados</dd></dl><dl id="ctl00_Conteudo_ctl52_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl20_dlCategoria" class="Caracteristicas-Gerais" style="box-sizing: inherit; margin: 0px; padding: 0.625em; border: 0px; font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Características Gerais</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">- Resistente à água (IPX7)*&nbsp;<br style="box-sizing: inherit;">- Câmera instantânea de 13 MP e frontal de 5MP&nbsp;<br style="box-sizing: inherit;">- Inovações Moto e experiência do Android™&nbsp;Puro&nbsp;<br style="box-sizing: inherit;">- Velocidade 4G&nbsp;<br style="box-sizing: inherit;">- TV Digital HD&nbsp;<br style="box-sizing: inherit;">- Personalize com Motorola Shells&nbsp;<br style="box-sizing: inherit;">- Dual Chip Inteligente**</dd></dl>', NULL, 'Smartphone Moto G', '', 'smartphone-moto-g-3-gera-o-colors-hdtv-xt1544-preto-com-tela-de-5-dual-chip-android-5-1-4g-c-mera-13mp-e-processador-quad-core-de-1-4-ghz', '', '', '', 0);
INSERT INTO `soc_products_description` (`products_id`, `language_id`, `products_name`, `products_short_description`, `products_description`, `products_keyword`, `products_tags`, `products_url`, `products_friendly_url`, `products_page_title`, `products_meta_keywords`, `products_meta_description`, `products_viewed`) VALUES
(22, 2, 'Smartphone LG G3 Stylus Branco com Tela de 5.5”, Dual Chip, Android 4.4, Câmera 13MP, 3G e Processador Quad Core 1.3GHz', 'Smartphone LG G3 Stylus Branco com Tela de 5.5”', '<span style="color: rgb(102, 102, 102); font-family: ''Segoe UI'', Arial; line-height: 1.286em;"><font size="2">Tenha em mãos um smartphone para navegar na internet e fazer tudo o que você precisa sem lentidão e livre de travamentos. Projetado com processador Quad Core de 1.3GHz, o LG G3 Stylus tem altíssima performance.</font></span><p style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; font-stretch: inherit; line-height: 1.286em; font-family: ''Segoe UI'', Arial; vertical-align: baseline; color: rgb(102, 102, 102);"><font size="2">Trata-se de um aparelho completo que combina um design sofisticado, inúmeros recursos para satisfazer suas necessidades e alta tecnologia, que vão desde uma tela com a mesma tecnologia das TV''s LG até uma bateria de alta densidade (3.000 mAh) para que você possa usar por mais tempo e carregar até 40% mais rápido.</font></p><p style="font-size: 0.875em; box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; font-stretch: inherit; line-height: 1.286em; font-family: ''Segoe UI'', Arial; vertical-align: baseline; color: rgb(102, 102, 102);"><br></p><h3 class="tit" style="font-size: 1.625em; box-sizing: inherit; margin: 0px 0px 20px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; font-weight: normal; font-stretch: inherit; line-height: inherit; font-family: Pluto; vertical-align: baseline; color: rgb(109, 109, 109);">Características</h3><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl00_dlCategoria" class="RAM" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">RAM</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">1GB</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl01_dlCategoria" class="Sistema-Operacional even" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Sistema Operacional</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Android 4.4 KitKat</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl02_dlCategoria" class="Tipo" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Tipo</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Barra</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl03_dlCategoria" class="Tecnologia even" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Tecnologia</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">GSM,&nbsp;</dd><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">3G</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl04_dlCategoria" class="Slot-para-cartao" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Slot para cartão</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">MicroSD até 32GB</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl05_dlCategoria" class="Cartao-incluso even" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Cartão incluso</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Não</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl06_dlCategoria" class="Radio-FM" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Rádio FM</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Sim</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl07_dlCategoria" class="MP3-player even" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">MP3 player</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Sim</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl08_dlCategoria" class="Bluetooth" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Bluetooth</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Sim</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl09_dlCategoria" class="Bluetooth-Estereo--ouca-suas-musicas-em-um-dispositivo-Bluetooth- even" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Bluetooth Estéreo (ouça suas músicas em um dispositivo Bluetooth)</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Não</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl10_dlCategoria" class="Wi-Fi" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Wi-Fi</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Sim</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl11_dlCategoria" class="Visualizador-de-arquivos even" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Visualizador de arquivos</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Sim</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl12_dlCategoria" class="Suporte-a-GPS" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Suporte a GPS</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Sim</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl13_dlCategoria" class="Mensagens even" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Mensagens</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">SMS,&nbsp;</dd><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">MMS,&nbsp;</dd><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">E-mail</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl14_dlCategoria" class="Toques" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Toques</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Polifônicos</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl15_dlCategoria" class="Processador even" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Processador</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Quad Core de 1.3 GHz</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl16_dlCategoria" class="Som" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Som</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Rádio FM,&nbsp;</dd><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">MP3 Player</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl17_dlCategoria" class="Resolucao-da-camera even" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Resolução da câmera</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Traseira 13MP e Frontal 1MP</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl18_dlCategoria" class="Cor" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Cor</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Branco</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl19_dlCategoria" class="Grava-video even" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Grava vídeo</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">Sim</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl20_dlCategoria" class="Memoria-interna" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border-width: 0px 0px 1px; border-bottom-style: dotted; border-bottom-color: rgb(216, 221, 226); font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Memória interna</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;">8GB sendo uma parte usada pelo sistema operacional e aplicativos pré instalados</dd></dl><dl id="ctl00_Conteudo_ctl51_DetalhesProduto_rptGrupos_ctl00_rptCampos_ctl21_dlCategoria" class="Caracteristicas-Gerais even" style="font-size: 16px; box-sizing: inherit; margin: 0px; padding: 0.625em; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; font-stretch: inherit; line-height: 24px; font-family: ''Segoe UI'', Arial; vertical-align: baseline; display: table; width: 1250px; color: rgb(109, 109, 109); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><dt style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 319.797px; float: left;">Características Gerais</dt><dd style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: inline-block; width: 910.188px; float: right;"><span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">Processador Quad Core 1.3 Ghz</span>&nbsp;<br style="box-sizing: inherit;">- Navegue na internet e faça tudo sem lentidão ou travadinhas.&nbsp;<br style="box-sizing: inherit;"><br style="box-sizing: inherit;"><span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">Knock Code e Smart Button</span>&nbsp;<br style="box-sizing: inherit;">- Descomplicamos o uso do seu smartphone, mais facilidade e menos quedas.&nbsp;<br style="box-sizing: inherit;"><br style="box-sizing: inherit;"><span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">Bateria de Alta Densidade</span>&nbsp;<br style="box-sizing: inherit;">- Bateria de 3.000 mAh para que você possa usar por mais tempo e carregar até 40% mais rápido.</dd></dl>', NULL, 'Smartphone LG G3', '', 'smartphone-lg-g3-stylus-branco-com-tela-de-5-5-dual-chip-android-4-4-c-mera-13mp-3g-e-processador-quad-core-1-3ghz', '', '', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_products_downloadables`
--

CREATE TABLE `soc_products_downloadables` (
  `products_id` int(11) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `cache_filename` varchar(100) NOT NULL,
  `sample_filename` varchar(100) NOT NULL,
  `cache_sample_filename` varchar(100) NOT NULL,
  `number_of_downloads` int(11) NOT NULL,
  `number_of_accessible_days` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_products_download_history`
--

CREATE TABLE `soc_products_download_history` (
  `products_download_history_id` int(11) NOT NULL,
  `orders_products_download_id` int(11) NOT NULL,
  `download_date` datetime NOT NULL,
  `download_ip_address` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_products_frontpage`
--

CREATE TABLE `soc_products_frontpage` (
  `products_id` int(11) NOT NULL,
  `sort_order` int(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_products_frontpage`
--

INSERT INTO `soc_products_frontpage` (`products_id`, `sort_order`) VALUES
(6, 1),
(5, 2),
(17, 3),
(19, 4),
(3, 5),
(9, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_products_gift_certificates`
--

CREATE TABLE `soc_products_gift_certificates` (
  `products_id` int(11) NOT NULL,
  `gift_certificates_type` int(5) NOT NULL,
  `gift_certificates_amount_type` int(5) NOT NULL,
  `open_amount_min_value` decimal(15,4) NOT NULL,
  `open_amount_max_value` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_products_images`
--

CREATE TABLE `soc_products_images` (
  `id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `default_flag` tinyint(1) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_products_images`
--

INSERT INTO `soc_products_images` (`id`, `products_id`, `image`, `default_flag`, `sort_order`, `date_added`) VALUES
(48, 20, '20_48_01.jpg', 1, 0, '2016-06-28 16:05:19'),
(49, 20, '20_49_02.jpg', 0, 0, '2016-06-28 16:05:19'),
(50, 20, '20_50_03.jpg', 0, 0, '2016-06-28 16:05:19'),
(51, 20, '20_51_04.jpg', 0, 0, '2016-06-28 16:05:20'),
(52, 21, '21_52_01.jpg', 1, 0, '2016-06-28 16:47:43'),
(53, 21, '21_53_02.jpg', 0, 0, '2016-06-28 16:47:43'),
(54, 21, '21_54_03.jpg', 0, 0, '2016-06-28 16:47:43'),
(55, 21, '21_55_04.jpg', 0, 0, '2016-06-28 16:47:43'),
(56, 22, '22_56_01.jpg', 1, 0, '2016-06-28 16:57:18'),
(57, 22, '22_57_02.jpg', 0, 0, '2016-06-28 16:57:19'),
(58, 22, '22_58_03.jpg', 0, 0, '2016-06-28 16:57:19'),
(59, 22, '22_59_04.jpg', 0, 0, '2016-06-28 16:57:20');

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_products_images_groups`
--

CREATE TABLE `soc_products_images_groups` (
  `id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `code` varchar(32) NOT NULL,
  `size_width` int(11) DEFAULT NULL,
  `size_height` int(11) DEFAULT NULL,
  `force_size` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_products_images_groups`
--

INSERT INTO `soc_products_images_groups` (`id`, `language_id`, `title`, `code`, `size_width`, `size_height`, `force_size`) VALUES
(1, 2, 'Originais', 'originals', 0, 0, 0),
(2, 2, 'Miniaturas', 'thumbnails', 100, 80, 0),
(3, 2, 'Página de Informação do Produto', 'product_info', 240, 180, 0),
(4, 2, 'Grande', 'large', 480, 360, 0),
(5, 2, 'Pequena', 'mini', 55, 45, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_products_notifications`
--

CREATE TABLE `soc_products_notifications` (
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_products_to_categories`
--

CREATE TABLE `soc_products_to_categories` (
  `products_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_products_to_categories`
--

INSERT INTO `soc_products_to_categories` (`products_id`, `categories_id`) VALUES
(20, 2),
(20, 10),
(21, 2),
(21, 10),
(22, 2),
(22, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_products_variants`
--

CREATE TABLE `soc_products_variants` (
  `products_variants_id` int(11) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `products_id` int(11) NOT NULL DEFAULT '0',
  `products_images_id` int(11) DEFAULT NULL,
  `products_status` tinyint(1) NOT NULL,
  `products_price` decimal(15,4) NOT NULL,
  `products_sku` varchar(64) NOT NULL,
  `products_model` varchar(255) NOT NULL,
  `products_quantity` int(4) NOT NULL,
  `products_weight` decimal(5,2) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `cache_filename` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_products_variants_entries`
--

CREATE TABLE `soc_products_variants_entries` (
  `products_variants_entries_id` int(11) NOT NULL,
  `products_variants_id` int(11) NOT NULL,
  `products_variants_groups_id` int(11) NOT NULL,
  `products_variants_values_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_products_variants_groups`
--

CREATE TABLE `soc_products_variants_groups` (
  `products_variants_groups_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `products_variants_groups_name` varchar(32) NOT NULL DEFAULT '',
  `sort_order` int(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_products_variants_values`
--

CREATE TABLE `soc_products_variants_values` (
  `products_variants_values_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `products_variants_values_name` varchar(64) NOT NULL DEFAULT '',
  `sort_order` int(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_products_variants_values_to_products_variants_groups`
--

CREATE TABLE `soc_products_variants_values_to_products_variants_groups` (
  `products_variants_values_to_products_variants_groups_id` int(11) NOT NULL,
  `products_variants_groups_id` int(11) NOT NULL,
  `products_variants_values_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_products_xsell`
--

CREATE TABLE `soc_products_xsell` (
  `products_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `xsell_products_id` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_products_xsell`
--

INSERT INTO `soc_products_xsell` (`products_id`, `xsell_products_id`) VALUES
(20, 0),
(21, 0),
(22, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_quantity_discount_groups`
--

CREATE TABLE `soc_quantity_discount_groups` (
  `quantity_discount_groups_id` int(11) NOT NULL,
  `quantity_discount_groups_name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_quantity_discount_groups_values`
--

CREATE TABLE `soc_quantity_discount_groups_values` (
  `quantity_discount_groups_values_id` int(11) NOT NULL,
  `quantity_discount_groups_id` int(11) NOT NULL,
  `customers_groups_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `discount` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_quantity_unit_classes`
--

CREATE TABLE `soc_quantity_unit_classes` (
  `quantity_unit_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `quantity_unit_class_title` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_quantity_unit_classes`
--

INSERT INTO `soc_quantity_unit_classes` (`quantity_unit_class_id`, `language_id`, `quantity_unit_class_title`) VALUES
(1, 2, 'pçs'),
(2, 2, 'kg'),
(3, 2, 'litro'),
(4, 2, 'dúzia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_ratings`
--

CREATE TABLE `soc_ratings` (
  `ratings_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_ratings_description`
--

CREATE TABLE `soc_ratings_description` (
  `ratings_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `ratings_text` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_reviews`
--

CREATE TABLE `soc_reviews` (
  `reviews_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `customers_name` varchar(64) NOT NULL,
  `reviews_rating` int(1) DEFAULT NULL,
  `languages_id` int(11) NOT NULL,
  `reviews_text` text NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `reviews_read` int(5) NOT NULL DEFAULT '0',
  `reviews_status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_search_terms`
--

CREATE TABLE `soc_search_terms` (
  `search_terms_id` int(10) NOT NULL,
  `text` varchar(128) NOT NULL,
  `products_count` int(10) NOT NULL,
  `search_count` int(10) NOT NULL,
  `synonym` varchar(128) NOT NULL,
  `show_in_terms` tinyint(1) NOT NULL,
  `date_updated` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_search_terms`
--

INSERT INTO `soc_search_terms` (`search_terms_id`, `text`, `products_count`, `search_count`, `synonym`, `show_in_terms`, `date_updated`) VALUES
(1, 'apple', 2, 30, '', 1, '2016-06-28 15:03:16'),
(2, 'asus', 0, 7, '', 0, '2016-06-28 15:03:16'),
(3, 'ibm', 0, 16, '', 0, '2016-06-28 15:03:16'),
(4, 'sony', 0, 27, '', 1, '2016-06-28 15:03:16'),
(5, 'acer', 0, 95, '', 1, '2016-06-28 15:03:16'),
(6, 'benq', 0, 46, '', 1, '2016-06-28 15:03:16'),
(7, 'lenovo', 0, 55, '', 1, '2016-06-28 15:03:16'),
(8, 'nokia', 0, 74, '', 1, '2016-06-28 15:03:16'),
(9, 'LG', 0, 75, '', 1, '2016-06-28 15:03:16'),
(10, 'Samsung', 0, 42, '', 1, '2016-06-28 15:03:16'),
(11, 'J5', 0, 1, '', 0, '2016-06-28 16:06:43');

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_sessions`
--

CREATE TABLE `soc_sessions` (
  `sesskey` varchar(32) NOT NULL,
  `expiry` int(11) UNSIGNED NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_sessions`
--

INSERT INTO `soc_sessions` (`sesskey`, `expiry`, `value`) VALUES
('igus1l1vav6961kbme16hm6bl1', 1467137902, 'admin_language|s:5:"en_US";module|s:5:"index";'),
('u6rmi20ethogpvd7ab4uu518f4', 1467144990, 'admin_language|s:5:"pt_BR";module|s:16:"desktop_settings";admin|a:3:{s:2:"id";i:1;s:8:"username";s:5:"admin";s:6:"access";a:69:{i:0;s:14:"abandoned_cart";i:1;s:14:"administrators";i:2;s:18:"administrators_log";i:3;s:8:"articles";i:4;s:19:"articles_categories";i:5;s:6:"backup";i:6;s:14:"banner_manager";i:7;s:5:"cache";i:8;s:10:"categories";i:9;s:13:"configuration";i:10;s:20:"configuration_wizard";i:11;s:9:"countries";i:12;s:7:"coupons";i:13;s:12:"credit_cards";i:14;s:12:"credits_memo";i:15;s:10:"currencies";i:16;s:9:"customers";i:17;s:16:"customers_groups";i:18;s:9:"dashboard";i:19;s:11:"departments";i:20;s:5:"email";i:21;s:15:"email_templates";i:22;s:4:"faqs";i:23;s:24:"feature_products_manager";i:24;s:12:"file_manager";i:25;s:17:"gift_certificates";i:26;s:14:"google_sitemap";i:27;s:10:"guest_book";i:28;s:13:"homepage_info";i:29;s:12:"image_groups";i:30;s:6:"images";i:31;s:13:"import_export";i:32;s:11:"information";i:33;s:8:"invoices";i:34;s:9:"languages";i:35;s:11:"logo_upload";i:36;s:13:"manufacturers";i:37;s:13:"modules_geoip";i:38;s:19:"modules_order_total";i:39;s:15:"modules_payment";i:40;s:16:"modules_shipping";i:41;s:11:"newsletters";i:42;s:6:"orders";i:43;s:14:"orders_returns";i:44;s:13:"orders_status";i:45;s:5:"polls";i:46;s:16:"product_variants";i:47;s:8:"products";i:48;s:19:"products_attributes";i:49;s:17:"products_expected";i:50;s:23:"purchased_downloadables";i:51;s:24:"quantity_discount_groups";i:52;s:17:"reports_customers";i:53;s:16:"reports_products";i:54;s:7:"reviews";i:55;s:12:"search_terms";i:56;s:11:"server_info";i:57;s:8:"services";i:58;s:12:"slide_images";i:59;s:8:"specials";i:60;s:11:"tax_classes";i:61;s:9:"templates";i:62;s:17:"templates_modules";i:63;s:24:"templates_modules_layout";i:64;s:12:"unit_classes";i:65;s:9:"watermark";i:66;s:14:"weight_classes";i:67;s:11:"whos_online";i:68;s:11:"zone_groups";}}token|s:32:"e62c8bd4806986ea068d4064199b2492";token_time|i:1467138177;'),
('33qouvp3v7nbiupkrl2s0t9eu7', 1467138536, 'language|s:5:"en_US";language_change|b:1;currency|s:3:"USD";osC_ShoppingCart_data|a:21:{s:8:"contents";a:0:{}s:14:"sub_total_cost";i:0;s:10:"total_cost";i:0;s:12:"total_weight";i:0;s:3:"tax";i:0;s:16:"is_gift_wrapping";b:0;s:10:"tax_groups";a:0:{}s:11:"coupon_code";N;s:13:"coupon_amount";i:0;s:22:"gift_certificate_codes";a:0:{}s:30:"gift_certificate_redeem_amount";a:0:{}s:15:"customer_credit";i:0;s:19:"use_customer_credit";b:0;s:21:"shipping_boxes_weight";i:0;s:14:"shipping_boxes";i:0;s:16:"shipping_address";a:2:{s:7:"zone_id";s:3:"494";s:10:"country_id";s:2:"30";}s:15:"shipping_method";a:0:{}s:15:"billing_address";a:2:{s:7:"zone_id";s:3:"494";s:10:"country_id";s:2:"30";}s:14:"billing_method";a:0:{}s:15:"shipping_quotes";a:0:{}s:12:"order_totals";a:0:{}}cartID|s:5:"39809";toC_Wishlist_data|a:3:{s:8:"contents";a:0:{}s:12:"wishlists_id";N;s:5:"token";N;}toC_Compare_Products_data|a:0:{}toC_Customization_Fields_data|a:1:{s:8:"contents";a:0:{}}osC_NavigationHistory_data|a:1:{i:0;a:4:{s:4:"page";s:9:"index.php";s:4:"mode";s:6:"NONSSL";s:3:"get";a:0:{}s:4:"post";a:0:{}}}osC_RecentlyVisited_data|a:0:{}template|a:2:{s:2:"id";s:1:"1";s:4:"code";s:10:"glass_gray";}'),
('5n3j4gqjs9v7udite75h0amo86', 1467144748, 'language|s:5:"pt_BR";language_change|b:1;currency|s:3:"BRL";osC_ShoppingCart_data|a:21:{s:8:"contents";a:0:{}s:14:"sub_total_cost";i:0;s:10:"total_cost";i:0;s:12:"total_weight";i:0;s:3:"tax";i:0;s:16:"is_gift_wrapping";b:0;s:10:"tax_groups";a:0:{}s:11:"coupon_code";N;s:13:"coupon_amount";i:0;s:22:"gift_certificate_codes";a:0:{}s:30:"gift_certificate_redeem_amount";a:0:{}s:15:"customer_credit";i:0;s:19:"use_customer_credit";b:0;s:21:"shipping_boxes_weight";i:0;s:14:"shipping_boxes";i:0;s:16:"shipping_address";a:2:{s:7:"zone_id";s:3:"494";s:10:"country_id";s:2:"30";}s:15:"shipping_method";a:0:{}s:15:"billing_address";a:2:{s:7:"zone_id";s:3:"494";s:10:"country_id";s:2:"30";}s:14:"billing_method";a:0:{}s:15:"shipping_quotes";a:0:{}s:12:"order_totals";a:0:{}}cartID|s:5:"87723";toC_Wishlist_data|a:3:{s:8:"contents";a:0:{}s:12:"wishlists_id";N;s:5:"token";N;}toC_Compare_Products_data|a:0:{}toC_Customization_Fields_data|a:1:{s:8:"contents";a:0:{}}osC_NavigationHistory_data|a:1:{i:0;a:4:{s:4:"page";s:9:"index.php";s:4:"mode";s:6:"NONSSL";s:3:"get";a:0:{}s:4:"post";a:0:{}}}osC_RecentlyVisited_data|a:0:{}template|a:2:{s:2:"id";s:1:"2";s:4:"code";s:9:"bootstrap";}view_type|s:4:"list";osC_NavigationHistory_snapshot|a:4:{s:4:"page";s:9:"index.php";s:4:"mode";s:6:"NONSSL";s:3:"get";a:3:{i:20;s:0:"";s:13:"manufacturers";s:1:"6";s:6:"action";s:12:"wishlist_add";}s:4:"post";a:0:{}}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_slide_images`
--

CREATE TABLE `soc_slide_images` (
  `image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `image_url` char(255) NOT NULL,
  `sort_order` int(5) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_slide_images`
--

INSERT INTO `soc_slide_images` (`image_id`, `language_id`, `description`, `image`, `image_url`, `sort_order`, `status`) VALUES
(1, 2, 'Put here the required information.', 'dell_xps630_en.png', 'products.php?1', 0, 1),
(2, 2, 'Put here the required information.', 'apple_23_cinema_en.png', 'products.php?18', 0, 1),
(3, 2, 'Put here the required information.', 'thinkcentre_m57p_en.png', 'products.php?3', 0, 1),
(4, 2, 'Put here the required information.', 'apple_iphone_3g_en.png', 'products.php?17', 0, 1),
(5, 2, 'Put here the required information.', 'hp_tx2510us_en.png', 'products.php?13', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_specials`
--

CREATE TABLE `soc_specials` (
  `specials_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `specials_new_products_price` decimal(15,4) NOT NULL,
  `specials_date_added` datetime DEFAULT NULL,
  `specials_last_modified` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `expires_date` datetime DEFAULT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_tax_class`
--

CREATE TABLE `soc_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `tax_class_title` varchar(32) NOT NULL,
  `tax_class_description` varchar(255) NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_tax_class`
--

INSERT INTO `soc_tax_class` (`tax_class_id`, `tax_class_title`, `tax_class_description`, `last_modified`, `date_added`) VALUES
(1, 'Taxable Goods', 'The following types of products are included non-food, services, etc', '2016-06-28 15:02:37', '2016-06-28 15:02:37');

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_tax_rates`
--

CREATE TABLE `soc_tax_rates` (
  `tax_rates_id` int(11) NOT NULL,
  `tax_zone_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_priority` int(5) DEFAULT '1',
  `tax_rate` decimal(7,4) NOT NULL,
  `tax_description` varchar(255) NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_tax_rates`
--

INSERT INTO `soc_tax_rates` (`tax_rates_id`, `tax_zone_id`, `tax_class_id`, `tax_priority`, `tax_rate`, `tax_description`, `last_modified`, `date_added`) VALUES
(1, 1, 1, 1, '7.0000', 'FL TAX 7.0%', '2016-06-28 15:02:37', '2016-06-28 15:02:37');

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_templates`
--

CREATE TABLE `soc_templates` (
  `id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `author_name` varchar(64) NOT NULL,
  `author_www` varchar(255) DEFAULT NULL,
  `markup_version` varchar(32) DEFAULT NULL,
  `css_based` tinyint(4) DEFAULT NULL,
  `medium` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_templates`
--

INSERT INTO `soc_templates` (`id`, `title`, `code`, `author_name`, `author_www`, `markup_version`, `css_based`, `medium`) VALUES
(1, 'TomatoCart Glass Gray', 'glass_gray', 'TomatoCart', 'http://www.tomatocart.com', 'XHTML 1.0 Transitional', 1, 'Screen'),
(2, 'TomatoCart Bootstrap', 'bootstrap', 'TomatoCart', 'http://www.tomatocart.com', 'XHTML 1.0 Transitional', 1, 'Screen');

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_templates_boxes`
--

CREATE TABLE `soc_templates_boxes` (
  `id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `author_name` varchar(64) NOT NULL,
  `author_www` varchar(255) DEFAULT NULL,
  `modules_group` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_templates_boxes`
--

INSERT INTO `soc_templates_boxes` (`id`, `title`, `code`, `author_name`, `author_www`, `modules_group`) VALUES
(1, 'Best Sellers', 'best_sellers', 'osCommerce', 'http://www.oscommerce.com', 'boxes'),
(2, 'Categories', 'categories', 'osCommerce', 'http://www.oscommerce.com', 'boxes'),
(3, 'Currencies', 'currencies', 'osCommerce', 'http://www.oscommerce.com', 'boxes'),
(4, 'Information', 'information', 'osCommerce', 'http://www.oscommerce.com', 'boxes'),
(5, 'Manufacturer Info', 'manufacturer_info', 'osCommerce', 'http://www.oscommerce.com', 'boxes'),
(6, 'Manufacturers', 'manufacturers', 'osCommerce', 'http://www.oscommerce.com', 'boxes'),
(7, 'Order History', 'order_history', 'osCommerce', 'http://www.oscommerce.com', 'boxes'),
(8, 'Product Notifications', 'product_notifications', 'osCommerce', 'http://www.oscommerce.com', 'boxes'),
(9, 'Reviews', 'reviews', 'osCommerce', 'http://www.oscommerce.com', 'boxes'),
(10, 'Specials', 'specials', 'osCommerce', 'http://www.oscommerce.com', 'boxes'),
(11, 'Tell a Friend', 'tell_a_friend', 'osCommerce', 'http://www.oscommerce.com', 'boxes'),
(12, 'What''s New', 'whats_new', 'osCommerce', 'http://www.oscommerce.com', 'boxes'),
(13, 'New Products', 'new_products', 'osCommerce', 'http://www.oscommerce.com', 'content'),
(14, 'Upcoming Products', 'upcoming_products', 'osCommerce', 'http://www.oscommerce.com', 'content'),
(15, 'Recently Visited', 'recently_visited', 'osCommerce', 'http://www.oscommerce.com', 'content'),
(16, 'Also Purchased Products', 'also_purchased_products', 'osCommerce', 'http://www.oscommerce.com', 'content'),
(17, 'Cross Sell Products', 'xsell_products', 'TomatoCart', 'http://www.tomatocart.com', 'content'),
(18, 'Compare Products', 'compare_products', 'TomatoCart', 'http://www.tomatocart.com', 'boxes'),
(19, 'Popular Search Term', 'popular_search_terms_tag_cloud', 'TomatoCart', 'http://www.tomatocart.com', 'boxes'),
(20, 'Feature Products', 'feature_products', 'TomatoCart', 'http://www.tomatocart.com', 'content'),
(21, 'payment_cod_title', 'cod', 'osCommerce', 'http://www.oscommerce.com', 'payment'),
(22, 'shipping_flat_title', 'flat', 'osCommerce', 'http://www.oscommerce.com', 'shipping'),
(23, 'order_total_subtotal_title', 'sub_total', 'osCommerce', 'http://www.oscommerce.com', 'order_total'),
(24, 'order_total_shipping_title', 'shipping', 'osCommerce', 'http://www.oscommerce.com', 'order_total'),
(25, 'order_total_tax_title', 'tax', 'osCommerce', 'http://www.oscommerce.com', 'order_total'),
(26, 'order_total_total_title', 'total', 'osCommerce', 'http://www.oscommerce.com', 'order_total'),
(27, 'order_total_coupon_title', 'coupon', 'TomatoCart', 'http://www.tomatocart.com', 'order_total'),
(28, 'order_total_gift_certificate_title', 'gift_certificate', 'TomatoCart', 'http://www.tomatocart.com', 'order_total'),
(29, 'order_total_store_credit_title', 'store_credit', 'TomatoCart', 'http://www.tomatocart.com', 'order_total'),
(30, 'order_total_gift_wrapping_title', 'gift_wrapping', 'TomatoCart', 'http://www.tomatocart.com', 'order_total'),
(100, 'Slideshow', 'slide_show', 'TomatoCart', 'http://www.tomatocart.com', 'content'),
(101, 'Article Categories', 'articles_categories', 'TomatoCart', 'http://www.tomatocart.com', 'boxes'),
(102, 'Shop By Price', 'shop_by_price', 'TomatoCart', 'http://www.tomatocart.com', 'boxes');

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_templates_boxes_to_pages`
--

CREATE TABLE `soc_templates_boxes_to_pages` (
  `id` int(11) NOT NULL,
  `templates_boxes_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `content_page` varchar(255) NOT NULL,
  `boxes_group` varchar(32) NOT NULL,
  `sort_order` int(11) DEFAULT '0',
  `page_specific` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_templates_boxes_to_pages`
--

INSERT INTO `soc_templates_boxes_to_pages` (`id`, `templates_boxes_id`, `templates_id`, `content_page`, `boxes_group`, `sort_order`, `page_specific`) VALUES
(1, 2, 1, '*', 'left', 100, 0),
(2, 6, 1, '*', 'left', 200, 0),
(3, 12, 1, '*', 'right', 100, 0),
(4, 4, 1, '*', 'left', 300, 0),
(5, 5, 1, 'products/info', 'right', 200, 0),
(6, 7, 1, '*', 'right', 300, 0),
(7, 1, 1, '*', 'right', 400, 0),
(8, 8, 1, 'products/info', 'right', 500, 0),
(9, 11, 1, 'products/info', 'right', 600, 0),
(10, 10, 1, '*', 'right', 700, 0),
(11, 9, 1, '*', 'right', 800, 0),
(12, 3, 1, '*', 'right', 1000, 0),
(13, 13, 1, 'index/category_listing', 'after', 400, 0),
(14, 13, 1, 'index/index', 'after', 400, 0),
(15, 14, 1, 'index/index', 'after', 450, 0),
(16, 15, 1, '*', 'after', 500, 0),
(17, 16, 1, 'products/info', 'after', 100, 0),
(18, 17, 1, 'products/info', 'after', 200, 0),
(19, 18, 1, '*', 'right', 10, 0),
(20, 19, 1, '*', 'right', 1200, 0),
(21, 20, 1, 'index/index', 'after', 100, 0),
(22, 100, 1, 'index/index', 'slideshow', 0, 0),
(23, 101, 1, '*', 'right', 70, 0),
(24, 102, 1, '*', 'right', 50, 0),
(25, 1, 2, '*', 'left', 600, 0),
(26, 2, 2, '*', 'left', 100, 0),
(27, 3, 2, '*', 'left', 1000, 0),
(28, 4, 2, '*', 'footer-col-1', 100, 0),
(29, 5, 2, 'products/info', 'left', 400, 0),
(30, 6, 2, '*', 'left', 300, 0),
(31, 7, 2, '*', 'left', 500, 0),
(32, 8, 2, 'products/info', 'left', 700, 0),
(33, 9, 2, '*', 'left', 900, 0),
(34, 10, 2, '*', 'footer-col-3', 100, 0),
(35, 11, 2, 'products/info', 'left', 800, 0),
(36, 12, 2, '*', 'footer-col-2', 100, 0),
(37, 13, 2, 'index/index', 'after', 200, 0),
(38, 14, 2, 'index/index', 'after', 350, 0),
(39, 15, 2, '*', 'after', 400, 0),
(40, 16, 2, 'products/info', 'after', 500, 0),
(41, 18, 2, '*', 'left', 200, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_weight_classes`
--

CREATE TABLE `soc_weight_classes` (
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `weight_class_key` varchar(4) NOT NULL DEFAULT '',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `weight_class_title` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_weight_classes`
--

INSERT INTO `soc_weight_classes` (`weight_class_id`, `weight_class_key`, `language_id`, `weight_class_title`) VALUES
(1, 'g', 2, 'Grama(s)'),
(2, 'kg', 2, 'Kilograma(s)'),
(3, 'oz', 2, 'Onça(s)'),
(4, 'lb', 2, 'Libra(s)');

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_weight_classes_rules`
--

CREATE TABLE `soc_weight_classes_rules` (
  `weight_class_from_id` int(11) NOT NULL DEFAULT '0',
  `weight_class_to_id` int(11) NOT NULL DEFAULT '0',
  `weight_class_rule` decimal(15,4) NOT NULL DEFAULT '0.0000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_weight_classes_rules`
--

INSERT INTO `soc_weight_classes_rules` (`weight_class_from_id`, `weight_class_to_id`, `weight_class_rule`) VALUES
(1, 2, '0.0010'),
(1, 3, '0.0352'),
(1, 4, '0.0022'),
(2, 1, '1000.0000'),
(2, 3, '35.2739'),
(2, 4, '2.2046'),
(3, 1, '28.3495'),
(3, 2, '0.0283'),
(3, 4, '0.0625'),
(4, 1, '453.5923'),
(4, 2, '0.4535'),
(4, 3, '16.0000');

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_whos_online`
--

CREATE TABLE `soc_whos_online` (
  `customer_id` int(11) DEFAULT NULL,
  `full_name` varchar(64) NOT NULL,
  `session_id` varchar(128) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `time_entry` varchar(14) NOT NULL,
  `time_last_click` varchar(14) NOT NULL,
  `last_page_url` varchar(255) NOT NULL,
  `referrer_url` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_whos_online`
--

INSERT INTO `soc_whos_online` (`customer_id`, `full_name`, `session_id`, `ip_address`, `time_entry`, `time_last_click`, `last_page_url`, `referrer_url`) VALUES
(0, 'Guest', '5n3j4gqjs9v7udite75h0amo86', '::1', '1467142829', '1467143848', '/socelulares/index.php', 'localhost');

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_wishlists`
--

CREATE TABLE `soc_wishlists` (
  `wishlists_id` int(11) NOT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `wishlists_token` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_wishlists_products`
--

CREATE TABLE `soc_wishlists_products` (
  `wishlists_products_id` int(11) NOT NULL,
  `wishlists_id` int(11) NOT NULL,
  `products_id_string` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `comments` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_zones`
--

CREATE TABLE `soc_zones` (
  `zone_id` int(11) NOT NULL,
  `zone_country_id` int(11) NOT NULL,
  `zone_code` varchar(32) NOT NULL,
  `zone_name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_zones`
--

INSERT INTO `soc_zones` (`zone_id`, `zone_country_id`, `zone_code`, `zone_name`) VALUES
(1, 1, 'BDS', 'بد خشان'),
(2, 1, 'BDG', 'بادغیس'),
(3, 1, 'BGL', 'بغلان'),
(4, 1, 'BAL', 'بلخ'),
(5, 1, 'BAM', 'بامیان'),
(6, 1, 'DAY', 'دایکندی'),
(7, 1, 'FRA', 'فراه'),
(8, 1, 'FYB', 'فارياب'),
(9, 1, 'GHA', 'غزنى'),
(10, 1, 'GHO', 'غور'),
(11, 1, 'HEL', 'هلمند'),
(12, 1, 'HER', 'هرات'),
(13, 1, 'JOW', 'جوزجان'),
(14, 1, 'KAB', 'کابل'),
(15, 1, 'KAN', 'قندھار'),
(16, 1, 'KAP', 'کاپيسا'),
(17, 1, 'KHO', 'خوست'),
(18, 1, 'KNR', 'کُنَر'),
(19, 1, 'KDZ', 'كندوز'),
(20, 1, 'LAG', 'لغمان'),
(21, 1, 'LOW', 'لوګر'),
(22, 1, 'NAN', 'ننگرهار'),
(23, 1, 'NIM', 'نیمروز'),
(24, 1, 'NUR', 'نورستان'),
(25, 1, 'ORU', 'ؤروزگان'),
(26, 1, 'PIA', 'پکتیا'),
(27, 1, 'PKA', 'پکتيکا'),
(28, 1, 'PAN', 'پنج شیر'),
(29, 1, 'PAR', 'پروان'),
(30, 1, 'SAM', 'سمنگان'),
(31, 1, 'SAR', 'سر پل'),
(32, 1, 'TAK', 'تخار'),
(33, 1, 'WAR', 'وردک'),
(34, 1, 'ZAB', 'زابل'),
(35, 2, 'BR', 'Beratit'),
(36, 2, 'BU', 'Bulqizës'),
(37, 2, 'DI', 'Dibrës'),
(38, 2, 'DL', 'Delvinës'),
(39, 2, 'DR', 'Durrësit'),
(40, 2, 'DV', 'Devollit'),
(41, 2, 'EL', 'Elbasanit'),
(42, 2, 'ER', 'Kolonjës'),
(43, 2, 'FR', 'Fierit'),
(44, 2, 'GJ', 'Gjirokastrës'),
(45, 2, 'GR', 'Gramshit'),
(46, 2, 'HA', 'Hasit'),
(47, 2, 'KA', 'Kavajës'),
(48, 2, 'KB', 'Kurbinit'),
(49, 2, 'KC', 'Kuçovës'),
(50, 2, 'KO', 'Korçës'),
(51, 2, 'KR', 'Krujës'),
(52, 2, 'KU', 'Kukësit'),
(53, 2, 'LB', 'Librazhdit'),
(54, 2, 'LE', 'Lezhës'),
(55, 2, 'LU', 'Lushnjës'),
(56, 2, 'MK', 'Mallakastrës'),
(57, 2, 'MM', 'Malësisë së Madhe'),
(58, 2, 'MR', 'Mirditës'),
(59, 2, 'MT', 'Matit'),
(60, 2, 'PG', 'Pogradecit'),
(61, 2, 'PQ', 'Peqinit'),
(62, 2, 'PR', 'Përmetit'),
(63, 2, 'PU', 'Pukës'),
(64, 2, 'SH', 'Shkodrës'),
(65, 2, 'SK', 'Skraparit'),
(66, 2, 'SR', 'Sarandës'),
(67, 2, 'TE', 'Tepelenës'),
(68, 2, 'TP', 'Tropojës'),
(69, 2, 'TR', 'Tiranës'),
(70, 2, 'VL', 'Vlorës'),
(71, 3, '01', 'ولاية أدرار'),
(72, 3, '02', 'ولاية الشلف'),
(73, 3, '03', 'ولاية الأغواط'),
(74, 3, '04', 'ولاية أم البواقي'),
(75, 3, '05', 'ولاية باتنة'),
(76, 3, '06', 'ولاية بجاية'),
(77, 3, '07', 'ولاية بسكرة'),
(78, 3, '08', 'ولاية بشار'),
(79, 3, '09', 'البليدة‎'),
(80, 3, '10', 'ولاية البويرة'),
(81, 3, '11', 'ولاية تمنراست'),
(82, 3, '12', 'ولاية تبسة'),
(83, 3, '13', 'تلمسان'),
(84, 3, '14', 'ولاية تيارت'),
(85, 3, '15', 'تيزي وزو'),
(86, 3, '16', 'ولاية الجزائر'),
(87, 3, '17', 'ولاية عين الدفلى'),
(88, 3, '18', 'ولاية جيجل'),
(89, 3, '19', 'ولاية سطيف'),
(90, 3, '20', 'ولاية سعيدة'),
(91, 3, '21', 'السكيكدة'),
(92, 3, '22', 'ولاية سيدي بلعباس'),
(93, 3, '23', 'ولاية عنابة'),
(94, 3, '24', 'ولاية قالمة'),
(95, 3, '25', 'قسنطينة'),
(96, 3, '26', 'ولاية المدية'),
(97, 3, '27', 'ولاية مستغانم'),
(98, 3, '28', 'ولاية المسيلة'),
(99, 3, '29', 'ولاية معسكر'),
(100, 3, '30', 'ورقلة'),
(101, 3, '31', 'وهران'),
(102, 3, '32', 'ولاية البيض'),
(103, 3, '33', 'ولاية اليزي'),
(104, 3, '34', 'ولاية برج بوعريريج'),
(105, 3, '35', 'ولاية بومرداس'),
(106, 3, '36', 'ولاية الطارف'),
(107, 3, '37', 'تندوف'),
(108, 3, '38', 'ولاية تسمسيلت'),
(109, 3, '39', 'ولاية الوادي'),
(110, 3, '40', 'ولاية خنشلة'),
(111, 3, '41', 'ولاية سوق أهراس'),
(112, 3, '42', 'ولاية تيبازة'),
(113, 3, '43', 'ولاية ميلة'),
(114, 3, '44', 'ولاية عين الدفلى'),
(115, 3, '45', 'ولاية النعامة'),
(116, 3, '46', 'ولاية عين تموشنت'),
(117, 3, '47', 'ولاية غرداية'),
(118, 3, '48', 'ولاية غليزان'),
(119, 4, 'EA', 'Eastern'),
(120, 4, 'MA', 'Manu''a'),
(121, 4, 'RI', 'Rose Island'),
(122, 4, 'SI', 'Swains Island'),
(123, 4, 'WE', 'Western'),
(124, 5, 'AN', 'Andorra la Vella'),
(125, 5, 'CA', 'Canillo'),
(126, 5, 'EN', 'Encamp'),
(127, 5, 'LE', 'Escaldes-Engordany'),
(128, 5, 'LM', 'La Massana'),
(129, 5, 'OR', 'Ordino'),
(130, 5, 'SJ', 'Sant Juliá de Lória'),
(131, 6, 'BGO', 'Bengo'),
(132, 6, 'BGU', 'Benguela'),
(133, 6, 'BIE', 'Bié'),
(134, 6, 'CAB', 'Cabinda'),
(135, 6, 'CCU', 'Cuando Cubango'),
(136, 6, 'CNO', 'Cuanza Norte'),
(137, 6, 'CUS', 'Cuanza Sul'),
(138, 6, 'CNN', 'Cunene'),
(139, 6, 'HUA', 'Huambo'),
(140, 6, 'HUI', 'Huíla'),
(141, 6, 'LUA', 'Luanda'),
(142, 6, 'LNO', 'Lunda Norte'),
(143, 6, 'LSU', 'Lunda Sul'),
(144, 6, 'MAL', 'Malanje'),
(145, 6, 'MOX', 'Moxico'),
(146, 6, 'NAM', 'Namibe'),
(147, 6, 'UIG', 'Uíge'),
(148, 6, 'ZAI', 'Zaire'),
(149, 9, 'BAR', 'Barbuda'),
(150, 9, 'SGE', 'Saint George'),
(151, 9, 'SJO', 'Saint John'),
(152, 9, 'SMA', 'Saint Mary'),
(153, 9, 'SPA', 'Saint Paul'),
(154, 9, 'SPE', 'Saint Peter'),
(155, 9, 'SPH', 'Saint Philip'),
(156, 10, 'A', 'Salta'),
(157, 10, 'B', 'Buenos Aires Province'),
(158, 10, 'C', 'Capital Federal'),
(159, 10, 'D', 'San Luis'),
(160, 10, 'E', 'Entre Ríos'),
(161, 10, 'F', 'La Rioja'),
(162, 10, 'G', 'Santiago del Estero'),
(163, 10, 'H', 'Chaco'),
(164, 10, 'J', 'San Juan'),
(165, 10, 'K', 'Catamarca'),
(166, 10, 'L', 'La Pampa'),
(167, 10, 'M', 'Mendoza'),
(168, 10, 'N', 'Misiones'),
(169, 10, 'P', 'Formosa'),
(170, 10, 'Q', 'Neuquén'),
(171, 10, 'R', 'Río Negro'),
(172, 10, 'S', 'Santa Fe'),
(173, 10, 'T', 'Tucumán'),
(174, 10, 'U', 'Chubut'),
(175, 10, 'V', 'Tierra del Fuego'),
(176, 10, 'W', 'Corrientes'),
(177, 10, 'X', 'Córdoba'),
(178, 10, 'Y', 'Jujuy'),
(179, 10, 'Z', 'Santa Cruz'),
(180, 11, 'AG', 'Արագածոտն'),
(181, 11, 'AR', 'Արարատ'),
(182, 11, 'AV', 'Արմավիր'),
(183, 11, 'ER', 'Երևան'),
(184, 11, 'GR', 'Գեղարքունիք'),
(185, 11, 'KT', 'Կոտայք'),
(186, 11, 'LO', 'Լոռի'),
(187, 11, 'SH', 'Շիրակ'),
(188, 11, 'SU', 'Սյունիք'),
(189, 11, 'TV', 'Տավուշ'),
(190, 11, 'VD', 'Վայոց Ձոր'),
(191, 13, 'ACT', 'Australian Capital Territory'),
(192, 13, 'NSW', 'New South Wales'),
(193, 13, 'NT', 'Northern Territory'),
(194, 13, 'QLD', 'Queensland'),
(195, 13, 'SA', 'South Australia'),
(196, 13, 'TAS', 'Tasmania'),
(197, 13, 'VIC', 'Victoria'),
(198, 13, 'WA', 'Western Australia'),
(199, 14, '1', 'Burgenland'),
(200, 14, '2', 'Kärnten'),
(201, 14, '3', 'Niederösterreich'),
(202, 14, '4', 'Oberösterreich'),
(203, 14, '5', 'Salzburg'),
(204, 14, '6', 'Steiermark'),
(205, 14, '7', 'Tirol'),
(206, 14, '8', 'Voralberg'),
(207, 14, '9', 'Wien'),
(208, 15, 'AB', 'Əli Bayramlı'),
(209, 15, 'ABS', 'Abşeron'),
(210, 15, 'AGC', 'Ağcabədi'),
(211, 15, 'AGM', 'Ağdam'),
(212, 15, 'AGS', 'Ağdaş'),
(213, 15, 'AGA', 'Ağstafa'),
(214, 15, 'AGU', 'Ağsu'),
(215, 15, 'AST', 'Astara'),
(216, 15, 'BA', 'Bakı'),
(217, 15, 'BAB', 'Babək'),
(218, 15, 'BAL', 'Balakən'),
(219, 15, 'BAR', 'Bərdə'),
(220, 15, 'BEY', 'Beyləqan'),
(221, 15, 'BIL', 'Biləsuvar'),
(222, 15, 'CAB', 'Cəbrayıl'),
(223, 15, 'CAL', 'Cəlilabab'),
(224, 15, 'CUL', 'Julfa'),
(225, 15, 'DAS', 'Daşkəsən'),
(226, 15, 'DAV', 'Dəvəçi'),
(227, 15, 'FUZ', 'Füzuli'),
(228, 15, 'GA', 'Gəncə'),
(229, 15, 'GAD', 'Gədəbəy'),
(230, 15, 'GOR', 'Goranboy'),
(231, 15, 'GOY', 'Göyçay'),
(232, 15, 'HAC', 'Hacıqabul'),
(233, 15, 'IMI', 'İmişli'),
(234, 15, 'ISM', 'İsmayıllı'),
(235, 15, 'KAL', 'Kəlbəcər'),
(236, 15, 'KUR', 'Kürdəmir'),
(237, 15, 'LA', 'Lənkəran'),
(238, 15, 'LAC', 'Laçın'),
(239, 15, 'LAN', 'Lənkəran'),
(240, 15, 'LER', 'Lerik'),
(241, 15, 'MAS', 'Masallı'),
(242, 15, 'MI', 'Mingəçevir'),
(243, 15, 'NA', 'Naftalan'),
(244, 15, 'NEF', 'Neftçala'),
(245, 15, 'OGU', 'Oğuz'),
(246, 15, 'ORD', 'Ordubad'),
(247, 15, 'QAB', 'Qəbələ'),
(248, 15, 'QAX', 'Qax'),
(249, 15, 'QAZ', 'Qazax'),
(250, 15, 'QOB', 'Qobustan'),
(251, 15, 'QBA', 'Quba'),
(252, 15, 'QBI', 'Qubadlı'),
(253, 15, 'QUS', 'Qusar'),
(254, 15, 'SA', 'Şəki'),
(255, 15, 'SAT', 'Saatlı'),
(256, 15, 'SAB', 'Sabirabad'),
(257, 15, 'SAD', 'Sədərək'),
(258, 15, 'SAH', 'Şahbuz'),
(259, 15, 'SAK', 'Şəki'),
(260, 15, 'SAL', 'Salyan'),
(261, 15, 'SM', 'Sumqayıt'),
(262, 15, 'SMI', 'Şamaxı'),
(263, 15, 'SKR', 'Şəmkir'),
(264, 15, 'SMX', 'Samux'),
(265, 15, 'SAR', 'Şərur'),
(266, 15, 'SIY', 'Siyəzən'),
(267, 15, 'SS', 'Şuşa (City)'),
(268, 15, 'SUS', 'Şuşa'),
(269, 15, 'TAR', 'Tərtər'),
(270, 15, 'TOV', 'Tovuz'),
(271, 15, 'UCA', 'Ucar'),
(272, 15, 'XA', 'Xankəndi'),
(273, 15, 'XAC', 'Xaçmaz'),
(274, 15, 'XAN', 'Xanlar'),
(275, 15, 'XIZ', 'Xızı'),
(276, 15, 'XCI', 'Xocalı'),
(277, 15, 'XVD', 'Xocavənd'),
(278, 15, 'YAR', 'Yardımlı'),
(279, 15, 'YE', 'Yevlax (City)'),
(280, 15, 'YEV', 'Yevlax'),
(281, 15, 'ZAN', 'Zəngilan'),
(282, 15, 'ZAQ', 'Zaqatala'),
(283, 15, 'ZAR', 'Zərdab'),
(284, 15, 'NX', 'Nakhichevan'),
(285, 16, 'AC', 'Acklins and Crooked Islands'),
(286, 16, 'BI', 'Bimini'),
(287, 16, 'CI', 'Cat Island'),
(288, 16, 'EX', 'Exuma'),
(289, 16, 'FR', 'Freeport'),
(290, 16, 'FC', 'Fresh Creek'),
(291, 16, 'GH', 'Governor''s Harbour'),
(292, 16, 'GT', 'Green Turtle Cay'),
(293, 16, 'HI', 'Harbour Island'),
(294, 16, 'HR', 'High Rock'),
(295, 16, 'IN', 'Inagua'),
(296, 16, 'KB', 'Kemps Bay'),
(297, 16, 'LI', 'Long Island'),
(298, 16, 'MH', 'Marsh Harbour'),
(299, 16, 'MA', 'Mayaguana'),
(300, 16, 'NP', 'New Providence'),
(301, 16, 'NT', 'Nicholls Town and Berry Islands'),
(302, 16, 'RI', 'Ragged Island'),
(303, 16, 'RS', 'Rock Sound'),
(304, 16, 'SS', 'San Salvador and Rum Cay'),
(305, 16, 'SP', 'Sandy Point'),
(306, 17, '01', 'الحد'),
(307, 17, '02', 'المحرق'),
(308, 17, '03', 'المنامة'),
(309, 17, '04', 'جد حفص'),
(310, 17, '05', 'المنطقة الشمالية'),
(311, 17, '06', 'سترة'),
(312, 17, '07', 'المنطقة الوسطى'),
(313, 17, '08', 'مدينة عيسى'),
(314, 17, '09', 'الرفاع والمنطقة الجنوبية'),
(315, 17, '10', 'المنطقة الغربية'),
(316, 17, '11', 'جزر حوار'),
(317, 17, '12', 'مدينة حمد'),
(318, 18, '01', 'Bandarban'),
(319, 18, '02', 'Barguna'),
(320, 18, '03', 'Bogra'),
(321, 18, '04', 'Brahmanbaria'),
(322, 18, '05', 'Bagerhat'),
(323, 18, '06', 'Barisal'),
(324, 18, '07', 'Bhola'),
(325, 18, '08', 'Comilla'),
(326, 18, '09', 'Chandpur'),
(327, 18, '10', 'Chittagong'),
(328, 18, '11', 'Cox''s Bazar'),
(329, 18, '12', 'Chuadanga'),
(330, 18, '13', 'Dhaka'),
(331, 18, '14', 'Dinajpur'),
(332, 18, '15', 'Faridpur'),
(333, 18, '16', 'Feni'),
(334, 18, '17', 'Gopalganj'),
(335, 18, '18', 'Gazipur'),
(336, 18, '19', 'Gaibandha'),
(337, 18, '20', 'Habiganj'),
(338, 18, '21', 'Jamalpur'),
(339, 18, '22', 'Jessore'),
(340, 18, '23', 'Jhenaidah'),
(341, 18, '24', 'Jaipurhat'),
(342, 18, '25', 'Jhalakati'),
(343, 18, '26', 'Kishoreganj'),
(344, 18, '27', 'Khulna'),
(345, 18, '28', 'Kurigram'),
(346, 18, '29', 'Khagrachari'),
(347, 18, '30', 'Kushtia'),
(348, 18, '31', 'Lakshmipur'),
(349, 18, '32', 'Lalmonirhat'),
(350, 18, '33', 'Manikganj'),
(351, 18, '34', 'Mymensingh'),
(352, 18, '35', 'Munshiganj'),
(353, 18, '36', 'Madaripur'),
(354, 18, '37', 'Magura'),
(355, 18, '38', 'Moulvibazar'),
(356, 18, '39', 'Meherpur'),
(357, 18, '40', 'Narayanganj'),
(358, 18, '41', 'Netrakona'),
(359, 18, '42', 'Narsingdi'),
(360, 18, '43', 'Narail'),
(361, 18, '44', 'Natore'),
(362, 18, '45', 'Nawabganj'),
(363, 18, '46', 'Nilphamari'),
(364, 18, '47', 'Noakhali'),
(365, 18, '48', 'Naogaon'),
(366, 18, '49', 'Pabna'),
(367, 18, '50', 'Pirojpur'),
(368, 18, '51', 'Patuakhali'),
(369, 18, '52', 'Panchagarh'),
(370, 18, '53', 'Rajbari'),
(371, 18, '54', 'Rajshahi'),
(372, 18, '55', 'Rangpur'),
(373, 18, '56', 'Rangamati'),
(374, 18, '57', 'Sherpur'),
(375, 18, '58', 'Satkhira'),
(376, 18, '59', 'Sirajganj'),
(377, 18, '60', 'Sylhet'),
(378, 18, '61', 'Sunamganj'),
(379, 18, '62', 'Shariatpur'),
(380, 18, '63', 'Tangail'),
(381, 18, '64', 'Thakurgaon'),
(382, 19, 'A', 'Saint Andrew'),
(383, 19, 'C', 'Christ Church'),
(384, 19, 'E', 'Saint Peter'),
(385, 19, 'G', 'Saint George'),
(386, 19, 'J', 'Saint John'),
(387, 19, 'L', 'Saint Lucy'),
(388, 19, 'M', 'Saint Michael'),
(389, 19, 'O', 'Saint Joseph'),
(390, 19, 'P', 'Saint Philip'),
(391, 19, 'S', 'Saint James'),
(392, 19, 'T', 'Saint Thomas'),
(393, 20, 'BR', 'Брэ́сцкая во́бласць'),
(394, 20, 'HO', 'Го́мельская во́бласць'),
(395, 20, 'HR', 'Гро́дзенская во́бласць'),
(396, 20, 'MA', 'Магілёўская во́бласць'),
(397, 20, 'MI', 'Мі́нская во́бласць'),
(398, 20, 'VI', 'Ві́цебская во́бласць'),
(399, 21, 'BRU', 'Brussel'),
(400, 21, 'VAN', 'Antwerpen'),
(401, 21, 'VBR', 'Vlaams-Brabant'),
(402, 21, 'VLI', 'Limburg'),
(403, 21, 'VOV', 'Oost-Vlaanderen'),
(404, 21, 'VWV', 'West-Vlaanderen'),
(405, 21, 'WBR', 'Brabant Wallonië'),
(406, 21, 'WHT', 'Henegouwen'),
(407, 21, 'WLG', 'Luik'),
(408, 21, 'WLX', 'Luxemburg'),
(409, 21, 'WNA', 'Namen'),
(410, 22, 'BZ', 'Belize District'),
(411, 22, 'CY', 'Cayo District'),
(412, 22, 'CZL', 'Corozal District'),
(413, 22, 'OW', 'Orange Walk District'),
(414, 22, 'SC', 'Stann Creek District'),
(415, 22, 'TOL', 'Toledo District'),
(416, 23, 'AL', 'Alibori'),
(417, 23, 'AK', 'Atakora'),
(418, 23, 'AQ', 'Atlantique'),
(419, 23, 'BO', 'Borgou'),
(420, 23, 'CO', 'Collines'),
(421, 23, 'DO', 'Donga'),
(422, 23, 'KO', 'Kouffo'),
(423, 23, 'LI', 'Littoral'),
(424, 23, 'MO', 'Mono'),
(425, 23, 'OU', 'Ouémé'),
(426, 23, 'PL', 'Plateau'),
(427, 23, 'ZO', 'Zou'),
(428, 24, 'DEV', 'Devonshire'),
(429, 24, 'HA', 'Hamilton City'),
(430, 24, 'HAM', 'Hamilton'),
(431, 24, 'PAG', 'Paget'),
(432, 24, 'PEM', 'Pembroke'),
(433, 24, 'SAN', 'Sandys'),
(434, 24, 'SG', 'Saint George City'),
(435, 24, 'SGE', 'Saint George''s'),
(436, 24, 'SMI', 'Smiths'),
(437, 24, 'SOU', 'Southampton'),
(438, 24, 'WAR', 'Warwick'),
(439, 25, '11', 'Paro'),
(440, 25, '12', 'Chukha'),
(441, 25, '13', 'Haa'),
(442, 25, '14', 'Samtse'),
(443, 25, '15', 'Thimphu'),
(444, 25, '21', 'Tsirang'),
(445, 25, '22', 'Dagana'),
(446, 25, '23', 'Punakha'),
(447, 25, '24', 'Wangdue Phodrang'),
(448, 25, '31', 'Sarpang'),
(449, 25, '32', 'Trongsa'),
(450, 25, '33', 'Bumthang'),
(451, 25, '34', 'Zhemgang'),
(452, 25, '41', 'Trashigang'),
(453, 25, '42', 'Mongar'),
(454, 25, '43', 'Pemagatshel'),
(455, 25, '44', 'Luentse'),
(456, 25, '45', 'Samdrup Jongkhar'),
(457, 25, 'GA', 'Gasa'),
(458, 25, 'TY', 'Trashiyangse'),
(459, 26, 'B', 'El Beni'),
(460, 26, 'C', 'Cochabamba'),
(461, 26, 'H', 'Chuquisaca'),
(462, 26, 'L', 'La Paz'),
(463, 26, 'N', 'Pando'),
(464, 26, 'O', 'Oruro'),
(465, 26, 'P', 'Potosí'),
(466, 26, 'S', 'Santa Cruz'),
(467, 26, 'T', 'Tarija'),
(468, 28, 'CE', 'Central'),
(469, 28, 'GH', 'Ghanzi'),
(470, 28, 'KG', 'Kgalagadi'),
(471, 28, 'KL', 'Kgatleng'),
(472, 28, 'KW', 'Kweneng'),
(473, 28, 'NE', 'North-East'),
(474, 28, 'NW', 'North-West'),
(475, 28, 'SE', 'South-East'),
(476, 28, 'SO', 'Southern'),
(477, 30, 'AC', 'Acre'),
(478, 30, 'AL', 'Alagoas'),
(479, 30, 'AM', 'Amazônia'),
(480, 30, 'AP', 'Amapá'),
(481, 30, 'BA', 'Bahia'),
(482, 30, 'CE', 'Ceará'),
(483, 30, 'DF', 'Distrito Federal'),
(484, 30, 'ES', 'Espírito Santo'),
(485, 30, 'GO', 'Goiás'),
(486, 30, 'MA', 'Maranhão'),
(487, 30, 'MG', 'Minas Gerais'),
(488, 30, 'MS', 'Mato Grosso do Sul'),
(489, 30, 'MT', 'Mato Grosso'),
(490, 30, 'PA', 'Pará'),
(491, 30, 'PB', 'Paraíba'),
(492, 30, 'PE', 'Pernambuco'),
(493, 30, 'PI', 'Piauí'),
(494, 30, 'PR', 'Paraná'),
(495, 30, 'RJ', 'Rio de Janeiro'),
(496, 30, 'RN', 'Rio Grande do Norte'),
(497, 30, 'RO', 'Rondônia'),
(498, 30, 'RR', 'Roraima'),
(499, 30, 'RS', 'Rio Grande do Sul'),
(500, 30, 'SC', 'Santa Catarina'),
(501, 30, 'SE', 'Sergipe'),
(502, 30, 'SP', 'São Paulo'),
(503, 30, 'TO', 'Tocantins'),
(504, 31, 'PB', 'Peros Banhos'),
(505, 31, 'SI', 'Salomon Islands'),
(506, 31, 'NI', 'Nelsons Island'),
(507, 31, 'TB', 'Three Brothers'),
(508, 31, 'EA', 'Eagle Islands'),
(509, 31, 'DI', 'Danger Island'),
(510, 31, 'EG', 'Egmont Islands'),
(511, 31, 'DG', 'Diego Garcia'),
(512, 32, 'BE', 'Belait'),
(513, 32, 'BM', 'Brunei-Muara'),
(514, 32, 'TE', 'Temburong'),
(515, 32, 'TU', 'Tutong'),
(516, 33, '01', 'Blagoevgrad'),
(517, 33, '02', 'Burgas'),
(518, 33, '03', 'Varna'),
(519, 33, '04', 'Veliko Tarnovo'),
(520, 33, '05', 'Vidin'),
(521, 33, '06', 'Vratsa'),
(522, 33, '07', 'Gabrovo'),
(523, 33, '08', 'Dobrich'),
(524, 33, '09', 'Kardzhali'),
(525, 33, '10', 'Kyustendil'),
(526, 33, '11', 'Lovech'),
(527, 33, '12', 'Montana'),
(528, 33, '13', 'Pazardzhik'),
(529, 33, '14', 'Pernik'),
(530, 33, '15', 'Pleven'),
(531, 33, '16', 'Plovdiv'),
(532, 33, '17', 'Razgrad'),
(533, 33, '18', 'Ruse'),
(534, 33, '19', 'Silistra'),
(535, 33, '20', 'Sliven'),
(536, 33, '21', 'Smolyan'),
(537, 33, '23', 'Sofia'),
(538, 33, '22', 'Sofia Province'),
(539, 33, '24', 'Stara Zagora'),
(540, 33, '25', 'Targovishte'),
(541, 33, '26', 'Haskovo'),
(542, 33, '27', 'Shumen'),
(543, 33, '28', 'Yambol'),
(544, 34, 'BAL', 'Balé'),
(545, 34, 'BAM', 'Bam'),
(546, 34, 'BAN', 'Banwa'),
(547, 34, 'BAZ', 'Bazèga'),
(548, 34, 'BGR', 'Bougouriba'),
(549, 34, 'BLG', 'Boulgou'),
(550, 34, 'BLK', 'Boulkiemdé'),
(551, 34, 'COM', 'Komoé'),
(552, 34, 'GAN', 'Ganzourgou'),
(553, 34, 'GNA', 'Gnagna'),
(554, 34, 'GOU', 'Gourma'),
(555, 34, 'HOU', 'Houet'),
(556, 34, 'IOB', 'Ioba'),
(557, 34, 'KAD', 'Kadiogo'),
(558, 34, 'KEN', 'Kénédougou'),
(559, 34, 'KMD', 'Komondjari'),
(560, 34, 'KMP', 'Kompienga'),
(561, 34, 'KOP', 'Koulpélogo'),
(562, 34, 'KOS', 'Kossi'),
(563, 34, 'KOT', 'Kouritenga'),
(564, 34, 'KOW', 'Kourwéogo'),
(565, 34, 'LER', 'Léraba'),
(566, 34, 'LOR', 'Loroum'),
(567, 34, 'MOU', 'Mouhoun'),
(568, 34, 'NAM', 'Namentenga'),
(569, 34, 'NAO', 'Naouri'),
(570, 34, 'NAY', 'Nayala'),
(571, 34, 'NOU', 'Noumbiel'),
(572, 34, 'OUB', 'Oubritenga'),
(573, 34, 'OUD', 'Oudalan'),
(574, 34, 'PAS', 'Passoré'),
(575, 34, 'PON', 'Poni'),
(576, 34, 'SEN', 'Séno'),
(577, 34, 'SIS', 'Sissili'),
(578, 34, 'SMT', 'Sanmatenga'),
(579, 34, 'SNG', 'Sanguié'),
(580, 34, 'SOM', 'Soum'),
(581, 34, 'SOR', 'Sourou'),
(582, 34, 'TAP', 'Tapoa'),
(583, 34, 'TUI', 'Tui'),
(584, 34, 'YAG', 'Yagha'),
(585, 34, 'YAT', 'Yatenga'),
(586, 34, 'ZIR', 'Ziro'),
(587, 34, 'ZON', 'Zondoma'),
(588, 34, 'ZOU', 'Zoundwéogo'),
(589, 35, 'BB', 'Bubanza'),
(590, 35, 'BJ', 'Bujumbura Mairie'),
(591, 35, 'BR', 'Bururi'),
(592, 35, 'CA', 'Cankuzo'),
(593, 35, 'CI', 'Cibitoke'),
(594, 35, 'GI', 'Gitega'),
(595, 35, 'KR', 'Karuzi'),
(596, 35, 'KY', 'Kayanza'),
(597, 35, 'KI', 'Kirundo'),
(598, 35, 'MA', 'Makamba'),
(599, 35, 'MU', 'Muramvya'),
(600, 35, 'MY', 'Muyinga'),
(601, 35, 'MW', 'Mwaro'),
(602, 35, 'NG', 'Ngozi'),
(603, 35, 'RT', 'Rutana'),
(604, 35, 'RY', 'Ruyigi'),
(605, 37, 'AD', 'Adamaoua'),
(606, 37, 'CE', 'Centre'),
(607, 37, 'EN', 'Extrême-Nord'),
(608, 37, 'ES', 'Est'),
(609, 37, 'LT', 'Littoral'),
(610, 37, 'NO', 'Nord'),
(611, 37, 'NW', 'Nord-Ouest'),
(612, 37, 'OU', 'Ouest'),
(613, 37, 'SU', 'Sud'),
(614, 37, 'SW', 'Sud-Ouest'),
(615, 38, 'AB', 'Alberta'),
(616, 38, 'BC', 'British Columbia'),
(617, 38, 'MB', 'Manitoba'),
(618, 38, 'NB', 'New Brunswick'),
(619, 38, 'NL', 'Newfoundland and Labrador'),
(620, 38, 'NS', 'Nova Scotia'),
(621, 38, 'NT', 'Northwest Territories'),
(622, 38, 'NU', 'Nunavut'),
(623, 38, 'ON', 'Ontario'),
(624, 38, 'PE', 'Prince Edward Island'),
(625, 38, 'QC', 'Quebec'),
(626, 38, 'SK', 'Saskatchewan'),
(627, 38, 'YT', 'Yukon Territory'),
(628, 39, 'BR', 'Brava'),
(629, 39, 'BV', 'Boa Vista'),
(630, 39, 'CA', 'Santa Catarina'),
(631, 39, 'CR', 'Santa Cruz'),
(632, 39, 'CS', 'Calheta de São Miguel'),
(633, 39, 'MA', 'Maio'),
(634, 39, 'MO', 'Mosteiros'),
(635, 39, 'PA', 'Paúl'),
(636, 39, 'PN', 'Porto Novo'),
(637, 39, 'PR', 'Praia'),
(638, 39, 'RG', 'Ribeira Grande'),
(639, 39, 'SD', 'São Domingos'),
(640, 39, 'SF', 'São Filipe'),
(641, 39, 'SL', 'Sal'),
(642, 39, 'SN', 'São Nicolau'),
(643, 39, 'SV', 'São Vicente'),
(644, 39, 'TA', 'Tarrafal'),
(645, 40, 'CR', 'Creek'),
(646, 40, 'EA', 'Eastern'),
(647, 40, 'MI', 'Midland'),
(648, 40, 'SO', 'South Town'),
(649, 40, 'SP', 'Spot Bay'),
(650, 40, 'ST', 'Stake Bay'),
(651, 40, 'WD', 'West End'),
(652, 40, 'WN', 'Western'),
(653, 41, 'AC ', 'Ouham'),
(654, 41, 'BB ', 'Bamingui-Bangoran'),
(655, 41, 'BGF', 'Bangui'),
(656, 41, 'BK ', 'Basse-Kotto'),
(657, 41, 'HK ', 'Haute-Kotto'),
(658, 41, 'HM ', 'Haut-Mbomou'),
(659, 41, 'HS ', 'Mambéré-Kadéï'),
(660, 41, 'KB ', 'Nana-Grébizi'),
(661, 41, 'KG ', 'Kémo'),
(662, 41, 'LB ', 'Lobaye'),
(663, 41, 'MB ', 'Mbomou'),
(664, 41, 'MP ', 'Ombella-M''Poko'),
(665, 41, 'NM ', 'Nana-Mambéré'),
(666, 41, 'OP ', 'Ouham-Pendé'),
(667, 41, 'SE ', 'Sangha-Mbaéré'),
(668, 41, 'UK ', 'Ouaka'),
(669, 41, 'VR ', 'Vakaga'),
(670, 42, 'BA ', 'Batha'),
(671, 42, 'BET', 'Borkou-Ennedi-Tibesti'),
(672, 42, 'BI ', 'Biltine'),
(673, 42, 'CB ', 'Chari-Baguirmi'),
(674, 42, 'GR ', 'Guéra'),
(675, 42, 'KA ', 'Kanem'),
(676, 42, 'LC ', 'Lac'),
(677, 42, 'LR ', 'Logone-Oriental'),
(678, 42, 'LO ', 'Logone-Occidental'),
(679, 42, 'MC ', 'Moyen-Chari'),
(680, 42, 'MK ', 'Mayo-Kébbi'),
(681, 42, 'OD ', 'Ouaddaï'),
(682, 42, 'SA ', 'Salamat'),
(683, 42, 'TA ', 'Tandjilé'),
(684, 43, 'AI', 'Aisén del General Carlos Ibañez'),
(685, 43, 'AN', 'Antofagasta'),
(686, 43, 'AR', 'La Araucanía'),
(687, 43, 'AT', 'Atacama'),
(688, 43, 'BI', 'Biobío'),
(689, 43, 'CO', 'Coquimbo'),
(690, 43, 'LI', 'Libertador Bernardo O''Higgins'),
(691, 43, 'LL', 'Los Lagos'),
(692, 43, 'MA', 'Magallanes y de la Antartica'),
(693, 43, 'ML', 'Maule'),
(694, 43, 'RM', 'Metropolitana de Santiago'),
(695, 43, 'TA', 'Tarapacá'),
(696, 43, 'VS', 'Valparaíso'),
(697, 44, '11', '北京'),
(698, 44, '12', '天津'),
(699, 44, '13', '河北'),
(700, 44, '14', '山西'),
(701, 44, '15', '内蒙古自治区'),
(702, 44, '21', '辽宁'),
(703, 44, '22', '吉林'),
(704, 44, '23', '黑龙江省'),
(705, 44, '31', '上海'),
(706, 44, '32', '江苏'),
(707, 44, '33', '浙江'),
(708, 44, '34', '安徽'),
(709, 44, '35', '福建'),
(710, 44, '36', '江西'),
(711, 44, '37', '山东'),
(712, 44, '41', '河南'),
(713, 44, '42', '湖北'),
(714, 44, '43', '湖南'),
(715, 44, '44', '广东'),
(716, 44, '45', '广西壮族自治区'),
(717, 44, '46', '海南'),
(718, 44, '50', '重庆'),
(719, 44, '51', '四川'),
(720, 44, '52', '贵州'),
(721, 44, '53', '云南'),
(722, 44, '54', '西藏自治区'),
(723, 44, '61', '陕西'),
(724, 44, '62', '甘肃'),
(725, 44, '63', '青海'),
(726, 44, '64', '宁夏'),
(727, 44, '65', '新疆'),
(728, 44, '71', '臺灣'),
(729, 44, '91', '香港'),
(730, 44, '92', '澳門'),
(731, 46, 'D', 'Direction Island'),
(732, 46, 'H', 'Home Island'),
(733, 46, 'O', 'Horsburgh Island'),
(734, 46, 'S', 'South Island'),
(735, 46, 'W', 'West Island'),
(736, 47, 'AMA', 'Amazonas'),
(737, 47, 'ANT', 'Antioquia'),
(738, 47, 'ARA', 'Arauca'),
(739, 47, 'ATL', 'Atlántico'),
(740, 47, 'BOL', 'Bolívar'),
(741, 47, 'BOY', 'Boyacá'),
(742, 47, 'CAL', 'Caldas'),
(743, 47, 'CAQ', 'Caquetá'),
(744, 47, 'CAS', 'Casanare'),
(745, 47, 'CAU', 'Cauca'),
(746, 47, 'CES', 'Cesar'),
(747, 47, 'CHO', 'Chocó'),
(748, 47, 'COR', 'Córdoba'),
(749, 47, 'CUN', 'Cundinamarca'),
(750, 47, 'DC', 'Bogotá Distrito Capital'),
(751, 47, 'GUA', 'Guainía'),
(752, 47, 'GUV', 'Guaviare'),
(753, 47, 'HUI', 'Huila'),
(754, 47, 'LAG', 'La Guajira'),
(755, 47, 'MAG', 'Magdalena'),
(756, 47, 'MET', 'Meta'),
(757, 47, 'NAR', 'Nariño'),
(758, 47, 'NSA', 'Norte de Santander'),
(759, 47, 'PUT', 'Putumayo'),
(760, 47, 'QUI', 'Quindío'),
(761, 47, 'RIS', 'Risaralda'),
(762, 47, 'SAN', 'Santander'),
(763, 47, 'SAP', 'San Andrés y Providencia'),
(764, 47, 'SUC', 'Sucre'),
(765, 47, 'TOL', 'Tolima'),
(766, 47, 'VAC', 'Valle del Cauca'),
(767, 47, 'VAU', 'Vaupés'),
(768, 47, 'VID', 'Vichada'),
(769, 48, 'A', 'Anjouan'),
(770, 48, 'G', 'Grande Comore'),
(771, 48, 'M', 'Mohéli'),
(772, 49, 'BC', 'Congo-Central'),
(773, 49, 'BN', 'Bandundu'),
(774, 49, 'EQ', 'Équateur'),
(775, 49, 'KA', 'Katanga'),
(776, 49, 'KE', 'Kasai-Oriental'),
(777, 49, 'KN', 'Kinshasa'),
(778, 49, 'KW', 'Kasai-Occidental'),
(779, 49, 'MA', 'Maniema'),
(780, 49, 'NK', 'Nord-Kivu'),
(781, 49, 'OR', 'Orientale'),
(782, 49, 'SK', 'Sud-Kivu'),
(783, 50, 'PU', 'Pukapuka'),
(784, 50, 'RK', 'Rakahanga'),
(785, 50, 'MK', 'Manihiki'),
(786, 50, 'PE', 'Penrhyn'),
(787, 50, 'NI', 'Nassau Island'),
(788, 50, 'SU', 'Surwarrow'),
(789, 50, 'PA', 'Palmerston'),
(790, 50, 'AI', 'Aitutaki'),
(791, 50, 'MA', 'Manuae'),
(792, 50, 'TA', 'Takutea'),
(793, 50, 'MT', 'Mitiaro'),
(794, 50, 'AT', 'Atiu'),
(795, 50, 'MU', 'Mauke'),
(796, 50, 'RR', 'Rarotonga'),
(797, 50, 'MG', 'Mangaia'),
(798, 51, 'A', 'Alajuela'),
(799, 51, 'C', 'Cartago'),
(800, 51, 'G', 'Guanacaste'),
(801, 51, 'H', 'Heredia'),
(802, 51, 'L', 'Limón'),
(803, 51, 'P', 'Puntarenas'),
(804, 51, 'SJ', 'San José'),
(805, 52, '01', 'Lagunes'),
(806, 52, '02', 'Haut-Sassandra'),
(807, 52, '03', 'Savanes'),
(808, 52, '04', 'Vallée du Bandama'),
(809, 52, '05', 'Moyen-Comoé'),
(810, 52, '06', 'Dix-Huit'),
(811, 52, '07', 'Lacs'),
(812, 52, '08', 'Zanzan'),
(813, 52, '09', 'Bas-Sassandra'),
(814, 52, '10', 'Denguélé'),
(815, 52, '11', 'N''zi-Comoé'),
(816, 52, '12', 'Marahoué'),
(817, 52, '13', 'Sud-Comoé'),
(818, 52, '14', 'Worodouqou'),
(819, 52, '15', 'Sud-Bandama'),
(820, 52, '16', 'Agnébi'),
(821, 52, '17', 'Bafing'),
(822, 52, '18', 'Fromager'),
(823, 52, '19', 'Moyen-Cavally'),
(824, 53, '01', 'Zagrebačka županija'),
(825, 53, '02', 'Krapinsko-zagorska županija'),
(826, 53, '03', 'Sisačko-moslavačka županija'),
(827, 53, '04', 'Karlovačka županija'),
(828, 53, '05', 'Varaždinska županija'),
(829, 53, '06', 'Koprivničko-križevačka županija'),
(830, 53, '07', 'Bjelovarsko-bilogorska županija'),
(831, 53, '08', 'Primorsko-goranska županija'),
(832, 53, '09', 'Ličko-senjska županija'),
(833, 53, '10', 'Virovitičko-podravska županija'),
(834, 53, '11', 'Požeško-slavonska županija'),
(835, 53, '12', 'Brodsko-posavska županija'),
(836, 53, '13', 'Zadarska županija'),
(837, 53, '14', 'Osječko-baranjska županija'),
(838, 53, '15', 'Šibensko-kninska županija'),
(839, 53, '16', 'Vukovarsko-srijemska županija'),
(840, 53, '17', 'Splitsko-dalmatinska županija'),
(841, 53, '18', 'Istarska županija'),
(842, 53, '19', 'Dubrovačko-neretvanska županija'),
(843, 53, '20', 'Međimurska županija'),
(844, 53, '21', 'Zagreb'),
(845, 54, '01', 'Pinar del Río'),
(846, 54, '02', 'La Habana'),
(847, 54, '03', 'Ciudad de La Habana'),
(848, 54, '04', 'Matanzas'),
(849, 54, '05', 'Villa Clara'),
(850, 54, '06', 'Cienfuegos'),
(851, 54, '07', 'Sancti Spíritus'),
(852, 54, '08', 'Ciego de Ávila'),
(853, 54, '09', 'Camagüey'),
(854, 54, '10', 'Las Tunas'),
(855, 54, '11', 'Holguín'),
(856, 54, '12', 'Granma'),
(857, 54, '13', 'Santiago de Cuba'),
(858, 54, '14', 'Guantánamo'),
(859, 54, '99', 'Isla de la Juventud'),
(860, 55, '01', 'Κερύvεια'),
(861, 55, '02', 'Λευκωσία'),
(862, 55, '03', 'Αμμόχωστος'),
(863, 55, '04', 'Λάρνακα'),
(864, 55, '05', 'Λεμεσός'),
(865, 55, '06', 'Πάφος'),
(866, 56, 'JC', 'Jihočeský kraj'),
(867, 56, 'JM', 'Jihomoravský kraj'),
(868, 56, 'KA', 'Karlovarský kraj'),
(869, 56, 'VY', 'Vysočina kraj'),
(870, 56, 'KR', 'Královéhradecký kraj'),
(871, 56, 'LI', 'Liberecký kraj'),
(872, 56, 'MO', 'Moravskoslezský kraj'),
(873, 56, 'OL', 'Olomoucký kraj'),
(874, 56, 'PA', 'Pardubický kraj'),
(875, 56, 'PL', 'Plzeňský kraj'),
(876, 56, 'PR', 'Hlavní město Praha'),
(877, 56, 'ST', 'Středočeský kraj'),
(878, 56, 'US', 'Ústecký kraj'),
(879, 56, 'ZL', 'Zlínský kraj'),
(880, 57, '040', 'Bornholms Regionskommune'),
(881, 57, '101', 'København'),
(882, 57, '147', 'Frederiksberg'),
(883, 57, '070', 'Århus Amt'),
(884, 57, '015', 'Københavns Amt'),
(885, 57, '020', 'Frederiksborg Amt'),
(886, 57, '042', 'Fyns Amt'),
(887, 57, '080', 'Nordjyllands Amt'),
(888, 57, '055', 'Ribe Amt'),
(889, 57, '065', 'Ringkjøbing Amt'),
(890, 57, '025', 'Roskilde Amt'),
(891, 57, '050', 'Sønderjyllands Amt'),
(892, 57, '035', 'Storstrøms Amt'),
(893, 57, '060', 'Vejle Amt'),
(894, 57, '030', 'Vestsjællands Amt'),
(895, 57, '076', 'Viborg Amt'),
(896, 58, 'AS', 'Region d''Ali Sabieh'),
(897, 58, 'AR', 'Region d''Arta'),
(898, 58, 'DI', 'Region de Dikhil'),
(899, 58, 'DJ', 'Ville de Djibouti'),
(900, 58, 'OB', 'Region d''Obock'),
(901, 58, 'TA', 'Region de Tadjourah'),
(902, 59, 'AND', 'Saint Andrew Parish'),
(903, 59, 'DAV', 'Saint David Parish'),
(904, 59, 'GEO', 'Saint George Parish'),
(905, 59, 'JOH', 'Saint John Parish'),
(906, 59, 'JOS', 'Saint Joseph Parish'),
(907, 59, 'LUK', 'Saint Luke Parish'),
(908, 59, 'MAR', 'Saint Mark Parish'),
(909, 59, 'PAT', 'Saint Patrick Parish'),
(910, 59, 'PAU', 'Saint Paul Parish'),
(911, 59, 'PET', 'Saint Peter Parish'),
(912, 60, '01', 'Distrito Nacional'),
(913, 60, '02', 'Ázua'),
(914, 60, '03', 'Baoruco'),
(915, 60, '04', 'Barahona'),
(916, 60, '05', 'Dajabón'),
(917, 60, '06', 'Duarte'),
(918, 60, '07', 'Elías Piña'),
(919, 60, '08', 'El Seibo'),
(920, 60, '09', 'Espaillat'),
(921, 60, '10', 'Independencia'),
(922, 60, '11', 'La Altagracia'),
(923, 60, '12', 'La Romana'),
(924, 60, '13', 'La Vega'),
(925, 60, '14', 'María Trinidad Sánchez'),
(926, 60, '15', 'Monte Cristi'),
(927, 60, '16', 'Pedernales'),
(928, 60, '17', 'Peravia'),
(929, 60, '18', 'Puerto Plata'),
(930, 60, '19', 'Salcedo'),
(931, 60, '20', 'Samaná'),
(932, 60, '21', 'San Cristóbal'),
(933, 60, '22', 'San Juan'),
(934, 60, '23', 'San Pedro de Macorís'),
(935, 60, '24', 'Sánchez Ramírez'),
(936, 60, '25', 'Santiago'),
(937, 60, '26', 'Santiago Rodríguez'),
(938, 60, '27', 'Valverde'),
(939, 60, '28', 'Monseñor Nouel'),
(940, 60, '29', 'Monte Plata'),
(941, 60, '30', 'Hato Mayor'),
(942, 61, 'AL', 'Aileu'),
(943, 61, 'AN', 'Ainaro'),
(944, 61, 'BA', 'Baucau'),
(945, 61, 'BO', 'Bobonaro'),
(946, 61, 'CO', 'Cova-Lima'),
(947, 61, 'DI', 'Dili'),
(948, 61, 'ER', 'Ermera'),
(949, 61, 'LA', 'Lautem'),
(950, 61, 'LI', 'Liquiçá'),
(951, 61, 'MF', 'Manufahi'),
(952, 61, 'MT', 'Manatuto'),
(953, 61, 'OE', 'Oecussi'),
(954, 61, 'VI', 'Viqueque'),
(955, 62, 'A', 'Azuay'),
(956, 62, 'B', 'Bolívar'),
(957, 62, 'C', 'Carchi'),
(958, 62, 'D', 'Orellana'),
(959, 62, 'E', 'Esmeraldas'),
(960, 62, 'F', 'Cañar'),
(961, 62, 'G', 'Guayas'),
(962, 62, 'H', 'Chimborazo'),
(963, 62, 'I', 'Imbabura'),
(964, 62, 'L', 'Loja'),
(965, 62, 'M', 'Manabí'),
(966, 62, 'N', 'Napo'),
(967, 62, 'O', 'El Oro'),
(968, 62, 'P', 'Pichincha'),
(969, 62, 'R', 'Los Ríos'),
(970, 62, 'S', 'Morona-Santiago'),
(971, 62, 'T', 'Tungurahua'),
(972, 62, 'U', 'Sucumbíos'),
(973, 62, 'W', 'Galápagos'),
(974, 62, 'X', 'Cotopaxi'),
(975, 62, 'Y', 'Pastaza'),
(976, 62, 'Z', 'Zamora-Chinchipe'),
(977, 63, 'ALX', 'الإسكندرية'),
(978, 63, 'ASN', 'أسوان'),
(979, 63, 'AST', 'أسيوط'),
(980, 63, 'BA', 'البحر الأحمر'),
(981, 63, 'BH', 'البحيرة'),
(982, 63, 'BNS', 'بني سويف'),
(983, 63, 'C', 'القاهرة'),
(984, 63, 'DK', 'الدقهلية'),
(985, 63, 'DT', 'دمياط'),
(986, 63, 'FYM', 'الفيوم'),
(987, 63, 'GH', 'الغربية'),
(988, 63, 'GZ', 'الجيزة'),
(989, 63, 'IS', 'الإسماعيلية'),
(990, 63, 'JS', 'جنوب سيناء'),
(991, 63, 'KB', 'القليوبية'),
(992, 63, 'KFS', 'كفر الشيخ'),
(993, 63, 'KN', 'قنا'),
(994, 63, 'MN', 'محافظة المنيا'),
(995, 63, 'MNF', 'المنوفية'),
(996, 63, 'MT', 'مطروح'),
(997, 63, 'PTS', 'محافظة بور سعيد'),
(998, 63, 'SHG', 'محافظة سوهاج'),
(999, 63, 'SHR', 'المحافظة الشرقيّة'),
(1000, 63, 'SIN', 'شمال سيناء'),
(1001, 63, 'SUZ', 'السويس'),
(1002, 63, 'WAD', 'الوادى الجديد'),
(1003, 64, 'AH', 'Ahuachapán'),
(1004, 64, 'CA', 'Cabañas'),
(1005, 64, 'CH', 'Chalatenango'),
(1006, 64, 'CU', 'Cuscatlán'),
(1007, 64, 'LI', 'La Libertad'),
(1008, 64, 'MO', 'Morazán'),
(1009, 64, 'PA', 'La Paz'),
(1010, 64, 'SA', 'Santa Ana'),
(1011, 64, 'SM', 'San Miguel'),
(1012, 64, 'SO', 'Sonsonate'),
(1013, 64, 'SS', 'San Salvador'),
(1014, 64, 'SV', 'San Vicente'),
(1015, 64, 'UN', 'La Unión'),
(1016, 64, 'US', 'Usulután'),
(1017, 65, 'AN', 'Annobón'),
(1018, 65, 'BN', 'Bioko Norte'),
(1019, 65, 'BS', 'Bioko Sur'),
(1020, 65, 'CS', 'Centro Sur'),
(1021, 65, 'KN', 'Kié-Ntem'),
(1022, 65, 'LI', 'Litoral'),
(1023, 65, 'WN', 'Wele-Nzas'),
(1024, 66, 'AN', 'Zoba Anseba'),
(1025, 66, 'DK', 'Zoba Debubawi Keyih Bahri'),
(1026, 66, 'DU', 'Zoba Debub'),
(1027, 66, 'GB', 'Zoba Gash-Barka'),
(1028, 66, 'MA', 'Zoba Ma''akel'),
(1029, 66, 'SK', 'Zoba Semienawi Keyih Bahri'),
(1030, 67, '37', 'Harju maakond'),
(1031, 67, '39', 'Hiiu maakond'),
(1032, 67, '44', 'Ida-Viru maakond'),
(1033, 67, '49', 'Jõgeva maakond'),
(1034, 67, '51', 'Järva maakond'),
(1035, 67, '57', 'Lääne maakond'),
(1036, 67, '59', 'Lääne-Viru maakond'),
(1037, 67, '65', 'Põlva maakond'),
(1038, 67, '67', 'Pärnu maakond'),
(1039, 67, '70', 'Rapla maakond'),
(1040, 67, '74', 'Saare maakond'),
(1041, 67, '78', 'Tartu maakond'),
(1042, 67, '82', 'Valga maakond'),
(1043, 67, '84', 'Viljandi maakond'),
(1044, 67, '86', 'Võru maakond'),
(1045, 68, 'AA', 'አዲስ አበባ'),
(1046, 68, 'AF', 'አፋር'),
(1047, 68, 'AH', 'አማራ'),
(1048, 68, 'BG', 'ቤንሻንጉል-ጉምዝ'),
(1049, 68, 'DD', 'ድሬዳዋ'),
(1050, 68, 'GB', 'ጋምቤላ ሕዝቦች'),
(1051, 68, 'HR', 'ሀረሪ ሕዝብ'),
(1052, 68, 'OR', 'ኦሮሚያ'),
(1053, 68, 'SM', 'ሶማሌ'),
(1054, 68, 'SN', 'ደቡብ ብሔሮች ብሔረሰቦችና ሕዝቦች'),
(1055, 68, 'TG', 'ትግራይ'),
(1056, 71, 'C', 'Central'),
(1057, 71, 'E', 'Northern'),
(1058, 71, 'N', 'Eastern'),
(1059, 71, 'R', 'Rotuma'),
(1060, 71, 'W', 'Western'),
(1061, 72, 'AL', 'Ahvenanmaan maakunta'),
(1062, 72, 'ES', 'Etelä-Suomen lääni'),
(1063, 72, 'IS', 'Itä-Suomen lääni'),
(1064, 72, 'LL', 'Lapin lääni'),
(1065, 72, 'LS', 'Länsi-Suomen lääni'),
(1066, 72, 'OL', 'Oulun lääni'),
(1067, 73, '01', 'Ain'),
(1068, 73, '02', 'Aisne'),
(1069, 73, '03', 'Allier'),
(1070, 73, '04', 'Alpes-de-Haute-Provence'),
(1071, 73, '05', 'Hautes-Alpes'),
(1072, 73, '06', 'Alpes-Maritimes'),
(1073, 73, '07', 'Ardèche'),
(1074, 73, '08', 'Ardennes'),
(1075, 73, '09', 'Ariège'),
(1076, 73, '10', 'Aube'),
(1077, 73, '11', 'Aude'),
(1078, 73, '12', 'Aveyron'),
(1079, 73, '13', 'Bouches-du-Rhône'),
(1080, 73, '14', 'Calvados'),
(1081, 73, '15', 'Cantal'),
(1082, 73, '16', 'Charente'),
(1083, 73, '17', 'Charente-Maritime'),
(1084, 73, '18', 'Cher'),
(1085, 73, '19', 'Corrèze'),
(1086, 73, '21', 'Côte-d''Or'),
(1087, 73, '22', 'Côtes-d''Armor'),
(1088, 73, '23', 'Creuse'),
(1089, 73, '24', 'Dordogne'),
(1090, 73, '25', 'Doubs'),
(1091, 73, '26', 'Drôme'),
(1092, 73, '27', 'Eure'),
(1093, 73, '28', 'Eure-et-Loir'),
(1094, 73, '29', 'Finistère'),
(1095, 73, '2A', 'Corse-du-Sud'),
(1096, 73, '2B', 'Haute-Corse'),
(1097, 73, '30', 'Gard'),
(1098, 73, '31', 'Haute-Garonne'),
(1099, 73, '32', 'Gers'),
(1100, 73, '33', 'Gironde'),
(1101, 73, '34', 'Hérault'),
(1102, 73, '35', 'Ille-et-Vilaine'),
(1103, 73, '36', 'Indre'),
(1104, 73, '37', 'Indre-et-Loire'),
(1105, 73, '38', 'Isère'),
(1106, 73, '39', 'Jura'),
(1107, 73, '40', 'Landes'),
(1108, 73, '41', 'Loir-et-Cher'),
(1109, 73, '42', 'Loire'),
(1110, 73, '43', 'Haute-Loire'),
(1111, 73, '44', 'Loire-Atlantique'),
(1112, 73, '45', 'Loiret'),
(1113, 73, '46', 'Lot'),
(1114, 73, '47', 'Lot-et-Garonne'),
(1115, 73, '48', 'Lozère'),
(1116, 73, '49', 'Maine-et-Loire'),
(1117, 73, '50', 'Manche'),
(1118, 73, '51', 'Marne'),
(1119, 73, '52', 'Haute-Marne'),
(1120, 73, '53', 'Mayenne'),
(1121, 73, '54', 'Meurthe-et-Moselle'),
(1122, 73, '55', 'Meuse'),
(1123, 73, '56', 'Morbihan'),
(1124, 73, '57', 'Moselle'),
(1125, 73, '58', 'Nièvre'),
(1126, 73, '59', 'Nord'),
(1127, 73, '60', 'Oise'),
(1128, 73, '61', 'Orne'),
(1129, 73, '62', 'Pas-de-Calais'),
(1130, 73, '63', 'Puy-de-Dôme'),
(1131, 73, '64', 'Pyrénées-Atlantiques'),
(1132, 73, '65', 'Hautes-Pyrénées'),
(1133, 73, '66', 'Pyrénées-Orientales'),
(1134, 73, '67', 'Bas-Rhin'),
(1135, 73, '68', 'Haut-Rhin'),
(1136, 73, '69', 'Rhône'),
(1137, 73, '70', 'Haute-Saône'),
(1138, 73, '71', 'Saône-et-Loire'),
(1139, 73, '72', 'Sarthe'),
(1140, 73, '73', 'Savoie'),
(1141, 73, '74', 'Haute-Savoie'),
(1142, 73, '75', 'Paris'),
(1143, 73, '76', 'Seine-Maritime'),
(1144, 73, '77', 'Seine-et-Marne'),
(1145, 73, '78', 'Yvelines'),
(1146, 73, '79', 'Deux-Sèvres'),
(1147, 73, '80', 'Somme'),
(1148, 73, '81', 'Tarn'),
(1149, 73, '82', 'Tarn-et-Garonne'),
(1150, 73, '83', 'Var'),
(1151, 73, '84', 'Vaucluse'),
(1152, 73, '85', 'Vendée'),
(1153, 73, '86', 'Vienne'),
(1154, 73, '87', 'Haute-Vienne'),
(1155, 73, '88', 'Vosges'),
(1156, 73, '89', 'Yonne'),
(1157, 73, '90', 'Territoire de Belfort'),
(1158, 73, '91', 'Essonne'),
(1159, 73, '92', 'Hauts-de-Seine'),
(1160, 73, '93', 'Seine-Saint-Denis'),
(1161, 73, '94', 'Val-de-Marne'),
(1162, 73, '95', 'Val-d''Oise'),
(1163, 73, 'NC', 'Territoire des Nouvelle-Calédonie et Dependances'),
(1164, 73, 'PF', 'Polynésie Française'),
(1165, 73, 'PM', 'Saint-Pierre et Miquelon'),
(1166, 73, 'TF', 'Terres australes et antarctiques françaises'),
(1167, 73, 'YT', 'Mayotte'),
(1168, 73, 'WF', 'Territoire des îles Wallis et Futuna'),
(1169, 76, 'M', 'Archipel des Marquises'),
(1170, 76, 'T', 'Archipel des Tuamotu'),
(1171, 76, 'I', 'Archipel des Tubuai'),
(1172, 76, 'V', 'Iles du Vent'),
(1173, 76, 'S', 'Iles Sous-le-Vent '),
(1174, 77, 'C', 'Iles Crozet'),
(1175, 77, 'K', 'Iles Kerguelen'),
(1176, 77, 'A', 'Ile Amsterdam'),
(1177, 77, 'P', 'Ile Saint-Paul'),
(1178, 77, 'D', 'Adelie Land'),
(1179, 78, 'ES', 'Estuaire'),
(1180, 78, 'HO', 'Haut-Ogooue'),
(1181, 78, 'MO', 'Moyen-Ogooue'),
(1182, 78, 'NG', 'Ngounie'),
(1183, 78, 'NY', 'Nyanga'),
(1184, 78, 'OI', 'Ogooue-Ivindo'),
(1185, 78, 'OL', 'Ogooue-Lolo'),
(1186, 78, 'OM', 'Ogooue-Maritime'),
(1187, 78, 'WN', 'Woleu-Ntem'),
(1188, 79, 'AH', 'Ashanti'),
(1189, 79, 'BA', 'Brong-Ahafo'),
(1190, 79, 'CP', 'Central'),
(1191, 79, 'EP', 'Eastern'),
(1192, 79, 'AA', 'Greater Accra'),
(1193, 79, 'NP', 'Northern'),
(1194, 79, 'UE', 'Upper East'),
(1195, 79, 'UW', 'Upper West'),
(1196, 79, 'TV', 'Volta'),
(1197, 79, 'WP', 'Western'),
(1198, 80, 'AB', 'აფხაზეთი'),
(1199, 80, 'AJ', 'აჭარა'),
(1200, 80, 'GU', 'გურია'),
(1201, 80, 'IM', 'იმერეთი'),
(1202, 80, 'KA', 'კახეთი'),
(1203, 80, 'KK', 'ქვემო ქართლი'),
(1204, 80, 'MM', 'მცხეთა-მთიანეთი'),
(1205, 80, 'RL', 'რაჭა-ლეჩხუმი და ქვემო სვანეთი'),
(1206, 80, 'SJ', 'სამცხე-ჯავახეთი'),
(1207, 80, 'SK', 'შიდა ქართლი'),
(1208, 80, 'SZ', 'სამეგრელო-ზემო სვანეთი'),
(1209, 80, 'TB', 'თბილისი'),
(1210, 81, 'BE', 'Berlin'),
(1211, 81, 'BR', 'Brandenburg'),
(1212, 81, 'BW', 'Baden-Württemberg'),
(1213, 81, 'BY', 'Bayern'),
(1214, 81, 'HB', 'Bremen'),
(1215, 81, 'HE', 'Hessen'),
(1216, 81, 'HH', 'Hamburg'),
(1217, 81, 'MV', 'Mecklenburg-Vorpommern'),
(1218, 81, 'NI', 'Niedersachsen'),
(1219, 81, 'NW', 'Nordrhein-Westfalen'),
(1220, 81, 'RP', 'Rheinland-Pfalz'),
(1221, 81, 'SH', 'Schleswig-Holstein'),
(1222, 81, 'SL', 'Saarland'),
(1223, 81, 'SN', 'Sachsen'),
(1224, 81, 'ST', 'Sachsen-Anhalt'),
(1225, 81, 'TH', 'Thüringen'),
(1226, 82, 'AA', 'Greater Accra'),
(1227, 82, 'AH', 'Ashanti'),
(1228, 82, 'BA', 'Brong-Ahafo'),
(1229, 82, 'CP', 'Central'),
(1230, 82, 'EP', 'Eastern'),
(1231, 82, 'NP', 'Northern'),
(1232, 82, 'TV', 'Volta'),
(1233, 82, 'UE', 'Upper East'),
(1234, 82, 'UW', 'Upper West'),
(1235, 82, 'WP', 'Western'),
(1236, 84, '01', 'Αιτωλοακαρνανία'),
(1237, 84, '03', 'Βοιωτία'),
(1238, 84, '04', 'Εύβοια'),
(1239, 84, '05', 'Ευρυτανία'),
(1240, 84, '06', 'Φθιώτιδα'),
(1241, 84, '07', 'Φωκίδα'),
(1242, 84, '11', 'Αργολίδα'),
(1243, 84, '12', 'Αρκαδία'),
(1244, 84, '13', 'Ἀχαΐα'),
(1245, 84, '14', 'Ηλεία'),
(1246, 84, '15', 'Κορινθία'),
(1247, 84, '16', 'Λακωνία'),
(1248, 84, '17', 'Μεσσηνία'),
(1249, 84, '21', 'Ζάκυνθος'),
(1250, 84, '22', 'Κέρκυρα'),
(1251, 84, '23', 'Κεφαλλονιά'),
(1252, 84, '24', 'Λευκάδα'),
(1253, 84, '31', 'Άρτα'),
(1254, 84, '32', 'Θεσπρωτία'),
(1255, 84, '33', 'Ιωάννινα'),
(1256, 84, '34', 'Πρεβεζα'),
(1257, 84, '41', 'Καρδίτσα'),
(1258, 84, '42', 'Λάρισα'),
(1259, 84, '43', 'Μαγνησία'),
(1260, 84, '44', 'Τρίκαλα'),
(1261, 84, '51', 'Γρεβενά'),
(1262, 84, '52', 'Δράμα'),
(1263, 84, '53', 'Ημαθία'),
(1264, 84, '54', 'Θεσσαλονίκη'),
(1265, 84, '55', 'Καβάλα'),
(1266, 84, '56', 'Καστοριά'),
(1267, 84, '57', 'Κιλκίς'),
(1268, 84, '58', 'Κοζάνη'),
(1269, 84, '59', 'Πέλλα'),
(1270, 84, '61', 'Πιερία'),
(1271, 84, '62', 'Σερρών'),
(1272, 84, '63', 'Φλώρινα'),
(1273, 84, '64', 'Χαλκιδική'),
(1274, 84, '69', 'Όρος Άθως'),
(1275, 84, '71', 'Έβρος'),
(1276, 84, '72', 'Ξάνθη'),
(1277, 84, '73', 'Ροδόπη'),
(1278, 84, '81', 'Δωδεκάνησα'),
(1279, 84, '82', 'Κυκλάδες'),
(1280, 84, '83', 'Λέσβου'),
(1281, 84, '84', 'Σάμος'),
(1282, 84, '85', 'Χίος'),
(1283, 84, '91', 'Ηράκλειο'),
(1284, 84, '92', 'Λασίθι'),
(1285, 84, '93', 'Ρεθύμνο'),
(1286, 84, '94', 'Χανίων'),
(1287, 84, 'A1', 'Αττική'),
(1288, 85, 'A', 'Avannaa'),
(1289, 85, 'T', 'Tunu '),
(1290, 85, 'K', 'Kitaa'),
(1291, 86, 'A', 'Saint Andrew'),
(1292, 86, 'D', 'Saint David'),
(1293, 86, 'G', 'Saint George'),
(1294, 86, 'J', 'Saint John'),
(1295, 86, 'M', 'Saint Mark'),
(1296, 86, 'P', 'Saint Patrick'),
(1297, 89, 'AV', 'Alta Verapaz'),
(1298, 89, 'BV', 'Baja Verapaz'),
(1299, 89, 'CM', 'Chimaltenango'),
(1300, 89, 'CQ', 'Chiquimula'),
(1301, 89, 'ES', 'Escuintla'),
(1302, 89, 'GU', 'Guatemala'),
(1303, 89, 'HU', 'Huehuetenango'),
(1304, 89, 'IZ', 'Izabal'),
(1305, 89, 'JA', 'Jalapa'),
(1306, 89, 'JU', 'Jutiapa'),
(1307, 89, 'PE', 'El Petén'),
(1308, 89, 'PR', 'El Progreso'),
(1309, 89, 'QC', 'El Quiché'),
(1310, 89, 'QZ', 'Quetzaltenango'),
(1311, 89, 'RE', 'Retalhuleu'),
(1312, 89, 'SA', 'Sacatepéquez'),
(1313, 89, 'SM', 'San Marcos'),
(1314, 89, 'SO', 'Sololá'),
(1315, 89, 'SR', 'Santa Rosa'),
(1316, 89, 'SU', 'Suchitepéquez'),
(1317, 89, 'TO', 'Totonicapán'),
(1318, 89, 'ZA', 'Zacapa'),
(1319, 90, 'BE', 'Beyla'),
(1320, 90, 'BF', 'Boffa'),
(1321, 90, 'BK', 'Boké'),
(1322, 90, 'CO', 'Coyah'),
(1323, 90, 'DB', 'Dabola'),
(1324, 90, 'DI', 'Dinguiraye'),
(1325, 90, 'DL', 'Dalaba'),
(1326, 90, 'DU', 'Dubréka'),
(1327, 90, 'FA', 'Faranah'),
(1328, 90, 'FO', 'Forécariah'),
(1329, 90, 'FR', 'Fria'),
(1330, 90, 'GA', 'Gaoual'),
(1331, 90, 'GU', 'Guékédou'),
(1332, 90, 'KA', 'Kankan'),
(1333, 90, 'KB', 'Koubia'),
(1334, 90, 'KD', 'Kindia'),
(1335, 90, 'KE', 'Kérouané'),
(1336, 90, 'KN', 'Koundara'),
(1337, 90, 'KO', 'Kouroussa'),
(1338, 90, 'KS', 'Kissidougou'),
(1339, 90, 'LA', 'Labé'),
(1340, 90, 'LE', 'Lélouma'),
(1341, 90, 'LO', 'Lola'),
(1342, 90, 'MC', 'Macenta'),
(1343, 90, 'MD', 'Mandiana'),
(1344, 90, 'ML', 'Mali'),
(1345, 90, 'MM', 'Mamou'),
(1346, 90, 'NZ', 'Nzérékoré'),
(1347, 90, 'PI', 'Pita'),
(1348, 90, 'SI', 'Siguiri'),
(1349, 90, 'TE', 'Télimélé'),
(1350, 90, 'TO', 'Tougué'),
(1351, 90, 'YO', 'Yomou'),
(1352, 91, 'BF', 'Bafata'),
(1353, 91, 'BB', 'Biombo'),
(1354, 91, 'BS', 'Bissau'),
(1355, 91, 'BL', 'Bolama'),
(1356, 91, 'CA', 'Cacheu'),
(1357, 91, 'GA', 'Gabu'),
(1358, 91, 'OI', 'Oio'),
(1359, 91, 'QU', 'Quinara'),
(1360, 91, 'TO', 'Tombali'),
(1361, 92, 'BA', 'Barima-Waini'),
(1362, 92, 'CU', 'Cuyuni-Mazaruni'),
(1363, 92, 'DE', 'Demerara-Mahaica'),
(1364, 92, 'EB', 'East Berbice-Corentyne'),
(1365, 92, 'ES', 'Essequibo Islands-West Demerara'),
(1366, 92, 'MA', 'Mahaica-Berbice'),
(1367, 92, 'PM', 'Pomeroon-Supenaam'),
(1368, 92, 'PT', 'Potaro-Siparuni'),
(1369, 92, 'UD', 'Upper Demerara-Berbice'),
(1370, 92, 'UT', 'Upper Takutu-Upper Essequibo'),
(1371, 93, 'AR', 'Artibonite'),
(1372, 93, 'CE', 'Centre'),
(1373, 93, 'GA', 'Grand''Anse'),
(1374, 93, 'NI', 'Nippes'),
(1375, 93, 'ND', 'Nord'),
(1376, 93, 'NE', 'Nord-Est'),
(1377, 93, 'NO', 'Nord-Ouest'),
(1378, 93, 'OU', 'Ouest'),
(1379, 93, 'SD', 'Sud'),
(1380, 93, 'SE', 'Sud-Est'),
(1381, 94, 'F', 'Flat Island'),
(1382, 94, 'M', 'McDonald Island'),
(1383, 94, 'S', 'Shag Island'),
(1384, 94, 'H', 'Heard Island'),
(1385, 95, 'AT', 'Atlántida'),
(1386, 95, 'CH', 'Choluteca'),
(1387, 95, 'CL', 'Colón'),
(1388, 95, 'CM', 'Comayagua'),
(1389, 95, 'CP', 'Copán'),
(1390, 95, 'CR', 'Cortés'),
(1391, 95, 'EP', 'El Paraíso'),
(1392, 95, 'FM', 'Francisco Morazán'),
(1393, 95, 'GD', 'Gracias a Dios'),
(1394, 95, 'IB', 'Islas de la Bahía'),
(1395, 95, 'IN', 'Intibucá'),
(1396, 95, 'LE', 'Lempira'),
(1397, 95, 'LP', 'La Paz'),
(1398, 95, 'OC', 'Ocotepeque'),
(1399, 95, 'OL', 'Olancho'),
(1400, 95, 'SB', 'Santa Bárbara'),
(1401, 95, 'VA', 'Valle'),
(1402, 95, 'YO', 'Yoro'),
(1403, 96, 'HCW', '中西區'),
(1404, 96, 'HEA', '東區'),
(1405, 96, 'HSO', '南區'),
(1406, 96, 'HWC', '灣仔區'),
(1407, 96, 'KKC', '九龍城區'),
(1408, 96, 'KKT', '觀塘區'),
(1409, 96, 'KSS', '深水埗區'),
(1410, 96, 'KWT', '黃大仙區'),
(1411, 96, 'KYT', '油尖旺區'),
(1412, 96, 'NIS', '離島區'),
(1413, 96, 'NKT', '葵青區'),
(1414, 96, 'NNO', '北區'),
(1415, 96, 'NSK', '西貢區'),
(1416, 96, 'NST', '沙田區'),
(1417, 96, 'NTP', '大埔區'),
(1418, 96, 'NTW', '荃灣區'),
(1419, 96, 'NTM', '屯門區'),
(1420, 96, 'NYL', '元朗區'),
(1421, 97, 'BA', 'Baranja megye'),
(1422, 97, 'BC', 'Békéscsaba'),
(1423, 97, 'BE', 'Békés megye'),
(1424, 97, 'BK', 'Bács-Kiskun megye'),
(1425, 97, 'BU', 'Budapest'),
(1426, 97, 'BZ', 'Borsod-Abaúj-Zemplén megye'),
(1427, 97, 'CS', 'Csongrád megye'),
(1428, 97, 'DE', 'Debrecen'),
(1429, 97, 'DU', 'Dunaújváros'),
(1430, 97, 'EG', 'Eger'),
(1431, 97, 'FE', 'Fejér megye'),
(1432, 97, 'GS', 'Győr-Moson-Sopron megye'),
(1433, 97, 'GY', 'Győr'),
(1434, 97, 'HB', 'Hajdú-Bihar megye'),
(1435, 97, 'HE', 'Heves megye'),
(1436, 97, 'HV', 'Hódmezővásárhely'),
(1437, 97, 'JN', 'Jász-Nagykun-Szolnok megye'),
(1438, 97, 'KE', 'Komárom-Esztergom megye'),
(1439, 97, 'KM', 'Kecskemét'),
(1440, 97, 'KV', 'Kaposvár'),
(1441, 97, 'MI', 'Miskolc'),
(1442, 97, 'NK', 'Nagykanizsa'),
(1443, 97, 'NO', 'Nógrád megye'),
(1444, 97, 'NY', 'Nyíregyháza'),
(1445, 97, 'PE', 'Pest megye'),
(1446, 97, 'PS', 'Pécs'),
(1447, 97, 'SD', 'Szeged'),
(1448, 97, 'SF', 'Székesfehérvár'),
(1449, 97, 'SH', 'Szombathely'),
(1450, 97, 'SK', 'Szolnok'),
(1451, 97, 'SN', 'Sopron'),
(1452, 97, 'SO', 'Somogy megye'),
(1453, 97, 'SS', 'Szekszárd'),
(1454, 97, 'ST', 'Salgótarján'),
(1455, 97, 'SZ', 'Szabolcs-Szatmár-Bereg megye'),
(1456, 97, 'TB', 'Tatabánya'),
(1457, 97, 'TO', 'Tolna megye'),
(1458, 97, 'VA', 'Vas megye'),
(1459, 97, 'VE', 'Veszprém megye'),
(1460, 97, 'VM', 'Veszprém'),
(1461, 97, 'ZA', 'Zala megye'),
(1462, 97, 'ZE', 'Zalaegerszeg'),
(1463, 98, '1', 'Höfuðborgarsvæðið'),
(1464, 98, '2', 'Suðurnes'),
(1465, 98, '3', 'Vesturland'),
(1466, 98, '4', 'Vestfirðir'),
(1467, 98, '5', 'Norðurland vestra'),
(1468, 98, '6', 'Norðurland eystra'),
(1469, 98, '7', 'Austfirðir'),
(1470, 98, '8', 'Suðurland'),
(1471, 99, 'IN-AN', 'अंडमान और निकोबार द्वीप'),
(1472, 99, 'IN-AP', 'ఆంధ్ర ప్రదేశ్'),
(1473, 99, 'IN-AR', 'अरुणाचल प्रदेश'),
(1474, 99, 'IN-AS', 'অসম'),
(1475, 99, 'IN-BR', 'बिहार'),
(1476, 99, 'IN-CH', 'चंडीगढ़'),
(1477, 99, 'IN-CT', 'छत्तीसगढ़'),
(1478, 99, 'IN-DD', 'દમણ અને દિવ'),
(1479, 99, 'IN-DL', 'दिल्ली'),
(1480, 99, 'IN-DN', 'દાદરા અને નગર હવેલી'),
(1481, 99, 'IN-GA', 'गोंय'),
(1482, 99, 'IN-GJ', 'ગુજરાત'),
(1483, 99, 'IN-HP', 'हिमाचल प्रदेश'),
(1484, 99, 'IN-HR', 'हरियाणा'),
(1485, 99, 'IN-JH', 'झारखंड'),
(1486, 99, 'IN-JK', 'जम्मू और कश्मीर'),
(1487, 99, 'IN-KA', 'ಕನಾ೯ಟಕ'),
(1488, 99, 'IN-KL', 'കേരളം'),
(1489, 99, 'IN-LD', 'ലക്ഷദ്വീപ്'),
(1490, 99, 'IN-ML', 'मेघालय'),
(1491, 99, 'IN-MH', 'महाराष्ट्र'),
(1492, 99, 'IN-MN', 'मणिपुर'),
(1493, 99, 'IN-MP', 'मध्य प्रदेश'),
(1494, 99, 'IN-MZ', 'मिज़ोरम'),
(1495, 99, 'IN-NL', 'नागालैंड'),
(1496, 99, 'IN-OR', 'उड़ीसा'),
(1497, 99, 'IN-PB', 'ਪੰਜਾਬ'),
(1498, 99, 'IN-PY', 'புதுச்சேரி'),
(1499, 99, 'IN-RJ', 'राजस्थान'),
(1500, 99, 'IN-SK', 'सिक्किम'),
(1501, 99, 'IN-TN', 'தமிழ் நாடு'),
(1502, 99, 'IN-TR', 'ত্রিপুরা'),
(1503, 99, 'IN-UL', 'उत्तरांचल'),
(1504, 99, 'IN-UP', 'उत्तर प्रदेश'),
(1505, 99, 'IN-WB', 'পশ্চিমবঙ্গ'),
(1506, 100, 'AC', 'Aceh'),
(1507, 100, 'BA', 'Bali'),
(1508, 100, 'BB', 'Bangka-Belitung'),
(1509, 100, 'BE', 'Bengkulu'),
(1510, 100, 'BT', 'Banten'),
(1511, 100, 'GO', 'Gorontalo'),
(1512, 100, 'IJ', 'Papua'),
(1513, 100, 'JA', 'Jambi'),
(1514, 100, 'JI', 'Jawa Timur'),
(1515, 100, 'JK', 'Jakarta Raya'),
(1516, 100, 'JR', 'Jawa Barat'),
(1517, 100, 'JT', 'Jawa Tengah'),
(1518, 100, 'KB', 'Kalimantan Barat'),
(1519, 100, 'KI', 'Kalimantan Timur'),
(1520, 100, 'KS', 'Kalimantan Selatan'),
(1521, 100, 'KT', 'Kalimantan Tengah'),
(1522, 100, 'LA', 'Lampung'),
(1523, 100, 'MA', 'Maluku'),
(1524, 100, 'MU', 'Maluku Utara'),
(1525, 100, 'NB', 'Nusa Tenggara Barat'),
(1526, 100, 'NT', 'Nusa Tenggara Timur'),
(1527, 100, 'RI', 'Riau'),
(1528, 100, 'SB', 'Sumatera Barat'),
(1529, 100, 'SG', 'Sulawesi Tenggara'),
(1530, 100, 'SL', 'Sumatera Selatan'),
(1531, 100, 'SN', 'Sulawesi Selatan'),
(1532, 100, 'ST', 'Sulawesi Tengah'),
(1533, 100, 'SW', 'Sulawesi Utara'),
(1534, 100, 'SU', 'Sumatera Utara'),
(1535, 100, 'YO', 'Yogyakarta'),
(1536, 101, '01', 'محافظة آذربایجان شرقي'),
(1537, 101, '02', 'محافظة آذربایجان غربي'),
(1538, 101, '03', 'محافظة اردبیل'),
(1539, 101, '04', 'محافظة اصفهان'),
(1540, 101, '05', 'محافظة ایلام'),
(1541, 101, '06', 'محافظة بوشهر'),
(1542, 101, '07', 'محافظة طهران'),
(1543, 101, '08', 'محافظة چهارمحل و بختیاري'),
(1544, 101, '09', 'محافظة خراسان رضوي'),
(1545, 101, '10', 'محافظة خوزستان'),
(1546, 101, '11', 'محافظة زنجان'),
(1547, 101, '12', 'محافظة سمنان'),
(1548, 101, '13', 'محافظة سيستان وبلوتشستان'),
(1549, 101, '14', 'محافظة فارس'),
(1550, 101, '15', 'محافظة کرمان'),
(1551, 101, '16', 'محافظة کردستان'),
(1552, 101, '17', 'محافظة کرمانشاه'),
(1553, 101, '18', 'محافظة کهکیلویه و بویر أحمد'),
(1554, 101, '19', 'محافظة گیلان'),
(1555, 101, '20', 'محافظة لرستان'),
(1556, 101, '21', 'محافظة مازندران'),
(1557, 101, '22', 'محافظة مرکزي'),
(1558, 101, '23', 'محافظة هرمزگان'),
(1559, 101, '24', 'محافظة همدان'),
(1560, 101, '25', 'محافظة یزد'),
(1561, 101, '26', 'محافظة قم'),
(1562, 101, '27', 'محافظة گلستان'),
(1563, 101, '28', 'محافظة قزوين'),
(1564, 102, 'AN', 'محافظة الأنبار'),
(1565, 102, 'AR', 'أربيل'),
(1566, 102, 'BA', 'محافظة البصرة'),
(1567, 102, 'BB', 'بابل'),
(1568, 102, 'BG', 'محافظة بغداد'),
(1569, 102, 'DA', 'دهوك'),
(1570, 102, 'DI', 'ديالى'),
(1571, 102, 'DQ', 'ذي قار'),
(1572, 102, 'KA', 'كربلاء'),
(1573, 102, 'MA', 'ميسان'),
(1574, 102, 'MU', 'المثنى'),
(1575, 102, 'NA', 'النجف'),
(1576, 102, 'NI', 'نینوى'),
(1577, 102, 'QA', 'القادسية'),
(1578, 102, 'SD', 'صلاح الدين'),
(1579, 102, 'SW', 'محافظة السليمانية'),
(1580, 102, 'TS', 'التأمیم'),
(1581, 102, 'WA', 'واسط'),
(1582, 103, 'C', 'Corcaigh'),
(1583, 103, 'CE', 'Contae an Chláir'),
(1584, 103, 'CN', 'An Cabhán'),
(1585, 103, 'CW', 'Ceatharlach'),
(1586, 103, 'D', 'Baile Átha Cliath'),
(1587, 103, 'DL', 'Dún na nGall'),
(1588, 103, 'G', 'Gaillimh'),
(1589, 103, 'KE', 'Cill Dara'),
(1590, 103, 'KK', 'Cill Chainnigh'),
(1591, 103, 'KY', 'Contae Chiarraí'),
(1592, 103, 'LD', 'An Longfort'),
(1593, 103, 'LH', 'Contae Lú'),
(1594, 103, 'LK', 'Luimneach'),
(1595, 103, 'LM', 'Contae Liatroma'),
(1596, 103, 'LS', 'Contae Laoise'),
(1597, 103, 'MH', 'Contae na Mí'),
(1598, 103, 'MN', 'Muineachán'),
(1599, 103, 'MO', 'Contae Mhaigh Eo'),
(1600, 103, 'OY', 'Contae Uíbh Fhailí'),
(1601, 103, 'RN', 'Ros Comáin'),
(1602, 103, 'SO', 'Sligeach'),
(1603, 103, 'TA', 'Tiobraid Árann'),
(1604, 103, 'WD', 'Port Lairge'),
(1605, 103, 'WH', 'Contae na hIarmhí'),
(1606, 103, 'WW', 'Cill Mhantáin'),
(1607, 103, 'WX', 'Loch Garman'),
(1608, 104, 'D ', 'מחוז הדרום'),
(1609, 104, 'HA', 'מחוז חיפה'),
(1610, 104, 'JM', 'ירושלים'),
(1611, 104, 'M ', 'מחוז המרכז'),
(1612, 104, 'TA', 'תל אביב-יפו'),
(1613, 104, 'Z ', 'מחוז הצפון'),
(1614, 105, 'AG', 'Agrigento'),
(1615, 105, 'AL', 'Alessandria'),
(1616, 105, 'AN', 'Ancona'),
(1617, 105, 'AO', 'Valle d''Aosta'),
(1618, 105, 'AP', 'Ascoli Piceno'),
(1619, 105, 'AQ', 'L''Aquila'),
(1620, 105, 'AR', 'Arezzo'),
(1621, 105, 'AT', 'Asti'),
(1622, 105, 'AV', 'Avellino'),
(1623, 105, 'BA', 'Bari'),
(1624, 105, 'BG', 'Bergamo'),
(1625, 105, 'BI', 'Biella'),
(1626, 105, 'BL', 'Belluno'),
(1627, 105, 'BN', 'Benevento'),
(1628, 105, 'BO', 'Bologna'),
(1629, 105, 'BR', 'Brindisi'),
(1630, 105, 'BS', 'Brescia'),
(1631, 105, 'BT', 'Barletta-Andria-Trani'),
(1632, 105, 'BZ', 'Alto Adige'),
(1633, 105, 'CA', 'Cagliari'),
(1634, 105, 'CB', 'Campobasso'),
(1635, 105, 'CE', 'Caserta'),
(1636, 105, 'CH', 'Chieti'),
(1637, 105, 'CI', 'Carbonia-Iglesias'),
(1638, 105, 'CL', 'Caltanissetta'),
(1639, 105, 'CN', 'Cuneo'),
(1640, 105, 'CO', 'Como'),
(1641, 105, 'CR', 'Cremona'),
(1642, 105, 'CS', 'Cosenza'),
(1643, 105, 'CT', 'Catania'),
(1644, 105, 'CZ', 'Catanzaro'),
(1645, 105, 'EN', 'Enna'),
(1646, 105, 'FE', 'Ferrara'),
(1647, 105, 'FG', 'Foggia'),
(1648, 105, 'FI', 'Firenze'),
(1649, 105, 'FM', 'Fermo'),
(1650, 105, 'FO', 'Forlì-Cesena'),
(1651, 105, 'FR', 'Frosinone'),
(1652, 105, 'GE', 'Genova'),
(1653, 105, 'GO', 'Gorizia'),
(1654, 105, 'GR', 'Grosseto'),
(1655, 105, 'IM', 'Imperia'),
(1656, 105, 'IS', 'Isernia'),
(1657, 105, 'KR', 'Crotone'),
(1658, 105, 'LC', 'Lecco'),
(1659, 105, 'LE', 'Lecce'),
(1660, 105, 'LI', 'Livorno'),
(1661, 105, 'LO', 'Lodi'),
(1662, 105, 'LT', 'Latina'),
(1663, 105, 'LU', 'Lucca'),
(1664, 105, 'MC', 'Macerata'),
(1665, 105, 'MD', 'Medio Campidano'),
(1666, 105, 'ME', 'Messina'),
(1667, 105, 'MI', 'Milano'),
(1668, 105, 'MN', 'Mantova'),
(1669, 105, 'MO', 'Modena'),
(1670, 105, 'MS', 'Massa-Carrara'),
(1671, 105, 'MT', 'Matera'),
(1672, 105, 'MZ', 'Monza e Brianza'),
(1673, 105, 'NA', 'Napoli'),
(1674, 105, 'NO', 'Novara'),
(1675, 105, 'NU', 'Nuoro'),
(1676, 105, 'OG', 'Ogliastra'),
(1677, 105, 'OR', 'Oristano'),
(1678, 105, 'OT', 'Olbia-Tempio'),
(1679, 105, 'PA', 'Palermo'),
(1680, 105, 'PC', 'Piacenza'),
(1681, 105, 'PD', 'Padova'),
(1682, 105, 'PE', 'Pescara'),
(1683, 105, 'PG', 'Perugia'),
(1684, 105, 'PI', 'Pisa'),
(1685, 105, 'PN', 'Pordenone'),
(1686, 105, 'PO', 'Prato'),
(1687, 105, 'PR', 'Parma'),
(1688, 105, 'PS', 'Pesaro e Urbino'),
(1689, 105, 'PT', 'Pistoia'),
(1690, 105, 'PV', 'Pavia'),
(1691, 105, 'PZ', 'Potenza'),
(1692, 105, 'RA', 'Ravenna'),
(1693, 105, 'RC', 'Reggio Calabria'),
(1694, 105, 'RE', 'Reggio Emilia'),
(1695, 105, 'RG', 'Ragusa'),
(1696, 105, 'RI', 'Rieti'),
(1697, 105, 'RM', 'Roma'),
(1698, 105, 'RN', 'Rimini'),
(1699, 105, 'RO', 'Rovigo'),
(1700, 105, 'SA', 'Salerno'),
(1701, 105, 'SI', 'Siena'),
(1702, 105, 'SO', 'Sondrio'),
(1703, 105, 'SP', 'La Spezia'),
(1704, 105, 'SR', 'Siracusa'),
(1705, 105, 'SS', 'Sassari'),
(1706, 105, 'SV', 'Savona'),
(1707, 105, 'TA', 'Taranto'),
(1708, 105, 'TE', 'Teramo'),
(1709, 105, 'TN', 'Trento'),
(1710, 105, 'TO', 'Torino'),
(1711, 105, 'TP', 'Trapani'),
(1712, 105, 'TR', 'Terni'),
(1713, 105, 'TS', 'Trieste'),
(1714, 105, 'TV', 'Treviso'),
(1715, 105, 'UD', 'Udine'),
(1716, 105, 'VA', 'Varese'),
(1717, 105, 'VB', 'Verbano-Cusio-Ossola'),
(1718, 105, 'VC', 'Vercelli');
INSERT INTO `soc_zones` (`zone_id`, `zone_country_id`, `zone_code`, `zone_name`) VALUES
(1719, 105, 'VE', 'Venezia'),
(1720, 105, 'VI', 'Vicenza'),
(1721, 105, 'VR', 'Verona'),
(1722, 105, 'VT', 'Viterbo'),
(1723, 105, 'VV', 'Vibo Valentia'),
(1724, 106, '01', 'Kingston'),
(1725, 106, '02', 'Half Way Tree'),
(1726, 106, '03', 'Morant Bay'),
(1727, 106, '04', 'Port Antonio'),
(1728, 106, '05', 'Port Maria'),
(1729, 106, '06', 'Saint Ann''s Bay'),
(1730, 106, '07', 'Falmouth'),
(1731, 106, '08', 'Montego Bay'),
(1732, 106, '09', 'Lucea'),
(1733, 106, '10', 'Savanna-la-Mar'),
(1734, 106, '11', 'Black River'),
(1735, 106, '12', 'Mandeville'),
(1736, 106, '13', 'May Pen'),
(1737, 106, '14', 'Spanish Town'),
(1738, 107, '01', '北海道'),
(1739, 107, '02', '青森'),
(1740, 107, '03', '岩手'),
(1741, 107, '04', '宮城'),
(1742, 107, '05', '秋田'),
(1743, 107, '06', '山形'),
(1744, 107, '07', '福島'),
(1745, 107, '08', '茨城'),
(1746, 107, '09', '栃木'),
(1747, 107, '10', '群馬'),
(1748, 107, '11', '埼玉'),
(1749, 107, '12', '千葉'),
(1750, 107, '13', '東京'),
(1751, 107, '14', '神奈川'),
(1752, 107, '15', '新潟'),
(1753, 107, '16', '富山'),
(1754, 107, '17', '石川'),
(1755, 107, '18', '福井'),
(1756, 107, '19', '山梨'),
(1757, 107, '20', '長野'),
(1758, 107, '21', '岐阜'),
(1759, 107, '22', '静岡'),
(1760, 107, '23', '愛知'),
(1761, 107, '24', '三重'),
(1762, 107, '25', '滋賀'),
(1763, 107, '26', '京都'),
(1764, 107, '27', '大阪'),
(1765, 107, '28', '兵庫'),
(1766, 107, '29', '奈良'),
(1767, 107, '30', '和歌山'),
(1768, 107, '31', '鳥取'),
(1769, 107, '32', '島根'),
(1770, 107, '33', '岡山'),
(1771, 107, '34', '広島'),
(1772, 107, '35', '山口'),
(1773, 107, '36', '徳島'),
(1774, 107, '37', '香川'),
(1775, 107, '38', '愛媛'),
(1776, 107, '39', '高知'),
(1777, 107, '40', '福岡'),
(1778, 107, '41', '佐賀'),
(1779, 107, '42', '長崎'),
(1780, 107, '43', '熊本'),
(1781, 107, '44', '大分'),
(1782, 107, '45', '宮崎'),
(1783, 107, '46', '鹿児島'),
(1784, 107, '47', '沖縄'),
(1785, 108, 'AJ', 'محافظة عجلون'),
(1786, 108, 'AM', 'محافظة العاصمة'),
(1787, 108, 'AQ', 'محافظة العقبة'),
(1788, 108, 'AT', 'محافظة الطفيلة'),
(1789, 108, 'AZ', 'محافظة الزرقاء'),
(1790, 108, 'BA', 'محافظة البلقاء'),
(1791, 108, 'JA', 'محافظة جرش'),
(1792, 108, 'JR', 'محافظة إربد'),
(1793, 108, 'KA', 'محافظة الكرك'),
(1794, 108, 'MA', 'محافظة المفرق'),
(1795, 108, 'MD', 'محافظة مادبا'),
(1796, 108, 'MN', 'محافظة معان'),
(1797, 109, 'AL', 'Алматы'),
(1798, 109, 'AC', 'Almaty City'),
(1799, 109, 'AM', 'Ақмола'),
(1800, 109, 'AQ', 'Ақтөбе'),
(1801, 109, 'AS', 'Астана'),
(1802, 109, 'AT', 'Атырау'),
(1803, 109, 'BA', 'Батыс Қазақстан'),
(1804, 109, 'BY', 'Байқоңыр'),
(1805, 109, 'MA', 'Маңғыстау'),
(1806, 109, 'ON', 'Оңтүстік Қазақстан'),
(1807, 109, 'PA', 'Павлодар'),
(1808, 109, 'QA', 'Қарағанды'),
(1809, 109, 'QO', 'Қостанай'),
(1810, 109, 'QY', 'Қызылорда'),
(1811, 109, 'SH', 'Шығыс Қазақстан'),
(1812, 109, 'SO', 'Солтүстік Қазақстан'),
(1813, 109, 'ZH', 'Жамбыл'),
(1814, 110, '110', 'Nairobi'),
(1815, 110, '200', 'Central'),
(1816, 110, '300', 'Mombasa'),
(1817, 110, '400', 'Eastern'),
(1818, 110, '500', 'North Eastern'),
(1819, 110, '600', 'Nyanza'),
(1820, 110, '700', 'Rift Valley'),
(1821, 110, '900', 'Western'),
(1822, 111, 'G', 'Gilbert Islands'),
(1823, 111, 'L', 'Line Islands'),
(1824, 111, 'P', 'Phoenix Islands'),
(1825, 112, 'CHA', '자강도'),
(1826, 112, 'HAB', '함경 북도'),
(1827, 112, 'HAN', '함경 남도'),
(1828, 112, 'HWB', '황해 북도'),
(1829, 112, 'HWN', '황해 남도'),
(1830, 112, 'KAN', '강원도'),
(1831, 112, 'KAE', '개성시'),
(1832, 112, 'NAJ', '라선 직할시'),
(1833, 112, 'NAM', '남포 특급시'),
(1834, 112, 'PYB', '평안 북도'),
(1835, 112, 'PYN', '평안 남도'),
(1836, 112, 'PYO', '평양 직할시'),
(1837, 112, 'YAN', '량강도'),
(1838, 113, '11', '서울특별시'),
(1839, 113, '26', '부산 광역시'),
(1840, 113, '27', '대구 광역시'),
(1841, 113, '28', '인천광역시'),
(1842, 113, '29', '광주 광역시'),
(1843, 113, '30', '대전 광역시'),
(1844, 113, '31', '울산 광역시'),
(1845, 113, '41', '경기도'),
(1846, 113, '42', '강원도'),
(1847, 113, '43', '충청 북도'),
(1848, 113, '44', '충청 남도'),
(1849, 113, '45', '전라 북도'),
(1850, 113, '46', '전라 남도'),
(1851, 113, '47', '경상 북도'),
(1852, 113, '48', '경상 남도'),
(1853, 113, '49', '제주특별자치도'),
(1854, 114, 'AH', 'الاحمدي'),
(1855, 114, 'FA', 'الفروانية'),
(1856, 114, 'JA', 'الجهراء'),
(1857, 114, 'KU', 'ألعاصمه'),
(1858, 114, 'HW', 'حولي'),
(1859, 114, 'MU', 'مبارك الكبير'),
(1860, 115, 'B', 'Баткен областы'),
(1861, 115, 'C', 'Чүй областы'),
(1862, 115, 'GB', 'Бишкек'),
(1863, 115, 'J', 'Жалал-Абад областы'),
(1864, 115, 'N', 'Нарын областы'),
(1865, 115, 'O', 'Ош областы'),
(1866, 115, 'T', 'Талас областы'),
(1867, 115, 'Y', 'Ысык-Көл областы'),
(1868, 116, 'AT', 'ອັດຕະປື'),
(1869, 116, 'BK', 'ບໍ່ແກ້ວ'),
(1870, 116, 'BL', 'ບໍລິຄໍາໄຊ'),
(1871, 116, 'CH', 'ຈໍາປາສັກ'),
(1872, 116, 'HO', 'ຫົວພັນ'),
(1873, 116, 'KH', 'ຄໍາມ່ວນ'),
(1874, 116, 'LM', 'ຫລວງນໍ້າທາ'),
(1875, 116, 'LP', 'ຫລວງພະບາງ'),
(1876, 116, 'OU', 'ອຸດົມໄຊ'),
(1877, 116, 'PH', 'ຜົງສາລີ'),
(1878, 116, 'SL', 'ສາລະວັນ'),
(1879, 116, 'SV', 'ສະຫວັນນະເຂດ'),
(1880, 116, 'VI', 'ວຽງຈັນ'),
(1881, 116, 'VT', 'ວຽງຈັນ'),
(1882, 116, 'XA', 'ໄຊຍະບູລີ'),
(1883, 116, 'XE', 'ເຊກອງ'),
(1884, 116, 'XI', 'ຊຽງຂວາງ'),
(1885, 116, 'XN', 'ໄຊສົມບູນ'),
(1886, 117, 'AI', 'Aizkraukles rajons'),
(1887, 117, 'AL', 'Alūksnes rajons'),
(1888, 117, 'BL', 'Balvu rajons'),
(1889, 117, 'BU', 'Bauskas rajons'),
(1890, 117, 'CE', 'Cēsu rajons'),
(1891, 117, 'DA', 'Daugavpils rajons'),
(1892, 117, 'DGV', 'Daugpilis'),
(1893, 117, 'DO', 'Dobeles rajons'),
(1894, 117, 'GU', 'Gulbenes rajons'),
(1895, 117, 'JEL', 'Jelgava'),
(1896, 117, 'JK', 'Jēkabpils rajons'),
(1897, 117, 'JL', 'Jelgavas rajons'),
(1898, 117, 'JUR', 'Jūrmala'),
(1899, 117, 'KR', 'Krāslavas rajons'),
(1900, 117, 'KU', 'Kuldīgas rajons'),
(1901, 117, 'LE', 'Liepājas rajons'),
(1902, 117, 'LM', 'Limbažu rajons'),
(1903, 117, 'LPX', 'Liepoja'),
(1904, 117, 'LU', 'Ludzas rajons'),
(1905, 117, 'MA', 'Madonas rajons'),
(1906, 117, 'OG', 'Ogres rajons'),
(1907, 117, 'PR', 'Preiļu rajons'),
(1908, 117, 'RE', 'Rēzeknes rajons'),
(1909, 117, 'REZ', 'Rēzekne'),
(1910, 117, 'RI', 'Rīgas rajons'),
(1911, 117, 'RIX', 'Rīga'),
(1912, 117, 'SA', 'Saldus rajons'),
(1913, 117, 'TA', 'Talsu rajons'),
(1914, 117, 'TU', 'Tukuma rajons'),
(1915, 117, 'VE', 'Ventspils rajons'),
(1916, 117, 'VEN', 'Ventspils'),
(1917, 117, 'VK', 'Valkas rajons'),
(1918, 117, 'VM', 'Valmieras rajons'),
(1919, 119, 'A', 'Maseru'),
(1920, 119, 'B', 'Butha-Buthe'),
(1921, 119, 'C', 'Leribe'),
(1922, 119, 'D', 'Berea'),
(1923, 119, 'E', 'Mafeteng'),
(1924, 119, 'F', 'Mohale''s Hoek'),
(1925, 119, 'G', 'Quthing'),
(1926, 119, 'H', 'Qacha''s Nek'),
(1927, 119, 'J', 'Mokhotlong'),
(1928, 119, 'K', 'Thaba-Tseka'),
(1929, 120, 'BG', 'Bong'),
(1930, 120, 'BM', 'Bomi'),
(1931, 120, 'CM', 'Grand Cape Mount'),
(1932, 120, 'GB', 'Grand Bassa'),
(1933, 120, 'GG', 'Grand Gedeh'),
(1934, 120, 'GK', 'Grand Kru'),
(1935, 120, 'GP', 'Gbarpolu'),
(1936, 120, 'LO', 'Lofa'),
(1937, 120, 'MG', 'Margibi'),
(1938, 120, 'MO', 'Montserrado'),
(1939, 120, 'MY', 'Maryland'),
(1940, 120, 'NI', 'Nimba'),
(1941, 120, 'RG', 'River Gee'),
(1942, 120, 'RI', 'Rivercess'),
(1943, 120, 'SI', 'Sinoe'),
(1944, 121, 'AJ', 'Ajdābiyā'),
(1945, 121, 'BA', 'Banghāzī'),
(1946, 121, 'BU', 'Al Buţnān'),
(1947, 121, 'BW', 'Banī Walīd'),
(1948, 121, 'DR', 'Darnah'),
(1949, 121, 'GD', 'Ghadāmis'),
(1950, 121, 'GR', 'Gharyān'),
(1951, 121, 'GT', 'Ghāt'),
(1952, 121, 'HZ', 'Al Ḩizām al Akhḑar'),
(1953, 121, 'JA', 'Al Jabal al Akhḑar'),
(1954, 121, 'JB', 'Jaghbūb'),
(1955, 121, 'JI', 'Al Jifārah'),
(1956, 121, 'JU', 'Al Jufrah'),
(1957, 121, 'KF', 'Al Kufrah'),
(1958, 121, 'MB', 'Al Marqab'),
(1959, 121, 'MI', 'Mişrātah'),
(1960, 121, 'MJ', 'Al Marj'),
(1961, 121, 'MQ', 'Murzuq'),
(1962, 121, 'MZ', 'Mizdah'),
(1963, 121, 'NL', 'Nālūt'),
(1964, 121, 'NQ', 'An Nuqaţ al Khams'),
(1965, 121, 'QB', 'Al Qubbah'),
(1966, 121, 'QT', 'Al Qaţrūn'),
(1967, 121, 'SB', 'Sabhā'),
(1968, 121, 'SH', 'Ash Shāţi'),
(1969, 121, 'SR', 'Surt'),
(1970, 121, 'SS', 'Şabrātah Şurmān'),
(1971, 121, 'TB', 'Ţarābulus'),
(1972, 121, 'TM', 'Tarhūnah-Masallātah'),
(1973, 121, 'TN', 'Tājūrā wa an Nawāḩī al Arbāʻ'),
(1974, 121, 'WA', 'Al Wāḩah'),
(1975, 121, 'WD', 'Wādī al Ḩayāt'),
(1976, 121, 'YJ', 'Yafran-Jādū'),
(1977, 121, 'ZA', 'Az Zāwiyah'),
(1978, 122, 'B', 'Balzers'),
(1979, 122, 'E', 'Eschen'),
(1980, 122, 'G', 'Gamprin'),
(1981, 122, 'M', 'Mauren'),
(1982, 122, 'P', 'Planken'),
(1983, 122, 'R', 'Ruggell'),
(1984, 122, 'A', 'Schaan'),
(1985, 122, 'L', 'Schellenberg'),
(1986, 122, 'N', 'Triesen'),
(1987, 122, 'T', 'Triesenberg'),
(1988, 122, 'V', 'Vaduz'),
(1989, 123, 'AL', 'Alytaus Apskritis'),
(1990, 123, 'KL', 'Klaipėdos Apskritis'),
(1991, 123, 'KU', 'Kauno Apskritis'),
(1992, 123, 'MR', 'Marijampolės Apskritis'),
(1993, 123, 'PN', 'Panevėžio Apskritis'),
(1994, 123, 'SA', 'Šiaulių Apskritis'),
(1995, 123, 'TA', 'Tauragės Apskritis'),
(1996, 123, 'TE', 'Telšių Apskritis'),
(1997, 123, 'UT', 'Utenos Apskritis'),
(1998, 123, 'VL', 'Vilniaus Apskritis'),
(1999, 124, 'D', 'Diekirch'),
(2000, 124, 'G', 'Grevenmacher'),
(2001, 124, 'L', 'Luxemburg'),
(2002, 125, 'I', '海島市'),
(2003, 125, 'M', '澳門市'),
(2004, 126, 'BR', 'Berovo'),
(2005, 126, 'CH', 'Чешиново-Облешево'),
(2006, 126, 'DL', 'Делчево'),
(2007, 126, 'KB', 'Карбинци'),
(2008, 126, 'OC', 'Кочани'),
(2009, 126, 'LO', 'Лозово'),
(2010, 126, 'MK', 'Македонска каменица'),
(2011, 126, 'PH', 'Пехчево'),
(2012, 126, 'PT', 'Пробиштип'),
(2013, 126, 'ST', 'Штип'),
(2014, 126, 'SL', 'Свети Николе'),
(2015, 126, 'NI', 'Виница'),
(2016, 126, 'ZR', 'Зрновци'),
(2017, 126, 'KY', 'Кратово'),
(2018, 126, 'KZ', 'Крива Паланка'),
(2019, 126, 'UM', 'Куманово'),
(2020, 126, 'LI', 'Липково'),
(2021, 126, 'RN', 'Ранковце'),
(2022, 126, 'NA', 'Старо Нагоричане'),
(2023, 126, 'TL', 'Битола'),
(2024, 126, 'DM', 'Демир Хисар'),
(2025, 126, 'DE', 'Долнени'),
(2026, 126, 'KG', 'Кривогаштани'),
(2027, 126, 'KS', 'Крушево'),
(2028, 126, 'MG', 'Могила'),
(2029, 126, 'NV', 'Новаци'),
(2030, 126, 'PP', 'Прилеп'),
(2031, 126, 'RE', 'Ресен'),
(2032, 126, 'VJ', 'Боговиње'),
(2033, 126, 'BN', 'Брвеница'),
(2034, 126, 'GT', 'Гостивар'),
(2035, 126, 'JG', 'Јегуновце'),
(2036, 126, 'MR', 'Маврово и Ростуша'),
(2037, 126, 'TR', 'Теарце'),
(2038, 126, 'ET', 'Тетово'),
(2039, 126, 'VH', 'Врапчиште'),
(2040, 126, 'ZE', 'Желино'),
(2041, 126, 'AD', 'Аеродром'),
(2042, 126, 'AR', 'Арачиново'),
(2043, 126, 'BU', 'Бутел'),
(2044, 126, 'CI', 'Чаир'),
(2045, 126, 'CE', 'Центар'),
(2046, 126, 'CS', 'Чучер Сандево'),
(2047, 126, 'GB', 'Гази Баба'),
(2048, 126, 'GP', 'Ѓорче Петров'),
(2049, 126, 'IL', 'Илинден'),
(2050, 126, 'KX', 'Карпош'),
(2051, 126, 'VD', 'Кисела Вода'),
(2052, 126, 'PE', 'Петровец'),
(2053, 126, 'AJ', 'Сарај'),
(2054, 126, 'SS', 'Сопиште'),
(2055, 126, 'SU', 'Студеничани'),
(2056, 126, 'SO', 'Шуто Оризари'),
(2057, 126, 'ZK', 'Зелениково'),
(2058, 126, 'BG', 'Богданци'),
(2059, 126, 'BS', 'Босилово'),
(2060, 126, 'GV', 'Гевгелија'),
(2061, 126, 'KN', 'Конче'),
(2062, 126, 'NS', 'Ново Село'),
(2063, 126, 'RV', 'Радовиш'),
(2064, 126, 'SD', 'Стар Дојран'),
(2065, 126, 'RU', 'Струмица'),
(2066, 126, 'VA', 'Валандово'),
(2067, 126, 'VL', 'Василево'),
(2068, 126, 'CZ', 'Центар Жупа'),
(2069, 126, 'DB', 'Дебар'),
(2070, 126, 'DA', 'Дебарца'),
(2071, 126, 'DR', 'Другово'),
(2072, 126, 'KH', 'Кичево'),
(2073, 126, 'MD', 'Македонски Брод'),
(2074, 126, 'OD', 'Охрид'),
(2075, 126, 'OS', 'Осломеј'),
(2076, 126, 'PN', 'Пласница'),
(2077, 126, 'UG', 'Струга'),
(2078, 126, 'VV', 'Вевчани'),
(2079, 126, 'VC', 'Вранештица'),
(2080, 126, 'ZA', 'Зајас'),
(2081, 126, 'CA', 'Чашка'),
(2082, 126, 'DK', 'Демир Капија'),
(2083, 126, 'GR', 'Градско'),
(2084, 126, 'AV', 'Кавадарци'),
(2085, 126, 'NG', 'Неготино'),
(2086, 126, 'RM', 'Росоман'),
(2087, 126, 'VE', 'Велес'),
(2088, 127, 'A', 'Toamasina'),
(2089, 127, 'D', 'Antsiranana'),
(2090, 127, 'F', 'Fianarantsoa'),
(2091, 127, 'M', 'Mahajanga'),
(2092, 127, 'T', 'Antananarivo'),
(2093, 127, 'U', 'Toliara'),
(2094, 128, 'BA', 'Balaka'),
(2095, 128, 'BL', 'Blantyre'),
(2096, 128, 'C', 'Central'),
(2097, 128, 'CK', 'Chikwawa'),
(2098, 128, 'CR', 'Chiradzulu'),
(2099, 128, 'CT', 'Chitipa'),
(2100, 128, 'DE', 'Dedza'),
(2101, 128, 'DO', 'Dowa'),
(2102, 128, 'KR', 'Karonga'),
(2103, 128, 'KS', 'Kasungu'),
(2104, 128, 'LK', 'Likoma Island'),
(2105, 128, 'LI', 'Lilongwe'),
(2106, 128, 'MH', 'Machinga'),
(2107, 128, 'MG', 'Mangochi'),
(2108, 128, 'MC', 'Mchinji'),
(2109, 128, 'MU', 'Mulanje'),
(2110, 128, 'MW', 'Mwanza'),
(2111, 128, 'MZ', 'Mzimba'),
(2112, 128, 'N', 'Northern'),
(2113, 128, 'NB', 'Nkhata'),
(2114, 128, 'NK', 'Nkhotakota'),
(2115, 128, 'NS', 'Nsanje'),
(2116, 128, 'NU', 'Ntcheu'),
(2117, 128, 'NI', 'Ntchisi'),
(2118, 128, 'PH', 'Phalombe'),
(2119, 128, 'RU', 'Rumphi'),
(2120, 128, 'S', 'Southern'),
(2121, 128, 'SA', 'Salima'),
(2122, 128, 'TH', 'Thyolo'),
(2123, 128, 'ZO', 'Zomba'),
(2124, 129, '01', 'Johor Darul Takzim'),
(2125, 129, '02', 'Kedah Darul Aman'),
(2126, 129, '03', 'Kelantan Darul Naim'),
(2127, 129, '04', 'Melaka Negeri Bersejarah'),
(2128, 129, '05', 'Negeri Sembilan Darul Khusus'),
(2129, 129, '06', 'Pahang Darul Makmur'),
(2130, 129, '07', 'Pulau Pinang'),
(2131, 129, '08', 'Perak Darul Ridzuan'),
(2132, 129, '09', 'Perlis Indera Kayangan'),
(2133, 129, '10', 'Selangor Darul Ehsan'),
(2134, 129, '11', 'Terengganu Darul Iman'),
(2135, 129, '12', 'Sabah Negeri Di Bawah Bayu'),
(2136, 129, '13', 'Sarawak Bumi Kenyalang'),
(2137, 129, '14', 'Wilayah Persekutuan Kuala Lumpur'),
(2138, 129, '15', 'Wilayah Persekutuan Labuan'),
(2139, 129, '16', 'Wilayah Persekutuan Putrajaya'),
(2140, 130, 'THU', 'Thiladhunmathi Uthuru'),
(2141, 130, 'THD', 'Thiladhunmathi Dhekunu'),
(2142, 130, 'MLU', 'Miladhunmadulu Uthuru'),
(2143, 130, 'MLD', 'Miladhunmadulu Dhekunu'),
(2144, 130, 'MAU', 'Maalhosmadulu Uthuru'),
(2145, 130, 'MAD', 'Maalhosmadulu Dhekunu'),
(2146, 130, 'FAA', 'Faadhippolhu'),
(2147, 130, 'MAA', 'Male Atoll'),
(2148, 130, 'AAU', 'Ari Atoll Uthuru'),
(2149, 130, 'AAD', 'Ari Atoll Dheknu'),
(2150, 130, 'FEA', 'Felidhe Atoll'),
(2151, 130, 'MUA', 'Mulaku Atoll'),
(2152, 130, 'NAU', 'Nilandhe Atoll Uthuru'),
(2153, 130, 'NAD', 'Nilandhe Atoll Dhekunu'),
(2154, 130, 'KLH', 'Kolhumadulu'),
(2155, 130, 'HDH', 'Hadhdhunmathi'),
(2156, 130, 'HAU', 'Huvadhu Atoll Uthuru'),
(2157, 130, 'HAD', 'Huvadhu Atoll Dhekunu'),
(2158, 130, 'FMU', 'Fua Mulaku'),
(2159, 130, 'ADD', 'Addu'),
(2160, 131, '1', 'Kayes'),
(2161, 131, '2', 'Koulikoro'),
(2162, 131, '3', 'Sikasso'),
(2163, 131, '4', 'Ségou'),
(2164, 131, '5', 'Mopti'),
(2165, 131, '6', 'Tombouctou'),
(2166, 131, '7', 'Gao'),
(2167, 131, '8', 'Kidal'),
(2168, 131, 'BK0', 'Bamako'),
(2169, 132, 'ATT', 'Attard'),
(2170, 132, 'BAL', 'Balzan'),
(2171, 132, 'BGU', 'Birgu'),
(2172, 132, 'BKK', 'Birkirkara'),
(2173, 132, 'BRZ', 'Birzebbuga'),
(2174, 132, 'BOR', 'Bormla'),
(2175, 132, 'DIN', 'Dingli'),
(2176, 132, 'FGU', 'Fgura'),
(2177, 132, 'FLO', 'Floriana'),
(2178, 132, 'GDJ', 'Gudja'),
(2179, 132, 'GZR', 'Gzira'),
(2180, 132, 'GRG', 'Gargur'),
(2181, 132, 'GXQ', 'Gaxaq'),
(2182, 132, 'HMR', 'Hamrun'),
(2183, 132, 'IKL', 'Iklin'),
(2184, 132, 'ISL', 'Isla'),
(2185, 132, 'KLK', 'Kalkara'),
(2186, 132, 'KRK', 'Kirkop'),
(2187, 132, 'LIJ', 'Lija'),
(2188, 132, 'LUQ', 'Luqa'),
(2189, 132, 'MRS', 'Marsa'),
(2190, 132, 'MKL', 'Marsaskala'),
(2191, 132, 'MXL', 'Marsaxlokk'),
(2192, 132, 'MDN', 'Mdina'),
(2193, 132, 'MEL', 'Melliea'),
(2194, 132, 'MGR', 'Mgarr'),
(2195, 132, 'MST', 'Mosta'),
(2196, 132, 'MQA', 'Mqabba'),
(2197, 132, 'MSI', 'Msida'),
(2198, 132, 'MTF', 'Mtarfa'),
(2199, 132, 'NAX', 'Naxxar'),
(2200, 132, 'PAO', 'Paola'),
(2201, 132, 'PEM', 'Pembroke'),
(2202, 132, 'PIE', 'Pieta'),
(2203, 132, 'QOR', 'Qormi'),
(2204, 132, 'QRE', 'Qrendi'),
(2205, 132, 'RAB', 'Rabat'),
(2206, 132, 'SAF', 'Safi'),
(2207, 132, 'SGI', 'San Giljan'),
(2208, 132, 'SLU', 'Santa Lucija'),
(2209, 132, 'SPB', 'San Pawl il-Bahar'),
(2210, 132, 'SGW', 'San Gwann'),
(2211, 132, 'SVE', 'Santa Venera'),
(2212, 132, 'SIG', 'Siggiewi'),
(2213, 132, 'SLM', 'Sliema'),
(2214, 132, 'SWQ', 'Swieqi'),
(2215, 132, 'TXB', 'Ta Xbiex'),
(2216, 132, 'TRX', 'Tarxien'),
(2217, 132, 'VLT', 'Valletta'),
(2218, 132, 'XGJ', 'Xgajra'),
(2219, 132, 'ZBR', 'Zabbar'),
(2220, 132, 'ZBG', 'Zebbug'),
(2221, 132, 'ZJT', 'Zejtun'),
(2222, 132, 'ZRQ', 'Zurrieq'),
(2223, 132, 'FNT', 'Fontana'),
(2224, 132, 'GHJ', 'Ghajnsielem'),
(2225, 132, 'GHR', 'Gharb'),
(2226, 132, 'GHS', 'Ghasri'),
(2227, 132, 'KRC', 'Kercem'),
(2228, 132, 'MUN', 'Munxar'),
(2229, 132, 'NAD', 'Nadur'),
(2230, 132, 'QAL', 'Qala'),
(2231, 132, 'VIC', 'Victoria'),
(2232, 132, 'SLA', 'San Lawrenz'),
(2233, 132, 'SNT', 'Sannat'),
(2234, 132, 'ZAG', 'Xagra'),
(2235, 132, 'XEW', 'Xewkija'),
(2236, 132, 'ZEB', 'Zebbug'),
(2237, 133, 'ALK', 'Ailuk'),
(2238, 133, 'ALL', 'Ailinglapalap'),
(2239, 133, 'ARN', 'Arno'),
(2240, 133, 'AUR', 'Aur'),
(2241, 133, 'EBO', 'Ebon'),
(2242, 133, 'ENI', 'Eniwetok'),
(2243, 133, 'JAB', 'Jabat'),
(2244, 133, 'JAL', 'Jaluit'),
(2245, 133, 'KIL', 'Kili'),
(2246, 133, 'KWA', 'Kwajalein'),
(2247, 133, 'LAE', 'Lae'),
(2248, 133, 'LIB', 'Lib'),
(2249, 133, 'LIK', 'Likiep'),
(2250, 133, 'MAJ', 'Majuro'),
(2251, 133, 'MAL', 'Maloelap'),
(2252, 133, 'MEJ', 'Mejit'),
(2253, 133, 'MIL', 'Mili'),
(2254, 133, 'NMK', 'Namorik'),
(2255, 133, 'NMU', 'Namu'),
(2256, 133, 'RON', 'Rongelap'),
(2257, 133, 'UJA', 'Ujae'),
(2258, 133, 'UJL', 'Ujelang'),
(2259, 133, 'UTI', 'Utirik'),
(2260, 133, 'WTJ', 'Wotje'),
(2261, 133, 'WTN', 'Wotho'),
(2262, 135, '01', 'ولاية الحوض الشرقي'),
(2263, 135, '02', 'ولاية الحوض الغربي'),
(2264, 135, '03', 'ولاية العصابة'),
(2265, 135, '04', 'ولاية كركول'),
(2266, 135, '05', 'ولاية البراكنة'),
(2267, 135, '06', 'ولاية الترارزة'),
(2268, 135, '07', 'ولاية آدرار'),
(2269, 135, '08', 'ولاية داخلت نواذيبو'),
(2270, 135, '09', 'ولاية تكانت'),
(2271, 135, '10', 'ولاية كيدي ماغة'),
(2272, 135, '11', 'ولاية تيرس زمور'),
(2273, 135, '12', 'ولاية إينشيري'),
(2274, 135, 'NKC', 'نواكشوط'),
(2275, 136, 'AG', 'Agalega Islands'),
(2276, 136, 'BL', 'Black River'),
(2277, 136, 'BR', 'Beau Bassin-Rose Hill'),
(2278, 136, 'CC', 'Cargados Carajos Shoals'),
(2279, 136, 'CU', 'Curepipe'),
(2280, 136, 'FL', 'Flacq'),
(2281, 136, 'GP', 'Grand Port'),
(2282, 136, 'MO', 'Moka'),
(2283, 136, 'PA', 'Pamplemousses'),
(2284, 136, 'PL', 'Port Louis'),
(2285, 136, 'PU', 'Port Louis City'),
(2286, 136, 'PW', 'Plaines Wilhems'),
(2287, 136, 'QB', 'Quatre Bornes'),
(2288, 136, 'RO', 'Rodrigues'),
(2289, 136, 'RR', 'Riviere du Rempart'),
(2290, 136, 'SA', 'Savanne'),
(2291, 136, 'VP', 'Vacoas-Phoenix'),
(2292, 138, 'AGU', 'Aguascalientes'),
(2293, 138, 'BCN', 'Baja California'),
(2294, 138, 'BCS', 'Baja California Sur'),
(2295, 138, 'CAM', 'Campeche'),
(2296, 138, 'CHH', 'Chihuahua'),
(2297, 138, 'CHP', 'Chiapas'),
(2298, 138, 'COA', 'Coahuila'),
(2299, 138, 'COL', 'Colima'),
(2300, 138, 'DIF', 'Distrito Federal'),
(2301, 138, 'DUR', 'Durango'),
(2302, 138, 'GRO', 'Guerrero'),
(2303, 138, 'GUA', 'Guanajuato'),
(2304, 138, 'HID', 'Hidalgo'),
(2305, 138, 'JAL', 'Jalisco'),
(2306, 138, 'MEX', 'Mexico'),
(2307, 138, 'MIC', 'Michoacán'),
(2308, 138, 'MOR', 'Morelos'),
(2309, 138, 'NAY', 'Nayarit'),
(2310, 138, 'NLE', 'Nuevo León'),
(2311, 138, 'OAX', 'Oaxaca'),
(2312, 138, 'PUE', 'Puebla'),
(2313, 138, 'QUE', 'Querétaro'),
(2314, 138, 'ROO', 'Quintana Roo'),
(2315, 138, 'SIN', 'Sinaloa'),
(2316, 138, 'SLP', 'San Luis Potosí'),
(2317, 138, 'SON', 'Sonora'),
(2318, 138, 'TAB', 'Tabasco'),
(2319, 138, 'TAM', 'Tamaulipas'),
(2320, 138, 'TLA', 'Tlaxcala'),
(2321, 138, 'VER', 'Veracruz'),
(2322, 138, 'YUC', 'Yucatan'),
(2323, 138, 'ZAC', 'Zacatecas'),
(2324, 139, 'KSA', 'Kosrae'),
(2325, 139, 'PNI', 'Pohnpei'),
(2326, 139, 'TRK', 'Chuuk'),
(2327, 139, 'YAP', 'Yap'),
(2328, 140, 'BA', 'Bălţi'),
(2329, 140, 'CA', 'Cahul'),
(2330, 140, 'CU', 'Chişinău'),
(2331, 140, 'ED', 'Edineţ'),
(2332, 140, 'GA', 'Găgăuzia'),
(2333, 140, 'LA', 'Lăpuşna'),
(2334, 140, 'OR', 'Orhei'),
(2335, 140, 'SN', 'Stânga Nistrului'),
(2336, 140, 'SO', 'Soroca'),
(2337, 140, 'TI', 'Tighina'),
(2338, 140, 'UN', 'Ungheni'),
(2339, 141, 'MC', 'Monte Carlo'),
(2340, 141, 'LR', 'La Rousse'),
(2341, 141, 'LA', 'Larvotto'),
(2342, 141, 'MV', 'Monaco Ville'),
(2343, 141, 'SM', 'Saint Michel'),
(2344, 141, 'CO', 'Condamine'),
(2345, 141, 'LC', 'La Colle'),
(2346, 141, 'RE', 'Les Révoires'),
(2347, 141, 'MO', 'Moneghetti'),
(2348, 141, 'FV', 'Fontvieille'),
(2349, 142, '1', 'Улаанбаатар'),
(2350, 142, '035', 'Орхон аймаг'),
(2351, 142, '037', 'Дархан-Уул аймаг'),
(2352, 142, '039', 'Хэнтий аймаг'),
(2353, 142, '041', 'Хөвсгөл аймаг'),
(2354, 142, '043', 'Ховд аймаг'),
(2355, 142, '046', 'Увс аймаг'),
(2356, 142, '047', 'Төв аймаг'),
(2357, 142, '049', 'Сэлэнгэ аймаг'),
(2358, 142, '051', 'Сүхбаатар аймаг'),
(2359, 142, '053', 'Өмнөговь аймаг'),
(2360, 142, '055', 'Өвөрхангай аймаг'),
(2361, 142, '057', 'Завхан аймаг'),
(2362, 142, '059', 'Дундговь аймаг'),
(2363, 142, '061', 'Дорнод аймаг'),
(2364, 142, '063', 'Дорноговь аймаг'),
(2365, 142, '064', 'Говьсүмбэр аймаг'),
(2366, 142, '065', 'Говь-Алтай аймаг'),
(2367, 142, '067', 'Булган аймаг'),
(2368, 142, '069', 'Баянхонгор аймаг'),
(2369, 142, '071', 'Баян Өлгий аймаг'),
(2370, 142, '073', 'Архангай аймаг'),
(2371, 143, 'A', 'Saint Anthony'),
(2372, 143, 'G', 'Saint Georges'),
(2373, 143, 'P', 'Saint Peter'),
(2374, 145, 'A', 'Niassa'),
(2375, 145, 'B', 'Manica'),
(2376, 145, 'G', 'Gaza'),
(2377, 145, 'I', 'Inhambane'),
(2378, 145, 'L', 'Maputo'),
(2379, 145, 'MPM', 'Maputo cidade'),
(2380, 145, 'N', 'Nampula'),
(2381, 145, 'P', 'Cabo Delgado'),
(2382, 145, 'Q', 'Zambézia'),
(2383, 145, 'S', 'Sofala'),
(2384, 145, 'T', 'Tete'),
(2385, 146, 'AY', 'ဧရာ၀တီတိုင္‌း'),
(2386, 146, 'BG', 'ပဲခူးတုိင္‌း'),
(2387, 146, 'MG', 'မကေ္ဝးတိုင္‌း'),
(2388, 146, 'MD', 'မန္တလေးတုိင္‌း'),
(2389, 146, 'SG', 'စစ္‌ကုိင္‌း‌တုိင္‌း'),
(2390, 146, 'TN', 'တနင္သာရိတုိင္‌း'),
(2391, 146, 'YG', 'ရန္‌ကုန္‌တုိင္‌း'),
(2392, 146, 'CH', 'ခ္ယင္‌းပ္ရည္‌နယ္‌'),
(2393, 146, 'KC', 'ကခ္ယင္‌ပ္ရည္‌နယ္‌'),
(2394, 146, 'KH', 'ကယား‌ပ္ရည္‌နယ္‌'),
(2395, 146, 'KN', 'ကရင္‌‌ပ္ရည္‌နယ္‌'),
(2396, 146, 'MN', 'မ္ဝန္‌ပ္ရည္‌နယ္‌'),
(2397, 146, 'RK', 'ရခုိင္‌ပ္ရည္‌နယ္‌'),
(2398, 146, 'SH', 'ရုမ္‌းပ္ရည္‌နယ္‌'),
(2399, 147, 'CA', 'Caprivi'),
(2400, 147, 'ER', 'Erongo'),
(2401, 147, 'HA', 'Hardap'),
(2402, 147, 'KA', 'Karas'),
(2403, 147, 'KH', 'Khomas'),
(2404, 147, 'KU', 'Kunene'),
(2405, 147, 'OD', 'Otjozondjupa'),
(2406, 147, 'OH', 'Omaheke'),
(2407, 147, 'OK', 'Okavango'),
(2408, 147, 'ON', 'Oshana'),
(2409, 147, 'OS', 'Omusati'),
(2410, 147, 'OT', 'Oshikoto'),
(2411, 147, 'OW', 'Ohangwena'),
(2412, 148, 'AO', 'Aiwo'),
(2413, 148, 'AA', 'Anabar'),
(2414, 148, 'AT', 'Anetan'),
(2415, 148, 'AI', 'Anibare'),
(2416, 148, 'BA', 'Baiti'),
(2417, 148, 'BO', 'Boe'),
(2418, 148, 'BU', 'Buada'),
(2419, 148, 'DE', 'Denigomodu'),
(2420, 148, 'EW', 'Ewa'),
(2421, 148, 'IJ', 'Ijuw'),
(2422, 148, 'ME', 'Meneng'),
(2423, 148, 'NI', 'Nibok'),
(2424, 148, 'UA', 'Uaboe'),
(2425, 148, 'YA', 'Yaren'),
(2426, 149, 'BA', 'Bagmati'),
(2427, 149, 'BH', 'Bheri'),
(2428, 149, 'DH', 'Dhawalagiri'),
(2429, 149, 'GA', 'Gandaki'),
(2430, 149, 'JA', 'Janakpur'),
(2431, 149, 'KA', 'Karnali'),
(2432, 149, 'KO', 'Kosi'),
(2433, 149, 'LU', 'Lumbini'),
(2434, 149, 'MA', 'Mahakali'),
(2435, 149, 'ME', 'Mechi'),
(2436, 149, 'NA', 'Narayani'),
(2437, 149, 'RA', 'Rapti'),
(2438, 149, 'SA', 'Sagarmatha'),
(2439, 149, 'SE', 'Seti'),
(2440, 150, 'DR', 'Drenthe'),
(2441, 150, 'FL', 'Flevoland'),
(2442, 150, 'FR', 'Friesland'),
(2443, 150, 'GE', 'Gelderland'),
(2444, 150, 'GR', 'Groningen'),
(2445, 150, 'LI', 'Limburg'),
(2446, 150, 'NB', 'Noord-Brabant'),
(2447, 150, 'NH', 'Noord-Holland'),
(2448, 150, 'OV', 'Overijssel'),
(2449, 150, 'UT', 'Utrecht'),
(2450, 150, 'ZE', 'Zeeland'),
(2451, 150, 'ZH', 'Zuid-Holland'),
(2452, 152, 'L', 'Province des Îles'),
(2453, 152, 'N', 'Province Nord'),
(2454, 152, 'S', 'Province Sud'),
(2455, 153, 'AUK', 'Auckland'),
(2456, 153, 'BOP', 'Bay of Plenty'),
(2457, 153, 'CAN', 'Canterbury'),
(2458, 153, 'GIS', 'Gisborne'),
(2459, 153, 'HKB', 'Hawke''s Bay'),
(2460, 153, 'MBH', 'Marlborough'),
(2461, 153, 'MWT', 'Manawatu-Wanganui'),
(2462, 153, 'NSN', 'Nelson'),
(2463, 153, 'NTL', 'Northland'),
(2464, 153, 'OTA', 'Otago'),
(2465, 153, 'STL', 'Southland'),
(2466, 153, 'TAS', 'Tasman'),
(2467, 153, 'TKI', 'Taranaki'),
(2468, 153, 'WGN', 'Wellington'),
(2469, 153, 'WKO', 'Waikato'),
(2470, 153, 'WTC', 'West Coast'),
(2471, 154, 'AN', 'Atlántico Norte'),
(2472, 154, 'AS', 'Atlántico Sur'),
(2473, 154, 'BO', 'Boaco'),
(2474, 154, 'CA', 'Carazo'),
(2475, 154, 'CI', 'Chinandega'),
(2476, 154, 'CO', 'Chontales'),
(2477, 154, 'ES', 'Estelí'),
(2478, 154, 'GR', 'Granada'),
(2479, 154, 'JI', 'Jinotega'),
(2480, 154, 'LE', 'León'),
(2481, 154, 'MD', 'Madriz'),
(2482, 154, 'MN', 'Managua'),
(2483, 154, 'MS', 'Masaya'),
(2484, 154, 'MT', 'Matagalpa'),
(2485, 154, 'NS', 'Nueva Segovia'),
(2486, 154, 'RI', 'Rivas'),
(2487, 154, 'SJ', 'Río San Juan'),
(2488, 155, '1', 'Agadez'),
(2489, 155, '2', 'Daffa'),
(2490, 155, '3', 'Dosso'),
(2491, 155, '4', 'Maradi'),
(2492, 155, '5', 'Tahoua'),
(2493, 155, '6', 'Tillabéry'),
(2494, 155, '7', 'Zinder'),
(2495, 155, '8', 'Niamey'),
(2496, 156, 'AB', 'Abia State'),
(2497, 156, 'AD', 'Adamawa State'),
(2498, 156, 'AK', 'Akwa Ibom State'),
(2499, 156, 'AN', 'Anambra State'),
(2500, 156, 'BA', 'Bauchi State'),
(2501, 156, 'BE', 'Benue State'),
(2502, 156, 'BO', 'Borno State'),
(2503, 156, 'BY', 'Bayelsa State'),
(2504, 156, 'CR', 'Cross River State'),
(2505, 156, 'DE', 'Delta State'),
(2506, 156, 'EB', 'Ebonyi State'),
(2507, 156, 'ED', 'Edo State'),
(2508, 156, 'EK', 'Ekiti State'),
(2509, 156, 'EN', 'Enugu State'),
(2510, 156, 'GO', 'Gombe State'),
(2511, 156, 'IM', 'Imo State'),
(2512, 156, 'JI', 'Jigawa State'),
(2513, 156, 'KB', 'Kebbi State'),
(2514, 156, 'KD', 'Kaduna State'),
(2515, 156, 'KN', 'Kano State'),
(2516, 156, 'KO', 'Kogi State'),
(2517, 156, 'KT', 'Katsina State'),
(2518, 156, 'KW', 'Kwara State'),
(2519, 156, 'LA', 'Lagos State'),
(2520, 156, 'NA', 'Nassarawa State'),
(2521, 156, 'NI', 'Niger State'),
(2522, 156, 'OG', 'Ogun State'),
(2523, 156, 'ON', 'Ondo State'),
(2524, 156, 'OS', 'Osun State'),
(2525, 156, 'OY', 'Oyo State'),
(2526, 156, 'PL', 'Plateau State'),
(2527, 156, 'RI', 'Rivers State'),
(2528, 156, 'SO', 'Sokoto State'),
(2529, 156, 'TA', 'Taraba State'),
(2530, 156, 'ZA', 'Zamfara State'),
(2531, 159, 'N', 'Northern Islands'),
(2532, 159, 'R', 'Rota'),
(2533, 159, 'S', 'Saipan'),
(2534, 159, 'T', 'Tinian'),
(2535, 160, '01', 'Østfold fylke'),
(2536, 160, '02', 'Akershus fylke'),
(2537, 160, '03', 'Oslo fylke'),
(2538, 160, '04', 'Hedmark fylke'),
(2539, 160, '05', 'Oppland fylke'),
(2540, 160, '06', 'Buskerud fylke'),
(2541, 160, '07', 'Vestfold fylke'),
(2542, 160, '08', 'Telemark fylke'),
(2543, 160, '09', 'Aust-Agder fylke'),
(2544, 160, '10', 'Vest-Agder fylke'),
(2545, 160, '11', 'Rogaland fylke'),
(2546, 160, '12', 'Hordaland fylke'),
(2547, 160, '14', 'Sogn og Fjordane fylke'),
(2548, 160, '15', 'Møre og Romsdal fylke'),
(2549, 160, '16', 'Sør-Trøndelag fylke'),
(2550, 160, '17', 'Nord-Trøndelag fylke'),
(2551, 160, '18', 'Nordland fylke'),
(2552, 160, '19', 'Troms fylke'),
(2553, 160, '20', 'Finnmark fylke'),
(2554, 161, 'BA', 'الباطنة'),
(2555, 161, 'DA', 'الداخلية'),
(2556, 161, 'DH', 'ظفار'),
(2557, 161, 'MA', 'مسقط'),
(2558, 161, 'MU', 'مسندم'),
(2559, 161, 'SH', 'الشرقية'),
(2560, 161, 'WU', 'الوسطى'),
(2561, 161, 'ZA', 'الظاهرة'),
(2562, 162, 'BA', 'بلوچستان'),
(2563, 162, 'IS', 'وفاقی دارالحکومت'),
(2564, 162, 'JK', 'آزاد کشمیر'),
(2565, 162, 'NA', 'شمالی علاقہ جات'),
(2566, 162, 'NW', 'شمال مغربی سرحدی صوبہ'),
(2567, 162, 'PB', 'پنجاب'),
(2568, 162, 'SD', 'سندھ'),
(2569, 162, 'TA', 'وفاقی قبائلی علاقہ جات'),
(2570, 163, 'AM', 'Aimeliik'),
(2571, 163, 'AR', 'Airai'),
(2572, 163, 'AN', 'Angaur'),
(2573, 163, 'HA', 'Hatohobei'),
(2574, 163, 'KA', 'Kayangel'),
(2575, 163, 'KO', 'Koror'),
(2576, 163, 'ME', 'Melekeok'),
(2577, 163, 'NA', 'Ngaraard'),
(2578, 163, 'NG', 'Ngarchelong'),
(2579, 163, 'ND', 'Ngardmau'),
(2580, 163, 'NT', 'Ngatpang'),
(2581, 163, 'NC', 'Ngchesar'),
(2582, 163, 'NR', 'Ngeremlengui'),
(2583, 163, 'NW', 'Ngiwal'),
(2584, 163, 'PE', 'Peleliu'),
(2585, 163, 'SO', 'Sonsorol'),
(2586, 164, '1', 'Bocas del Toro'),
(2587, 164, '2', 'Coclé'),
(2588, 164, '3', 'Colón'),
(2589, 164, '4', 'Chiriquí'),
(2590, 164, '5', 'Darién'),
(2591, 164, '6', 'Herrera'),
(2592, 164, '7', 'Los Santos'),
(2593, 164, '8', 'Panamá'),
(2594, 164, '9', 'Veraguas'),
(2595, 164, 'Q', 'Kuna Yala'),
(2596, 165, 'CPK', 'Chimbu'),
(2597, 165, 'CPM', 'Central'),
(2598, 165, 'EBR', 'East New Britain'),
(2599, 165, 'EHG', 'Eastern Highlands'),
(2600, 165, 'EPW', 'Enga'),
(2601, 165, 'ESW', 'East Sepik'),
(2602, 165, 'GPK', 'Gulf'),
(2603, 165, 'MBA', 'Milne Bay'),
(2604, 165, 'MPL', 'Morobe'),
(2605, 165, 'MPM', 'Madang'),
(2606, 165, 'MRL', 'Manus'),
(2607, 165, 'NCD', 'National Capital District'),
(2608, 165, 'NIK', 'New Ireland'),
(2609, 165, 'NPP', 'Northern'),
(2610, 165, 'NSA', 'North Solomons'),
(2611, 165, 'SAN', 'Sandaun'),
(2612, 165, 'SHM', 'Southern Highlands'),
(2613, 165, 'WBK', 'West New Britain'),
(2614, 165, 'WHM', 'Western Highlands'),
(2615, 165, 'WPD', 'Western'),
(2616, 166, '1', 'Concepción'),
(2617, 166, '2', 'San Pedro'),
(2618, 166, '3', 'Cordillera'),
(2619, 166, '4', 'Guairá'),
(2620, 166, '5', 'Caaguazú'),
(2621, 166, '6', 'Caazapá'),
(2622, 166, '7', 'Itapúa'),
(2623, 166, '8', 'Misiones'),
(2624, 166, '9', 'Paraguarí'),
(2625, 166, '10', 'Alto Paraná'),
(2626, 166, '11', 'Central'),
(2627, 166, '12', 'Ñeembucú'),
(2628, 166, '13', 'Amambay'),
(2629, 166, '14', 'Canindeyú'),
(2630, 166, '15', 'Presidente Hayes'),
(2631, 166, '16', 'Alto Paraguay'),
(2632, 166, '19', 'Boquerón'),
(2633, 166, 'ASU', 'Asunción'),
(2634, 167, 'AMA', 'Amazonas'),
(2635, 167, 'ANC', 'Ancash'),
(2636, 167, 'APU', 'Apurímac'),
(2637, 167, 'ARE', 'Arequipa'),
(2638, 167, 'AYA', 'Ayacucho'),
(2639, 167, 'CAJ', 'Cajamarca'),
(2640, 167, 'CAL', 'Callao'),
(2641, 167, 'CUS', 'Cuzco'),
(2642, 167, 'HUC', 'Huánuco'),
(2643, 167, 'HUV', 'Huancavelica'),
(2644, 167, 'ICA', 'Ica'),
(2645, 167, 'JUN', 'Junín'),
(2646, 167, 'LAL', 'La Libertad'),
(2647, 167, 'LAM', 'Lambayeque'),
(2648, 167, 'LIM', 'Lima'),
(2649, 167, 'LOR', 'Loreto'),
(2650, 167, 'MDD', 'Madre de Dios'),
(2651, 167, 'MOQ', 'Moquegua'),
(2652, 167, 'PAS', 'Pasco'),
(2653, 167, 'PIU', 'Piura'),
(2654, 167, 'PUN', 'Puno'),
(2655, 167, 'SAM', 'San Martín'),
(2656, 167, 'TAC', 'Tacna'),
(2657, 167, 'TUM', 'Tumbes'),
(2658, 167, 'UCA', 'Ucayali'),
(2659, 168, 'ABR', 'Abra'),
(2660, 168, 'AGN', 'Agusan del Norte'),
(2661, 168, 'AGS', 'Agusan del Sur'),
(2662, 168, 'AKL', 'Aklan'),
(2663, 168, 'ALB', 'Albay'),
(2664, 168, 'ANT', 'Antique'),
(2665, 168, 'APA', 'Apayao'),
(2666, 168, 'AUR', 'Aurora'),
(2667, 168, 'BAN', 'Bataan'),
(2668, 168, 'BAS', 'Basilan'),
(2669, 168, 'BEN', 'Benguet'),
(2670, 168, 'BIL', 'Biliran'),
(2671, 168, 'BOH', 'Bohol'),
(2672, 168, 'BTG', 'Batangas'),
(2673, 168, 'BTN', 'Batanes'),
(2674, 168, 'BUK', 'Bukidnon'),
(2675, 168, 'BUL', 'Bulacan'),
(2676, 168, 'CAG', 'Cagayan'),
(2677, 168, 'CAM', 'Camiguin'),
(2678, 168, 'CAN', 'Camarines Norte'),
(2679, 168, 'CAP', 'Capiz'),
(2680, 168, 'CAS', 'Camarines Sur'),
(2681, 168, 'CAT', 'Catanduanes'),
(2682, 168, 'CAV', 'Cavite'),
(2683, 168, 'CEB', 'Cebu'),
(2684, 168, 'COM', 'Compostela Valley'),
(2685, 168, 'DAO', 'Davao Oriental'),
(2686, 168, 'DAS', 'Davao del Sur'),
(2687, 168, 'DAV', 'Davao del Norte'),
(2688, 168, 'EAS', 'Eastern Samar'),
(2689, 168, 'GUI', 'Guimaras'),
(2690, 168, 'IFU', 'Ifugao'),
(2691, 168, 'ILI', 'Iloilo'),
(2692, 168, 'ILN', 'Ilocos Norte'),
(2693, 168, 'ILS', 'Ilocos Sur'),
(2694, 168, 'ISA', 'Isabela'),
(2695, 168, 'KAL', 'Kalinga'),
(2696, 168, 'LAG', 'Laguna'),
(2697, 168, 'LAN', 'Lanao del Norte'),
(2698, 168, 'LAS', 'Lanao del Sur'),
(2699, 168, 'LEY', 'Leyte'),
(2700, 168, 'LUN', 'La Union'),
(2701, 168, 'MAD', 'Marinduque'),
(2702, 168, 'MAG', 'Maguindanao'),
(2703, 168, 'MAS', 'Masbate'),
(2704, 168, 'MDC', 'Mindoro Occidental'),
(2705, 168, 'MDR', 'Mindoro Oriental'),
(2706, 168, 'MOU', 'Mountain Province'),
(2707, 168, 'MSC', 'Misamis Occidental'),
(2708, 168, 'MSR', 'Misamis Oriental'),
(2709, 168, 'NCO', 'Cotabato'),
(2710, 168, 'NSA', 'Northern Samar'),
(2711, 168, 'NEC', 'Negros Occidental'),
(2712, 168, 'NER', 'Negros Oriental'),
(2713, 168, 'NUE', 'Nueva Ecija'),
(2714, 168, 'NUV', 'Nueva Vizcaya'),
(2715, 168, 'PAM', 'Pampanga'),
(2716, 168, 'PAN', 'Pangasinan'),
(2717, 168, 'PLW', 'Palawan'),
(2718, 168, 'QUE', 'Quezon'),
(2719, 168, 'QUI', 'Quirino'),
(2720, 168, 'RIZ', 'Rizal'),
(2721, 168, 'ROM', 'Romblon'),
(2722, 168, 'SAR', 'Sarangani'),
(2723, 168, 'SCO', 'South Cotabato'),
(2724, 168, 'SIG', 'Siquijor'),
(2725, 168, 'SLE', 'Southern Leyte'),
(2726, 168, 'SLU', 'Sulu'),
(2727, 168, 'SOR', 'Sorsogon'),
(2728, 168, 'SUK', 'Sultan Kudarat'),
(2729, 168, 'SUN', 'Surigao del Norte'),
(2730, 168, 'SUR', 'Surigao del Sur'),
(2731, 168, 'TAR', 'Tarlac'),
(2732, 168, 'TAW', 'Tawi-Tawi'),
(2733, 168, 'WSA', 'Samar'),
(2734, 168, 'ZAN', 'Zamboanga del Norte'),
(2735, 168, 'ZAS', 'Zamboanga del Sur'),
(2736, 168, 'ZMB', 'Zambales'),
(2737, 168, 'ZSI', 'Zamboanga Sibugay'),
(2738, 170, 'DS', 'Dolnośląskie'),
(2739, 170, 'KP', 'Kujawsko-Pomorskie'),
(2740, 170, 'LU', 'Lubelskie'),
(2741, 170, 'LB', 'Lubuskie'),
(2742, 170, 'LD', 'Łódzkie'),
(2743, 170, 'MA', 'Małopolskie'),
(2744, 170, 'MZ', 'Mazowieckie'),
(2745, 170, 'OP', 'Opolskie'),
(2746, 170, 'PK', 'Podkarpackie'),
(2747, 170, 'PD', 'Podlaskie'),
(2748, 170, 'PM', 'Pomorskie'),
(2749, 170, 'SL', 'Śląskie'),
(2750, 170, 'SK', 'Świętokrzyskie'),
(2751, 170, 'WN', 'Warmińsko-Mazurskie'),
(2752, 170, 'WP', 'Wielkopolskie'),
(2753, 170, 'ZP', 'Zachodniopomorskie'),
(2754, 171, '01', 'Aveiro'),
(2755, 171, '02', 'Beja'),
(2756, 171, '03', 'Braga'),
(2757, 171, '04', 'Bragança'),
(2758, 171, '05', 'Castelo Branco'),
(2759, 171, '06', 'Coimbra'),
(2760, 171, '07', 'Évora'),
(2761, 171, '08', 'Faro'),
(2762, 171, '09', 'Guarda'),
(2763, 171, '10', 'Leiria'),
(2764, 171, '11', 'Lisboa'),
(2765, 171, '12', 'Portalegre'),
(2766, 171, '13', 'Porto'),
(2767, 171, '14', 'Santarém'),
(2768, 171, '15', 'Setúbal'),
(2769, 171, '16', 'Viana do Castelo'),
(2770, 171, '17', 'Vila Real'),
(2771, 171, '18', 'Viseu'),
(2772, 171, '20', 'Região Autónoma dos Açores'),
(2773, 171, '30', 'Região Autónoma da Madeira'),
(2774, 173, 'DA', 'الدوحة'),
(2775, 173, 'GH', 'الغويرية'),
(2776, 173, 'JB', 'جريان الباطنة'),
(2777, 173, 'JU', 'الجميلية'),
(2778, 173, 'KH', 'الخور'),
(2779, 173, 'ME', 'مسيعيد'),
(2780, 173, 'MS', 'الشمال'),
(2781, 173, 'RA', 'الريان'),
(2782, 173, 'US', 'أم صلال'),
(2783, 173, 'WA', 'الوكرة'),
(2784, 175, 'AB', 'Alba'),
(2785, 175, 'AG', 'Argeş'),
(2786, 175, 'AR', 'Arad'),
(2787, 175, 'B', 'Bucureşti'),
(2788, 175, 'BC', 'Bacău'),
(2789, 175, 'BH', 'Bihor'),
(2790, 175, 'BN', 'Bistriţa-Năsăud'),
(2791, 175, 'BR', 'Brăila'),
(2792, 175, 'BT', 'Botoşani'),
(2793, 175, 'BV', 'Braşov'),
(2794, 175, 'BZ', 'Buzău'),
(2795, 175, 'CJ', 'Cluj'),
(2796, 175, 'CL', 'Călăraşi'),
(2797, 175, 'CS', 'Caraş-Severin'),
(2798, 175, 'CT', 'Constanţa'),
(2799, 175, 'CV', 'Covasna'),
(2800, 175, 'DB', 'Dâmboviţa'),
(2801, 175, 'DJ', 'Dolj'),
(2802, 175, 'GJ', 'Gorj'),
(2803, 175, 'GL', 'Galaţi'),
(2804, 175, 'GR', 'Giurgiu'),
(2805, 175, 'HD', 'Hunedoara'),
(2806, 175, 'HG', 'Harghita'),
(2807, 175, 'IF', 'Ilfov'),
(2808, 175, 'IL', 'Ialomiţa'),
(2809, 175, 'IS', 'Iaşi'),
(2810, 175, 'MH', 'Mehedinţi'),
(2811, 175, 'MM', 'Maramureş'),
(2812, 175, 'MS', 'Mureş'),
(2813, 175, 'NT', 'Neamţ'),
(2814, 175, 'OT', 'Olt'),
(2815, 175, 'PH', 'Prahova'),
(2816, 175, 'SB', 'Sibiu'),
(2817, 175, 'SJ', 'Sălaj'),
(2818, 175, 'SM', 'Satu Mare'),
(2819, 175, 'SV', 'Suceava'),
(2820, 175, 'TL', 'Tulcea'),
(2821, 175, 'TM', 'Timiş'),
(2822, 175, 'TR', 'Teleorman'),
(2823, 175, 'VL', 'Vâlcea'),
(2824, 175, 'VN', 'Vrancea'),
(2825, 175, 'VS', 'Vaslui'),
(2826, 176, 'AD', 'Адыге́я Респу́блика'),
(2827, 176, 'AGB', 'Аги́нский-Буря́тский автоно́мный о́круг'),
(2828, 176, 'AL', 'Алта́й Респу́блика'),
(2829, 176, 'ALT', 'Алта́йский край'),
(2830, 176, 'AMU', 'Аму́рская о́бласть'),
(2831, 176, 'ARK', 'Арха́нгельская о́бласть'),
(2832, 176, 'AST', 'Астраха́нская о́бласть'),
(2833, 176, 'BA', 'Башкортоста́н Респу́блика'),
(2834, 176, 'BEL', 'Белгоро́дская о́бласть'),
(2835, 176, 'BRY', 'Бря́нская о́бласть'),
(2836, 176, 'BU', 'Буря́тия Респу́блика'),
(2837, 176, 'CE', 'Чече́нская Респу́блика'),
(2838, 176, 'CHE', 'Челя́бинская о́бласть'),
(2839, 176, 'CHI', 'Чити́нская о́бласть'),
(2840, 176, 'CHU', 'Чуко́тский автоно́мный о́круг'),
(2841, 176, 'CU', 'Чува́шская Респу́блика'),
(2842, 176, 'DA', 'Дагеста́н Респу́блика'),
(2843, 176, 'EVE', 'Эвенки́йский автоно́мный о́круг'),
(2844, 176, 'IN', 'Ингуше́тия Респу́блика'),
(2845, 176, 'IRK', 'Ирку́тская о́бласть'),
(2846, 176, 'IVA', 'Ива́новская о́бласть'),
(2847, 176, 'KAM', 'Камча́тская о́бласть'),
(2848, 176, 'KB', 'Кабарди́но-Балка́рская Респу́блика'),
(2849, 176, 'KC', 'Карача́ево-Черке́сская Респу́блика'),
(2850, 176, 'KDA', 'Краснода́рский край'),
(2851, 176, 'KEM', 'Ке́меровская о́бласть'),
(2852, 176, 'KGD', 'Калинингра́дская о́бласть'),
(2853, 176, 'KGN', 'Курга́нская о́бласть'),
(2854, 176, 'KHA', 'Хаба́ровский край'),
(2855, 176, 'KHM', 'Ха́нты-Манси́йский автоно́мный о́круг—Югра́'),
(2856, 176, 'KIA', 'Красноя́рский край'),
(2857, 176, 'KIR', 'Ки́ровская о́бласть'),
(2858, 176, 'KK', 'Хака́сия'),
(2859, 176, 'KL', 'Калмы́кия Респу́блика'),
(2860, 176, 'KLU', 'Калу́жская о́бласть'),
(2861, 176, 'KO', 'Ко́ми Респу́блика'),
(2862, 176, 'KOR', 'Коря́кский автоно́мный о́круг'),
(2863, 176, 'KOS', 'Костромска́я о́бласть'),
(2864, 176, 'KR', 'Каре́лия Респу́блика'),
(2865, 176, 'KRS', 'Ку́рская о́бласть'),
(2866, 176, 'LEN', 'Ленингра́дская о́бласть'),
(2867, 176, 'LIP', 'Ли́пецкая о́бласть'),
(2868, 176, 'MAG', 'Магада́нская о́бласть'),
(2869, 176, 'ME', 'Мари́й Эл Респу́блика'),
(2870, 176, 'MO', 'Мордо́вия Респу́блика'),
(2871, 176, 'MOS', 'Моско́вская о́бласть'),
(2872, 176, 'MOW', 'Москва́'),
(2873, 176, 'MUR', 'Му́рманская о́бласть'),
(2874, 176, 'NEN', 'Нене́цкий автоно́мный о́круг'),
(2875, 176, 'NGR', 'Новгоро́дская о́бласть'),
(2876, 176, 'NIZ', 'Нижегоро́дская о́бласть'),
(2877, 176, 'NVS', 'Новосиби́рская о́бласть'),
(2878, 176, 'OMS', 'О́мская о́бласть'),
(2879, 176, 'ORE', 'Оренбу́ргская о́бласть'),
(2880, 176, 'ORL', 'Орло́вская о́бласть'),
(2881, 176, 'PNZ', 'Пе́нзенская о́бласть'),
(2882, 176, 'PRI', 'Примо́рский край'),
(2883, 176, 'PSK', 'Пско́вская о́бласть'),
(2884, 176, 'ROS', 'Росто́вская о́бласть'),
(2885, 176, 'RYA', 'Ряза́нская о́бласть'),
(2886, 176, 'SA', 'Саха́ (Яку́тия) Респу́блика'),
(2887, 176, 'SAK', 'Сахали́нская о́бласть'),
(2888, 176, 'SAM', 'Сама́рская о́бласть'),
(2889, 176, 'SAR', 'Сара́товская о́бласть'),
(2890, 176, 'SE', 'Се́верная Осе́тия–Ала́ния Респу́блика'),
(2891, 176, 'SMO', 'Смол́енская о́бласть'),
(2892, 176, 'SPE', 'Санкт-Петербу́рг'),
(2893, 176, 'STA', 'Ставропо́льский край'),
(2894, 176, 'SVE', 'Свердло́вская о́бласть'),
(2895, 176, 'TA', 'Респу́блика Татарста́н'),
(2896, 176, 'TAM', 'Тамбо́вская о́бласть'),
(2897, 176, 'TAY', 'Таймы́рский автоно́мный о́круг'),
(2898, 176, 'TOM', 'То́мская о́бласть'),
(2899, 176, 'TUL', 'Ту́льская о́бласть'),
(2900, 176, 'TVE', 'Тверска́я о́бласть'),
(2901, 176, 'TY', 'Тыва́ Респу́блика'),
(2902, 176, 'TYU', 'Тюме́нская о́бласть'),
(2903, 176, 'UD', 'Удму́ртская Респу́блика'),
(2904, 176, 'ULY', 'Улья́новская о́бласть'),
(2905, 176, 'UOB', 'Усть-Орды́нский Буря́тский автоно́мный о́круг'),
(2906, 176, 'VGG', 'Волгогра́дская о́бласть'),
(2907, 176, 'VLA', 'Влади́мирская о́бласть'),
(2908, 176, 'VLG', 'Волого́дская о́бласть'),
(2909, 176, 'VOR', 'Воро́нежская о́бласть'),
(2910, 176, 'XXX', 'Пе́рмский край'),
(2911, 176, 'YAN', 'Яма́ло-Нене́цкий автоно́мный о́круг'),
(2912, 176, 'YAR', 'Яросла́вская о́бласть'),
(2913, 176, 'YEV', 'Евре́йская автоно́мная о́бласть'),
(2914, 177, 'N', 'Nord'),
(2915, 177, 'E', 'Est'),
(2916, 177, 'S', 'Sud'),
(2917, 177, 'O', 'Ouest'),
(2918, 177, 'K', 'Kigali'),
(2919, 178, 'K', 'Saint Kitts'),
(2920, 178, 'N', 'Nevis'),
(2921, 179, 'AR', 'Anse-la-Raye'),
(2922, 179, 'CA', 'Castries'),
(2923, 179, 'CH', 'Choiseul'),
(2924, 179, 'DA', 'Dauphin'),
(2925, 179, 'DE', 'Dennery'),
(2926, 179, 'GI', 'Gros-Islet'),
(2927, 179, 'LA', 'Laborie'),
(2928, 179, 'MI', 'Micoud'),
(2929, 179, 'PR', 'Praslin'),
(2930, 179, 'SO', 'Soufriere'),
(2931, 179, 'VF', 'Vieux-Fort'),
(2932, 180, 'C', 'Charlotte'),
(2933, 180, 'R', 'Grenadines'),
(2934, 180, 'A', 'Saint Andrew'),
(2935, 180, 'D', 'Saint David'),
(2936, 180, 'G', 'Saint George'),
(2937, 180, 'P', 'Saint Patrick'),
(2938, 181, 'AA', 'A''ana'),
(2939, 181, 'AL', 'Aiga-i-le-Tai'),
(2940, 181, 'AT', 'Atua'),
(2941, 181, 'FA', 'Fa''asaleleaga'),
(2942, 181, 'GE', 'Gaga''emauga'),
(2943, 181, 'GI', 'Gaga''ifomauga'),
(2944, 181, 'PA', 'Palauli'),
(2945, 181, 'SA', 'Satupa''itea'),
(2946, 181, 'TU', 'Tuamasaga'),
(2947, 181, 'VF', 'Va''a-o-Fonoti'),
(2948, 181, 'VS', 'Vaisigano'),
(2949, 182, 'AC', 'Acquaviva'),
(2950, 182, 'BM', 'Borgo Maggiore'),
(2951, 182, 'CH', 'Chiesanuova'),
(2952, 182, 'DO', 'Domagnano'),
(2953, 182, 'FA', 'Faetano'),
(2954, 182, 'FI', 'Fiorentino'),
(2955, 182, 'MO', 'Montegiardino'),
(2956, 182, 'SM', 'Citta di San Marino'),
(2957, 182, 'SE', 'Serravalle'),
(2958, 183, 'P', 'Príncipe'),
(2959, 183, 'S', 'São Tomé'),
(2960, 184, '01', 'الرياض'),
(2961, 184, '02', 'مكة المكرمة'),
(2962, 184, '03', 'المدينه'),
(2963, 184, '04', 'الشرقية'),
(2964, 184, '05', 'القصيم'),
(2965, 184, '06', 'حائل'),
(2966, 184, '07', 'تبوك'),
(2967, 184, '08', 'الحدود الشمالية'),
(2968, 184, '09', 'جيزان'),
(2969, 184, '10', 'نجران'),
(2970, 184, '11', 'الباحة'),
(2971, 184, '12', 'الجوف'),
(2972, 184, '14', 'عسير'),
(2973, 185, 'DA', 'Dakar'),
(2974, 185, 'DI', 'Diourbel'),
(2975, 185, 'FA', 'Fatick'),
(2976, 185, 'KA', 'Kaolack'),
(2977, 185, 'KO', 'Kolda'),
(2978, 185, 'LO', 'Louga'),
(2979, 185, 'MA', 'Matam'),
(2980, 185, 'SL', 'Saint-Louis'),
(2981, 185, 'TA', 'Tambacounda'),
(2982, 185, 'TH', 'Thies '),
(2983, 185, 'ZI', 'Ziguinchor'),
(2984, 186, 'AP', 'Anse aux Pins'),
(2985, 186, 'AB', 'Anse Boileau'),
(2986, 186, 'AE', 'Anse Etoile'),
(2987, 186, 'AL', 'Anse Louis'),
(2988, 186, 'AR', 'Anse Royale'),
(2989, 186, 'BL', 'Baie Lazare'),
(2990, 186, 'BS', 'Baie Sainte Anne'),
(2991, 186, 'BV', 'Beau Vallon'),
(2992, 186, 'BA', 'Bel Air'),
(2993, 186, 'BO', 'Bel Ombre'),
(2994, 186, 'CA', 'Cascade'),
(2995, 186, 'GL', 'Glacis'),
(2996, 186, 'GM', 'Grand'' Anse (on Mahe)'),
(2997, 186, 'GP', 'Grand'' Anse (on Praslin)'),
(2998, 186, 'DG', 'La Digue'),
(2999, 186, 'RA', 'La Riviere Anglaise'),
(3000, 186, 'MB', 'Mont Buxton'),
(3001, 186, 'MF', 'Mont Fleuri'),
(3002, 186, 'PL', 'Plaisance'),
(3003, 186, 'PR', 'Pointe La Rue'),
(3004, 186, 'PG', 'Port Glaud'),
(3005, 186, 'SL', 'Saint Louis'),
(3006, 186, 'TA', 'Takamaka'),
(3007, 187, 'E', 'Eastern'),
(3008, 187, 'N', 'Northern'),
(3009, 187, 'S', 'Southern'),
(3010, 187, 'W', 'Western'),
(3011, 189, 'BC', 'Banskobystrický kraj'),
(3012, 189, 'BL', 'Bratislavský kraj'),
(3013, 189, 'KI', 'Košický kraj'),
(3014, 189, 'NJ', 'Nitrianský kraj'),
(3015, 189, 'PV', 'Prešovský kraj'),
(3016, 189, 'TA', 'Trnavský kraj'),
(3017, 189, 'TC', 'Trenčianský kraj'),
(3018, 189, 'ZI', 'Žilinský kraj'),
(3019, 190, '001', 'Ajdovščina'),
(3020, 190, '002', 'Beltinci'),
(3021, 190, '003', 'Bled'),
(3022, 190, '004', 'Bohinj'),
(3023, 190, '005', 'Borovnica'),
(3024, 190, '006', 'Bovec'),
(3025, 190, '007', 'Brda'),
(3026, 190, '008', 'Brezovica'),
(3027, 190, '009', 'Brežice'),
(3028, 190, '010', 'Tišina'),
(3029, 190, '011', 'Celje'),
(3030, 190, '012', 'Cerklje na Gorenjskem'),
(3031, 190, '013', 'Cerknica'),
(3032, 190, '014', 'Cerkno'),
(3033, 190, '015', 'Črenšovci'),
(3034, 190, '016', 'Črna na Koroškem'),
(3035, 190, '017', 'Črnomelj'),
(3036, 190, '018', 'Destrnik'),
(3037, 190, '019', 'Divača'),
(3038, 190, '020', 'Dobrepolje'),
(3039, 190, '021', 'Dobrova-Polhov Gradec'),
(3040, 190, '022', 'Dol pri Ljubljani'),
(3041, 190, '023', 'Domžale'),
(3042, 190, '024', 'Dornava'),
(3043, 190, '025', 'Dravograd'),
(3044, 190, '026', 'Duplek'),
(3045, 190, '027', 'Gorenja vas-Poljane'),
(3046, 190, '028', 'Gorišnica'),
(3047, 190, '029', 'Gornja Radgona'),
(3048, 190, '030', 'Gornji Grad'),
(3049, 190, '031', 'Gornji Petrovci'),
(3050, 190, '032', 'Grosuplje'),
(3051, 190, '033', 'Šalovci'),
(3052, 190, '034', 'Hrastnik'),
(3053, 190, '035', 'Hrpelje-Kozina'),
(3054, 190, '036', 'Idrija'),
(3055, 190, '037', 'Ig'),
(3056, 190, '038', 'Ilirska Bistrica'),
(3057, 190, '039', 'Ivančna Gorica'),
(3058, 190, '040', 'Izola'),
(3059, 190, '041', 'Jesenice'),
(3060, 190, '042', 'Juršinci'),
(3061, 190, '043', 'Kamnik'),
(3062, 190, '044', 'Kanal ob Soči'),
(3063, 190, '045', 'Kidričevo'),
(3064, 190, '046', 'Kobarid'),
(3065, 190, '047', 'Kobilje'),
(3066, 190, '048', 'Kočevje'),
(3067, 190, '049', 'Komen'),
(3068, 190, '050', 'Koper'),
(3069, 190, '051', 'Kozje'),
(3070, 190, '052', 'Kranj'),
(3071, 190, '053', 'Kranjska Gora'),
(3072, 190, '054', 'Krško'),
(3073, 190, '055', 'Kungota'),
(3074, 190, '056', 'Kuzma'),
(3075, 190, '057', 'Laško'),
(3076, 190, '058', 'Lenart'),
(3077, 190, '059', 'Lendava'),
(3078, 190, '060', 'Litija'),
(3079, 190, '061', 'Ljubljana'),
(3080, 190, '062', 'Ljubno'),
(3081, 190, '063', 'Ljutomer'),
(3082, 190, '064', 'Logatec'),
(3083, 190, '065', 'Loška Dolina'),
(3084, 190, '066', 'Loški Potok'),
(3085, 190, '067', 'Luče'),
(3086, 190, '068', 'Lukovica'),
(3087, 190, '069', 'Majšperk'),
(3088, 190, '070', 'Maribor'),
(3089, 190, '071', 'Medvode'),
(3090, 190, '072', 'Mengeš'),
(3091, 190, '073', 'Metlika'),
(3092, 190, '074', 'Mežica'),
(3093, 190, '075', 'Miren-Kostanjevica'),
(3094, 190, '076', 'Mislinja'),
(3095, 190, '077', 'Moravče'),
(3096, 190, '078', 'Moravske Toplice'),
(3097, 190, '079', 'Mozirje'),
(3098, 190, '080', 'Murska Sobota'),
(3099, 190, '081', 'Muta'),
(3100, 190, '082', 'Naklo'),
(3101, 190, '083', 'Nazarje'),
(3102, 190, '084', 'Nova Gorica'),
(3103, 190, '085', 'Novo mesto'),
(3104, 190, '086', 'Odranci'),
(3105, 190, '087', 'Ormož'),
(3106, 190, '088', 'Osilnica'),
(3107, 190, '089', 'Pesnica'),
(3108, 190, '090', 'Piran'),
(3109, 190, '091', 'Pivka'),
(3110, 190, '092', 'Podčetrtek'),
(3111, 190, '093', 'Podvelka'),
(3112, 190, '094', 'Postojna'),
(3113, 190, '095', 'Preddvor'),
(3114, 190, '096', 'Ptuj'),
(3115, 190, '097', 'Puconci'),
(3116, 190, '098', 'Rače-Fram'),
(3117, 190, '099', 'Radeče'),
(3118, 190, '100', 'Radenci'),
(3119, 190, '101', 'Radlje ob Dravi'),
(3120, 190, '102', 'Radovljica'),
(3121, 190, '103', 'Ravne na Koroškem'),
(3122, 190, '104', 'Ribnica'),
(3123, 190, '106', 'Rogaška Slatina'),
(3124, 190, '105', 'Rogašovci'),
(3125, 190, '107', 'Rogatec'),
(3126, 190, '108', 'Ruše'),
(3127, 190, '109', 'Semič'),
(3128, 190, '110', 'Sevnica'),
(3129, 190, '111', 'Sežana'),
(3130, 190, '112', 'Slovenj Gradec'),
(3131, 190, '113', 'Slovenska Bistrica'),
(3132, 190, '114', 'Slovenske Konjice'),
(3133, 190, '115', 'Starše'),
(3134, 190, '116', 'Sveti Jurij'),
(3135, 190, '117', 'Šenčur'),
(3136, 190, '118', 'Šentilj'),
(3137, 190, '119', 'Šentjernej'),
(3138, 190, '120', 'Šentjur pri Celju'),
(3139, 190, '121', 'Škocjan'),
(3140, 190, '122', 'Škofja Loka'),
(3141, 190, '123', 'Škofljica'),
(3142, 190, '124', 'Šmarje pri Jelšah'),
(3143, 190, '125', 'Šmartno ob Paki'),
(3144, 190, '126', 'Šoštanj'),
(3145, 190, '127', 'Štore'),
(3146, 190, '128', 'Tolmin'),
(3147, 190, '129', 'Trbovlje'),
(3148, 190, '130', 'Trebnje'),
(3149, 190, '131', 'Tržič'),
(3150, 190, '132', 'Turnišče'),
(3151, 190, '133', 'Velenje'),
(3152, 190, '134', 'Velike Lašče'),
(3153, 190, '135', 'Videm'),
(3154, 190, '136', 'Vipava'),
(3155, 190, '137', 'Vitanje'),
(3156, 190, '138', 'Vodice'),
(3157, 190, '139', 'Vojnik'),
(3158, 190, '140', 'Vrhnika'),
(3159, 190, '141', 'Vuzenica'),
(3160, 190, '142', 'Zagorje ob Savi'),
(3161, 190, '143', 'Zavrč'),
(3162, 190, '144', 'Zreče'),
(3163, 190, '146', 'Železniki'),
(3164, 190, '147', 'Žiri'),
(3165, 190, '148', 'Benedikt'),
(3166, 190, '149', 'Bistrica ob Sotli'),
(3167, 190, '150', 'Bloke'),
(3168, 190, '151', 'Braslovče'),
(3169, 190, '152', 'Cankova'),
(3170, 190, '153', 'Cerkvenjak'),
(3171, 190, '154', 'Dobje'),
(3172, 190, '155', 'Dobrna'),
(3173, 190, '156', 'Dobrovnik'),
(3174, 190, '157', 'Dolenjske Toplice'),
(3175, 190, '158', 'Grad'),
(3176, 190, '159', 'Hajdina'),
(3177, 190, '160', 'Hoče-Slivnica'),
(3178, 190, '161', 'Hodoš'),
(3179, 190, '162', 'Horjul'),
(3180, 190, '163', 'Jezersko'),
(3181, 190, '164', 'Komenda'),
(3182, 190, '165', 'Kostel'),
(3183, 190, '166', 'Križevci'),
(3184, 190, '167', 'Lovrenc na Pohorju'),
(3185, 190, '168', 'Markovci'),
(3186, 190, '169', 'Miklavž na Dravskem polju'),
(3187, 190, '170', 'Mirna Peč'),
(3188, 190, '171', 'Oplotnica'),
(3189, 190, '172', 'Podlehnik'),
(3190, 190, '173', 'Polzela'),
(3191, 190, '174', 'Prebold'),
(3192, 190, '175', 'Prevalje'),
(3193, 190, '176', 'Razkrižje'),
(3194, 190, '177', 'Ribnica na Pohorju'),
(3195, 190, '178', 'Selnica ob Dravi'),
(3196, 190, '179', 'Sodražica'),
(3197, 190, '180', 'Solčava'),
(3198, 190, '181', 'Sveta Ana'),
(3199, 190, '182', 'Sveti Andraž v Slovenskih goricah'),
(3200, 190, '183', 'Šempeter-Vrtojba'),
(3201, 190, '184', 'Tabor'),
(3202, 190, '185', 'Trnovska vas'),
(3203, 190, '186', 'Trzin'),
(3204, 190, '187', 'Velika Polana'),
(3205, 190, '188', 'Veržej'),
(3206, 190, '189', 'Vransko'),
(3207, 190, '190', 'Žalec'),
(3208, 190, '191', 'Žetale'),
(3209, 190, '192', 'Žirovnica'),
(3210, 190, '193', 'Žužemberk'),
(3211, 190, '194', 'Šmartno pri Litiji'),
(3212, 191, 'CE', 'Central'),
(3213, 191, 'CH', 'Choiseul'),
(3214, 191, 'GC', 'Guadalcanal'),
(3215, 191, 'HO', 'Honiara'),
(3216, 191, 'IS', 'Isabel'),
(3217, 191, 'MK', 'Makira'),
(3218, 191, 'ML', 'Malaita'),
(3219, 191, 'RB', 'Rennell and Bellona'),
(3220, 191, 'TM', 'Temotu'),
(3221, 191, 'WE', 'Western'),
(3222, 192, 'AD', 'Awdal'),
(3223, 192, 'BK', 'Bakool'),
(3224, 192, 'BN', 'Banaadir'),
(3225, 192, 'BR', 'Bari'),
(3226, 192, 'BY', 'Bay'),
(3227, 192, 'GD', 'Gedo'),
(3228, 192, 'GG', 'Galguduud'),
(3229, 192, 'HR', 'Hiiraan'),
(3230, 192, 'JD', 'Jubbada Dhexe'),
(3231, 192, 'JH', 'Jubbada Hoose'),
(3232, 192, 'MD', 'Mudug'),
(3233, 192, 'NG', 'Nugaal'),
(3234, 192, 'SD', 'Shabeellaha Dhexe'),
(3235, 192, 'SG', 'Sanaag'),
(3236, 192, 'SH', 'Shabeellaha Hoose'),
(3237, 192, 'SL', 'Sool'),
(3238, 192, 'TG', 'Togdheer'),
(3239, 192, 'WG', 'Woqooyi Galbeed'),
(3240, 193, 'EC', 'Eastern Cape'),
(3241, 193, 'FS', 'Free State'),
(3242, 193, 'GT', 'Gauteng'),
(3243, 193, 'LP', 'Limpopo'),
(3244, 193, 'MP', 'Mpumalanga'),
(3245, 193, 'NC', 'Northern Cape'),
(3246, 193, 'NL', 'KwaZulu-Natal'),
(3247, 193, 'NW', 'North-West'),
(3248, 193, 'WC', 'Western Cape'),
(3249, 195, 'AN', 'Andalucía'),
(3250, 195, 'AR', 'Aragón'),
(3251, 195, 'A', 'Alicante'),
(3252, 195, 'AB', 'Albacete'),
(3253, 195, 'AL', 'Almería'),
(3254, 195, 'AN', 'Andalucía'),
(3255, 195, 'AV', 'Ávila'),
(3256, 195, 'B', 'Barcelona'),
(3257, 195, 'BA', 'Badajoz'),
(3258, 195, 'BI', 'Vizcaya'),
(3259, 195, 'BU', 'Burgos'),
(3260, 195, 'C', 'A Coruña'),
(3261, 195, 'CA', 'Cádiz'),
(3262, 195, 'CC', 'Cáceres'),
(3263, 195, 'CE', 'Ceuta'),
(3264, 195, 'CL', 'Castilla y León'),
(3265, 195, 'CM', 'Castilla-La Mancha'),
(3266, 195, 'CN', 'Islas Canarias'),
(3267, 195, 'CO', 'Córdoba'),
(3268, 195, 'CR', 'Ciudad Real'),
(3269, 195, 'CS', 'Castellón'),
(3270, 195, 'CT', 'Catalonia'),
(3271, 195, 'CU', 'Cuenca'),
(3272, 195, 'EX', 'Extremadura'),
(3273, 195, 'GA', 'Galicia'),
(3274, 195, 'GC', 'Las Palmas'),
(3275, 195, 'GI', 'Girona'),
(3276, 195, 'GR', 'Granada'),
(3277, 195, 'GU', 'Guadalajara'),
(3278, 195, 'H', 'Huelva'),
(3279, 195, 'HU', 'Huesca'),
(3280, 195, 'IB', 'Islas Baleares'),
(3281, 195, 'J', 'Jaén'),
(3282, 195, 'L', 'Lleida'),
(3283, 195, 'LE', 'León'),
(3284, 195, 'LO', 'La Rioja'),
(3285, 195, 'LU', 'Lugo'),
(3286, 195, 'M', 'Madrid'),
(3287, 195, 'MA', 'Málaga'),
(3288, 195, 'ML', 'Melilla'),
(3289, 195, 'MU', 'Murcia'),
(3290, 195, 'NA', 'Navarre'),
(3291, 195, 'O', 'Asturias'),
(3292, 195, 'OR', 'Ourense'),
(3293, 195, 'P', 'Palencia'),
(3294, 195, 'PM', 'Baleares'),
(3295, 195, 'PO', 'Pontevedra'),
(3296, 195, 'PV', 'Basque Euskadi'),
(3297, 195, 'S', 'Cantabria'),
(3298, 195, 'SA', 'Salamanca'),
(3299, 195, 'SE', 'Seville'),
(3300, 195, 'SG', 'Segovia'),
(3301, 195, 'SO', 'Soria'),
(3302, 195, 'SS', 'Guipúzcoa'),
(3303, 195, 'T', 'Tarragona'),
(3304, 195, 'TE', 'Teruel'),
(3305, 195, 'TF', 'Santa Cruz De Tenerife'),
(3306, 195, 'TO', 'Toledo'),
(3307, 195, 'V', 'Valencia'),
(3308, 195, 'VA', 'Valladolid'),
(3309, 195, 'VI', 'Álava'),
(3310, 195, 'Z', 'Zaragoza'),
(3311, 195, 'ZA', 'Zamora'),
(3312, 196, 'CE', 'Central'),
(3313, 196, 'NC', 'North Central'),
(3314, 196, 'NO', 'North'),
(3315, 196, 'EA', 'Eastern'),
(3316, 196, 'NW', 'North Western'),
(3317, 196, 'SO', 'Southern'),
(3318, 196, 'UV', 'Uva'),
(3319, 196, 'SA', 'Sabaragamuwa'),
(3320, 196, 'WE', 'Western'),
(3321, 199, 'ANL', 'أعالي النيل'),
(3322, 199, 'BAM', 'البحر الأحمر'),
(3323, 199, 'BRT', 'البحيرات');
INSERT INTO `soc_zones` (`zone_id`, `zone_country_id`, `zone_code`, `zone_name`) VALUES
(3324, 199, 'JZR', 'ولاية الجزيرة'),
(3325, 199, 'KRT', 'الخرطوم'),
(3326, 199, 'QDR', 'القضارف'),
(3327, 199, 'WDH', 'الوحدة'),
(3328, 199, 'ANB', 'النيل الأبيض'),
(3329, 199, 'ANZ', 'النيل الأزرق'),
(3330, 199, 'ASH', 'الشمالية'),
(3331, 199, 'BJA', 'الاستوائية الوسطى'),
(3332, 199, 'GIS', 'غرب الاستوائية'),
(3333, 199, 'GBG', 'غرب بحر الغزال'),
(3334, 199, 'GDA', 'غرب دارفور'),
(3335, 199, 'GKU', 'غرب كردفان'),
(3336, 199, 'JDA', 'جنوب دارفور'),
(3337, 199, 'JKU', 'جنوب كردفان'),
(3338, 199, 'JQL', 'جونقلي'),
(3339, 199, 'KSL', 'كسلا'),
(3340, 199, 'NNL', 'ولاية نهر النيل'),
(3341, 199, 'SBG', 'شمال بحر الغزال'),
(3342, 199, 'SDA', 'شمال دارفور'),
(3343, 199, 'SKU', 'شمال كردفان'),
(3344, 199, 'SIS', 'شرق الاستوائية'),
(3345, 199, 'SNR', 'سنار'),
(3346, 199, 'WRB', 'واراب'),
(3347, 200, 'BR', 'Brokopondo'),
(3348, 200, 'CM', 'Commewijne'),
(3349, 200, 'CR', 'Coronie'),
(3350, 200, 'MA', 'Marowijne'),
(3351, 200, 'NI', 'Nickerie'),
(3352, 200, 'PM', 'Paramaribo'),
(3353, 200, 'PR', 'Para'),
(3354, 200, 'SA', 'Saramacca'),
(3355, 200, 'SI', 'Sipaliwini'),
(3356, 200, 'WA', 'Wanica'),
(3357, 202, 'HH', 'Hhohho'),
(3358, 202, 'LU', 'Lubombo'),
(3359, 202, 'MA', 'Manzini'),
(3360, 202, 'SH', 'Shiselweni'),
(3361, 203, 'AB', 'Stockholms län'),
(3362, 203, 'C', 'Uppsala län'),
(3363, 203, 'D', 'Södermanlands län'),
(3364, 203, 'E', 'Östergötlands län'),
(3365, 203, 'F', 'Jönköpings län'),
(3366, 203, 'G', 'Kronobergs län'),
(3367, 203, 'H', 'Kalmar län'),
(3368, 203, 'I', 'Gotlands län'),
(3369, 203, 'K', 'Blekinge län'),
(3370, 203, 'M', 'Skåne län'),
(3371, 203, 'N', 'Hallands län'),
(3372, 203, 'O', 'Västra Götalands län'),
(3373, 203, 'S', 'Värmlands län;'),
(3374, 203, 'T', 'Örebro län'),
(3375, 203, 'U', 'Västmanlands län;'),
(3376, 203, 'W', 'Dalarnas län'),
(3377, 203, 'X', 'Gävleborgs län'),
(3378, 203, 'Y', 'Västernorrlands län'),
(3379, 203, 'Z', 'Jämtlands län'),
(3380, 203, 'AC', 'Västerbottens län'),
(3381, 203, 'BD', 'Norrbottens län'),
(3382, 204, 'ZH', 'Zürich'),
(3383, 204, 'BE', 'Bern'),
(3384, 204, 'LU', 'Luzern'),
(3385, 204, 'UR', 'Uri'),
(3386, 204, 'SZ', 'Schwyz'),
(3387, 204, 'OW', 'Obwalden'),
(3388, 204, 'NW', 'Nidwalden'),
(3389, 204, 'GL', 'Glasrus'),
(3390, 204, 'ZG', 'Zug'),
(3391, 204, 'FR', 'Fribourg'),
(3392, 204, 'SO', 'Solothurn'),
(3393, 204, 'BS', 'Basel-Stadt'),
(3394, 204, 'BL', 'Basel-Landschaft'),
(3395, 204, 'SH', 'Schaffhausen'),
(3396, 204, 'AR', 'Appenzell Ausserrhoden'),
(3397, 204, 'AI', 'Appenzell Innerrhoden'),
(3398, 204, 'SG', 'Saint Gallen'),
(3399, 204, 'GR', 'Graubünden'),
(3400, 204, 'AG', 'Aargau'),
(3401, 204, 'TG', 'Thurgau'),
(3402, 204, 'TI', 'Ticino'),
(3403, 204, 'VD', 'Vaud'),
(3404, 204, 'VS', 'Valais'),
(3405, 204, 'NE', 'Nuechâtel'),
(3406, 204, 'GE', 'Genève'),
(3407, 204, 'JU', 'Jura'),
(3408, 205, 'DI', 'دمشق'),
(3409, 205, 'DR', 'درعا'),
(3410, 205, 'DZ', 'دير الزور'),
(3411, 205, 'HA', 'الحسكة'),
(3412, 205, 'HI', 'حمص'),
(3413, 205, 'HL', 'حلب'),
(3414, 205, 'HM', 'حماه'),
(3415, 205, 'ID', 'ادلب'),
(3416, 205, 'LA', 'اللاذقية'),
(3417, 205, 'QU', 'القنيطرة'),
(3418, 205, 'RA', 'الرقة'),
(3419, 205, 'RD', 'ریف دمشق'),
(3420, 205, 'SU', 'السويداء'),
(3421, 205, 'TA', 'طرطوس'),
(3422, 206, 'CHA', '彰化縣'),
(3423, 206, 'CYI', '嘉義市'),
(3424, 206, 'CYQ', '嘉義縣'),
(3425, 206, 'HSQ', '新竹縣'),
(3426, 206, 'HSZ', '新竹市'),
(3427, 206, 'HUA', '花蓮縣'),
(3428, 206, 'ILA', '宜蘭縣'),
(3429, 206, 'KEE', '基隆市'),
(3430, 206, 'KHH', '高雄市'),
(3431, 206, 'KHQ', '高雄縣'),
(3432, 206, 'MIA', '苗栗縣'),
(3433, 206, 'NAN', '南投縣'),
(3434, 206, 'PEN', '澎湖縣'),
(3435, 206, 'PIF', '屏東縣'),
(3436, 206, 'TAO', '桃源县'),
(3437, 206, 'TNN', '台南市'),
(3438, 206, 'TNQ', '台南縣'),
(3439, 206, 'TPE', '臺北市'),
(3440, 206, 'TPQ', '臺北縣'),
(3441, 206, 'TTT', '台東縣'),
(3442, 206, 'TXG', '台中市'),
(3443, 206, 'TXQ', '台中縣'),
(3444, 206, 'YUN', '雲林縣'),
(3445, 207, 'GB', 'کوهستان بدخشان'),
(3446, 207, 'KT', 'ختلان'),
(3447, 207, 'SU', 'سغد'),
(3448, 208, '01', 'Arusha'),
(3449, 208, '02', 'Dar es Salaam'),
(3450, 208, '03', 'Dodoma'),
(3451, 208, '04', 'Iringa'),
(3452, 208, '05', 'Kagera'),
(3453, 208, '06', 'Pemba Sever'),
(3454, 208, '07', 'Zanzibar Sever'),
(3455, 208, '08', 'Kigoma'),
(3456, 208, '09', 'Kilimanjaro'),
(3457, 208, '10', 'Pemba Jih'),
(3458, 208, '11', 'Zanzibar Jih'),
(3459, 208, '12', 'Lindi'),
(3460, 208, '13', 'Mara'),
(3461, 208, '14', 'Mbeya'),
(3462, 208, '15', 'Zanzibar Západ'),
(3463, 208, '16', 'Morogoro'),
(3464, 208, '17', 'Mtwara'),
(3465, 208, '18', 'Mwanza'),
(3466, 208, '19', 'Pwani'),
(3467, 208, '20', 'Rukwa'),
(3468, 208, '21', 'Ruvuma'),
(3469, 208, '22', 'Shinyanga'),
(3470, 208, '23', 'Singida'),
(3471, 208, '24', 'Tabora'),
(3472, 208, '25', 'Tanga'),
(3473, 208, '26', 'Manyara'),
(3474, 209, 'TH-10', 'กรุงเทพมหานคร'),
(3475, 209, 'TH-11', 'สมุทรปราการ'),
(3476, 209, 'TH-12', 'นนทบุรี'),
(3477, 209, 'TH-13', 'ปทุมธานี'),
(3478, 209, 'TH-14', 'พระนครศรีอยุธยา'),
(3479, 209, 'TH-15', 'อ่างทอง'),
(3480, 209, 'TH-16', 'ลพบุรี'),
(3481, 209, 'TH-17', 'สิงห์บุรี'),
(3482, 209, 'TH-18', 'ชัยนาท'),
(3483, 209, 'TH-19', 'สระบุรี'),
(3484, 209, 'TH-20', 'ชลบุรี'),
(3485, 209, 'TH-21', 'ระยอง'),
(3486, 209, 'TH-22', 'จันทบุรี'),
(3487, 209, 'TH-23', 'ตราด'),
(3488, 209, 'TH-24', 'ฉะเชิงเทรา'),
(3489, 209, 'TH-25', 'ปราจีนบุรี'),
(3490, 209, 'TH-26', 'นครนายก'),
(3491, 209, 'TH-27', 'สระแก้ว'),
(3492, 209, 'TH-30', 'นครราชสีมา'),
(3493, 209, 'TH-31', 'บุรีรัมย์'),
(3494, 209, 'TH-32', 'สุรินทร์'),
(3495, 209, 'TH-33', 'ศรีสะเกษ'),
(3496, 209, 'TH-34', 'อุบลราชธานี'),
(3497, 209, 'TH-35', 'ยโสธร'),
(3498, 209, 'TH-36', 'ชัยภูมิ'),
(3499, 209, 'TH-37', 'อำนาจเจริญ'),
(3500, 209, 'TH-39', 'หนองบัวลำภู'),
(3501, 209, 'TH-40', 'ขอนแก่น'),
(3502, 209, 'TH-41', 'อุดรธานี'),
(3503, 209, 'TH-42', 'เลย'),
(3504, 209, 'TH-43', 'หนองคาย'),
(3505, 209, 'TH-44', 'มหาสารคาม'),
(3506, 209, 'TH-45', 'ร้อยเอ็ด'),
(3507, 209, 'TH-46', 'กาฬสินธุ์'),
(3508, 209, 'TH-47', 'สกลนคร'),
(3509, 209, 'TH-48', 'นครพนม'),
(3510, 209, 'TH-49', 'มุกดาหาร'),
(3511, 209, 'TH-50', 'เชียงใหม่'),
(3512, 209, 'TH-51', 'ลำพูน'),
(3513, 209, 'TH-52', 'ลำปาง'),
(3514, 209, 'TH-53', 'อุตรดิตถ์'),
(3515, 209, 'TH-55', 'น่าน'),
(3516, 209, 'TH-56', 'พะเยา'),
(3517, 209, 'TH-57', 'เชียงราย'),
(3518, 209, 'TH-58', 'แม่ฮ่องสอน'),
(3519, 209, 'TH-60', 'นครสวรรค์'),
(3520, 209, 'TH-61', 'อุทัยธานี'),
(3521, 209, 'TH-62', 'กำแพงเพชร'),
(3522, 209, 'TH-63', 'ตาก'),
(3523, 209, 'TH-64', 'สุโขทัย'),
(3524, 209, 'TH-66', 'ชุมพร'),
(3525, 209, 'TH-67', 'พิจิตร'),
(3526, 209, 'TH-70', 'ราชบุรี'),
(3527, 209, 'TH-71', 'กาญจนบุรี'),
(3528, 209, 'TH-72', 'สุพรรณบุรี'),
(3529, 209, 'TH-73', 'นครปฐม'),
(3530, 209, 'TH-74', 'สมุทรสาคร'),
(3531, 209, 'TH-75', 'สมุทรสงคราม'),
(3532, 209, 'TH-76', 'เพชรบุรี'),
(3533, 209, 'TH-77', 'ประจวบคีรีขันธ์'),
(3534, 209, 'TH-80', 'นครศรีธรรมราช'),
(3535, 209, 'TH-81', 'กระบี่'),
(3536, 209, 'TH-82', 'พังงา'),
(3537, 209, 'TH-83', 'ภูเก็ต'),
(3538, 209, 'TH-84', 'สุราษฎร์ธานี'),
(3539, 209, 'TH-85', 'ระนอง'),
(3540, 209, 'TH-86', 'ชุมพร'),
(3541, 209, 'TH-90', 'สงขลา'),
(3542, 209, 'TH-91', 'สตูล'),
(3543, 209, 'TH-92', 'ตรัง'),
(3544, 209, 'TH-93', 'พัทลุง'),
(3545, 209, 'TH-94', 'ปัตตานี'),
(3546, 209, 'TH-95', 'ยะลา'),
(3547, 209, 'TH-96', 'นราธิวาส'),
(3548, 210, 'C', 'Centrale'),
(3549, 210, 'K', 'Kara'),
(3550, 210, 'M', 'Maritime'),
(3551, 210, 'P', 'Plateaux'),
(3552, 210, 'S', 'Savanes'),
(3553, 211, 'A', 'Atafu'),
(3554, 211, 'F', 'Fakaofo'),
(3555, 211, 'N', 'Nukunonu'),
(3556, 212, 'H', 'Ha''apai'),
(3557, 212, 'T', 'Tongatapu'),
(3558, 212, 'V', 'Vava''u'),
(3559, 213, 'ARI', 'Arima'),
(3560, 213, 'CHA', 'Chaguanas'),
(3561, 213, 'CTT', 'Couva-Tabaquite-Talparo'),
(3562, 213, 'DMN', 'Diego Martin'),
(3563, 213, 'ETO', 'Eastern Tobago'),
(3564, 213, 'RCM', 'Rio Claro-Mayaro'),
(3565, 213, 'PED', 'Penal-Debe'),
(3566, 213, 'PTF', 'Point Fortin'),
(3567, 213, 'POS', 'Port of Spain'),
(3568, 213, 'PRT', 'Princes Town'),
(3569, 213, 'SFO', 'San Fernando'),
(3570, 213, 'SGE', 'Sangre Grande'),
(3571, 213, 'SJL', 'San Juan-Laventille'),
(3572, 213, 'SIP', 'Siparia'),
(3573, 213, 'TUP', 'Tunapuna-Piarco'),
(3574, 213, 'WTO', 'Western Tobago'),
(3575, 214, '11', 'ولاية تونس'),
(3576, 214, '12', 'ولاية أريانة'),
(3577, 214, '13', 'ولاية بن عروس'),
(3578, 214, '14', 'ولاية منوبة'),
(3579, 214, '21', 'ولاية نابل'),
(3580, 214, '22', 'ولاية زغوان'),
(3581, 214, '23', 'ولاية بنزرت'),
(3582, 214, '31', 'ولاية باجة'),
(3583, 214, '32', 'ولاية جندوبة'),
(3584, 214, '33', 'ولاية الكاف'),
(3585, 214, '34', 'ولاية سليانة'),
(3586, 214, '41', 'ولاية القيروان'),
(3587, 214, '42', 'ولاية القصرين'),
(3588, 214, '43', 'ولاية سيدي بوزيد'),
(3589, 214, '51', 'ولاية سوسة'),
(3590, 214, '52', 'ولاية المنستير'),
(3591, 214, '53', 'ولاية المهدية'),
(3592, 214, '61', 'ولاية صفاقس'),
(3593, 214, '71', 'ولاية قفصة'),
(3594, 214, '72', 'ولاية توزر'),
(3595, 214, '73', 'ولاية قبلي'),
(3596, 214, '81', 'ولاية قابس'),
(3597, 214, '82', 'ولاية مدنين'),
(3598, 214, '83', 'ولاية تطاوين'),
(3599, 215, '01', 'Adana'),
(3600, 215, '02', 'Adıyaman'),
(3601, 215, '03', 'Afyonkarahisar'),
(3602, 215, '04', 'Ağrı'),
(3603, 215, '05', 'Amasya'),
(3604, 215, '06', 'Ankara'),
(3605, 215, '07', 'Antalya'),
(3606, 215, '08', 'Artvin'),
(3607, 215, '09', 'Aydın'),
(3608, 215, '10', 'Balıkesir'),
(3609, 215, '11', 'Bilecik'),
(3610, 215, '12', 'Bingöl'),
(3611, 215, '13', 'Bitlis'),
(3612, 215, '14', 'Bolu'),
(3613, 215, '15', 'Burdur'),
(3614, 215, '16', 'Bursa'),
(3615, 215, '17', 'Çanakkale'),
(3616, 215, '18', 'Çankırı'),
(3617, 215, '19', 'Çorum'),
(3618, 215, '20', 'Denizli'),
(3619, 215, '21', 'Diyarbakır'),
(3620, 215, '22', 'Edirne'),
(3621, 215, '23', 'Elazığ'),
(3622, 215, '24', 'Erzincan'),
(3623, 215, '25', 'Erzurum'),
(3624, 215, '26', 'Eskişehir'),
(3625, 215, '27', 'Gaziantep'),
(3626, 215, '28', 'Giresun'),
(3627, 215, '29', 'Gümüşhane'),
(3628, 215, '30', 'Hakkari'),
(3629, 215, '31', 'Hatay'),
(3630, 215, '32', 'Isparta'),
(3631, 215, '33', 'Mersin'),
(3632, 215, '34', 'İstanbul'),
(3633, 215, '35', 'İzmir'),
(3634, 215, '36', 'Kars'),
(3635, 215, '37', 'Kastamonu'),
(3636, 215, '38', 'Kayseri'),
(3637, 215, '39', 'Kırklareli'),
(3638, 215, '40', 'Kırşehir'),
(3639, 215, '41', 'Kocaeli'),
(3640, 215, '42', 'Konya'),
(3641, 215, '43', 'Kütahya'),
(3642, 215, '44', 'Malatya'),
(3643, 215, '45', 'Manisa'),
(3644, 215, '46', 'Kahramanmaraş'),
(3645, 215, '47', 'Mardin'),
(3646, 215, '48', 'Muğla'),
(3647, 215, '49', 'Muş'),
(3648, 215, '50', 'Nevşehir'),
(3649, 215, '51', 'Niğde'),
(3650, 215, '52', 'Ordu'),
(3651, 215, '53', 'Rize'),
(3652, 215, '54', 'Sakarya'),
(3653, 215, '55', 'Samsun'),
(3654, 215, '56', 'Siirt'),
(3655, 215, '57', 'Sinop'),
(3656, 215, '58', 'Sivas'),
(3657, 215, '59', 'Tekirdağ'),
(3658, 215, '60', 'Tokat'),
(3659, 215, '61', 'Trabzon'),
(3660, 215, '62', 'Tunceli'),
(3661, 215, '63', 'Şanlıurfa'),
(3662, 215, '64', 'Uşak'),
(3663, 215, '65', 'Van'),
(3664, 215, '66', 'Yozgat'),
(3665, 215, '67', 'Zonguldak'),
(3666, 215, '68', 'Aksaray'),
(3667, 215, '69', 'Bayburt'),
(3668, 215, '70', 'Karaman'),
(3669, 215, '71', 'Kırıkkale'),
(3670, 215, '72', 'Batman'),
(3671, 215, '73', 'Şırnak'),
(3672, 215, '74', 'Bartın'),
(3673, 215, '75', 'Ardahan'),
(3674, 215, '76', 'Iğdır'),
(3675, 215, '77', 'Yalova'),
(3676, 215, '78', 'Karabük'),
(3677, 215, '79', 'Kilis'),
(3678, 215, '80', 'Osmaniye'),
(3679, 215, '81', 'Düzce'),
(3680, 216, 'A', 'Ahal welaýaty'),
(3681, 216, 'B', 'Balkan welaýaty'),
(3682, 216, 'D', 'Daşoguz welaýaty'),
(3683, 216, 'L', 'Lebap welaýaty'),
(3684, 216, 'M', 'Mary welaýaty'),
(3685, 217, 'AC', 'Ambergris Cays'),
(3686, 217, 'DC', 'Dellis Cay'),
(3687, 217, 'FC', 'French Cay'),
(3688, 217, 'LW', 'Little Water Cay'),
(3689, 217, 'RC', 'Parrot Cay'),
(3690, 217, 'PN', 'Pine Cay'),
(3691, 217, 'SL', 'Salt Cay'),
(3692, 217, 'GT', 'Grand Turk'),
(3693, 217, 'SC', 'South Caicos'),
(3694, 217, 'EC', 'East Caicos'),
(3695, 217, 'MC', 'Middle Caicos'),
(3696, 217, 'NC', 'North Caicos'),
(3697, 217, 'PR', 'Providenciales'),
(3698, 217, 'WC', 'West Caicos'),
(3699, 218, 'FUN', 'Funafuti'),
(3700, 218, 'NMA', 'Nanumea'),
(3701, 218, 'NMG', 'Nanumanga'),
(3702, 218, 'NIT', 'Niutao'),
(3703, 218, 'NIU', 'Nui'),
(3704, 218, 'NKF', 'Nukufetau'),
(3705, 218, 'NKL', 'Nukulaelae'),
(3706, 218, 'VAI', 'Vaitupu'),
(3707, 219, '101', 'Kalangala'),
(3708, 219, '102', 'Kampala'),
(3709, 219, '103', 'Kiboga'),
(3710, 219, '104', 'Luwero'),
(3711, 219, '105', 'Masaka'),
(3712, 219, '106', 'Mpigi'),
(3713, 219, '107', 'Mubende'),
(3714, 219, '108', 'Mukono'),
(3715, 219, '109', 'Nakasongola'),
(3716, 219, '110', 'Rakai'),
(3717, 219, '111', 'Sembabule'),
(3718, 219, '112', 'Kayunga'),
(3719, 219, '113', 'Wakiso'),
(3720, 219, '201', 'Bugiri'),
(3721, 219, '202', 'Busia'),
(3722, 219, '203', 'Iganga'),
(3723, 219, '204', 'Jinja'),
(3724, 219, '205', 'Kamuli'),
(3725, 219, '206', 'Kapchorwa'),
(3726, 219, '207', 'Katakwi'),
(3727, 219, '208', 'Kumi'),
(3728, 219, '209', 'Mbale'),
(3729, 219, '210', 'Pallisa'),
(3730, 219, '211', 'Soroti'),
(3731, 219, '212', 'Tororo'),
(3732, 219, '213', 'Kaberamaido'),
(3733, 219, '214', 'Mayuge'),
(3734, 219, '215', 'Sironko'),
(3735, 219, '301', 'Adjumani'),
(3736, 219, '302', 'Apac'),
(3737, 219, '303', 'Arua'),
(3738, 219, '304', 'Gulu'),
(3739, 219, '305', 'Kitgum'),
(3740, 219, '306', 'Kotido'),
(3741, 219, '307', 'Lira'),
(3742, 219, '308', 'Moroto'),
(3743, 219, '309', 'Moyo'),
(3744, 219, '310', 'Nebbi'),
(3745, 219, '311', 'Nakapiripirit'),
(3746, 219, '312', 'Pader'),
(3747, 219, '313', 'Yumbe'),
(3748, 219, '401', 'Bundibugyo'),
(3749, 219, '402', 'Bushenyi'),
(3750, 219, '403', 'Hoima'),
(3751, 219, '404', 'Kabale'),
(3752, 219, '405', 'Kabarole'),
(3753, 219, '406', 'Kasese'),
(3754, 219, '407', 'Kibale'),
(3755, 219, '408', 'Kisoro'),
(3756, 219, '409', 'Masindi'),
(3757, 219, '410', 'Mbarara'),
(3758, 219, '411', 'Ntungamo'),
(3759, 219, '412', 'Rukungiri'),
(3760, 219, '413', 'Kamwenge'),
(3761, 219, '414', 'Kanungu'),
(3762, 219, '415', 'Kyenjojo'),
(3763, 220, '05', 'Вінницька область'),
(3764, 220, '07', 'Волинська область'),
(3765, 220, '09', 'Луганська область'),
(3766, 220, '12', 'Дніпропетровська область'),
(3767, 220, '14', 'Донецька область'),
(3768, 220, '18', 'Житомирська область'),
(3769, 220, '19', 'Рівненська область'),
(3770, 220, '21', 'Закарпатська область'),
(3771, 220, '23', 'Запорізька область'),
(3772, 220, '26', 'Івано-Франківська область'),
(3773, 220, '30', 'Київ'),
(3774, 220, '32', 'Київська область'),
(3775, 220, '35', 'Кіровоградська область'),
(3776, 220, '40', 'Севастополь'),
(3777, 220, '43', 'Автономная Республика Крым'),
(3778, 220, '46', 'Львівська область'),
(3779, 220, '48', 'Миколаївська область'),
(3780, 220, '51', 'Одеська область'),
(3781, 220, '53', 'Полтавська область'),
(3782, 220, '59', 'Сумська область'),
(3783, 220, '61', 'Тернопільська область'),
(3784, 220, '63', 'Харківська область'),
(3785, 220, '65', 'Херсонська область'),
(3786, 220, '68', 'Хмельницька область'),
(3787, 220, '71', 'Черкаська область'),
(3788, 220, '74', 'Чернігівська область'),
(3789, 220, '77', 'Чернівецька область'),
(3790, 222, 'ABD', 'Aberdeenshire'),
(3791, 222, 'ABE', 'Aberdeen'),
(3792, 222, 'AGB', 'Argyll and Bute'),
(3793, 222, 'AGY', 'Isle of Anglesey'),
(3794, 222, 'ANS', 'Angus'),
(3795, 222, 'ANT', 'Antrim'),
(3796, 222, 'ARD', 'Ards'),
(3797, 222, 'ARM', 'Armagh'),
(3798, 222, 'BAS', 'Bath and North East Somerset'),
(3799, 222, 'BBD', 'Blackburn with Darwen'),
(3800, 222, 'BDF', 'Bedfordshire'),
(3801, 222, 'BDG', 'Barking and Dagenham'),
(3802, 222, 'BEN', 'Brent'),
(3803, 222, 'BEX', 'Bexley'),
(3804, 222, 'BFS', 'Belfast'),
(3805, 222, 'BGE', 'Bridgend'),
(3806, 222, 'BGW', 'Blaenau Gwent'),
(3807, 222, 'BIR', 'Birmingham'),
(3808, 222, 'BKM', 'Buckinghamshire'),
(3809, 222, 'BLA', 'Ballymena'),
(3810, 222, 'BLY', 'Ballymoney'),
(3811, 222, 'BMH', 'Bournemouth'),
(3812, 222, 'BNB', 'Banbridge'),
(3813, 222, 'BNE', 'Barnet'),
(3814, 222, 'BNH', 'Brighton and Hove'),
(3815, 222, 'BNS', 'Barnsley'),
(3816, 222, 'BOL', 'Bolton'),
(3817, 222, 'BPL', 'Blackpool'),
(3818, 222, 'BRC', 'Bracknell'),
(3819, 222, 'BRD', 'Bradford'),
(3820, 222, 'BRY', 'Bromley'),
(3821, 222, 'BST', 'Bristol'),
(3822, 222, 'BUR', 'Bury'),
(3823, 222, 'CAM', 'Cambridgeshire'),
(3824, 222, 'CAY', 'Caerphilly'),
(3825, 222, 'CGN', 'Ceredigion'),
(3826, 222, 'CGV', 'Craigavon'),
(3827, 222, 'CHS', 'Cheshire'),
(3828, 222, 'CKF', 'Carrickfergus'),
(3829, 222, 'CKT', 'Cookstown'),
(3830, 222, 'CLD', 'Calderdale'),
(3831, 222, 'CLK', 'Clackmannanshire'),
(3832, 222, 'CLR', 'Coleraine'),
(3833, 222, 'CMA', 'Cumbria'),
(3834, 222, 'CMD', 'Camden'),
(3835, 222, 'CMN', 'Carmarthenshire'),
(3836, 222, 'CON', 'Cornwall'),
(3837, 222, 'COV', 'Coventry'),
(3838, 222, 'CRF', 'Cardiff'),
(3839, 222, 'CRY', 'Croydon'),
(3840, 222, 'CSR', 'Castlereagh'),
(3841, 222, 'CWY', 'Conwy'),
(3842, 222, 'DAL', 'Darlington'),
(3843, 222, 'DBY', 'Derbyshire'),
(3844, 222, 'DEN', 'Denbighshire'),
(3845, 222, 'DER', 'Derby'),
(3846, 222, 'DEV', 'Devon'),
(3847, 222, 'DGN', 'Dungannon and South Tyrone'),
(3848, 222, 'DGY', 'Dumfries and Galloway'),
(3849, 222, 'DNC', 'Doncaster'),
(3850, 222, 'DND', 'Dundee'),
(3851, 222, 'DOR', 'Dorset'),
(3852, 222, 'DOW', 'Down'),
(3853, 222, 'DRY', 'Derry'),
(3854, 222, 'DUD', 'Dudley'),
(3855, 222, 'DUR', 'Durham'),
(3856, 222, 'EAL', 'Ealing'),
(3857, 222, 'EAY', 'East Ayrshire'),
(3858, 222, 'EDH', 'Edinburgh'),
(3859, 222, 'EDU', 'East Dunbartonshire'),
(3860, 222, 'ELN', 'East Lothian'),
(3861, 222, 'ELS', 'Eilean Siar'),
(3862, 222, 'ENF', 'Enfield'),
(3863, 222, 'ERW', 'East Renfrewshire'),
(3864, 222, 'ERY', 'East Riding of Yorkshire'),
(3865, 222, 'ESS', 'Essex'),
(3866, 222, 'ESX', 'East Sussex'),
(3867, 222, 'FAL', 'Falkirk'),
(3868, 222, 'FER', 'Fermanagh'),
(3869, 222, 'FIF', 'Fife'),
(3870, 222, 'FLN', 'Flintshire'),
(3871, 222, 'GAT', 'Gateshead'),
(3872, 222, 'GLG', 'Glasgow'),
(3873, 222, 'GLS', 'Gloucestershire'),
(3874, 222, 'GRE', 'Greenwich'),
(3875, 222, 'GSY', 'Guernsey'),
(3876, 222, 'GWN', 'Gwynedd'),
(3877, 222, 'HAL', 'Halton'),
(3878, 222, 'HAM', 'Hampshire'),
(3879, 222, 'HAV', 'Havering'),
(3880, 222, 'HCK', 'Hackney'),
(3881, 222, 'HEF', 'Herefordshire'),
(3882, 222, 'HIL', 'Hillingdon'),
(3883, 222, 'HLD', 'Highland'),
(3884, 222, 'HMF', 'Hammersmith and Fulham'),
(3885, 222, 'HNS', 'Hounslow'),
(3886, 222, 'HPL', 'Hartlepool'),
(3887, 222, 'HRT', 'Hertfordshire'),
(3888, 222, 'HRW', 'Harrow'),
(3889, 222, 'HRY', 'Haringey'),
(3890, 222, 'IOS', 'Isles of Scilly'),
(3891, 222, 'IOW', 'Isle of Wight'),
(3892, 222, 'ISL', 'Islington'),
(3893, 222, 'IVC', 'Inverclyde'),
(3894, 222, 'JSY', 'Jersey'),
(3895, 222, 'KEC', 'Kensington and Chelsea'),
(3896, 222, 'KEN', 'Kent'),
(3897, 222, 'KHL', 'Kingston upon Hull'),
(3898, 222, 'KIR', 'Kirklees'),
(3899, 222, 'KTT', 'Kingston upon Thames'),
(3900, 222, 'KWL', 'Knowsley'),
(3901, 222, 'LAN', 'Lancashire'),
(3902, 222, 'LBH', 'Lambeth'),
(3903, 222, 'LCE', 'Leicester'),
(3904, 222, 'LDS', 'Leeds'),
(3905, 222, 'LEC', 'Leicestershire'),
(3906, 222, 'LEW', 'Lewisham'),
(3907, 222, 'LIN', 'Lincolnshire'),
(3908, 222, 'LIV', 'Liverpool'),
(3909, 222, 'LMV', 'Limavady'),
(3910, 222, 'LND', 'London'),
(3911, 222, 'LRN', 'Larne'),
(3912, 222, 'LSB', 'Lisburn'),
(3913, 222, 'LUT', 'Luton'),
(3914, 222, 'MAN', 'Manchester'),
(3915, 222, 'MDB', 'Middlesbrough'),
(3916, 222, 'MDW', 'Medway'),
(3917, 222, 'MFT', 'Magherafelt'),
(3918, 222, 'MIK', 'Milton Keynes'),
(3919, 222, 'MLN', 'Midlothian'),
(3920, 222, 'MON', 'Monmouthshire'),
(3921, 222, 'MRT', 'Merton'),
(3922, 222, 'MRY', 'Moray'),
(3923, 222, 'MTY', 'Merthyr Tydfil'),
(3924, 222, 'MYL', 'Moyle'),
(3925, 222, 'NAY', 'North Ayrshire'),
(3926, 222, 'NBL', 'Northumberland'),
(3927, 222, 'NDN', 'North Down'),
(3928, 222, 'NEL', 'North East Lincolnshire'),
(3929, 222, 'NET', 'Newcastle upon Tyne'),
(3930, 222, 'NFK', 'Norfolk'),
(3931, 222, 'NGM', 'Nottingham'),
(3932, 222, 'NLK', 'North Lanarkshire'),
(3933, 222, 'NLN', 'North Lincolnshire'),
(3934, 222, 'NSM', 'North Somerset'),
(3935, 222, 'NTA', 'Newtownabbey'),
(3936, 222, 'NTH', 'Northamptonshire'),
(3937, 222, 'NTL', 'Neath Port Talbot'),
(3938, 222, 'NTT', 'Nottinghamshire'),
(3939, 222, 'NTY', 'North Tyneside'),
(3940, 222, 'NWM', 'Newham'),
(3941, 222, 'NWP', 'Newport'),
(3942, 222, 'NYK', 'North Yorkshire'),
(3943, 222, 'NYM', 'Newry and Mourne'),
(3944, 222, 'OLD', 'Oldham'),
(3945, 222, 'OMH', 'Omagh'),
(3946, 222, 'ORK', 'Orkney Islands'),
(3947, 222, 'OXF', 'Oxfordshire'),
(3948, 222, 'PEM', 'Pembrokeshire'),
(3949, 222, 'PKN', 'Perth and Kinross'),
(3950, 222, 'PLY', 'Plymouth'),
(3951, 222, 'POL', 'Poole'),
(3952, 222, 'POR', 'Portsmouth'),
(3953, 222, 'POW', 'Powys'),
(3954, 222, 'PTE', 'Peterborough'),
(3955, 222, 'RCC', 'Redcar and Cleveland'),
(3956, 222, 'RCH', 'Rochdale'),
(3957, 222, 'RCT', 'Rhondda Cynon Taf'),
(3958, 222, 'RDB', 'Redbridge'),
(3959, 222, 'RDG', 'Reading'),
(3960, 222, 'RFW', 'Renfrewshire'),
(3961, 222, 'RIC', 'Richmond upon Thames'),
(3962, 222, 'ROT', 'Rotherham'),
(3963, 222, 'RUT', 'Rutland'),
(3964, 222, 'SAW', 'Sandwell'),
(3965, 222, 'SAY', 'South Ayrshire'),
(3966, 222, 'SCB', 'Scottish Borders'),
(3967, 222, 'SFK', 'Suffolk'),
(3968, 222, 'SFT', 'Sefton'),
(3969, 222, 'SGC', 'South Gloucestershire'),
(3970, 222, 'SHF', 'Sheffield'),
(3971, 222, 'SHN', 'Saint Helens'),
(3972, 222, 'SHR', 'Shropshire'),
(3973, 222, 'SKP', 'Stockport'),
(3974, 222, 'SLF', 'Salford'),
(3975, 222, 'SLG', 'Slough'),
(3976, 222, 'SLK', 'South Lanarkshire'),
(3977, 222, 'SND', 'Sunderland'),
(3978, 222, 'SOL', 'Solihull'),
(3979, 222, 'SOM', 'Somerset'),
(3980, 222, 'SOS', 'Southend-on-Sea'),
(3981, 222, 'SRY', 'Surrey'),
(3982, 222, 'STB', 'Strabane'),
(3983, 222, 'STE', 'Stoke-on-Trent'),
(3984, 222, 'STG', 'Stirling'),
(3985, 222, 'STH', 'Southampton'),
(3986, 222, 'STN', 'Sutton'),
(3987, 222, 'STS', 'Staffordshire'),
(3988, 222, 'STT', 'Stockton-on-Tees'),
(3989, 222, 'STY', 'South Tyneside'),
(3990, 222, 'SWA', 'Swansea'),
(3991, 222, 'SWD', 'Swindon'),
(3992, 222, 'SWK', 'Southwark'),
(3993, 222, 'TAM', 'Tameside'),
(3994, 222, 'TFW', 'Telford and Wrekin'),
(3995, 222, 'THR', 'Thurrock'),
(3996, 222, 'TOB', 'Torbay'),
(3997, 222, 'TOF', 'Torfaen'),
(3998, 222, 'TRF', 'Trafford'),
(3999, 222, 'TWH', 'Tower Hamlets'),
(4000, 222, 'VGL', 'Vale of Glamorgan'),
(4001, 222, 'WAR', 'Warwickshire'),
(4002, 222, 'WBK', 'West Berkshire'),
(4003, 222, 'WDU', 'West Dunbartonshire'),
(4004, 222, 'WFT', 'Waltham Forest'),
(4005, 222, 'WGN', 'Wigan'),
(4006, 222, 'WIL', 'Wiltshire'),
(4007, 222, 'WKF', 'Wakefield'),
(4008, 222, 'WLL', 'Walsall'),
(4009, 222, 'WLN', 'West Lothian'),
(4010, 222, 'WLV', 'Wolverhampton'),
(4011, 222, 'WNM', 'Windsor and Maidenhead'),
(4012, 222, 'WOK', 'Wokingham'),
(4013, 222, 'WOR', 'Worcestershire'),
(4014, 222, 'WRL', 'Wirral'),
(4015, 222, 'WRT', 'Warrington'),
(4016, 222, 'WRX', 'Wrexham'),
(4017, 222, 'WSM', 'Westminster'),
(4018, 222, 'WSX', 'West Sussex'),
(4019, 222, 'YOR', 'Yorkshire'),
(4020, 222, 'ZET', 'Shetland Islands'),
(4021, 223, 'AK', 'Alaska'),
(4022, 223, 'AL', 'Alabama'),
(4023, 223, 'AS', 'American Samoa'),
(4024, 223, 'AR', 'Arkansas'),
(4025, 223, 'AZ', 'Arizona'),
(4026, 223, 'CA', 'California'),
(4027, 223, 'CO', 'Colorado'),
(4028, 223, 'CT', 'Connecticut'),
(4029, 223, 'DC', 'District of Columbia'),
(4030, 223, 'DE', 'Delaware'),
(4031, 223, 'FL', 'Florida'),
(4032, 223, 'GA', 'Georgia'),
(4033, 223, 'GU', 'Guam'),
(4034, 223, 'HI', 'Hawaii'),
(4035, 223, 'IA', 'Iowa'),
(4036, 223, 'ID', 'Idaho'),
(4037, 223, 'IL', 'Illinois'),
(4038, 223, 'IN', 'Indiana'),
(4039, 223, 'KS', 'Kansas'),
(4040, 223, 'KY', 'Kentucky'),
(4041, 223, 'LA', 'Louisiana'),
(4042, 223, 'MA', 'Massachusetts'),
(4043, 223, 'MD', 'Maryland'),
(4044, 223, 'ME', 'Maine'),
(4045, 223, 'MI', 'Michigan'),
(4046, 223, 'MN', 'Minnesota'),
(4047, 223, 'MO', 'Missouri'),
(4048, 223, 'MS', 'Mississippi'),
(4049, 223, 'MT', 'Montana'),
(4050, 223, 'NC', 'North Carolina'),
(4051, 223, 'ND', 'North Dakota'),
(4052, 223, 'NE', 'Nebraska'),
(4053, 223, 'NH', 'New Hampshire'),
(4054, 223, 'NJ', 'New Jersey'),
(4055, 223, 'NM', 'New Mexico'),
(4056, 223, 'NV', 'Nevada'),
(4057, 223, 'NY', 'New York'),
(4058, 223, 'MP', 'Northern Mariana Islands'),
(4059, 223, 'OH', 'Ohio'),
(4060, 223, 'OK', 'Oklahoma'),
(4061, 223, 'OR', 'Oregon'),
(4062, 223, 'PA', 'Pennsylvania'),
(4063, 223, 'PR', 'Puerto Rico'),
(4064, 223, 'RI', 'Rhode Island'),
(4065, 223, 'SC', 'South Carolina'),
(4066, 223, 'SD', 'South Dakota'),
(4067, 223, 'TN', 'Tennessee'),
(4068, 223, 'TX', 'Texas'),
(4069, 223, 'UM', 'U.S. Minor Outlying Islands'),
(4070, 223, 'UT', 'Utah'),
(4071, 223, 'VA', 'Virginia'),
(4072, 223, 'VI', 'Virgin Islands of the U.S.'),
(4073, 223, 'VT', 'Vermont'),
(4074, 223, 'WA', 'Washington'),
(4075, 223, 'WI', 'Wisconsin'),
(4076, 223, 'WV', 'West Virginia'),
(4077, 223, 'WY', 'Wyoming'),
(4078, 224, 'BI', 'Baker Island'),
(4079, 224, 'HI', 'Howland Island'),
(4080, 224, 'JI', 'Jarvis Island'),
(4081, 224, 'JA', 'Johnston Atoll'),
(4082, 224, 'KR', 'Kingman Reef'),
(4083, 224, 'MA', 'Midway Atoll'),
(4084, 224, 'NI', 'Navassa Island'),
(4085, 224, 'PA', 'Palmyra Atoll'),
(4086, 224, 'WI', 'Wake Island'),
(4087, 225, 'AR', 'Artigas'),
(4088, 225, 'CA', 'Canelones'),
(4089, 225, 'CL', 'Cerro Largo'),
(4090, 225, 'CO', 'Colonia'),
(4091, 225, 'DU', 'Durazno'),
(4092, 225, 'FD', 'Florida'),
(4093, 225, 'FS', 'Flores'),
(4094, 225, 'LA', 'Lavalleja'),
(4095, 225, 'MA', 'Maldonado'),
(4096, 225, 'MO', 'Montevideo'),
(4097, 225, 'PA', 'Paysandu'),
(4098, 225, 'RN', 'Río Negro'),
(4099, 225, 'RO', 'Rocha'),
(4100, 225, 'RV', 'Rivera'),
(4101, 225, 'SA', 'Salto'),
(4102, 225, 'SJ', 'San José'),
(4103, 225, 'SO', 'Soriano'),
(4104, 225, 'TA', 'Tacuarembó'),
(4105, 225, 'TT', 'Treinta y Tres'),
(4106, 226, 'AN', 'Andijon viloyati'),
(4107, 226, 'BU', 'Buxoro viloyati'),
(4108, 226, 'FA', 'Farg''ona viloyati'),
(4109, 226, 'JI', 'Jizzax viloyati'),
(4110, 226, 'NG', 'Namangan viloyati'),
(4111, 226, 'NW', 'Navoiy viloyati'),
(4112, 226, 'QA', 'Qashqadaryo viloyati'),
(4113, 226, 'QR', 'Qoraqalpog''iston Respublikasi'),
(4114, 226, 'SA', 'Samarqand viloyati'),
(4115, 226, 'SI', 'Sirdaryo viloyati'),
(4116, 226, 'SU', 'Surxondaryo viloyati'),
(4117, 226, 'TK', 'Toshkent'),
(4118, 226, 'TO', 'Toshkent viloyati'),
(4119, 226, 'XO', 'Xorazm viloyati'),
(4120, 227, 'MAP', 'Malampa'),
(4121, 227, 'PAM', 'Pénama'),
(4122, 227, 'SAM', 'Sanma'),
(4123, 227, 'SEE', 'Shéfa'),
(4124, 227, 'TAE', 'Taféa'),
(4125, 227, 'TOB', 'Torba'),
(4126, 229, 'A', 'Distrito Capital'),
(4127, 229, 'B', 'Anzoátegui'),
(4128, 229, 'C', 'Apure'),
(4129, 229, 'D', 'Aragua'),
(4130, 229, 'E', 'Barinas'),
(4131, 229, 'F', 'Bolívar'),
(4132, 229, 'G', 'Carabobo'),
(4133, 229, 'H', 'Cojedes'),
(4134, 229, 'I', 'Falcón'),
(4135, 229, 'J', 'Guárico'),
(4136, 229, 'K', 'Lara'),
(4137, 229, 'L', 'Mérida'),
(4138, 229, 'M', 'Miranda'),
(4139, 229, 'N', 'Monagas'),
(4140, 229, 'O', 'Nueva Esparta'),
(4141, 229, 'P', 'Portuguesa'),
(4142, 229, 'R', 'Sucre'),
(4143, 229, 'S', 'Tachira'),
(4144, 229, 'T', 'Trujillo'),
(4145, 229, 'U', 'Yaracuy'),
(4146, 229, 'V', 'Zulia'),
(4147, 229, 'W', 'Capital Dependencia'),
(4148, 229, 'X', 'Vargas'),
(4149, 229, 'Y', 'Delta Amacuro'),
(4150, 229, 'Z', 'Amazonas'),
(4151, 230, '01', 'Lai Châu'),
(4152, 230, '02', 'Lào Cai'),
(4153, 230, '03', 'Hà Giang'),
(4154, 230, '04', 'Cao Bằng'),
(4155, 230, '05', 'Sơn La'),
(4156, 230, '06', 'Yên Bái'),
(4157, 230, '07', 'Tuyên Quang'),
(4158, 230, '09', 'Lạng Sơn'),
(4159, 230, '13', 'Quảng Ninh'),
(4160, 230, '14', 'Hòa Bình'),
(4161, 230, '15', 'Hà Tây'),
(4162, 230, '18', 'Ninh Bình'),
(4163, 230, '20', 'Thái Bình'),
(4164, 230, '21', 'Thanh Hóa'),
(4165, 230, '22', 'Nghệ An'),
(4166, 230, '23', 'Hà Tĩnh'),
(4167, 230, '24', 'Quảng Bình'),
(4168, 230, '25', 'Quảng Trị'),
(4169, 230, '26', 'Thừa Thiên-Huế'),
(4170, 230, '27', 'Quảng Nam'),
(4171, 230, '28', 'Kon Tum'),
(4172, 230, '29', 'Quảng Ngãi'),
(4173, 230, '30', 'Gia Lai'),
(4174, 230, '31', 'Bình Định'),
(4175, 230, '32', 'Phú Yên'),
(4176, 230, '33', 'Đắk Lắk'),
(4177, 230, '34', 'Khánh Hòa'),
(4178, 230, '35', 'Lâm Đồng'),
(4179, 230, '36', 'Ninh Thuận'),
(4180, 230, '37', 'Tây Ninh'),
(4181, 230, '39', 'Đồng Nai'),
(4182, 230, '40', 'Bình Thuận'),
(4183, 230, '41', 'Long An'),
(4184, 230, '43', 'Bà Rịa-Vũng Tàu'),
(4185, 230, '44', 'An Giang'),
(4186, 230, '45', 'Đồng Tháp'),
(4187, 230, '46', 'Tiền Giang'),
(4188, 230, '47', 'Kiên Giang'),
(4189, 230, '48', 'Cần Thơ'),
(4190, 230, '49', 'Vĩnh Long'),
(4191, 230, '50', 'Bến Tre'),
(4192, 230, '51', 'Trà Vinh'),
(4193, 230, '52', 'Sóc Trăng'),
(4194, 230, '53', 'Bắc Kạn'),
(4195, 230, '54', 'Bắc Giang'),
(4196, 230, '55', 'Bạc Liêu'),
(4197, 230, '56', 'Bắc Ninh'),
(4198, 230, '57', 'Bình Dương'),
(4199, 230, '58', 'Bình Phước'),
(4200, 230, '59', 'Cà Mau'),
(4201, 230, '60', 'Đà Nẵng'),
(4202, 230, '61', 'Hải Dương'),
(4203, 230, '62', 'Hải Phòng'),
(4204, 230, '63', 'Hà Nam'),
(4205, 230, '64', 'Hà Nội'),
(4206, 230, '65', 'Sài Gòn'),
(4207, 230, '66', 'Hưng Yên'),
(4208, 230, '67', 'Nam Định'),
(4209, 230, '68', 'Phú Thọ'),
(4210, 230, '69', 'Thái Nguyên'),
(4211, 230, '70', 'Vĩnh Phúc'),
(4212, 230, '71', 'Điện Biên'),
(4213, 230, '72', 'Đắk Nông'),
(4214, 230, '73', 'Hậu Giang'),
(4215, 232, 'C', 'Saint Croix'),
(4216, 232, 'J', 'Saint John'),
(4217, 232, 'T', 'Saint Thomas'),
(4218, 233, 'A', 'Alo'),
(4219, 233, 'S', 'Sigave'),
(4220, 233, 'W', 'Wallis'),
(4221, 235, 'AB', 'أبين‎'),
(4222, 235, 'AD', 'عدن'),
(4223, 235, 'AM', 'عمران'),
(4224, 235, 'BA', 'البيضاء'),
(4225, 235, 'DA', 'الضالع'),
(4226, 235, 'DH', 'ذمار'),
(4227, 235, 'HD', 'حضرموت'),
(4228, 235, 'HJ', 'حجة'),
(4229, 235, 'HU', 'الحديدة'),
(4230, 235, 'IB', 'إب'),
(4231, 235, 'JA', 'الجوف'),
(4232, 235, 'LA', 'لحج'),
(4233, 235, 'MA', 'مأرب'),
(4234, 235, 'MR', 'المهرة'),
(4235, 235, 'MW', 'المحويت'),
(4236, 235, 'SD', 'صعدة'),
(4237, 235, 'SN', 'صنعاء'),
(4238, 235, 'SH', 'شبوة'),
(4239, 235, 'TA', 'تعز'),
(4240, 238, '01', 'Western'),
(4241, 238, '02', 'Central'),
(4242, 238, '03', 'Eastern'),
(4243, 238, '04', 'Luapula'),
(4244, 238, '05', 'Northern'),
(4245, 238, '06', 'North-Western'),
(4246, 238, '07', 'Southern'),
(4247, 238, '08', 'Copperbelt'),
(4248, 238, '09', 'Lusaka'),
(4249, 239, 'MA', 'Manicaland'),
(4250, 239, 'MC', 'Mashonaland Central'),
(4251, 239, 'ME', 'Mashonaland East'),
(4252, 239, 'MI', 'Midlands'),
(4253, 239, 'MN', 'Matabeleland North'),
(4254, 239, 'MS', 'Matabeleland South'),
(4255, 239, 'MV', 'Masvingo'),
(4256, 239, 'MW', 'Mashonaland West');

-- --------------------------------------------------------

--
-- Estrutura da tabela `soc_zones_to_geo_zones`
--

CREATE TABLE `soc_zones_to_geo_zones` (
  `association_id` int(11) NOT NULL,
  `zone_country_id` int(11) NOT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `geo_zone_id` int(11) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `soc_zones_to_geo_zones`
--

INSERT INTO `soc_zones_to_geo_zones` (`association_id`, `zone_country_id`, `zone_id`, `geo_zone_id`, `last_modified`, `date_added`) VALUES
(1, 223, 4031, 1, NULL, '2016-06-28 15:02:37');

-- --------------------------------------------------------

--
-- Estrutura da tabela `toc_variants_specials`
--

CREATE TABLE `toc_variants_specials` (
  `variants_specials_id` int(11) NOT NULL,
  `products_variants_id` int(11) NOT NULL,
  `variants_specials_price` decimal(15,4) NOT NULL,
  `specials_date_added` datetime DEFAULT NULL,
  `specials_last_modified` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `expires_date` datetime DEFAULT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `soc_address_book`
--
ALTER TABLE `soc_address_book`
  ADD PRIMARY KEY (`address_book_id`),
  ADD KEY `idx_address_book_customers_id` (`customers_id`);

--
-- Indexes for table `soc_administrators`
--
ALTER TABLE `soc_administrators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soc_administrators_access`
--
ALTER TABLE `soc_administrators_access`
  ADD PRIMARY KEY (`administrators_id`,`module`);

--
-- Indexes for table `soc_administrators_log`
--
ALTER TABLE `soc_administrators_log`
  ADD KEY `idx_administrators_log_id` (`id`);

--
-- Indexes for table `soc_articles`
--
ALTER TABLE `soc_articles`
  ADD PRIMARY KEY (`articles_id`);

--
-- Indexes for table `soc_articles_categories`
--
ALTER TABLE `soc_articles_categories`
  ADD PRIMARY KEY (`articles_categories_id`);

--
-- Indexes for table `soc_articles_categories_description`
--
ALTER TABLE `soc_articles_categories_description`
  ADD PRIMARY KEY (`articles_categories_id`,`language_id`);

--
-- Indexes for table `soc_articles_description`
--
ALTER TABLE `soc_articles_description`
  ADD PRIMARY KEY (`articles_id`,`language_id`);

--
-- Indexes for table `soc_banners`
--
ALTER TABLE `soc_banners`
  ADD PRIMARY KEY (`banners_id`);

--
-- Indexes for table `soc_banners_history`
--
ALTER TABLE `soc_banners_history`
  ADD PRIMARY KEY (`banners_history_id`);

--
-- Indexes for table `soc_categories`
--
ALTER TABLE `soc_categories`
  ADD PRIMARY KEY (`categories_id`),
  ADD KEY `idx_categories_parent_id` (`parent_id`);

--
-- Indexes for table `soc_categories_description`
--
ALTER TABLE `soc_categories_description`
  ADD PRIMARY KEY (`categories_id`,`language_id`),
  ADD KEY `idx_categories_name` (`categories_name`);

--
-- Indexes for table `soc_categories_ratings`
--
ALTER TABLE `soc_categories_ratings`
  ADD PRIMARY KEY (`categories_id`,`ratings_id`);

--
-- Indexes for table `soc_configuration`
--
ALTER TABLE `soc_configuration`
  ADD PRIMARY KEY (`configuration_id`);

--
-- Indexes for table `soc_configuration_group`
--
ALTER TABLE `soc_configuration_group`
  ADD PRIMARY KEY (`configuration_group_id`);

--
-- Indexes for table `soc_countries`
--
ALTER TABLE `soc_countries`
  ADD PRIMARY KEY (`countries_id`),
  ADD KEY `IDX_COUNTRIES_NAME` (`countries_name`);

--
-- Indexes for table `soc_coupons`
--
ALTER TABLE `soc_coupons`
  ADD PRIMARY KEY (`coupons_id`);

--
-- Indexes for table `soc_coupons_description`
--
ALTER TABLE `soc_coupons_description`
  ADD PRIMARY KEY (`coupons_id`,`language_id`);

--
-- Indexes for table `soc_coupons_redeem_history`
--
ALTER TABLE `soc_coupons_redeem_history`
  ADD PRIMARY KEY (`coupons_redeem_history_id`);

--
-- Indexes for table `soc_coupons_to_categories`
--
ALTER TABLE `soc_coupons_to_categories`
  ADD PRIMARY KEY (`coupons_id`,`categories_id`);

--
-- Indexes for table `soc_coupons_to_products`
--
ALTER TABLE `soc_coupons_to_products`
  ADD PRIMARY KEY (`coupons_id`,`products_id`);

--
-- Indexes for table `soc_credit_cards`
--
ALTER TABLE `soc_credit_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soc_currencies`
--
ALTER TABLE `soc_currencies`
  ADD PRIMARY KEY (`currencies_id`);

--
-- Indexes for table `soc_customers`
--
ALTER TABLE `soc_customers`
  ADD PRIMARY KEY (`customers_id`);

--
-- Indexes for table `soc_customers_basket`
--
ALTER TABLE `soc_customers_basket`
  ADD PRIMARY KEY (`customers_basket_id`);

--
-- Indexes for table `soc_customers_credits_history`
--
ALTER TABLE `soc_customers_credits_history`
  ADD PRIMARY KEY (`customers_credits_history_id`);

--
-- Indexes for table `soc_customers_groups`
--
ALTER TABLE `soc_customers_groups`
  ADD PRIMARY KEY (`customers_groups_id`);

--
-- Indexes for table `soc_customers_groups_description`
--
ALTER TABLE `soc_customers_groups_description`
  ADD PRIMARY KEY (`customers_groups_id`,`language_id`);

--
-- Indexes for table `soc_customers_ratings`
--
ALTER TABLE `soc_customers_ratings`
  ADD PRIMARY KEY (`customers_ratings_id`);

--
-- Indexes for table `soc_customization_fields`
--
ALTER TABLE `soc_customization_fields`
  ADD PRIMARY KEY (`customization_fields_id`);

--
-- Indexes for table `soc_customization_fields_description`
--
ALTER TABLE `soc_customization_fields_description`
  ADD PRIMARY KEY (`customization_fields_id`,`languages_id`);

--
-- Indexes for table `soc_departments`
--
ALTER TABLE `soc_departments`
  ADD PRIMARY KEY (`departments_id`);

--
-- Indexes for table `soc_departments_description`
--
ALTER TABLE `soc_departments_description`
  ADD PRIMARY KEY (`departments_id`,`languages_id`);

--
-- Indexes for table `soc_email_accounts`
--
ALTER TABLE `soc_email_accounts`
  ADD PRIMARY KEY (`accounts_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `soc_email_folders`
--
ALTER TABLE `soc_email_folders`
  ADD PRIMARY KEY (`folders_id`),
  ADD KEY `accounts_id` (`accounts_id`);

--
-- Indexes for table `soc_email_messages`
--
ALTER TABLE `soc_email_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `folders_id` (`folders_id`);

--
-- Indexes for table `soc_email_templates`
--
ALTER TABLE `soc_email_templates`
  ADD PRIMARY KEY (`email_templates_id`);

--
-- Indexes for table `soc_email_templates_description`
--
ALTER TABLE `soc_email_templates_description`
  ADD PRIMARY KEY (`email_templates_id`,`language_id`);

--
-- Indexes for table `soc_faqs`
--
ALTER TABLE `soc_faqs`
  ADD PRIMARY KEY (`faqs_id`);

--
-- Indexes for table `soc_faqs_description`
--
ALTER TABLE `soc_faqs_description`
  ADD PRIMARY KEY (`faqs_id`,`language_id`);

--
-- Indexes for table `soc_geo_zones`
--
ALTER TABLE `soc_geo_zones`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `soc_gift_certificates`
--
ALTER TABLE `soc_gift_certificates`
  ADD PRIMARY KEY (`gift_certificates_id`);

--
-- Indexes for table `soc_gift_certificates_redeem_history`
--
ALTER TABLE `soc_gift_certificates_redeem_history`
  ADD PRIMARY KEY (`gift_certificates_redeem_history_id`);

--
-- Indexes for table `soc_guest_books`
--
ALTER TABLE `soc_guest_books`
  ADD PRIMARY KEY (`guest_books_id`);

--
-- Indexes for table `soc_languages`
--
ALTER TABLE `soc_languages`
  ADD PRIMARY KEY (`languages_id`);

--
-- Indexes for table `soc_languages_definitions`
--
ALTER TABLE `soc_languages_definitions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_LANGUAGES_DEFINITIONS_LANGUAGES` (`languages_id`),
  ADD KEY `IDX_LANGUAGES_DEFINITIONS` (`languages_id`,`content_group`),
  ADD KEY `IDX_LANGUAGES_DEFINITIONS_GROUPS` (`content_group`);

--
-- Indexes for table `soc_manufacturers`
--
ALTER TABLE `soc_manufacturers`
  ADD PRIMARY KEY (`manufacturers_id`),
  ADD KEY `IDX_MANUFACTURERS_NAME` (`manufacturers_name`);

--
-- Indexes for table `soc_manufacturers_info`
--
ALTER TABLE `soc_manufacturers_info`
  ADD PRIMARY KEY (`manufacturers_id`,`languages_id`);

--
-- Indexes for table `soc_newsletters`
--
ALTER TABLE `soc_newsletters`
  ADD PRIMARY KEY (`newsletters_id`);

--
-- Indexes for table `soc_newsletters_log`
--
ALTER TABLE `soc_newsletters_log`
  ADD KEY `IDX_NEWSLETTERS_LOG_NEWSLETTERS_ID` (`newsletters_id`),
  ADD KEY `IDX_NEWSLETTERS_LOG_EMAIL_ADDRESS` (`email_address`);

--
-- Indexes for table `soc_orders`
--
ALTER TABLE `soc_orders`
  ADD PRIMARY KEY (`orders_id`);

--
-- Indexes for table `soc_orders_products`
--
ALTER TABLE `soc_orders_products`
  ADD PRIMARY KEY (`orders_products_id`);

--
-- Indexes for table `soc_orders_products_customizations`
--
ALTER TABLE `soc_orders_products_customizations`
  ADD PRIMARY KEY (`orders_products_customizations_id`);

--
-- Indexes for table `soc_orders_products_customizations_values`
--
ALTER TABLE `soc_orders_products_customizations_values`
  ADD PRIMARY KEY (`orders_products_customizations_values_id`);

--
-- Indexes for table `soc_orders_products_download`
--
ALTER TABLE `soc_orders_products_download`
  ADD PRIMARY KEY (`orders_products_download_id`);

--
-- Indexes for table `soc_orders_products_variants`
--
ALTER TABLE `soc_orders_products_variants`
  ADD PRIMARY KEY (`orders_products_variants_id`);

--
-- Indexes for table `soc_orders_refunds`
--
ALTER TABLE `soc_orders_refunds`
  ADD PRIMARY KEY (`orders_refunds_id`);

--
-- Indexes for table `soc_orders_refunds_products`
--
ALTER TABLE `soc_orders_refunds_products`
  ADD PRIMARY KEY (`orders_refunds_products_id`);

--
-- Indexes for table `soc_orders_returns`
--
ALTER TABLE `soc_orders_returns`
  ADD PRIMARY KEY (`orders_returns_id`);

--
-- Indexes for table `soc_orders_returns_products`
--
ALTER TABLE `soc_orders_returns_products`
  ADD PRIMARY KEY (`orders_returns_id`,`orders_products_id`);

--
-- Indexes for table `soc_orders_returns_status`
--
ALTER TABLE `soc_orders_returns_status`
  ADD PRIMARY KEY (`orders_returns_status_id`,`languages_id`);

--
-- Indexes for table `soc_orders_status`
--
ALTER TABLE `soc_orders_status`
  ADD PRIMARY KEY (`orders_status_id`,`language_id`),
  ADD KEY `idx_orders_status_name` (`orders_status_name`);

--
-- Indexes for table `soc_orders_status_history`
--
ALTER TABLE `soc_orders_status_history`
  ADD PRIMARY KEY (`orders_status_history_id`);

--
-- Indexes for table `soc_orders_total`
--
ALTER TABLE `soc_orders_total`
  ADD PRIMARY KEY (`orders_total_id`),
  ADD KEY `idx_orders_total_orders_id` (`orders_id`);

--
-- Indexes for table `soc_orders_transactions_history`
--
ALTER TABLE `soc_orders_transactions_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_orders_transactions_history_orders_id` (`orders_id`);

--
-- Indexes for table `soc_orders_transactions_status`
--
ALTER TABLE `soc_orders_transactions_status`
  ADD PRIMARY KEY (`id`,`language_id`),
  ADD KEY `idx_orders_transactions_status_name` (`status_name`);

--
-- Indexes for table `soc_polls`
--
ALTER TABLE `soc_polls`
  ADD PRIMARY KEY (`polls_id`);

--
-- Indexes for table `soc_polls_answers`
--
ALTER TABLE `soc_polls_answers`
  ADD PRIMARY KEY (`polls_answers_id`);

--
-- Indexes for table `soc_polls_answers_description`
--
ALTER TABLE `soc_polls_answers_description`
  ADD PRIMARY KEY (`polls_answers_id`,`languages_id`);

--
-- Indexes for table `soc_polls_description`
--
ALTER TABLE `soc_polls_description`
  ADD PRIMARY KEY (`polls_id`,`languages_id`);

--
-- Indexes for table `soc_polls_votes`
--
ALTER TABLE `soc_polls_votes`
  ADD PRIMARY KEY (`polls_votes_id`);

--
-- Indexes for table `soc_products`
--
ALTER TABLE `soc_products`
  ADD PRIMARY KEY (`products_id`),
  ADD KEY `idx_products_date_added` (`products_date_added`);

--
-- Indexes for table `soc_products_accessories`
--
ALTER TABLE `soc_products_accessories`
  ADD PRIMARY KEY (`products_id`,`accessories_id`);

--
-- Indexes for table `soc_products_attachments`
--
ALTER TABLE `soc_products_attachments`
  ADD PRIMARY KEY (`attachments_id`);

--
-- Indexes for table `soc_products_attachments_description`
--
ALTER TABLE `soc_products_attachments_description`
  ADD PRIMARY KEY (`attachments_id`,`languages_id`);

--
-- Indexes for table `soc_products_attachments_to_products`
--
ALTER TABLE `soc_products_attachments_to_products`
  ADD PRIMARY KEY (`attachments_id`,`products_id`);

--
-- Indexes for table `soc_products_attributes`
--
ALTER TABLE `soc_products_attributes`
  ADD PRIMARY KEY (`products_id`,`products_attributes_values_id`,`language_id`);

--
-- Indexes for table `soc_products_attributes_groups`
--
ALTER TABLE `soc_products_attributes_groups`
  ADD PRIMARY KEY (`products_attributes_groups_id`);

--
-- Indexes for table `soc_products_attributes_values`
--
ALTER TABLE `soc_products_attributes_values`
  ADD PRIMARY KEY (`products_attributes_values_id`,`products_attributes_groups_id`,`language_id`);

--
-- Indexes for table `soc_products_description`
--
ALTER TABLE `soc_products_description`
  ADD PRIMARY KEY (`products_id`,`language_id`),
  ADD KEY `products_name` (`products_name`),
  ADD KEY `products_description_keyword` (`products_keyword`);

--
-- Indexes for table `soc_products_download_history`
--
ALTER TABLE `soc_products_download_history`
  ADD PRIMARY KEY (`products_download_history_id`);

--
-- Indexes for table `soc_products_frontpage`
--
ALTER TABLE `soc_products_frontpage`
  ADD PRIMARY KEY (`products_id`);

--
-- Indexes for table `soc_products_gift_certificates`
--
ALTER TABLE `soc_products_gift_certificates`
  ADD PRIMARY KEY (`products_id`);

--
-- Indexes for table `soc_products_images`
--
ALTER TABLE `soc_products_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_images_products_id` (`products_id`);

--
-- Indexes for table `soc_products_images_groups`
--
ALTER TABLE `soc_products_images_groups`
  ADD PRIMARY KEY (`id`,`language_id`);

--
-- Indexes for table `soc_products_notifications`
--
ALTER TABLE `soc_products_notifications`
  ADD PRIMARY KEY (`products_id`,`customers_id`);

--
-- Indexes for table `soc_products_to_categories`
--
ALTER TABLE `soc_products_to_categories`
  ADD PRIMARY KEY (`products_id`,`categories_id`);

--
-- Indexes for table `soc_products_variants`
--
ALTER TABLE `soc_products_variants`
  ADD PRIMARY KEY (`products_variants_id`),
  ADD KEY `idx_products_variants_products_id` (`products_id`);

--
-- Indexes for table `soc_products_variants_entries`
--
ALTER TABLE `soc_products_variants_entries`
  ADD PRIMARY KEY (`products_variants_entries_id`),
  ADD KEY `idx_products_variants_groups_values_id` (`products_variants_id`,`products_variants_groups_id`,`products_variants_values_id`);

--
-- Indexes for table `soc_products_variants_groups`
--
ALTER TABLE `soc_products_variants_groups`
  ADD PRIMARY KEY (`products_variants_groups_id`,`language_id`);

--
-- Indexes for table `soc_products_variants_values`
--
ALTER TABLE `soc_products_variants_values`
  ADD PRIMARY KEY (`products_variants_values_id`,`language_id`);

--
-- Indexes for table `soc_products_variants_values_to_products_variants_groups`
--
ALTER TABLE `soc_products_variants_values_to_products_variants_groups`
  ADD PRIMARY KEY (`products_variants_values_to_products_variants_groups_id`);

--
-- Indexes for table `soc_products_xsell`
--
ALTER TABLE `soc_products_xsell`
  ADD PRIMARY KEY (`products_id`,`xsell_products_id`);

--
-- Indexes for table `soc_quantity_discount_groups`
--
ALTER TABLE `soc_quantity_discount_groups`
  ADD PRIMARY KEY (`quantity_discount_groups_id`);

--
-- Indexes for table `soc_quantity_discount_groups_values`
--
ALTER TABLE `soc_quantity_discount_groups_values`
  ADD PRIMARY KEY (`quantity_discount_groups_values_id`),
  ADD KEY `quantity_discount_groups_id` (`quantity_discount_groups_id`),
  ADD KEY `customers_groups_id` (`customers_groups_id`);

--
-- Indexes for table `soc_quantity_unit_classes`
--
ALTER TABLE `soc_quantity_unit_classes`
  ADD PRIMARY KEY (`quantity_unit_class_id`,`language_id`);

--
-- Indexes for table `soc_ratings`
--
ALTER TABLE `soc_ratings`
  ADD PRIMARY KEY (`ratings_id`);

--
-- Indexes for table `soc_ratings_description`
--
ALTER TABLE `soc_ratings_description`
  ADD PRIMARY KEY (`ratings_id`,`languages_id`);

--
-- Indexes for table `soc_reviews`
--
ALTER TABLE `soc_reviews`
  ADD PRIMARY KEY (`reviews_id`);

--
-- Indexes for table `soc_search_terms`
--
ALTER TABLE `soc_search_terms`
  ADD PRIMARY KEY (`search_terms_id`);

--
-- Indexes for table `soc_sessions`
--
ALTER TABLE `soc_sessions`
  ADD PRIMARY KEY (`sesskey`);

--
-- Indexes for table `soc_slide_images`
--
ALTER TABLE `soc_slide_images`
  ADD PRIMARY KEY (`image_id`,`language_id`);

--
-- Indexes for table `soc_specials`
--
ALTER TABLE `soc_specials`
  ADD PRIMARY KEY (`specials_id`);

--
-- Indexes for table `soc_tax_class`
--
ALTER TABLE `soc_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `soc_tax_rates`
--
ALTER TABLE `soc_tax_rates`
  ADD PRIMARY KEY (`tax_rates_id`);

--
-- Indexes for table `soc_templates`
--
ALTER TABLE `soc_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soc_templates_boxes`
--
ALTER TABLE `soc_templates_boxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soc_templates_boxes_to_pages`
--
ALTER TABLE `soc_templates_boxes_to_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `templates_boxes_id` (`templates_boxes_id`,`templates_id`,`content_page`,`boxes_group`);

--
-- Indexes for table `soc_weight_classes`
--
ALTER TABLE `soc_weight_classes`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Indexes for table `soc_wishlists`
--
ALTER TABLE `soc_wishlists`
  ADD PRIMARY KEY (`wishlists_id`);

--
-- Indexes for table `soc_wishlists_products`
--
ALTER TABLE `soc_wishlists_products`
  ADD PRIMARY KEY (`wishlists_products_id`);

--
-- Indexes for table `soc_zones`
--
ALTER TABLE `soc_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `soc_zones_to_geo_zones`
--
ALTER TABLE `soc_zones_to_geo_zones`
  ADD PRIMARY KEY (`association_id`);

--
-- Indexes for table `toc_variants_specials`
--
ALTER TABLE `toc_variants_specials`
  ADD PRIMARY KEY (`variants_specials_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `soc_address_book`
--
ALTER TABLE `soc_address_book`
  MODIFY `address_book_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_administrators`
--
ALTER TABLE `soc_administrators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `soc_articles`
--
ALTER TABLE `soc_articles`
  MODIFY `articles_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `soc_articles_categories`
--
ALTER TABLE `soc_articles_categories`
  MODIFY `articles_categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `soc_banners`
--
ALTER TABLE `soc_banners`
  MODIFY `banners_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_banners_history`
--
ALTER TABLE `soc_banners_history`
  MODIFY `banners_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_categories`
--
ALTER TABLE `soc_categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `soc_configuration`
--
ALTER TABLE `soc_configuration`
  MODIFY `configuration_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;
--
-- AUTO_INCREMENT for table `soc_configuration_group`
--
ALTER TABLE `soc_configuration_group`
  MODIFY `configuration_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `soc_countries`
--
ALTER TABLE `soc_countries`
  MODIFY `countries_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;
--
-- AUTO_INCREMENT for table `soc_coupons`
--
ALTER TABLE `soc_coupons`
  MODIFY `coupons_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_coupons_redeem_history`
--
ALTER TABLE `soc_coupons_redeem_history`
  MODIFY `coupons_redeem_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_credit_cards`
--
ALTER TABLE `soc_credit_cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `soc_currencies`
--
ALTER TABLE `soc_currencies`
  MODIFY `currencies_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `soc_customers`
--
ALTER TABLE `soc_customers`
  MODIFY `customers_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_customers_basket`
--
ALTER TABLE `soc_customers_basket`
  MODIFY `customers_basket_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_customers_credits_history`
--
ALTER TABLE `soc_customers_credits_history`
  MODIFY `customers_credits_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_customers_groups`
--
ALTER TABLE `soc_customers_groups`
  MODIFY `customers_groups_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_customers_ratings`
--
ALTER TABLE `soc_customers_ratings`
  MODIFY `customers_ratings_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_customization_fields`
--
ALTER TABLE `soc_customization_fields`
  MODIFY `customization_fields_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_departments`
--
ALTER TABLE `soc_departments`
  MODIFY `departments_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_departments_description`
--
ALTER TABLE `soc_departments_description`
  MODIFY `departments_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_email_accounts`
--
ALTER TABLE `soc_email_accounts`
  MODIFY `accounts_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_email_folders`
--
ALTER TABLE `soc_email_folders`
  MODIFY `folders_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_email_messages`
--
ALTER TABLE `soc_email_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_email_templates`
--
ALTER TABLE `soc_email_templates`
  MODIFY `email_templates_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `soc_faqs`
--
ALTER TABLE `soc_faqs`
  MODIFY `faqs_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_geo_zones`
--
ALTER TABLE `soc_geo_zones`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `soc_gift_certificates`
--
ALTER TABLE `soc_gift_certificates`
  MODIFY `gift_certificates_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_gift_certificates_redeem_history`
--
ALTER TABLE `soc_gift_certificates_redeem_history`
  MODIFY `gift_certificates_redeem_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_guest_books`
--
ALTER TABLE `soc_guest_books`
  MODIFY `guest_books_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_languages`
--
ALTER TABLE `soc_languages`
  MODIFY `languages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `soc_languages_definitions`
--
ALTER TABLE `soc_languages_definitions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2227;
--
-- AUTO_INCREMENT for table `soc_manufacturers`
--
ALTER TABLE `soc_manufacturers`
  MODIFY `manufacturers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `soc_newsletters`
--
ALTER TABLE `soc_newsletters`
  MODIFY `newsletters_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_orders`
--
ALTER TABLE `soc_orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_orders_products`
--
ALTER TABLE `soc_orders_products`
  MODIFY `orders_products_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_orders_products_customizations`
--
ALTER TABLE `soc_orders_products_customizations`
  MODIFY `orders_products_customizations_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_orders_products_customizations_values`
--
ALTER TABLE `soc_orders_products_customizations_values`
  MODIFY `orders_products_customizations_values_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_orders_products_download`
--
ALTER TABLE `soc_orders_products_download`
  MODIFY `orders_products_download_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_orders_products_variants`
--
ALTER TABLE `soc_orders_products_variants`
  MODIFY `orders_products_variants_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_orders_refunds`
--
ALTER TABLE `soc_orders_refunds`
  MODIFY `orders_refunds_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_orders_refunds_products`
--
ALTER TABLE `soc_orders_refunds_products`
  MODIFY `orders_refunds_products_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_orders_returns`
--
ALTER TABLE `soc_orders_returns`
  MODIFY `orders_returns_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_orders_returns_status`
--
ALTER TABLE `soc_orders_returns_status`
  MODIFY `orders_returns_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `soc_orders_status_history`
--
ALTER TABLE `soc_orders_status_history`
  MODIFY `orders_status_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_orders_total`
--
ALTER TABLE `soc_orders_total`
  MODIFY `orders_total_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_orders_transactions_history`
--
ALTER TABLE `soc_orders_transactions_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_polls`
--
ALTER TABLE `soc_polls`
  MODIFY `polls_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_polls_answers`
--
ALTER TABLE `soc_polls_answers`
  MODIFY `polls_answers_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_polls_votes`
--
ALTER TABLE `soc_polls_votes`
  MODIFY `polls_votes_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_products`
--
ALTER TABLE `soc_products`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `soc_products_attachments`
--
ALTER TABLE `soc_products_attachments`
  MODIFY `attachments_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_products_attributes_groups`
--
ALTER TABLE `soc_products_attributes_groups`
  MODIFY `products_attributes_groups_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_products_description`
--
ALTER TABLE `soc_products_description`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `soc_products_download_history`
--
ALTER TABLE `soc_products_download_history`
  MODIFY `products_download_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_products_images`
--
ALTER TABLE `soc_products_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `soc_products_variants`
--
ALTER TABLE `soc_products_variants`
  MODIFY `products_variants_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_products_variants_entries`
--
ALTER TABLE `soc_products_variants_entries`
  MODIFY `products_variants_entries_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_products_variants_values_to_products_variants_groups`
--
ALTER TABLE `soc_products_variants_values_to_products_variants_groups`
  MODIFY `products_variants_values_to_products_variants_groups_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_quantity_discount_groups`
--
ALTER TABLE `soc_quantity_discount_groups`
  MODIFY `quantity_discount_groups_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_quantity_discount_groups_values`
--
ALTER TABLE `soc_quantity_discount_groups_values`
  MODIFY `quantity_discount_groups_values_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_ratings`
--
ALTER TABLE `soc_ratings`
  MODIFY `ratings_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_reviews`
--
ALTER TABLE `soc_reviews`
  MODIFY `reviews_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_search_terms`
--
ALTER TABLE `soc_search_terms`
  MODIFY `search_terms_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `soc_specials`
--
ALTER TABLE `soc_specials`
  MODIFY `specials_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_tax_class`
--
ALTER TABLE `soc_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `soc_tax_rates`
--
ALTER TABLE `soc_tax_rates`
  MODIFY `tax_rates_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `soc_templates`
--
ALTER TABLE `soc_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `soc_templates_boxes`
--
ALTER TABLE `soc_templates_boxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `soc_templates_boxes_to_pages`
--
ALTER TABLE `soc_templates_boxes_to_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `soc_wishlists`
--
ALTER TABLE `soc_wishlists`
  MODIFY `wishlists_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_wishlists_products`
--
ALTER TABLE `soc_wishlists_products`
  MODIFY `wishlists_products_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soc_zones`
--
ALTER TABLE `soc_zones`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4257;
--
-- AUTO_INCREMENT for table `soc_zones_to_geo_zones`
--
ALTER TABLE `soc_zones_to_geo_zones`
  MODIFY `association_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `toc_variants_specials`
--
ALTER TABLE `toc_variants_specials`
  MODIFY `variants_specials_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
