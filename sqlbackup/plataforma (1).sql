-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-04-2016 a las 10:51:33
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `plataforma`
--
CREATE DATABASE IF NOT EXISTS `plataforma` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `plataforma`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `altaslogs`
--

CREATE TABLE `altaslogs` (
  `id_alta` bigint(20) NOT NULL,
  `id_user` int(5) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `altaslogs`
--

INSERT INTO `altaslogs` (`id_alta`, `id_user`, `date`) VALUES
(1, 971971971, '2016-04-25 00:00:00'),
(2, 971971971, '2016-04-25 00:00:00'),
(3, 971971971, '2016-04-25 00:00:00'),
(4, 971971971, '2016-04-25 12:51:31'),
(5, 123456789, '2016-04-25 15:45:06'),
(6, 123456789, '2016-04-25 15:45:26'),
(7, 123456789, '2016-04-25 15:49:55'),
(8, 971971971, '2016-04-26 08:27:54'),
(9, 971971971, '2016-04-28 09:46:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bajaslogs`
--

CREATE TABLE `bajaslogs` (
  `id_baja` bigint(20) NOT NULL,
  `id_user` int(5) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `bajaslogs`
--

INSERT INTO `bajaslogs` (`id_baja`, `id_user`, `date`) VALUES
(1, 971971971, '2016-04-25 00:00:00'),
(2, 971971971, '2016-04-25 00:00:00'),
(3, 971971971, '2016-04-25 12:51:25'),
(4, 123456789, '2016-04-25 15:44:56'),
(5, 123456789, '2016-04-25 15:45:13'),
(6, 123456789, '2016-04-25 15:50:10'),
(7, 971971971, '2016-04-26 08:27:28'),
(8, 971971971, '2016-04-26 08:44:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `billrequestlog`
--

CREATE TABLE `billrequestlog` (
  `transaction` varchar(255) NOT NULL,
  `msisdn` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `billrequestlog`
--

INSERT INTO `billrequestlog` (`transaction`, `msisdn`, `amount`, `token`, `time`) VALUES
('-136908799', '616616616', '1', '78', '2016-04-28 09:41:57'),
('-153896959', '616616616', '1', '78e342etf5y56grgret5', '2016-04-28 09:44:31'),
('-97725439', '616616616', '1', '78e342etf5y56grgret5', '2016-04-28 09:44:55'),
('-75627519', '616616616', '1', '78e342etf5y56grgret5', '2016-04-28 09:46:58'),
('-10219519', '616616616', '1', '6484ccfdbef376f0d4abdbc41fb03ba4', '2016-04-28 09:53:10'),
('-111042559', '616616616', '1', '8ea59c820e547da20a0f8033c3d9cb69', '2016-04-28 09:53:12'),
('-4889599', '616616616', '1', 'c5d4780121f387785849424528a9b3aa', '2016-04-28 09:55:36'),
('-42716159', '616616616', '1', '8923226696037c15bd428c86a8b95422', '2016-04-28 09:55:36'),
('-61864959', '616616616', '1', '1cf7621b2eac9f5cd0cc843ab983a336', '2016-04-28 09:55:37'),
('-15150079', '616616616', '1', '809ab6be111607cb864b73527a091e1f', '2016-04-28 09:55:38'),
('-107043839', '616616616', '1', 'dff4f2cf52d2257e6d74920a750e0805', '2016-04-28 09:55:39'),
('-62079999', '616616616', '1', '7e5f270cd09093cf768858ca9cee729b', '2016-04-28 09:58:06'),
('-131527679', '616616616', '1', '6d8ad6b0539885ac562b5119983fb647', '2016-04-28 09:58:06'),
('-142975999', '616616616', '1', '98c31893dc0199389fd98545fdcbbacc', '2016-04-28 09:58:07'),
('-65075199', '616616616', '1', '330f2bf8d6cec2ded8b1ea4b84f0dca8', '2016-04-28 09:58:07'),
('-91182079', '616616616', '1', '9c6a61e17475e2328dd343d48cab3e42', '2016-04-28 09:58:08'),
('-86763519', '616616616', '1', 'd39266534b3bbbcd0bcb8ce5913631b7', '2016-04-28 09:58:08'),
('-54789119', '616616616', '1', '214b9f70f9238c7a46848e374a79b886', '2016-04-28 09:58:08'),
('-28554239', '616616616', '1', '2227f3d9ec0e1b00c0f3ea3fcff8b91a', '2016-04-28 09:58:09'),
('-91120639', '616616616', '1', '5f2f2362c00ede7c4c5b25149a973709', '2016-04-28 09:58:10'),
('-69473279', '616616616', '1', '', '2016-04-28 09:58:11'),
('-42255359', '616616616', '1', '7d6cbf1f478fc59ca3eba906426a570f', '2016-04-28 09:58:11'),
('-4223999', '616616616', '1', 'ccdc1ee3cbe2340192fcaace9cfaadff', '2016-04-28 09:58:12'),
('-34022399', '616616616', '1', '6ae3187c9704705d64e1b4cf71a06614', '2016-04-28 09:58:13'),
('-126407679', '616616616', '1', 'b77d90e503ee41c105721fe55fcd63eb', '2016-04-28 09:58:13'),
('-24478719', '616616616', '1', '27852b664c6b1a390c499273c469573c', '2016-04-28 09:58:14'),
('-58536959', '616616616', '1', '90fa4ac1029cf8e9d5f013ead7d849a8', '2016-04-28 09:58:15'),
('-17172479', '616616616', '1', 'b116dd5223a54c2b9aee40bfdb728171', '2016-04-28 10:01:06'),
('-127006719', '616616616', '1', '', '2016-04-28 10:01:08'),
('-49080319', '616616616', '1', '', '2016-04-28 10:01:09'),
('-50780159', '616616616', '1', 'c705d7f051ac9df3b400dce3ab3df3b7', '2016-04-28 10:01:09'),
('-147834879', '616616616', '1', '207b53911ce938ec66b30cdc837dddfd', '2016-04-28 10:01:10'),
('-164065279', '616616616', '1', '20518005d5645a53c882efa2c5fb126d', '2016-04-28 10:02:40'),
('-84008959', '616616616', '1', 'fcc1fc4d1c0d31581271146b3be69f17', '2016-04-28 10:03:32'),
('-37585919', '616616616', '1', 'b6285f7ca25551f499c3c7bd762e9b17', '2016-04-28 10:03:47'),
('-26449919', '616616616', '1', '4d9df5fc681a6ef745fdfadb5a799efa', '2016-04-28 10:03:49'),
('-112614399', '616616616', '1', '369379f1f132a7ebae72eb2106e9faf1', '2016-04-28 10:03:50'),
('-52367359', '616616616', '1', '088137f952d64e4e684c0c6b0faaa75e', '2016-04-28 10:03:55'),
('-78771199', '616616616', '1', 'df2d79991feb62aea2815f49444cfade', '2016-04-28 10:03:56'),
('-147998719', '616616616', '1', 'add76da17a7c8e28378cb919f44ca62c', '2016-04-28 10:03:57'),
('-103173119', '616616616', '1', '8d8ec57ea25a7513c0a68ea9846ff262', '2016-04-28 10:03:57'),
('-105594879', '616616616', '1', '3db965dbeac48c0f94d016cc7648643b', '2016-04-28 10:03:58'),
('-127196159', '616616616', '1', 'e24132bc627481a7d151335cba2ccbe1', '2016-04-28 10:03:58'),
('-96035839', '616616616', '1', '', '2016-04-28 10:03:58'),
('-102993919', '616616616', '1', '686fec06e6c442d5db0dfbc71c9b3383', '2016-04-28 10:03:58'),
('-152565759', '616616616', '1', '', '2016-04-28 10:03:59'),
('-147092479', '616616616', '1', '144323a6eb7279930006f23a20d639da', '2016-04-28 10:03:59'),
('-121292799', '616616616', '1', '5c03b204119a312dfbad876a6e87f025', '2016-04-28 10:04:00'),
('-4275199', '616616616', '1', '', '2016-04-28 10:04:00'),
('-151833599', '616616616', '1', '', '2016-04-28 10:04:01'),
('-53985279', '616616616', '1', '6673f6b9778686be1195e6721db92024', '2016-04-28 10:04:38'),
('-58050559', '616616616', '1', '2d46fc1e95f317b3dc221fc86120e10e', '2016-04-28 10:06:11'),
('-88079359', '616616616', '1', '83f890c1a4796aa3205f2c405c727f2a', '2016-04-28 10:07:13'),
('-24785919', '616616616', '1', 'd744e4c911de395672c3ae7c17d78323', '2016-04-28 10:07:54'),
('-42567679', '616616616', '1', '3249cd54a0285ec1f19698d236fc33ec', '2016-04-28 10:07:55'),
('-47221759', '616616616', '1', '9d6a88b5be354e8761643f1e8219fd41', '2016-04-28 10:07:56'),
('-114452479', '616616616', '1', '22392355726627a4cfb56d9e73f0099e', '2016-04-28 10:08:08'),
('-154004479', '616616616', '1', '788aa41b91b34a7ead0df6956a167672', '2016-04-28 10:08:09'),
('-102522879', '616616616', '1', '1aea425fe9a8d4be1a1263e174b32fad', '2016-04-28 10:08:10'),
('-116684799', '616616616', '1', 'ca85d615b4ef2fa52cd7916971b1c5e8', '2016-04-28 10:08:48'),
('-80445439', '971971971', '1', '76581a3168084b8beace97dad797c9ae', '2016-04-28 10:08:49'),
('-145377279', '616616616', '1', 'bdf456af2bdc7183b5c2d5c70552dc6a', '2016-04-28 10:08:51'),
('-5427199', '971971971', '1', '7dcad1e0c07e0193c3446bad96fa8b58', '2016-04-28 10:08:51'),
('-17034239', '616616616', '1', '36be0ee87245aa16bc15633ad97644d5', '2016-04-28 10:08:51'),
('-138367999', '971971971', '1', 'da43bb1c2742e3f90940b77f379cd818', '2016-04-28 10:08:52'),
('-125245439', '616616616', '1', '', '2016-04-28 10:08:52'),
('-104407039', '971971971', '1', '', '2016-04-28 10:08:53'),
('-61532159', '616616616', '1', 'f5bedf85d74b14e94d33938950778d54', '2016-04-28 10:08:54'),
('-5140479', '971971971', '1', '1b3ee39a22338590e28e2a18184c47a0', '2016-04-28 10:08:54'),
('-43366399', '616616616', '1', 'c0fff53588d08152823b959864d15938', '2016-04-28 10:08:55'),
('-90357759', '971971971', '1', '', '2016-04-28 10:08:55'),
('-75991039', '616616616', '1', 'c616876828a7ab7f0d7c9a6338aab9e0', '2016-04-28 10:08:56'),
('-155586559', '971971971', '1', 'f975f959b514c255707bbcad905e583e', '2016-04-28 10:08:57'),
('-68070399', '616616616', '1', '5a10a25a409443a63b3f50cf56d3dc6e', '2016-04-28 10:13:08'),
('-116659199', '971971971', '1', 'b7d41a15fb261a91c435395c4c021c5f', '2016-04-28 10:13:09'),
('-7224319', '616616616', '1', 'a98e84f4c6a86a5360d186d9eac1a4f0', '2016-04-28 10:13:10'),
('-165094399', '971971971', '1', 'a950d3beccaf0cbd41f0dc71941eb95f', '2016-04-28 10:13:10'),
('-129551359', '616616616', '1', '36a0234b2734f3a402800019dd6df379', '2016-04-28 10:13:11'),
('-105722879', '971971971', '1', '6ed61eaa2018846e2fa3d9e043d1b20b', '2016-04-28 10:13:11'),
('-167664639', '616616616', '1', '6c4230e67b04cb132eb9aa96663e9101', '2016-04-28 10:13:12'),
('-132531199', '971971971', '1', 'e401599fc499a12abead53ef73565213', '2016-04-28 10:13:13'),
('-155315199', '616616616', '1', '469d88a19a645ab16e8bbc21bc226b3c', '2016-04-28 10:18:17'),
('-9262079', '971971971', '1', '2c3cc7282a38b957c70bb659b5d7b197', '2016-04-28 10:18:17'),
('-74721279', '616616616', '1', '3d9c27cf76a60f1320e2d49294c1b082', '2016-04-28 10:19:09'),
('-80588799', '971971971', '1', 'd8b2a5722a977e5b2a505c73d1c042cf', '2016-04-28 10:19:09'),
('-44595199', '616616616', '1', '1e68da702b3e9af2aa770199ca1147fc', '2016-04-28 10:19:10'),
('-81756159', '971971971', '1', 'aa9e628bbd8b17a85f39b3dc163953ca', '2016-04-28 10:19:10'),
('-136202239', '616616616', '1', '', '2016-04-28 10:19:11'),
('-69652479', '971971971', '1', '', '2016-04-28 10:19:11'),
('-18544639', '616616616', '1', 'f3392f1249fb3ceaec29287fd49ba884', '2016-04-28 10:19:12'),
('-96337919', '971971971', '1', '', '2016-04-28 10:19:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `billresponselog`
--

CREATE TABLE `billresponselog` (
  `statusCode` varchar(255) NOT NULL,
  `statusMessage` varchar(255) NOT NULL,
  `txId` varchar(255) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `billresponselog`
--

INSERT INTO `billresponselog` (`statusCode`, `statusMessage`, `txId`, `time`) VALUES
('INVALID_TOKEN', 'The specified token is invalid, please use a valid token.', '77762', '2016-04-28 09:41:57'),
('INVALID_TOKEN', 'The specified token is invalid, please use a valid token.', '77764', '2016-04-28 09:44:31'),
('SYSTEM_ERROR', 'An error ocurred. Please try again.', '77766', '2016-04-28 09:44:55'),
('INVALID_TOKEN', 'The specified token is invalid, please use a valid token.', '77768', '2016-04-28 09:46:58'),
('CHARGING_ERROR', 'An error ocurred, please try again.', '77770', '2016-04-28 09:53:11'),
('NO_FUNDS', 'User does not have enough balance.', '77772', '2016-04-28 09:53:12'),
('SYSTEM_ERROR', 'An error ocurred. Please try again.', '77775', '2016-04-28 09:55:36'),
('NO_FUNDS', 'User does not have enough balance.', '77777', '2016-04-28 09:55:37'),
('SUCCESS', 'Request processed correctly.', '77779', '2016-04-28 09:55:37'),
('CHARGING_ERROR', 'An error ocurred, please try again.', '77781', '2016-04-28 09:55:38'),
('CHARGING_ERROR', 'An error ocurred, please try again.', '77783', '2016-04-28 09:55:39'),
('NO_FUNDS', 'User does not have enough balance.', '77785', '2016-04-28 09:58:06'),
('CHARGING_ERROR', 'An error ocurred, please try again.', '77787', '2016-04-28 09:58:07'),
('NO_FUNDS', 'User does not have enough balance.', '77789', '2016-04-28 09:58:07'),
('NO_FUNDS', 'User does not have enough balance.', '77791', '2016-04-28 09:58:07'),
('SYSTEM_ERROR', 'An error ocurred. Please try again.', '77793', '2016-04-28 09:58:08'),
('CHARGING_ERROR', 'An error ocurred, please try again.', '77795', '2016-04-28 09:58:08'),
('SYSTEM_ERROR', 'An error ocurred. Please try again.', '77797', '2016-04-28 09:58:09'),
('SYSTEM_ERROR', 'An error ocurred. Please try again.', '77799', '2016-04-28 09:58:10'),
('SUCCESS', 'Request processed correctly.', '77801', '2016-04-28 09:58:10'),
('MISSING_PROPERTY', 'Missing property in XML. Please send a correct XML.', '77803', '2016-04-28 09:58:11'),
('NO_FUNDS', 'User does not have enough balance.', '77805', '2016-04-28 09:58:12'),
('SYSTEM_ERROR', 'An error ocurred. Please try again.', '77807', '2016-04-28 09:58:12'),
('SYSTEM_ERROR', 'An error ocurred. Please try again.', '77809', '2016-04-28 09:58:13'),
('SUCCESS', 'Request processed correctly.', '77811', '2016-04-28 09:58:13'),
('SYSTEM_ERROR', 'An error ocurred. Please try again.', '77813', '2016-04-28 09:58:14'),
('SYSTEM_ERROR', 'An error ocurred. Please try again.', '77815', '2016-04-28 09:58:15'),
('CHARGING_ERROR', 'An error ocurred, please try again.', '77874', '2016-04-28 10:01:06'),
('MISSING_PROPERTY', 'Missing property in XML. Please send a correct XML.', '77876', '2016-04-28 10:01:08'),
('MISSING_PROPERTY', 'Missing property in XML. Please send a correct XML.', '77878', '2016-04-28 10:01:09'),
('SUCCESS', 'Request processed correctly.', '77880', '2016-04-28 10:01:09'),
('NO_FUNDS', 'User does not have enough balance.', '77882', '2016-04-28 10:01:10'),
('NO_FUNDS', 'User does not have enough balance.', '77884', '2016-04-28 10:02:40'),
('NO_FUNDS', 'User does not have enough balance.', '77886', '2016-04-28 10:03:32'),
('SYSTEM_ERROR', 'An error ocurred. Please try again.', '77888', '2016-04-28 10:03:47'),
('SUCCESS', 'Request processed correctly.', '77890', '2016-04-28 10:03:49'),
('CHARGING_ERROR', 'An error ocurred, please try again.', '77892', '2016-04-28 10:03:50'),
('NO_FUNDS', 'User does not have enough balance.', '77894', '2016-04-28 10:03:56'),
('SUCCESS', 'Request processed correctly.', '77896', '2016-04-28 10:03:56'),
('NO_FUNDS', 'User does not have enough balance.', '77898', '2016-04-28 10:03:57'),
('SUCCESS', 'Request processed correctly.', '77900', '2016-04-28 10:03:57'),
('NO_FUNDS', 'User does not have enough balance.', '77902', '2016-04-28 10:03:58'),
('NO_FUNDS', 'User does not have enough balance.', '77904', '2016-04-28 10:03:58'),
('MISSING_PROPERTY', 'Missing property in XML. Please send a correct XML.', '77906', '2016-04-28 10:03:58'),
('SYSTEM_ERROR', 'An error ocurred. Please try again.', '77908', '2016-04-28 10:03:59'),
('MISSING_PROPERTY', 'Missing property in XML. Please send a correct XML.', '77910', '2016-04-28 10:03:59'),
('NO_FUNDS', 'User does not have enough balance.', '77912', '2016-04-28 10:03:59'),
('SUCCESS', 'Request processed correctly.', '77914', '2016-04-28 10:04:00'),
('MISSING_PROPERTY', 'Missing property in XML. Please send a correct XML.', '77916', '2016-04-28 10:04:00'),
('MISSING_PROPERTY', 'Missing property in XML. Please send a correct XML.', '77918', '2016-04-28 10:04:01'),
('NO_FUNDS', 'User does not have enough balance.', '77920', '2016-04-28 10:04:38'),
('SYSTEM_ERROR', 'An error ocurred. Please try again.', '77980', '2016-04-28 10:06:11'),
('NO_FUNDS', 'User does not have enough balance.', '77982', '2016-04-28 10:07:13'),
('CHARGING_ERROR', 'An error ocurred, please try again.', '77984', '2016-04-28 10:07:55'),
('NO_FUNDS', 'User does not have enough balance.', '77986', '2016-04-28 10:07:55'),
('CHARGING_ERROR', 'An error ocurred, please try again.', '77988', '2016-04-28 10:07:56'),
('SUCCESS', 'Request processed correctly.', '77990', '2016-04-28 10:08:08'),
('NO_FUNDS', 'User does not have enough balance.', '77992', '2016-04-28 10:08:09'),
('NO_FUNDS', 'User does not have enough balance.', '77994', '2016-04-28 10:08:10'),
('NO_FUNDS', 'User does not have enough balance.', '77996', '2016-04-28 10:08:48'),
('NO_FUNDS', 'User does not have enough balance.', '77999', '2016-04-28 10:08:49'),
('SUCCESS', 'Request processed correctly.', '78002', '2016-04-28 10:08:51'),
('SUCCESS', 'Request processed correctly.', '78005', '2016-04-28 10:08:51'),
('NO_FUNDS', 'User does not have enough balance.', '78008', '2016-04-28 10:08:52'),
('NO_FUNDS', 'User does not have enough balance.', '78011', '2016-04-28 10:08:52'),
('MISSING_PROPERTY', 'Missing property in XML. Please send a correct XML.', '78014', '2016-04-28 10:08:52'),
('MISSING_PROPERTY', 'Missing property in XML. Please send a correct XML.', '78017', '2016-04-28 10:08:53'),
('NO_FUNDS', 'User does not have enough balance.', '78020', '2016-04-28 10:08:54'),
('NO_FUNDS', 'User does not have enough balance.', '78023', '2016-04-28 10:08:54'),
('NO_FUNDS', 'User does not have enough balance.', '78026', '2016-04-28 10:08:55'),
('MISSING_PROPERTY', 'Missing property in XML. Please send a correct XML.', '78029', '2016-04-28 10:08:56'),
('NO_FUNDS', 'User does not have enough balance.', '78032', '2016-04-28 10:08:56'),
('NO_FUNDS', 'User does not have enough balance.', '78035', '2016-04-28 10:08:57'),
('NO_FUNDS', 'User does not have enough balance.', '78038', '2016-04-28 10:13:08'),
('NO_FUNDS', 'User does not have enough balance.', '78041', '2016-04-28 10:13:09'),
('NO_FUNDS', 'User does not have enough balance.', '78044', '2016-04-28 10:13:10'),
('NO_FUNDS', 'User does not have enough balance.', '78047', '2016-04-28 10:13:11'),
('SUCCESS', 'Request processed correctly.', '78050', '2016-04-28 10:13:11'),
('CHARGING_ERROR', 'An error ocurred, please try again.', '78053', '2016-04-28 10:13:12'),
('NO_FUNDS', 'User does not have enough balance.', '78056', '2016-04-28 10:13:12'),
('NO_FUNDS', 'User does not have enough balance.', '78059', '2016-04-28 10:13:13'),
('CHARGING_ERROR', 'An error ocurred, please try again.', '78128', '2016-04-28 10:18:17'),
('CHARGING_ERROR', 'An error ocurred, please try again.', '78131', '2016-04-28 10:18:17'),
('SYSTEM_ERROR', 'An error ocurred. Please try again.', '78134', '2016-04-28 10:19:09'),
('NO_FUNDS', 'User does not have enough balance.', '78137', '2016-04-28 10:19:09'),
('NO_FUNDS', 'User does not have enough balance.', '78140', '2016-04-28 10:19:10'),
('CHARGING_ERROR', 'An error ocurred, please try again.', '78143', '2016-04-28 10:19:10'),
('MISSING_PROPERTY', 'Missing property in XML. Please send a correct XML.', '78146', '2016-04-28 10:19:11'),
('MISSING_PROPERTY', 'Missing property in XML. Please send a correct XML.', '78149', '2016-04-28 10:19:12'),
('SUCCESS', 'Request processed correctly.', '78152', '2016-04-28 10:19:12'),
('MISSING_PROPERTY', 'Missing property in XML. Please send a correct XML.', '78155', '2016-04-28 10:19:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio1`
--

CREATE TABLE `servicio1` (
  `id` int(5) NOT NULL,
  `telefono` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `servicio1`
--

INSERT INTO `servicio1` (`id`, `telefono`) VALUES
(1, 616616616),
(2, 971971971);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smslogs`
--

CREATE TABLE `smslogs` (
  `text` text NOT NULL,
  `misdn` int(9) NOT NULL,
  `transaction` varchar(40) NOT NULL,
  `id_sms` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smsrequestlog`
--

CREATE TABLE `smsrequestlog` (
  `shortcode` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `msisdn` varchar(255) NOT NULL,
  `transaction` varchar(255) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `smsrequestlog`
--

INSERT INTO `smsrequestlog` (`shortcode`, `text`, `msisdn`, `transaction`, `time`) VALUES
('34', 'Se ha procesado un cobro de 1$ por sus suscripción', '616616616', '-70717439', '2016-04-28 10:08:48'),
('34', 'Se ha procesado un cobro de 1$ por sus suscripción', '971971971', '-3758079', '2016-04-28 10:08:49'),
('34', 'Se ha procesado un cobro de 1$ por sus suscripción', '616616616', '-115957759', '2016-04-28 10:08:51'),
('34', 'Se ha procesado un cobro de 1$ por sus suscripción', '971971971', '-148449279', '2016-04-28 10:08:51'),
('34', 'Se ha procesado un cobro de 1$ por sus suscripción', '616616616', '-106275839', '2016-04-28 10:08:52'),
('34', 'Se ha procesado un cobro de 1$ por sus suscripción', '971971971', '-37964799', '2016-04-28 10:08:52'),
('34', 'Se ha procesado un cobro de 1$ por sus suscripción', '616616616', '-67809279', '2016-04-28 10:08:52'),
('34', 'Se ha procesado un cobro de 1$ por sus suscripción', '971971971', '-108001279', '2016-04-28 10:08:53'),
('34', 'Se ha procesado un cobro de 1$ por sus suscripción', '616616616', '-141230079', '2016-04-28 10:08:54'),
('34', 'Se ha procesado un cobro de 1$ por sus suscripción', '971971971', '-55429119', '2016-04-28 10:08:54'),
('34', 'Se ha procesado un cobro de 1$ por sus suscripción', '616616616', '-131747839', '2016-04-28 10:08:55'),
('34', 'Se ha procesado un cobro de 1$ por sus suscripción', '971971971', '-79861759', '2016-04-28 10:08:56'),
('34', 'Se ha procesado un cobro de 1$ por sus suscripción', '616616616', '-86548479', '2016-04-28 10:08:56'),
('34', 'Se ha procesado un cobro de 1$ por sus suscripción', '971971971', '-18769919', '2016-04-28 10:08:57'),
('34', 'Se ha procesado un cobro de 1$ por sus suscripción', '616616616', '-54420479', '2016-04-28 10:13:08'),
('34', 'Se ha procesado un cobro de 1$ por sus suscripción', '971971971', '-65407999', '2016-04-28 10:13:09'),
('34', 'Se ha procesado un cobro de 1$ por sus suscripción', '616616616', '-51409919', '2016-04-28 10:13:10'),
('34', 'Se ha procesado un cobro de 1$ por sus suscripción', '971971971', '-44538879', '2016-04-28 10:13:11'),
('34', 'Se ha procesado un cobro de 1$ por sus suscripción', '616616616', '-155550719', '2016-04-28 10:13:11'),
('34', 'Se ha procesado un cobro de 1$ por sus suscripción', '971971971', '-112471039', '2016-04-28 10:13:12'),
('34', 'Se ha procesado un cobro de 1$ por sus suscripción', '616616616', '-141399039', '2016-04-28 10:13:12'),
('34', 'Se ha procesado un cobro de 1$ por sus suscripción', '971971971', '-1817599', '2016-04-28 10:13:13'),
('34', 'Se ha procesado un cobro de 1$ por sus suscripción', '616616616', '-29598719', '2016-04-28 10:18:17'),
('34', 'Se ha procesado un cobro de 1$ por sus suscripción', '971971971', '-71388159', '2016-04-28 10:18:17'),
('34', 'Se ha procesado un cobro de 1$ por sus suscripción', '616616616', '-58081279', '2016-04-28 10:19:09'),
('34', 'Se ha procesado un cobro de 1$ por sus suscripción', '971971971', '-134154239', '2016-04-28 10:19:09'),
('34', 'Se ha procesado un cobro de 1$ por sus suscripción', '616616616', '-51056639', '2016-04-28 10:19:10'),
('34', 'Se ha procesado un cobro de 1$ por sus suscripción', '971971971', '-141383679', '2016-04-28 10:19:10'),
('34', 'Se ha procesado un cobro de 1$ por sus suscripción', '616616616', '-159211519', '2016-04-28 10:19:11'),
('34', 'Se ha procesado un cobro de 1$ por sus suscripción', '971971971', '-13445119', '2016-04-28 10:19:12'),
('34', 'Se ha procesado un cobro de 1$ por sus suscripción', '616616616', '-83988479', '2016-04-28 10:19:12'),
('34', 'Se ha procesado un cobro de 1$ por sus suscripción', '971971971', '-78632959', '2016-04-28 10:19:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smsresponselog`
--

CREATE TABLE `smsresponselog` (
  `statusCode` varchar(255) NOT NULL,
  `statusMessage` varchar(255) NOT NULL,
  `txId` varchar(255) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `smsresponselog`
--

INSERT INTO `smsresponselog` (`statusCode`, `statusMessage`, `txId`, `time`) VALUES
('INVALID_XML', 'XML is not valid, please send a well formed XML.', '77997', '2016-04-28 10:08:49'),
('INVALID_XML', 'XML is not valid, please send a well formed XML.', '78000', '2016-04-28 10:08:49'),
('INVALID_XML', 'XML is not valid, please send a well formed XML.', '78003', '2016-04-28 10:08:51'),
('INVALID_XML', 'XML is not valid, please send a well formed XML.', '78006', '2016-04-28 10:08:51'),
('INVALID_XML', 'XML is not valid, please send a well formed XML.', '78009', '2016-04-28 10:08:52'),
('INVALID_XML', 'XML is not valid, please send a well formed XML.', '78012', '2016-04-28 10:08:52'),
('INVALID_XML', 'XML is not valid, please send a well formed XML.', '78015', '2016-04-28 10:08:53'),
('INVALID_XML', 'XML is not valid, please send a well formed XML.', '78018', '2016-04-28 10:08:53'),
('INVALID_XML', 'XML is not valid, please send a well formed XML.', '78021', '2016-04-28 10:08:54'),
('INVALID_XML', 'XML is not valid, please send a well formed XML.', '78024', '2016-04-28 10:08:54'),
('INVALID_XML', 'XML is not valid, please send a well formed XML.', '78027', '2016-04-28 10:08:55'),
('INVALID_XML', 'XML is not valid, please send a well formed XML.', '78030', '2016-04-28 10:08:56'),
('INVALID_XML', 'XML is not valid, please send a well formed XML.', '78033', '2016-04-28 10:08:56'),
('INVALID_XML', 'XML is not valid, please send a well formed XML.', '78036', '2016-04-28 10:08:57'),
('INVALID_XML', 'XML is not valid, please send a well formed XML.', '78039', '2016-04-28 10:13:09'),
('INVALID_XML', 'XML is not valid, please send a well formed XML.', '78042', '2016-04-28 10:13:09'),
('INVALID_XML', 'XML is not valid, please send a well formed XML.', '78045', '2016-04-28 10:13:10'),
('INVALID_XML', 'XML is not valid, please send a well formed XML.', '78048', '2016-04-28 10:13:11'),
('INVALID_XML', 'XML is not valid, please send a well formed XML.', '78051', '2016-04-28 10:13:11'),
('INVALID_XML', 'XML is not valid, please send a well formed XML.', '78054', '2016-04-28 10:13:12'),
('INVALID_XML', 'XML is not valid, please send a well formed XML.', '78057', '2016-04-28 10:13:12'),
('INVALID_XML', 'XML is not valid, please send a well formed XML.', '78060', '2016-04-28 10:13:13'),
('SUCCESS', 'Request processed correctly.', '78129', '2016-04-28 10:18:17'),
('SUCCESS', 'Request processed correctly.', '78132', '2016-04-28 10:18:18'),
('SYSTEM_ERROR', 'An error ocurred. Please try again.', '78135', '2016-04-28 10:19:09'),
('SUCCESS', 'Request processed correctly.', '78138', '2016-04-28 10:19:09'),
('SUCCESS', 'Request processed correctly.', '78141', '2016-04-28 10:19:10'),
('SUCCESS', 'Request processed correctly.', '78144', '2016-04-28 10:19:10'),
('SUCCESS', 'Request processed correctly.', '78147', '2016-04-28 10:19:11'),
('SUCCESS', 'Request processed correctly.', '78150', '2016-04-28 10:19:12'),
('SYSTEM_ERROR', 'An error ocurred. Please try again.', '78153', '2016-04-28 10:19:12'),
('SUCCESS', 'Request processed correctly.', '78156', '2016-04-28 10:19:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tokenrequestlog`
--

CREATE TABLE `tokenrequestlog` (
  `transaction` varchar(20) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tokenrequestlog`
--

INSERT INTO `tokenrequestlog` (`transaction`, `time`) VALUES
('1417979041', '0000-00-00 00:00:00'),
('1092407361', '2016-04-28 08:47:07'),
('213328321', '2016-04-28 08:47:08'),
('902105921', '2016-04-28 08:47:10'),
('1532403361', '2016-04-28 08:58:49'),
('901192961', '2016-04-28 08:58:50'),
('1150329601', '2016-04-28 09:07:55'),
('1393734881', '2016-04-28 09:08:30'),
('1459214401', '2016-04-28 09:12:18'),
('274750241', '2016-04-28 09:12:19'),
('751264641', '2016-04-28 09:26:44'),
('420925281', '2016-04-28 09:41:37'),
('513184961', '2016-04-28 09:41:56'),
('1065322881', '2016-04-28 09:44:31'),
('96215841', '2016-04-28 09:44:55'),
('635268001', '2016-04-28 09:46:58'),
('1468749761', '2016-04-28 09:53:10'),
('15114561', '2016-04-28 09:53:11'),
('333788321', '2016-04-28 09:55:36'),
('366046241', '2016-04-28 09:55:36'),
('966368161', '2016-04-28 09:55:37'),
('420823841', '2016-04-28 09:55:38'),
('1170465441', '2016-04-28 09:55:38'),
('1246849761', '2016-04-28 09:58:06'),
('1527432801', '2016-04-28 09:58:06'),
('947804641', '2016-04-28 09:58:07'),
('998575361', '2016-04-28 09:58:07'),
('1533519201', '2016-04-28 09:58:08'),
('1033267841', '2016-04-28 09:58:08'),
('1155148001', '2016-04-28 09:58:08'),
('176252001', '2016-04-28 09:58:09'),
('1453381601', '2016-04-28 09:58:10'),
('364118881', '2016-04-28 09:58:11'),
('1427007201', '2016-04-28 09:58:11'),
('19628641', '2016-04-28 09:58:12'),
('660526561', '2016-04-28 09:58:12'),
('389276001', '2016-04-28 09:58:13'),
('400434401', '2016-04-28 09:58:14'),
('1057562721', '2016-04-28 09:58:14'),
('1195013921', '2016-04-28 10:00:42'),
('1119694721', '2016-04-28 10:01:06'),
('339621121', '2016-04-28 10:01:08'),
('634000001', '2016-04-28 10:01:08'),
('81152001', '2016-04-28 10:01:09'),
('914380161', '2016-04-28 10:01:10'),
('1032152001', '2016-04-28 10:02:39'),
('1318415681', '2016-04-28 10:03:32'),
('322528481', '2016-04-28 10:03:47'),
('1586521601', '2016-04-28 10:03:49'),
('680307361', '2016-04-28 10:03:50'),
('1597375681', '2016-04-28 10:03:55'),
('303660641', '2016-04-28 10:03:56'),
('20085121', '2016-04-28 10:03:57'),
('1107775521', '2016-04-28 10:03:57'),
('665547841', '2016-04-28 10:03:57'),
('863710881', '2016-04-28 10:03:58'),
('1216417761', '2016-04-28 10:03:58'),
('1151039681', '2016-04-28 10:03:58'),
('437003521', '2016-04-28 10:03:59'),
('1331044961', '2016-04-28 10:03:59'),
('1196789121', '2016-04-28 10:04:00'),
('1194405281', '2016-04-28 10:04:00'),
('1421022241', '2016-04-28 10:04:00'),
('1491675201', '2016-04-28 10:04:38'),
('700138881', '2016-04-28 10:06:08'),
('810556321', '2016-04-28 10:07:13'),
('801122401', '2016-04-28 10:07:54'),
('449379201', '2016-04-28 10:07:55'),
('702827041', '2016-04-28 10:07:56'),
('1138765441', '2016-04-28 10:08:08'),
('374567201', '2016-04-28 10:08:09'),
('1644646721', '2016-04-28 10:08:10'),
('172448001', '2016-04-28 10:08:48'),
('1656413761', '2016-04-28 10:08:49'),
('1032862081', '2016-04-28 10:08:50'),
('203995841', '2016-04-28 10:08:51'),
('108388641', '2016-04-28 10:08:51'),
('1585456481', '2016-04-28 10:08:52'),
('812331521', '2016-04-28 10:08:52'),
('1332211521', '2016-04-28 10:08:53'),
('809288321', '2016-04-28 10:08:53'),
('938015681', '2016-04-28 10:08:54'),
('1491168001', '2016-04-28 10:08:55'),
('735338561', '2016-04-28 10:08:55'),
('832416641', '2016-04-28 10:08:56'),
('1607113921', '2016-04-28 10:08:56'),
('750300961', '2016-04-28 10:13:08'),
('416056161', '2016-04-28 10:13:09'),
('55031201', '2016-04-28 10:13:10'),
('1543460321', '2016-04-28 10:13:10'),
('57668641', '2016-04-28 10:13:11'),
('1109500001', '2016-04-28 10:13:11'),
('1017899681', '2016-04-28 10:13:12'),
('620356321', '2016-04-28 10:13:12'),
('1530171681', '2016-04-28 10:18:17'),
('1604932961', '2016-04-28 10:18:17'),
('284234881', '2016-04-28 10:19:09'),
('1289403841', '2016-04-28 10:19:09'),
('1431927041', '2016-04-28 10:19:10'),
('1150025281', '2016-04-28 10:19:10'),
('1253595521', '2016-04-28 10:19:11'),
('320854721', '2016-04-28 10:19:11'),
('693443841', '2016-04-28 10:19:12'),
('1333428801', '2016-04-28 10:19:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tokenresponselog`
--

CREATE TABLE `tokenresponselog` (
  `statusCode` varchar(255) NOT NULL,
  `statusMessage` varchar(255) NOT NULL,
  `txId` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tokenresponselog`
--

INSERT INTO `tokenresponselog` (`statusCode`, `statusMessage`, `txId`, `token`, `time`) VALUES
('TOKEN_SUCCESS', 'Token generated successfully.', '75528', '7207920f11951c4f0a0d49d07247a5cc', '0000-00-00 00:00:00'),
('TOKEN_SUCCESS', 'Token generated successfully.', '75530', '3608d62698f54d688af0f5300cec6b95', '2016-04-28 08:47:07'),
('TOKEN_SUCCESS', 'Token generated successfully.', '75532', '1ab0bba9011b9cddb455051e602313fc', '2016-04-28 08:47:09'),
('TOKEN_SUCCESS', 'Token generated successfully.', '75534', '5afcee765f206866a0ff93fcc891531c', '2016-04-28 08:47:11'),
('TOKEN_SUCCESS', 'Token generated successfully.', '76139', '666e7e06bca24f31172aa29d105ec653', '2016-04-28 08:58:49'),
('TOKEN_SUCCESS', 'Token generated successfully.', '76150', 'ac614a3678c127bc66c214cf27f9cb6b', '2016-04-28 08:58:51'),
('TOKEN_SUCCESS', 'Token generated successfully.', '76554', '2988867903b0e96b958bf90d743fb82a', '2016-04-28 09:07:55'),
('TOKEN_SUCCESS', 'Token generated successfully.', '76589', '880a043b688ecd42cb99838a4ab8b140', '2016-04-28 09:08:31'),
('TOKEN_SUCCESS', 'Token generated successfully.', '76762', '3b547e39f936f10ee0dca9fa5e987c67', '2016-04-28 09:12:18'),
('SYSTEM_ERROR', 'An error ocurred. Please try again.', '76763', '', '2016-04-28 09:12:20'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77427', '98427553bfc93468e07c2c4fc03ab71a', '2016-04-28 09:26:44'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77760', '20eea26f5f06cad31585a6e6976105c6', '2016-04-28 09:41:37'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77761', '4b643cb564be0ece402590741f4348c6', '2016-04-28 09:41:57'),
('SYSTEM_ERROR', 'An error ocurred. Please try again.', '77763', '', '2016-04-28 09:44:31'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77765', '40783d3de4e6678ca6c7343b0df3ed5a', '2016-04-28 09:44:55'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77767', 'c411b429c44b5b7aa0f79e733c83f609', '2016-04-28 09:46:58'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77769', '6484ccfdbef376f0d4abdbc41fb03ba4', '2016-04-28 09:53:10'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77771', '8ea59c820e547da20a0f8033c3d9cb69', '2016-04-28 09:53:12'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77774', 'c5d4780121f387785849424528a9b3aa', '2016-04-28 09:55:36'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77776', '8923226696037c15bd428c86a8b95422', '2016-04-28 09:55:36'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77778', '1cf7621b2eac9f5cd0cc843ab983a336', '2016-04-28 09:55:37'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77780', '809ab6be111607cb864b73527a091e1f', '2016-04-28 09:55:38'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77782', 'dff4f2cf52d2257e6d74920a750e0805', '2016-04-28 09:55:39'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77784', '7e5f270cd09093cf768858ca9cee729b', '2016-04-28 09:58:06'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77786', '6d8ad6b0539885ac562b5119983fb647', '2016-04-28 09:58:06'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77788', '98c31893dc0199389fd98545fdcbbacc', '2016-04-28 09:58:07'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77790', '330f2bf8d6cec2ded8b1ea4b84f0dca8', '2016-04-28 09:58:07'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77792', '9c6a61e17475e2328dd343d48cab3e42', '2016-04-28 09:58:08'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77794', 'd39266534b3bbbcd0bcb8ce5913631b7', '2016-04-28 09:58:08'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77796', '214b9f70f9238c7a46848e374a79b886', '2016-04-28 09:58:08'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77798', '2227f3d9ec0e1b00c0f3ea3fcff8b91a', '2016-04-28 09:58:09'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77800', '5f2f2362c00ede7c4c5b25149a973709', '2016-04-28 09:58:10'),
('SYSTEM_ERROR', 'An error ocurred. Please try again.', '77802', '', '2016-04-28 09:58:11'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77804', '7d6cbf1f478fc59ca3eba906426a570f', '2016-04-28 09:58:11'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77806', 'ccdc1ee3cbe2340192fcaace9cfaadff', '2016-04-28 09:58:12'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77808', '6ae3187c9704705d64e1b4cf71a06614', '2016-04-28 09:58:13'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77810', 'b77d90e503ee41c105721fe55fcd63eb', '2016-04-28 09:58:13'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77812', '27852b664c6b1a390c499273c469573c', '2016-04-28 09:58:14'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77814', '90fa4ac1029cf8e9d5f013ead7d849a8', '2016-04-28 09:58:15'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77872', 'f93aef11d16b83dd2102da18099fe63e', '2016-04-28 10:00:42'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77873', 'b116dd5223a54c2b9aee40bfdb728171', '2016-04-28 10:01:06'),
('SYSTEM_ERROR', 'An error ocurred. Please try again.', '77875', '', '2016-04-28 10:01:08'),
('SYSTEM_ERROR', 'An error ocurred. Please try again.', '77877', '', '2016-04-28 10:01:09'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77879', 'c705d7f051ac9df3b400dce3ab3df3b7', '2016-04-28 10:01:09'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77881', '207b53911ce938ec66b30cdc837dddfd', '2016-04-28 10:01:10'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77883', '20518005d5645a53c882efa2c5fb126d', '2016-04-28 10:02:40'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77885', 'fcc1fc4d1c0d31581271146b3be69f17', '2016-04-28 10:03:32'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77887', 'b6285f7ca25551f499c3c7bd762e9b17', '2016-04-28 10:03:47'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77889', '4d9df5fc681a6ef745fdfadb5a799efa', '2016-04-28 10:03:49'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77891', '369379f1f132a7ebae72eb2106e9faf1', '2016-04-28 10:03:50'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77893', '088137f952d64e4e684c0c6b0faaa75e', '2016-04-28 10:03:55'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77895', 'df2d79991feb62aea2815f49444cfade', '2016-04-28 10:03:56'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77897', 'add76da17a7c8e28378cb919f44ca62c', '2016-04-28 10:03:57'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77899', '8d8ec57ea25a7513c0a68ea9846ff262', '2016-04-28 10:03:57'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77901', '3db965dbeac48c0f94d016cc7648643b', '2016-04-28 10:03:58'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77903', 'e24132bc627481a7d151335cba2ccbe1', '2016-04-28 10:03:58'),
('SYSTEM_ERROR', 'An error ocurred. Please try again.', '77905', '', '2016-04-28 10:03:58'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77907', '686fec06e6c442d5db0dfbc71c9b3383', '2016-04-28 10:03:58'),
('SYSTEM_ERROR', 'An error ocurred. Please try again.', '77909', '', '2016-04-28 10:03:59'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77911', '144323a6eb7279930006f23a20d639da', '2016-04-28 10:03:59'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77913', '5c03b204119a312dfbad876a6e87f025', '2016-04-28 10:04:00'),
('SYSTEM_ERROR', 'An error ocurred. Please try again.', '77915', '', '2016-04-28 10:04:00'),
('SYSTEM_ERROR', 'An error ocurred. Please try again.', '77917', '', '2016-04-28 10:04:01'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77919', '6673f6b9778686be1195e6721db92024', '2016-04-28 10:04:38'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77979', '2d46fc1e95f317b3dc221fc86120e10e', '2016-04-28 10:06:11'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77981', '83f890c1a4796aa3205f2c405c727f2a', '2016-04-28 10:07:13'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77983', 'd744e4c911de395672c3ae7c17d78323', '2016-04-28 10:07:54'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77985', '3249cd54a0285ec1f19698d236fc33ec', '2016-04-28 10:07:55'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77987', '9d6a88b5be354e8761643f1e8219fd41', '2016-04-28 10:07:56'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77989', '22392355726627a4cfb56d9e73f0099e', '2016-04-28 10:08:08'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77991', '788aa41b91b34a7ead0df6956a167672', '2016-04-28 10:08:09'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77993', '1aea425fe9a8d4be1a1263e174b32fad', '2016-04-28 10:08:10'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77995', 'ca85d615b4ef2fa52cd7916971b1c5e8', '2016-04-28 10:08:48'),
('TOKEN_SUCCESS', 'Token generated successfully.', '77998', '76581a3168084b8beace97dad797c9ae', '2016-04-28 10:08:49'),
('TOKEN_SUCCESS', 'Token generated successfully.', '78001', 'bdf456af2bdc7183b5c2d5c70552dc6a', '2016-04-28 10:08:51'),
('TOKEN_SUCCESS', 'Token generated successfully.', '78004', '7dcad1e0c07e0193c3446bad96fa8b58', '2016-04-28 10:08:51'),
('TOKEN_SUCCESS', 'Token generated successfully.', '78007', '36be0ee87245aa16bc15633ad97644d5', '2016-04-28 10:08:51'),
('TOKEN_SUCCESS', 'Token generated successfully.', '78010', 'da43bb1c2742e3f90940b77f379cd818', '2016-04-28 10:08:52'),
('SYSTEM_ERROR', 'An error ocurred. Please try again.', '78013', '', '2016-04-28 10:08:52'),
('SYSTEM_ERROR', 'An error ocurred. Please try again.', '78016', '', '2016-04-28 10:08:53'),
('TOKEN_SUCCESS', 'Token generated successfully.', '78019', 'f5bedf85d74b14e94d33938950778d54', '2016-04-28 10:08:54'),
('TOKEN_SUCCESS', 'Token generated successfully.', '78022', '1b3ee39a22338590e28e2a18184c47a0', '2016-04-28 10:08:54'),
('TOKEN_SUCCESS', 'Token generated successfully.', '78025', 'c0fff53588d08152823b959864d15938', '2016-04-28 10:08:55'),
('SYSTEM_ERROR', 'An error ocurred. Please try again.', '78028', '', '2016-04-28 10:08:55'),
('TOKEN_SUCCESS', 'Token generated successfully.', '78031', 'c616876828a7ab7f0d7c9a6338aab9e0', '2016-04-28 10:08:56'),
('TOKEN_SUCCESS', 'Token generated successfully.', '78034', 'f975f959b514c255707bbcad905e583e', '2016-04-28 10:08:57'),
('TOKEN_SUCCESS', 'Token generated successfully.', '78037', '5a10a25a409443a63b3f50cf56d3dc6e', '2016-04-28 10:13:08'),
('TOKEN_SUCCESS', 'Token generated successfully.', '78040', 'b7d41a15fb261a91c435395c4c021c5f', '2016-04-28 10:13:09'),
('TOKEN_SUCCESS', 'Token generated successfully.', '78043', 'a98e84f4c6a86a5360d186d9eac1a4f0', '2016-04-28 10:13:10'),
('TOKEN_SUCCESS', 'Token generated successfully.', '78046', 'a950d3beccaf0cbd41f0dc71941eb95f', '2016-04-28 10:13:10'),
('TOKEN_SUCCESS', 'Token generated successfully.', '78049', '36a0234b2734f3a402800019dd6df379', '2016-04-28 10:13:11'),
('TOKEN_SUCCESS', 'Token generated successfully.', '78052', '6ed61eaa2018846e2fa3d9e043d1b20b', '2016-04-28 10:13:11'),
('TOKEN_SUCCESS', 'Token generated successfully.', '78055', '6c4230e67b04cb132eb9aa96663e9101', '2016-04-28 10:13:12'),
('TOKEN_SUCCESS', 'Token generated successfully.', '78058', 'e401599fc499a12abead53ef73565213', '2016-04-28 10:13:13'),
('TOKEN_SUCCESS', 'Token generated successfully.', '78127', '469d88a19a645ab16e8bbc21bc226b3c', '2016-04-28 10:18:17'),
('TOKEN_SUCCESS', 'Token generated successfully.', '78130', '2c3cc7282a38b957c70bb659b5d7b197', '2016-04-28 10:18:17'),
('TOKEN_SUCCESS', 'Token generated successfully.', '78133', '3d9c27cf76a60f1320e2d49294c1b082', '2016-04-28 10:19:09'),
('TOKEN_SUCCESS', 'Token generated successfully.', '78136', 'd8b2a5722a977e5b2a505c73d1c042cf', '2016-04-28 10:19:09'),
('TOKEN_SUCCESS', 'Token generated successfully.', '78139', '1e68da702b3e9af2aa770199ca1147fc', '2016-04-28 10:19:10'),
('TOKEN_SUCCESS', 'Token generated successfully.', '78142', 'aa9e628bbd8b17a85f39b3dc163953ca', '2016-04-28 10:19:10'),
('SYSTEM_ERROR', 'An error ocurred. Please try again.', '78145', '', '2016-04-28 10:19:11'),
('SYSTEM_ERROR', 'An error ocurred. Please try again.', '78148', '', '2016-04-28 10:19:11'),
('TOKEN_SUCCESS', 'Token generated successfully.', '78151', 'f3392f1249fb3ceaec29287fd49ba884', '2016-04-28 10:19:12'),
('SYSTEM_ERROR', 'An error ocurred. Please try again.', '78154', '', '2016-04-28 10:19:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_user` int(5) NOT NULL,
  `telefono` int(9) NOT NULL,
  `password` varchar(40) NOT NULL,
  `saldo` int(11) NOT NULL,
  `estado_alta` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_user`, `telefono`, `password`, `saldo`, `estado_alta`) VALUES
(1, 616616616, 'd8578edf8458ce06fbc5bb76a58c5ca4', 429, 1),
(2, 123456789, 'd8578edf8458ce06fbc5bb76a58c5ca4', 27, 0),
(5, 971971971, 'd8578edf8458ce06fbc5bb76a58c5ca4', 87, 1),
(12, 1, 'd8578edf8458ce06fbc5bb76a58c5ca4', 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `altaslogs`
--
ALTER TABLE `altaslogs`
  ADD PRIMARY KEY (`id_alta`);

--
-- Indices de la tabla `bajaslogs`
--
ALTER TABLE `bajaslogs`
  ADD PRIMARY KEY (`id_baja`);

--
-- Indices de la tabla `servicio1`
--
ALTER TABLE `servicio1`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `altaslogs`
--
ALTER TABLE `altaslogs`
  MODIFY `id_alta` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `bajaslogs`
--
ALTER TABLE `bajaslogs`
  MODIFY `id_baja` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `servicio1`
--
ALTER TABLE `servicio1`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
