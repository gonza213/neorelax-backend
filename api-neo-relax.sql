-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-12-2021 a las 22:11:05
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `api-neo-relax`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `usuario` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `rol` text NOT NULL,
  `foto` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `nombre`, `usuario`, `email`, `password`, `rol`, `foto`, `fecha`) VALUES
(3, 'Administrador', 'admin', 'admin@gmail.com', '$2y$05$2ihDv8vVf7QZ9BsaRrKyqeH5gKAC2X6K7MRsna2tL1qDBxZmvEhAO', 'administrador', 'views/assets/img/default-avatar.png', '2021-05-18 23:48:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `email` text NOT NULL,
  `tel` text NOT NULL,
  `mensaje` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `nombre`, `email`, `tel`, `mensaje`, `fecha`) VALUES
(25, 'Fabiana De Fino', 'fabianadefino@gmail.com', '000', 'Hola, quisiera saber el precio de las almohadas. De las tres variantes que aparecen en la página. Gracias', '2021-06-16 16:36:24'),
(26, 'Inés', 'ines.cs@hotmail.com', '11 59799924', 'Me enviarían precio de colchón de 1 plaza, 55 kg de densidad? Hasta cuántos kg resiste? El envío a Quilmes Centro estaría incluído? Gracias!', '2021-06-17 19:24:09'),
(27, 'Emilce', 'emilcelauruia@hotmail.com', '212', 'test', '2021-06-18 12:37:12'),
(51, 'Angeles', 'angelesmartinelli3@gmail.com', '1131417610', 'Hola, quería saber cual es el precio de los colchones de una plaza y de las almohadas vicoelásticas. Muchas Gracias', '2021-06-21 21:45:39'),
(52, 'Analia', 'analia_neve@yahoo.com', '01133405311', 'por favor responder mail una vez recibido.\ngracias', '2021-06-22 18:31:48'),
(64, 'Alexis Urrego', 'urregoalexis13@gmail.com', '2966504821', 'Hola! Quisiera saber cuanto esta el colchón de una plaza? Por favor espero su respuesta. Gracias', '2021-06-24 17:12:34'),
(72, 'German', 'elgallegoqac@gmail.com', '1163370447', 'Que tal? Quisiera saber el precio de la almohada Air Moon y si se puede retirar por fabrica? Compre hace un tiempo y son muy buenas. Muchas gracias, espero su respuesta.', '2021-07-02 13:00:58'),
(73, 'nicolas ', 'nicolassegovia925@gmail.com', '3455434396', 'buen dia, tienen lista de precios por mayor? gracias ', '2021-07-08 13:51:27'),
(74, 'Luis Ángel Bertucci ', 'luchobertucci@gmail.com', '02216408213', 'Buen día.\nCuanto sale el colchón de 1.40 x 2.00?\nCuanto sale la entrega en Ensenada?\nGracias', '2021-07-10 15:41:02'),
(75, 'Nancy Estela Araujo', 'nanestearaujo1968@gmail.com', '02613059520', 'Buenas tardes, el colchón de 1 x 2 de 85000 tiene el descuento del 40 % en 12 cuotas? Gracias', '2021-08-10 17:53:23'),
(76, 'Carolina', 'carola.monteagudo@gmail.com', '1532544308', 'Hola buenas noches, quería consultar si venden por unidad y el valor de la almohada dual curve. Muchas gracias', '2021-08-14 02:13:36'),
(77, 'Mariano', 'jmc198826@hotmail.com', '2241468457', 'Hola soy Mariano de chascomus. Tengo una consulta ustedes cómo fabrica directa habren sucursales en otras partes como ser chascomus ? Para expandir su marca y sus productos', '2021-08-31 13:39:00'),
(78, 'selene', 'selenelozanowaeber@gmail.com', '01131283679', 'me dirías en que precio queda el colchon de 190 x 140, si lo envían al interior? y si s epeude pagar en cuotas fijas con el descuento', '2021-10-12 19:01:42'),
(79, 'antonio', 'obregonsimonantonio@gmail.com', '1125361829', 'hola buenos dias queria hacerles una consulta estoy interesado en comprar una cama de 2 plasas y media queria saber cual es el precio y si pagando de contado en efectivo en que precio me queda desde ya muchas gracias y espero su mensaje!', '2021-10-25 13:43:55'),
(80, 'Sergio', 'maylenludica@gmail.com', '01169709822', 'Hola buenos días quisiera saber si trabajan p con placas de espuma viscoelástica, medidas espesores, compra minima y valor de las mismas.', '2021-10-28 13:07:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galeria`
--

CREATE TABLE `galeria` (
  `id_img` int(11) NOT NULL,
  `id_producto` text NOT NULL,
  `img` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `galeria`
--

INSERT INTO `galeria` (`id_img`, `id_producto`, `img`, `fecha`) VALUES
(10, '41', 'img/galeria/1622164324_dual curve 2.jpg', '2021-05-28 01:12:04'),
(11, '42', 'img/galeria/1622164528_dual relax.jpg', '2021-05-28 01:15:28'),
(12, '42', 'img/galeria/1622164547_dual relax (4).jpg', '2021-05-28 01:15:47'),
(13, '42', 'img/galeria/1622164571_dual relax (3).jpg', '2021-05-28 01:16:11'),
(16, '51', 'img/galeria/1622224026_La-primera-imagen-de-la-historia.jpg', '2021-05-28 17:47:06'),
(17, '33', 'img/galeria/1622224805_ventilada 70x40.jpg', '2021-05-28 18:00:05'),
(21, '33', 'img/galeria/1622225835_ventilada 70x35 (3).jpg', '2021-05-28 18:17:15'),
(23, '27', 'img/galeria/1622637828_sommier neorelax2.jpg', '2021-06-02 12:43:48'),
(24, '27', 'img/galeria/1622637847_sommier neorelax.jpg', '2021-06-02 12:44:07'),
(25, '', 'img/galeria/1622638049_1 plaza. neorelaxok.jpg', '2021-06-02 12:47:29'),
(26, '', 'img/galeria/1622638131_cierres neorelax.ok.jpg', '2021-06-02 12:48:51'),
(27, '25', 'img/galeria/1622638155_1 plaza. neorelaxok.jpg', '2021-06-02 12:49:15'),
(28, '29', 'img/galeria/1622638248_sommier 140 x 200. neorelax.ok.jpg', '2021-06-02 12:50:48'),
(29, '31', 'img/galeria/1622638460_sommier 200 x200 neorelax.ok.jpg', '2021-06-02 12:54:20'),
(30, '30', 'img/galeria/1622638470_sommier 160 x 200 neorelax.ok.jpg', '2021-06-02 12:54:30'),
(31, '57', 'img/galeria/1622639112_sommier 160 x 200 neorelax.ok.jpg', '2021-06-02 13:05:12'),
(32, '57', 'img/galeria/1622639123_sommier neorelax.jpg', '2021-06-02 13:05:23'),
(33, '57', 'img/galeria/1622639132_sommier neorelax2.jpg', '2021-06-02 13:05:32'),
(34, '57', 'img/galeria/1622639145_cierres neorelax.ok.jpg', '2021-06-02 13:05:44'),
(35, '33', 'img/galeria/1622639749_70 x 40. ok1.jpg', '2021-06-02 13:15:49'),
(36, '41', 'img/galeria/1622640266_dual curve2. ok.jpg', '2021-06-02 13:24:26'),
(40, '25', 'img/galeria/1622670555_cierres neorelax.ok.jpg', '2021-06-02 21:49:14'),
(41, '29', 'img/galeria/1622670583_cierres neorelax.ok.jpg', '2021-06-02 21:49:43'),
(42, '31', 'img/galeria/1622670618_cierres neorelax.ok.jpg', '2021-06-02 21:50:18'),
(43, '30', 'img/galeria/1622670648_cierres neorelax.ok.jpg', '2021-06-02 21:50:48'),
(44, '34', 'img/galeria/1622670736_cervical 70 x 40 ok.jpg', '2021-06-02 21:52:16'),
(45, '34', 'img/galeria/1622670761_60 x 40 ok.jpg', '2021-06-02 21:52:41'),
(46, '35', 'img/galeria/1622670792_cervical 70 x 40.2. ok.jpg', '2021-06-02 21:53:12'),
(47, '35', 'img/galeria/1622670889_cervical. ok.jpg', '2021-06-02 21:54:49'),
(48, '36', 'img/galeria/1622670956_70 x 35 acanalas.ok.jpg', '2021-06-02 21:55:56'),
(49, '36', 'img/galeria/1622670973_almohada 70 x 40. ok.jpg', '2021-06-02 21:56:13'),
(50, '37', 'img/galeria/1622671042_80 x 35 acanaladas.ok.jpg', '2021-06-02 21:57:22'),
(51, '38', 'img/galeria/1622671218_visco gel. neorelax. ok.jpg', '2021-06-02 22:00:18'),
(52, '38', 'img/galeria/1622671232_visco gel 2. neorelax.ok.jpg', '2021-06-02 22:00:32'),
(53, '39', 'img/galeria/1622671558_cervical baston2 60 x40 ok.jpg', '2021-06-02 22:05:58'),
(54, '39', 'img/galeria/1622671574_cervical baston3 60 x40 ok.jpg', '2021-06-02 22:06:14'),
(55, '40', 'img/galeria/1622671694_air moon. ok.jpg', '2021-06-02 22:08:14'),
(56, '40', 'img/galeria/1622671736_air moon2 ok.jpg', '2021-06-02 22:08:56'),
(57, '43', 'img/galeria/1622671857_antirronquido.ok.jpg', '2021-06-02 22:10:57'),
(58, '46', 'img/galeria/1622671978_almohada neorelax.2.ok.jpg', '2021-06-02 22:12:58'),
(59, '46', 'img/galeria/1622672001_almohada neorelax.ok.jpg', '2021-06-02 22:13:21'),
(60, '56', 'img/galeria/1622672119_almohadonok1.jpg', '2021-06-02 22:15:19'),
(61, '28', 'img/galeria/1622835808_cuello_banner.jpg', '2021-06-04 19:43:28'),
(62, '27', 'img/galeria/1623071684_sommier 140 x 200. neorelax.ok.jpg', '2021-06-07 13:14:44'),
(63, '58', 'img/galeria/1623071982_sommier neorelax.jpg', '2021-06-07 13:19:42'),
(64, '58', 'img/galeria/1623071996_sommier 160 x 200 neorelax.ok.jpg', '2021-06-07 13:19:56'),
(65, '61', 'img/galeria/1623072324_1 plaza. neorelaxok.jpg', '2021-06-07 13:25:24'),
(66, '61', 'img/galeria/1623072394_sommier neorelax.jpg', '2021-06-07 13:26:34'),
(67, '62', 'img/galeria/1623115535_ventilada 70x35 (2).jpg', '2021-06-08 01:25:34'),
(68, '62', 'img/galeria/1623115551_ventilada 70x35 (3).jpg', '2021-06-08 01:25:51'),
(69, '63', 'img/galeria/1623115659_80x40.jpg', '2021-06-08 01:27:39'),
(70, '63', 'img/galeria/1623115675_80x40 vent (2).jpg', '2021-06-08 01:27:55'),
(71, '65', 'img/galeria/1623116794_ventilada 70x35 (3).jpg', '2021-06-08 01:46:34'),
(72, '66', 'img/galeria/1623360730_almohada 70 x 40. ok.jpg', '2021-06-10 21:32:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `categoria` text NOT NULL,
  `precio` text NOT NULL,
  `stock` text NOT NULL,
  `intro` text NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` text NOT NULL,
  `alto` text NOT NULL,
  `ancho` text NOT NULL,
  `largo` text NOT NULL,
  `peso` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `titulo`, `categoria`, `precio`, `stock`, `intro`, `descripcion`, `imagen`, `alto`, `ancho`, `largo`, `peso`, `fecha`) VALUES
(25, 'Colchon una plaza y media', 'colchon', '94251', '23', '<p>Medida 100x200</p>\r\n<p>Precio en 12 cuotas sin inter&eacute;s.</p>\r\n<p><strong>DESCUENTOS DESDE EL 40% CONSULTAR</strong></p>', '<p>Colch&oacute;n de una plaza y media.</p>\r\n<p>Medida 100x200</p>\r\n<p><strong>Caracter&iacute;sticas:</strong></p>\r\n<ul>\r\n<li>&Uacute;nico colch&oacute;n inyectado en poliuretano. .</li>\r\n<li>Sin insertos m&eacute;talicos que se deformen.</li>\r\n<li>De soporte firme, suave y placentero.</li>\r\n<li><strong>DENSIDAD + 55 KG/M3. LO PUEDEN UTILIZAR PERSONAS DE CUALQUIER PESO.</strong></li>\r\n<li>Nivel de apoyo perfecto.</li>\r\n<li><strong>DESARMABLE</strong> ideal para trasladar en espacios reducidos.</li>\r\n<li>Funda desmontable y <strong>LAVABLE.</strong></li>\r\n</ul>\r\n<p>&nbsp;</p>', 'img/productos/colchon/810.jpg', '200', '100', '30', '55', '2021-05-26 21:38:58'),
(27, 'Conjunto 2.00 x 2.00', 'sommier', '210.535', '24', '<p><strong>Colch&oacute;n y Sommier 200x200</strong></p>\r\n<p><strong>Precio en 12 cuotas sin inter&eacute;s.</strong></p>\r\n<p><strong>DESCUENTOS DESDE EL 40%. CONSULTAR.</strong></p>', '<p><strong>CONJUNTO NEORELAX 200X200</strong></p>\r\n<p><strong>Caracter&iacute;sticas colch&oacute;n Neorelax.</strong></p>\r\n<ul>\r\n<li>&Uacute;nico colch&oacute;n inyectado en poliuretano. .</li>\r\n<li>Sin insertos m&eacute;talicos que se deformen.</li>\r\n<li>De soporte firme, suave y placentero.</li>\r\n<li><strong>DENSIDAD + 55 KG/M3. LO PUEDEN UTILIZAR PERSONAS DE CUALQUIER PESO.</strong></li>\r\n<li>Nivel de apoyo perfecto.</li>\r\n<li><strong>DESARMABLE</strong>&nbsp;ideal para trasladar en espacios reducidos.</li>\r\n<li>Funda desmontable y&nbsp;<strong>LAVABLE.</strong></li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p><strong>Sommier Neorelax&nbsp;</strong></p>\r\n<ul>\r\n<li>El colch&oacute;n va inserto en el sommier 2 cm. evitando el movimiento del mismo.</li>\r\n<li>Apoya sobre dos placas de MDF con patas, logrando un excelente amortiguaci&oacute;n y sost&eacute;n para el colch&oacute;n.</li>\r\n<li>Desarmable, ideal para trasladarlo en espacios reducidos (ascensores, escaleras).</li>\r\n</ul>', 'img/productos/sommier/674.jpg', '', '', '', '', '2021-05-27 05:41:44'),
(28, 'Cuello Musical', 'cuello', '1.300', '32', '<p>Cuello Musical</p>', '<p>Cuello Musical de diferentes colores</p>', 'img/productos/cuello/548.jpg', '', '', '', '', '2021-05-27 05:46:34'),
(29, 'Colchón 140 x 190', 'colchon', '110.609', '30', '<p>Medidas 140 x 190</p>\r\n<p>Precio en 12 cuotas sin inter&eacute;s.</p>\r\n<p>DESCUENTOS DESDE EL 40% CONSULTAR.</p>\r\n<p>&nbsp;</p>', '<p><span style=\"background-color: #ffffff;\"><strong>Colch&oacute;n 140 x 190</strong></span></p>\r\n<p><span style=\"background-color: #ffffff;\"><strong>Medida 140x190</strong></span></p>\r\n<p><strong>Caracter&iacute;sticas&nbsp;</strong></p>\r\n<ul>\r\n<li>&Uacute;nico colchon inyectado en poliuretano.</li>\r\n<li>Sin insertos met&aacute;licos que se deformen.</li>\r\n<li>De soporte firme, suave y placentero.</li>\r\n<li><strong>DENSIDAD + 55 KG/M3. LO PUEDEN UTILIZAR PERSONAS DE CUALQUIER PESO.</strong></li>\r\n<li>Nivel de apoyo perfecto.</li>\r\n<li><strong>DESARMABLE</strong>. Ideal pra trasladar en espacios reducidos.</li>\r\n<li>Funda desmontable y <strong>LAVABLE</strong>.</li>\r\n</ul>', 'img/productos/colchon/884.jpg', '', '', '', '', '2021-05-27 11:38:31'),
(30, 'Colchón 160 x 200', 'colchon', '145.829', '30', '<p>Medida 160x200</p>\r\n<p>Precio en 12 cuotas sin inter&eacute;s.</p>\r\n<p>DESCUENTOS DESDE EL 40% CONSULTAR.</p>', '<p><strong>Medidas 160 x 200</strong></p>\r\n<p><strong>Caracter&iacute;sticas:</strong></p>\r\n<ul>\r\n<li>&Uacute;nico colch&oacute;n inyectado en poliuretano. .</li>\r\n<li>Sin insertos m&eacute;talicos que se deformen.</li>\r\n<li>De soporte firme, suave y placentero.</li>\r\n<li><strong>DENSIDAD + 55 KG/M3. LO PUEDEN UTILIZAR PERSONAS DE CUALQUIER PESO.</strong></li>\r\n<li>Nivel de apoyo perfecto.</li>\r\n<li><strong>DESARMABLE</strong>&nbsp;ideal para trasladar en espacios reducidos.</li>\r\n<li>Funda desmontable y&nbsp;<strong>LAVABLE.</strong></li>\r\n</ul>\r\n<p>&nbsp;</p>', 'img/productos/colchon/882.jpg', '', '', '', '', '2021-05-27 12:27:04'),
(33, 'Almohada Ventilada 70 x 40 cm', 'almohada', '0', '50', '<p>Almohada VENTILADA 70X40</p>\r\n<p>Precio en 12 cuotas sin inter&eacute;s.</p>\r\n<p><strong>DESCUENTOS DESDE EL 40% CONSULTAR</strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '<p>Almohada Ventilada 70x40</p>\r\n<p>Poliuretano viscoelastico, termosensible, ergonomico, antialergico y antibacteriano.</p>\r\n<p>- Almohada confortable, debido a su dise&ntilde;o curvo.</p>\r\n<p>- Recupera la forma despues de ejercida la presi&oacute;n, se adapta facilmente al contorno del cuello.&nbsp;</p>\r\n<p>- Funda desmontable y lavable.</p>\r\n<p>&nbsp;</p>', 'img/productos/almohada/543.jpg', '', '', '', '', '2021-05-27 16:59:02'),
(34, 'Almohada Ventilada Cervical 60 x 40 cm', 'almohada', '0', '50', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\">Almohada VENTILADA CERVICAL 60X40</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\">Precio en 12 cuotas sin inter&eacute;s.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">DESCUENTOS DESDE EL 40% CONSULTAR</span></p>\r\n<p>&nbsp;</p>', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\">Almohadas</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\">Ventilada Cervical 60x40</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><span style=\"color: #252422; font-family: Montserrat, Helvetica Neue, Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Poliuretano viscoel&aacute;stico, termosensible, ergon&oacute;mico, antial&eacute;rgico y</strong></span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><span style=\"color: #252422; font-family: Montserrat, Helvetica Neue, Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>antibacteriano. Funda desmontable.</strong></span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\">Caracteristicas:</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; background-color: #ffffff;\"><span style=\"color: #252422; font-family: Montserrat, Helvetica Neue, Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>&bull; Almohada con perforaciones que fomentan la circulaci&oacute;n de aire,</strong></span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; background-color: #ffffff;\"><span style=\"color: #252422; font-family: Montserrat, Helvetica Neue, Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>facilita la respiraci&oacute;n y ventilaci&oacute;n, evitando la acumulaci&oacute;n de calor.</strong></span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; background-color: #ffffff;\"><span style=\"color: #252422; font-family: Montserrat, Helvetica Neue, Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>&bull; Las perforaciones tambi&eacute;n permiten la r&aacute;pida evaporaci&oacute;n de la</strong></span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; background-color: #ffffff;\"><span style=\"color: #252422; font-family: Montserrat, Helvetica Neue, Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>humedad y la transpiraci&oacute;n evitando la formaci&oacute;n de malos olores.</strong></span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; background-color: #ffffff;\"><span style=\"color: #252422; font-family: Montserrat, Helvetica Neue, Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>&bull; Recubierta por tela cool que tiene la caracter&iacute;stica de poseer</strong></span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; background-color: #ffffff;\"><span style=\"color: #252422; font-family: Montserrat, Helvetica Neue, Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>peque&ntilde;os poros que permiten la ventilaci&oacute;n en las zonas donde m&aacute;s</strong></span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; background-color: #ffffff;\"><span style=\"color: #252422; font-family: Montserrat, Helvetica Neue, Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>se concentra el calor. No se encoje, es suave, flexible y f&aacute;cil de lavar,</strong></span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; background-color: #ffffff;\"><span style=\"color: #252422; font-family: Montserrat, Helvetica Neue, Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>ayudando a mantener la almohada fresca, seca y a gusto para su</strong></span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; background-color: #ffffff;\"><span style=\"color: #252422; font-family: Montserrat, Helvetica Neue, Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>utilizaci&oacute;n.</strong></span></span></p>', 'img/productos/almohada/884.jpg', '', '', '', '', '2021-05-27 17:04:43'),
(35, 'Almohada Ventilada Cervical 70 x 40 cm', 'almohada', '0', '50', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\">Almohada VENTILADA CERVICAL 70X40</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\">Precio en 12 cuotas sin inter&eacute;s.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">DESCUENTOS DESDE EL 40% CONSULTAR</span></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\">Almohadas</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\">VENTILADA CERVICAL 70X40</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><span style=\"color: #252422; font-family: Montserrat, Helvetica Neue, Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Poliuretano viscoel&aacute;stico, termosensible, ergon&oacute;mico, antial&eacute;rgico y</strong></span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><span style=\"color: #252422; font-family: Montserrat, Helvetica Neue, Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>antibacteriano. Funda desmontable.</strong></span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Caracteristicas</span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><span style=\"color: #252422; font-family: Montserrat, Helvetica Neue, Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>&bull; Almohada con perforaciones que fomentan la circulaci&oacute;n de aire,</strong></span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><span style=\"color: #252422; font-family: Montserrat, Helvetica Neue, Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>facilita la respiraci&oacute;n y ventilaci&oacute;n, evitando la acumulaci&oacute;n de calor.</strong></span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><span style=\"color: #252422; font-family: Montserrat, Helvetica Neue, Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>&bull; Las perforaciones tambi&eacute;n permiten la r&aacute;pida evaporaci&oacute;n de la</strong></span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><span style=\"color: #252422; font-family: Montserrat, Helvetica Neue, Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>humedad y la transpiraci&oacute;n evitando la formaci&oacute;n de malos olores.</strong></span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><span style=\"color: #252422; font-family: Montserrat, Helvetica Neue, Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>&bull; Recubierta por tela cool que tiene la caracter&iacute;stica de poseer</strong></span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><span style=\"color: #252422; font-family: Montserrat, Helvetica Neue, Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>peque&ntilde;os poros que permiten la ventilaci&oacute;n en las zonas donde m&aacute;s</strong></span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><span style=\"color: #252422; font-family: Montserrat, Helvetica Neue, Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>se concentra el calor. No se encoje, es suave, flexible y f&aacute;cil de lavar,</strong></span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><span style=\"color: #252422; font-family: Montserrat, Helvetica Neue, Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>ayudando a mantener la almohada fresca, seca y a gusto para su</strong></span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><span style=\"color: #252422; font-family: Montserrat, Helvetica Neue, Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>utilizaci&oacute;n.</strong></span></span></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'img/productos/almohada/795.jpg', '', '', '', '', '2021-05-27 17:09:52'),
(36, 'Almohadas Acanaladas 70 x 35 cm', 'almohada', '0', '50', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\">Almohada ACANALADA 70X35</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\">Precio en 12 cuotas sin inter&eacute;s.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">DESCUENTOS DESDE EL 40% CONSULTAR</span></p>\r\n<p>&nbsp;</p>', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\">Almohada</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\">ACANALADA 70X35</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><span style=\"color: #252422; font-family: Montserrat, Helvetica Neue, Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Poliuretano viscoel&aacute;stico, termosensible, ergon&oacute;mico, antial&eacute;rgico y</strong></span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><span style=\"color: #252422; font-family: Montserrat, Helvetica Neue, Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>antibacteriano. Funda desmontable.</strong></span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><span style=\"color: #252422; font-family: Montserrat, Helvetica Neue, Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>SUPERFICIE LISA</strong></span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><span style=\"color: #252422; font-family: Montserrat, Helvetica Neue, Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Se amolda con la temperatura del cuerpo ofreciendo la postura</strong></span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><span style=\"color: #252422; font-family: Montserrat, Helvetica Neue, Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>ideal para un buen descanso.&nbsp;</strong></span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><span style=\"color: #252422; font-family: Montserrat, Helvetica Neue, Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>SUPERFICIE CON CANALETAS</strong></span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><span style=\"color: #252422; font-family: Montserrat, Helvetica Neue, Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Las canaletas brindan una agradable y suave apoyo al dormir.</strong></span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><span style=\"color: #252422; font-family: Montserrat, Helvetica Neue, Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Tela Cool y Towell.</strong></span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\">&nbsp;</p>\r\n<p>&nbsp;</p>', 'img/productos/almohada/258.jpg', '', '', '', '', '2021-05-27 17:17:27'),
(37, 'Almohadas Acanaladas 80 x 35 cm', 'almohada', '0', '50', '<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">Almohada ACANALADA 80X35</span></strong></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">Precio en 12 cuotas sin inter&eacute;s.</span></strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">DESCUENTOS DESDE EL 40% CONSULTAR</span></strong></p>\r\n<p>&nbsp;</p>', '<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">Almohada ACANALADA 70X35</span></strong></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>MATERIAL</strong></span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Poliuretano viscoel&aacute;stico, termosensible, ergon&oacute;mico, antial&eacute;rgico y</strong></span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>antibacteriano. Funda desmontable.</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>SUPERFICIE LISA</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Se amolda con la temperatura del cuerpo ofreciendo la postura</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>ideal para un buen descanso.</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>SUPERFICIE CON CANALETAS</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Las canaletas brindan una agradable y suave apoyo al dormir.</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Tela Cool y Towell.</strong></span></span></p>\r\n<p>&nbsp;</p>', 'img/productos/almohada/182.jpg', '', '', '', '', '2021-05-27 17:20:32'),
(38, 'Almohadas Visco Gel 70 x 35 cm', 'almohada', '0', '50', '<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">Almohada VISCO GEL 70X35</span></strong></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">Precio en 12 cuotas sin inter&eacute;s.</span></strong></p>\r\n<p><span style=\"color: #333333; font-family: monospace; font-size: 12px; background-color: #ffffff;\"> </span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">DESCUENTOS DESDE EL 40% CONSULTAR</span></strong></p>\r\n<p>&nbsp;</p>', '<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">Almohada </span></strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">VISCO GEL 70X35</span></strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>MATERIAL</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Poliuretano viscoel&aacute;stico, termosensible, ergon&oacute;mico, antial&eacute;rgico y</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\">&nbsp;</p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>antibacteriano. Funda desmontable.</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>SUPERFICIE CON GEL</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Otorga suavidad y una sensaci&oacute;n &uacute;nica de confort y frescura al dormir.</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>El gel pol&iacute;mero libera un aceite mineral de grado medicinal que favorecen</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>la nutrici&oacute;n e hidrataci&oacute;n protegiendo la piel de la p&eacute;rdida de humedad</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>y aumentando su elasticidad y suavidad de manera profunda.</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>SUPERFICIE CON CANALETAS</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\">&nbsp;</p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Tela Cool.</strong></span></span></p>\r\n<p>&nbsp;</p>', 'img/productos/almohada/987.jpg', '', '', '', '', '2021-05-27 17:23:52'),
(39, 'Almohadas Cervical Bastón 60 x 40 cm', 'almohada', '0', '50', '<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">Almohada CERVICAL BASTON 60X40</span></strong></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">Precio en 12 cuotas sin inter&eacute;s.</span></strong></p>\r\n<p><span style=\"color: #333333; font-family: Calibri, sans-serif; font-size: 13.3333px; background-color: #ffffff;\"> </span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">DESCUENTOS DESDE EL 40% CONSULTAR</span></strong></p>\r\n<p>&nbsp;</p>', '<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">Almohada</span></strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">CERVICAL BASTON 60X40</span></strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>MATERIAL</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Poliuretano viscoel&aacute;stico, termosensible, ergon&oacute;mico, antial&eacute;rgico y</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>antibacteriano. Funda desmontable.</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>CARACTER&Iacute;STICAS</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>La curvatura que posee la almohada permite que la columna quede</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>correctamente alineada. Ideal para mejorar la posici&oacute;n al dormir y</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>descansar la cervical.</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Con bastones realizados en el mismo material, que proporcionan una</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>agradable sensaci&oacute;n al dormir.</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\">&nbsp;</p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Funda cool, lavable y desmontable.</strong></span></span></p>\r\n<p>&nbsp;</p>', 'img/productos/almohada/126.jpg', '', '', '', '', '2021-05-27 17:35:04'),
(40, 'Almohadas Air Moon', 'almohada', '0', '50', '<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">Almohada AIR MOON</span></strong></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">Precio en 12 cuotas sin inter&eacute;s.</span></strong></p>\r\n<p><span style=\"color: #333333; font-family: Calibri, sans-serif; font-size: 13.3333px; background-color: #ffffff;\"> </span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">DESCUENTOS DESDE EL 40% CONSULTAR</span></strong></p>\r\n<p>&nbsp;</p>', '<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">Almohada </span></strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">AIR MOON 70X35</span></strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>MATERIAL</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Poliuretano viscoel&aacute;stico, termosensible, ergon&oacute;mico, antial&eacute;rgico y</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>antibacteriano. Funda desmontable.</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>CARACTER&Iacute;STICAS</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Almohada con dise&ntilde;o de luna, dise&ntilde;ada para que el cuello quede en</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>una posici&oacute;n muy c&oacute;moda al igual que los hombros.</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Gracias a su novedosa forma la columna queda correctamente</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>alineada. Brindando una agradable sensaci&oacute;n al dormir.</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>SUPERFICIE VENTILADA</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Perforaciones que fomentan la circulaci&oacute;n de aire evitando la acumulaci&oacute;n</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\">&nbsp;</p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>de calor en las zonas de apoyo.</strong></span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; color: #333333; background-color: #ffffff; text-shadow: none !important; box-shadow: none !important; border-radius: 0px !important;\">&nbsp;</p>', 'img/productos/almohada/593.jpg', '', '', '', '', '2021-05-27 17:38:01'),
(41, 'Dual Curve 70 x 40 cm', 'almohada', '0', '50', '<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">Almohada DUAL CURVE 70X40</span></strong></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">Precio en 12 cuotas sin inter&eacute;s.</span></strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">DESCUENTOS DESDE EL 40% CONSULTAR</span></strong></p>\r\n<p>&nbsp;</p>', '<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">Almohada </span></strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">DUAL CURVE 70X40</span></strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>MATERIAL</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Poliuretano viscoel&aacute;stico, termosensible, ergon&oacute;mico, antial&eacute;rgico y</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>antibacteriano. Funda desmontable.</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Se amolda perfectamente a los contornos de la cabeza y del cuello</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>proporcionando un excelente soporte y un descanso perfecto. El dise&ntilde;o</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>permite que la columna quede correctamente alineada. Almohada</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>suave y liviana. Indeformable.</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>SUPERFICIE VENTILADA</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Perforaciones que fomentan la circulaci&oacute;n de aire evitando la acumulaci&oacute;n</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>de calor en las zonas de apoyo.</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>SUPERFICIE MULTIPUNTUAL</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Las semiesferas que posee la almohada brindan un suave apoyo al</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>dormir, evitando dolores de cuello y cervicales. Favorecen la aireaci&oacute;n</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\">&nbsp;</p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>de la almohada.</strong></span></span></p>', 'img/productos/almohada/216.jpg', '', '', '', '', '2021-05-28 01:11:36'),
(43, 'Almohada Antirronquidos', 'almohada', '0', '50', '<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">Almohada ANTIRRONQUIDOS</span></strong></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">Precio en 12 cuotas sin inter&eacute;s.</span></strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">DESCUENTOS DESDE EL 40% CONSULTAR</span></strong></p>\r\n<p>&nbsp;</p>', '<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">Almohada </span></strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>ANTIRRONQUIDOS</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>MATERIAL</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Es una almohada realizada con poliuretano viscoel&aacute;stico.</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Excelente soporte para la cervical. Funda cool lavable.</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>PARA DORMIR BOCA ARRIBA</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Nuestra almohada est&aacute; moldeada de tal manera que ayuda a que su</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>barbilla permanezca alejada del pecho quedando de esta manera las</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>v&iacute;as respiratorias mas abiertas, evitando el ronquido.</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>PARA DORMIR DE COSTADO</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Ambos lados poseen perforaciones para ubicar la oreja, de esta</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>manera el cuello y la cabeza adquieren una posici&oacute;n natural, gracias a</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>la anat&oacute;mica forma que posee la almohada, permitiendo que las v&iacute;as</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\">&nbsp;</p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>respiratorias no se obstruyan.</strong></span></span></p>', 'img/productos/almohada/310.jpg', '', '', '', '', '2021-05-28 01:32:26');
INSERT INTO `productos` (`id`, `titulo`, `categoria`, `precio`, `stock`, `intro`, `descripcion`, `imagen`, `alto`, `ancho`, `largo`, `peso`, `fecha`) VALUES
(46, 'Almohadas Neorelax 70 x 40 cm', 'almohada', '0', '50', '<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">Almohada NEORELAX 70X40</span></strong></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">Precio en 12 cuotas sin inter&eacute;s.</span></strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">DESCUENTOS DESDE EL 40% CONSULTAR</span></strong></p>\r\n<p>&nbsp;</p>', '<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">Almohada</span></strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">NEORELAX 70X40</span></strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>MATERIAL</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Poliuretano viscoel&aacute;stico, termosensible, ergon&oacute;mico, antial&eacute;rgico y</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>antibacteriano.</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>CARACTERISTICAS</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Almohada de soporte muy c&oacute;modo, dise&ntilde;o curvo.</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Con un exclusivo tejido de punto con tratamiento anti&aacute;caros.</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\">&nbsp;</p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Funda lavable y desmontable.</strong></span></span></p>\r\n<p>&nbsp;</p>', 'img/productos/almohada/236.jpg', '', '', '', '', '2021-05-28 16:32:48'),
(56, 'Almohadón 7 posiciones en 1', 'almohada', '0', '0', '<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">Almohadon 7 POSICIONES EN 1</span></strong></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">Precio en 12 cuotas sin inter&eacute;s.</span></strong></p>\r\n<p><span style=\"color: #333333; font-family: monospace; font-size: 12px; background-color: #ffffff;\"> </span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">DESCUENTOS DESDE EL 40% CONSULTAR</span></strong></p>\r\n<p>&nbsp;</p>', '<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">Almohadon</span></strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong>7 POSICIONES EN 1</strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong>MATERIAL</strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong>De poliuretano flexible con funda de plush desmontable para lavar.</strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong>CARACTER&Iacute;STICAS</strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong>Es un almohad&oacute;n de reposo que se puede utilizar en 7 posiciones distintas</strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\">&nbsp;</p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong>proporcionando un suave apoyo seg&uacute;n donde usted lo necesite.</strong></p>\r\n<p>&nbsp;</p>', 'img/productos/almohada/996.jpg', '', '', '', '', '2021-05-28 20:46:33'),
(58, 'Conjunto 1.60 x 2.00', 'sommier', '173.657', '50', '<p>Colch&oacute;n y Sommier 160 x 200</p>\r\n<p>Precio en 12 cuotas sin inter&eacute;s.</p>\r\n<p>DESCUENTOS DESDE EL 40% CONSULTAR.</p>', '<p><strong>CONJUNTO NEORELAX 160X200</strong></p>\r\n<p><strong>Caracter&iacute;sticas colch&oacute;n Neorelax.</strong></p>\r\n<ul>\r\n<li>&Uacute;nico colch&oacute;n inyectado en poliuretano. .</li>\r\n<li>Sin insertos m&eacute;talicos que se deformen.</li>\r\n<li>De soporte firme, suave y placentero.</li>\r\n<li><strong>DENSIDAD + 55 KG/M3. LO PUEDEN UTILIZAR PERSONAS DE CUALQUIER PESO.</strong></li>\r\n<li>Nivel de apoyo perfecto.</li>\r\n<li><strong>DESARMABLE</strong>&nbsp;ideal para trasladar en espacios reducidos.</li>\r\n<li>Funda desmontable y&nbsp;<strong>LAVABLE.</strong></li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p><strong>Sommier Neorelax&nbsp;</strong></p>\r\n<ul>\r\n<li>El colch&oacute;n va inserto en el sommier 2 cm. evitando el movimiento del mismo.</li>\r\n<li>Apoya sobre dos placas de MDF con patas, logrando un excelente amortiguaci&oacute;n y sost&eacute;n para el colch&oacute;n.</li>\r\n<li>Desarmable, ideal para trasladarlo en espacios reducidos (ascensores, escaleras).</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\">&nbsp;</p>', 'img/productos/sommier/534.jpg', '', '', '', '', '2021-06-07 13:19:07'),
(59, 'Conjunto 1.40 x 1.90', 'sommier', '133.784', '50', '<p><strong>Colch&oacute;n y Sommier 140x190</strong></p>\r\n<p><strong>Precio en 12 cuotas sin inter&eacute;s.</strong></p>\r\n<p><strong>DESCUENTOS DESDE EL 40%. CONSULTAR.</strong></p>', '<p><strong>CONJUNTO NEORELAX 160X200</strong></p>\r\n<p><strong>Caracter&iacute;sticas colch&oacute;n Neorelax.</strong></p>\r\n<ul>\r\n<li>&Uacute;nico colch&oacute;n inyectado en poliuretano. .</li>\r\n<li>Sin insertos m&eacute;talicos que se deformen.</li>\r\n<li>De soporte firme, suave y placentero.</li>\r\n<li><strong>DENSIDAD + 55 KG/M3. LO PUEDEN UTILIZAR PERSONAS DE CUALQUIER PESO.</strong></li>\r\n<li>Nivel de apoyo perfecto.</li>\r\n<li><strong>DESARMABLE</strong>&nbsp;ideal para trasladar en espacios reducidos.</li>\r\n<li>Funda desmontable y&nbsp;<strong>LAVABLE.</strong></li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p><strong>Sommier Neorelax&nbsp;</strong></p>\r\n<ul>\r\n<li>El colch&oacute;n va inserto en el sommier 2 cm. evitando el movimiento del mismo.</li>\r\n<li>Apoya sobre dos placas de MDF con patas, logrando un excelente amortiguaci&oacute;n y sost&eacute;n para el colch&oacute;n.</li>\r\n<li>Desarmable, ideal para trasladarlo en espacios reducidos (ascensores, escaleras).</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\">&nbsp;</p>', 'img/productos/sommier/373.jpg', '', '', '', '', '2021-06-07 13:21:39'),
(61, 'Conjunto 1.00 x  2.00', 'sommier', '117.179', '50', '<p><strong>Colch&oacute;n y Sommier 100x200</strong></p>\r\n<p><strong>Precio en 12 cuotas sin inter&eacute;s.</strong></p>\r\n<p><strong>DESCUENTOS DESDE EL 40%. CONSULTAR.</strong></p>', '<p><strong>CONJUNTO NEORELAX 100X200</strong></p>\r\n<p><strong>Caracter&iacute;sticas colch&oacute;n Neorelax.</strong></p>\r\n<ul>\r\n<li>&Uacute;nico colch&oacute;n inyectado en poliuretano. .</li>\r\n<li>Sin insertos m&eacute;talicos que se deformen.</li>\r\n<li>De soporte firme, suave y placentero.</li>\r\n<li><strong>DENSIDAD + 55 KG/M3. LO PUEDEN UTILIZAR PERSONAS DE CUALQUIER PESO.</strong></li>\r\n<li>Nivel de apoyo perfecto.</li>\r\n<li><strong>DESARMABLE</strong>&nbsp;ideal para trasladar en espacios reducidos.</li>\r\n<li>Funda desmontable y&nbsp;<strong>LAVABLE.</strong></li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p><strong>Sommier Neorelax&nbsp;</strong></p>\r\n<ul>\r\n<li>El colch&oacute;n va inserto en el sommier 2 cm. evitando el movimiento del mismo.</li>\r\n<li>Apoya sobre dos placas de MDF con patas, logrando un excelente amortiguaci&oacute;n y sost&eacute;n para el colch&oacute;n.</li>\r\n<li>Desarmable, ideal para trasladarlo en espacios reducidos (ascensores, escaleras).</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\">&nbsp;</p>', 'img/productos/sommier/737.jpg', '', '', '', '', '2021-06-07 13:24:37'),
(62, 'Almohada Ventiladas 70 x 35 cm', 'almohada', '0', '50', '<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">Almohada VENTILADA 70X35</span></strong></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">Precio en 12 cuotas sin inter&eacute;s.</span></strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">DESCUENTOS DESDE EL 40% CONSULTAR</span></strong></p>\r\n<p>&nbsp;</p>', '<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">Almohada </span></strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">VENTILADA 70X35</span></strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>MATERIAL</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Poliuretano viscoel&aacute;stico, termosensible, ergon&oacute;mico, antial&eacute;rgico y</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>antibacteriano. Funda desmontable.</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>CARACTER&Iacute;STICAS</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Se amolda perfectamente a los contornos de la cabeza y del cuello</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>proporcionando un excelente soporte y un descanso perfecto. El dise&ntilde;o</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>permite que la columna quede correctamente alineada. Almohada</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>suave y liviana. Indeformable.</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>SUPERFICIE VENTILADA</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Perforaciones que fomentan la circulaci&oacute;n de aire evitando la acumulaci&oacute;n</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\">&nbsp;</p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>de calor en las zonas de apoyo.</strong></span></span></p>', 'img/productos/almohada/391.jpg', '', '', '', '', '2021-06-08 01:25:11'),
(63, 'Almohadas Ventilada 80 x 40 cm', 'almohada', '0', '50', '<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">Almohada VENTILADA 80X40</span></strong></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">Precio en 12 cuotas sin inter&eacute;s.</span></strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">DESCUENTOS DESDE EL 40% CONSULTAR</span></strong></p>\r\n<p>&nbsp;</p>', '<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">Almohada</span></strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong>VENTILADA 80X40</strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong>MATERIAL</strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong>Poliuretano viscoel&aacute;stico, termosensible, ergon&oacute;mico, antial&eacute;rgico y</strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong>antibacteriano. Funda desmontable.</strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong>CARACTER&Iacute;STICAS</strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong>&bull; Almohada con perforaciones que fomentan la circulaci&oacute;n de aire,</strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong>facilita la respiraci&oacute;n y ventilaci&oacute;n, evitando la acumulaci&oacute;n de calor.</strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong>&bull; Las perforaciones tambi&eacute;n permiten la r&aacute;pida evaporaci&oacute;n de la</strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong>humedad y la transpiraci&oacute;n evitando la formaci&oacute;n de malos olores.</strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong>&bull; Recubierta por tela cool que tiene la caracter&iacute;stica de poseer</strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong>peque&ntilde;os poros que permiten la ventilaci&oacute;n en las zonas donde m&aacute;s</strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong>se concentra el calor. No se encoje, es suave, flexible y f&aacute;cil de lavar,</strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong>ayudando a mantener la almohada fresca, seca y a gusto para su</strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\">&nbsp;</p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong>utilizaci&oacute;n.</strong></p>', 'img/productos/almohada/759.jpg', '', '', '', '', '2021-06-08 01:27:22'),
(64, 'Almohada Ventilada Big 95 x 40 cm', 'almohada', '0', '50', '<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">Almohada VENTILADA BIG 95X40</span></strong></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">Precio en 12 cuotas sin inter&eacute;s.</span></strong></p>\r\n<p>&nbsp;</p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">DESCUENTOS DESDE EL 40% CONSULTAR</span></strong></p>\r\n<p>&nbsp;</p>', '<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">Almohada</span></strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">VENTILADA BIG 95X40</span></strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>MATERIAL</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Poliuretano viscoel&aacute;stico, termosensible, ergon&oacute;mico, antial&eacute;rgico y</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>antibacteriano. Funda desmontable.</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>CARACTER&Iacute;STICAS</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Se amolda perfectamente a los contornos de la cabeza y del cuello</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>proporcionando un excelente soporte y un descanso perfecto. El dise&ntilde;o</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>permite que la columna quede correctamente alineada. Almohada</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>suave y liviana. Indeformable.</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>SUPERFICIE VENTILADA</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Perforaciones que fomentan la circulaci&oacute;n de aire evitando la acumulaci&oacute;n</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\">&nbsp;</p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>de calor en las zonas de apoyo.</strong></span></span></p>', 'img/productos/almohada/562.jpg', '', '', '', '', '2021-06-08 01:30:29'),
(65, 'Almohadas Tradicional Cervical 70 x 40 cm', 'almohada', '0', '50', '<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">Almohada TRADICIONAL CERVICAL 70X40</span></strong></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">Precio en 12 cuotas sin inter&eacute;s.</span></strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">DESCUENTOS DESDE EL 40% CONSULTAR</span></strong></p>\r\n<p>&nbsp;</p>', '<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">Almohada </span></strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">TRADICIONAL CERVICAL 70X40</span></strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>MATERIAL</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Poliuretano viscoel&aacute;stico, termosensible, ergon&oacute;mico, antial&eacute;rgico y</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>antibacteriano. Funda desmontable.</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>CARACTER&Iacute;STICAS</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Almohada confortable, debido a su dise&ntilde;o curvo.</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Recupera la forma despu&eacute;s de ejercida la presi&oacute;n, se adapta f&aacute;cilmente</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>al contorno del cuello.</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\">&nbsp;</p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Funda towell, lavable y desmontable.</strong></span></span></p>', 'img/productos/almohada/350.jpg', '', '', '', '', '2021-06-08 01:46:10'),
(66, 'Almohada Tradicional Cervical 60 x 40 cm', 'almohada', '100', '50', '<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">Almohada TRADICIONAL CERVICAL 60X40</span></strong></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252422; font-family: Montserrat, \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; font-weight: bold; background-color: #ffffff;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">Precio en 12 cuotas sin inter&eacute;s.</span></strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">DESCUENTOS DESDE EL 40% CONSULTAR</span></strong></p>\r\n<p>&nbsp;</p>', '<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">Almohada </span></strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; color: #252422;\">TRADICIONAL CERVICAL 60X40</span></strong></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>MATERIAL</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Poliuretano viscoel&aacute;stico, termosensible, ergon&oacute;mico, antial&eacute;rgico y</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>antibacteriano. Funda desmontable.</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>CARACTER&Iacute;STICAS</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Almohada confortable, debido a su dise&ntilde;o curvo.</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Recupera la forma despu&eacute;s de ejercida la presi&oacute;n, se adapta f&aacute;cilmente</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>al contorno del cuello.</strong></span></span></p>\r\n<p style=\"margin-top: 0cm; background: white;\">&nbsp;</p>\r\n<p style=\"margin-top: 0cm; background: white;\"><span style=\"color: #252422; font-family: Arial, sans-serif;\"><span style=\"font-size: 14px;\"><strong>Funda towell, lavable y desmontable.</strong></span></span></p>\r\n<p>&nbsp;</p>', 'img/productos/almohada/675.jpg', '', '', '', '', '2021-06-08 01:47:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscriptores`
--

CREATE TABLE `suscriptores` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `suscriptores`
--

INSERT INTO `suscriptores` (`id`, `email`, `fecha`) VALUES
(20, 'marmastriaco@gmail.com', '2021-05-27 12:36:12'),
(21, 'marufabrizzi@gmail.com', '2021-05-27 20:05:10'),
(40, 'marcelacabezas1980@gmail.com', '2021-05-28 22:35:09'),
(41, 'marcelacabezas1980@gmail.com', '2021-05-28 22:35:15'),
(42, 'ldquinteros@yahoo.com.ar', '2021-05-28 23:49:05'),
(43, 'alberto294@gmail.com', '2021-05-29 00:29:59'),
(44, 'gisefiss@hotmail.com', '2021-06-06 16:27:37'),
(45, 'nancyveronicagimenez88@gmail.com', '2021-06-09 01:26:22'),
(46, 'nancyveronicagimenez88@gmail.com', '2021-06-09 01:26:22'),
(47, 'nancyveronicagimenez88@gmail.com', '2021-06-09 01:26:43'),
(50, 'elianarocio1982@gmail.com', '2021-06-10 02:20:30'),
(98, 'fpaneroflocco@gmail.com', '2021-06-12 18:46:04'),
(99, 'cacattaneo@gmail.com', '2021-06-13 11:56:59'),
(100, 'elikowguz@gmail.com', '2021-06-14 13:06:21'),
(101, 'bobby.vivar24@gmail.com', '2021-06-14 13:46:35'),
(102, 'fabiana.aida.rodriguez@hotmail.com', '2021-06-15 03:16:27'),
(103, 'rocioarrien34@gmail.com', '2021-06-16 10:45:10'),
(104, 'gabidetejeria@hotmail.com', '2021-06-17 14:59:38'),
(105, 'mcecilia.lacabe@gmail.com', '2021-06-17 15:56:32'),
(106, 'ines.cs@hotmail.com', '2021-06-17 19:17:47'),
(107, 'Susana550@hotmail.com.ar', '2021-06-18 00:18:59'),
(108, 'giovanelacasal@hotmail.com', '2021-06-19 10:55:24'),
(109, 'sanchezdaiana@hotmail.com', '2021-06-19 23:31:07'),
(110, 'bobby.132@gmail.com', '2021-06-22 19:57:36'),
(111, 'mariacelestebarboza@hotmail.com', '2021-06-23 09:45:51'),
(112, 'mariosport54@hotmail.es', '2021-06-29 18:42:52'),
(113, 'micaferlv@gmail.com', '2021-07-08 03:53:24'),
(114, 'luchobertucci@gmail.com', '2021-07-10 15:43:27'),
(115, 'tamarasuarez35@gmail.com', '2021-07-12 15:16:14'),
(116, 'mensapablo@hotmail.com', '2021-07-12 23:49:42'),
(117, 'nataliabarracchia@gmail.com', '2021-07-18 02:24:00'),
(118, '456.luis@gmail.com', '2021-07-19 15:21:33'),
(127, 'coahes.psico@gmail.com', '2021-07-21 03:45:48'),
(128, 'sebastian.bustamante87@gmail.com', '2021-07-21 14:44:16'),
(129, 'adacarolinaor@gmail.com', '2021-07-22 17:08:44'),
(131, 'fpaneroflocco@gmail.com', '2021-07-24 14:11:39'),
(132, 'tere.agui72@gmail.com', '2021-07-30 18:47:03'),
(133, 'martafre2002@gmail.com', '2021-08-05 13:21:52'),
(134, 'Micaelataboada309@gmail.com', '2021-08-09 22:55:00'),
(135, 'jessiosterman27@gmail.com', '2021-08-11 02:31:08'),
(136, 'vanuriccio@gmail.com', '2021-08-12 00:56:54'),
(137, 'carloncha58@gmail.com', '2021-08-16 02:29:11'),
(138, 'malvisoletomadin.1982@gmail.com', '2021-08-18 03:04:42'),
(139, 'Estigarribia.pam@hotmail.com', '2021-08-27 13:34:05'),
(140, 'alejandra.n9713@yahoo.com', '2021-08-27 18:33:31'),
(141, 'alejandra.n9713@yahoo.com', '2021-08-27 18:33:31'),
(142, 'titovidal_42@gmail.com', '2021-08-27 19:07:46'),
(143, 'pmaslan@hotmail.com', '2021-09-06 08:09:05'),
(144, 'pablomensa@hotmail.com', '2021-09-06 23:12:22'),
(145, 'mika.besitos@gmail.com', '2021-09-13 23:26:09'),
(146, 'mariani.hernan@gmail.com', '2021-09-17 01:52:27'),
(147, 'lujanbec@live.com.ar', '2021-09-21 02:18:49'),
(148, 'maribeleli@hotmail.com', '2021-09-23 21:51:02'),
(149, 'rusa_990@hotmail.com', '2021-09-27 18:49:56'),
(150, 'patriciajudithv@gmail.com', '2021-10-11 13:23:01'),
(151, 'monicatous@hotmail.com', '2021-10-13 19:17:42'),
(152, 'steffy_b91@hotmail.com', '2021-10-25 22:38:19'),
(153, 'fede_petrafast@hotmail.com', '2021-10-26 09:04:46'),
(154, 'majoxiclica2@gmail.com', '2021-10-28 13:20:46'),
(155, 'hidalgocristina58@gmail.com', '2021-10-29 14:54:33'),
(156, 'hidalgocristina58@gmail.com', '2021-10-29 14:54:35'),
(157, 'hidalgocristina58@gmail.com', '2021-10-29 14:54:39'),
(158, 'hidalgocristina58@gmail.com', '2021-10-29 14:55:53'),
(159, 'hidalgocristina58@gmail.com', '2021-10-29 14:56:19'),
(160, 'hidalgocristina58@gmail.com', '2021-10-29 14:56:45'),
(161, 'hidalgocristina58@gmail.com', '2021-10-29 14:57:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transferencia`
--

CREATE TABLE `transferencia` (
  `id` int(11) NOT NULL,
  `cliente` text NOT NULL,
  `envio` text NOT NULL,
  `productos` text NOT NULL,
  `total` text NOT NULL,
  `operacion` text NOT NULL,
  `metodo` text NOT NULL,
  `archivo` text NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `transferencia`
--

INSERT INTO `transferencia` (`id`, `cliente`, `envio`, `productos`, `total`, `operacion`, `metodo`, `archivo`, `fecha`) VALUES
(4, '{\"nombre\":\"Gonzalo\",\"apellido\":\"Vidal\",\"dni\":\"36105733\",\"tel\":\"2966504821\",\"email\":\"gonzaa.vidal.18@gmail.com\",\"domicilio\":\"Calle 50\",\"numero\":\"608\",\"piso\":\"-\",\"dpto\":\"-\",\"pais\":\"Argentina\",\"provincia\":\"Buenos Aires\",\"ciudad\":\"La Plata\",\"codigo_postal\":\"1900\"}', '{\"transporte\":\"Cruz del Sur\",\"tipo_envio\":\"E\",\"provincia\":\"Buenos Aires\",\"ciudad\":\"La Plata\",\"domicilio\":\"Domicilio: Calle 50 N\\u00b0608\",\"cp\":\"1900\",\"costo\":1991.46}', '{\"items\":[{\"titulo\":\"Colchon una plaza y media\",\"precio\":94251,\"cantidad\":1,\"alto\":200,\"ancho\":100,\"peso\":55,\"largo\":30}]}', '77.391,8', '22631', 'Transferencia', 'solunet4.jpg', '2021-10-28 03:12:41'),
(6, '{\"nombre\":\"Gina\",\"apellido\":\"Vidal\",\"dni\":\"33333\",\"tel\":\"22222\",\"email\":\"gina@gmail.com\",\"domicilio\":\"Calle 50\",\"numero\":\"608\",\"piso\":\"6\",\"dpto\":\"b\",\"pais\":\"Argentina\",\"provincia\":\"Buenos Aires\",\"ciudad\":\"La Plata\",\"codigo_postal\":\"1900\"}', '{\"transporte\":\"Cruz del Sur\",\"tipo_envio\":\"E\",\"provincia\":\"Buenos Aires\",\"ciudad\":\"La Plata\",\"domicilio\":\"Domicilio: Calle 50 N\\u00b0608\",\"cp\":\"1900\",\"costo\":3982.92}', '{\"items\":[{\"titulo\":\"Colchon una plaza y media\",\"precio\":94251,\"cantidad\":2,\"alto\":200,\"ancho\":100,\"peso\":55,\"largo\":30}]}', '154.783,6', '97119', 'Transferencia', 'maxresdefault.jpg', '2021-10-28 03:21:50'),
(8, '{\"nombre\":\"Gina\",\"apellido\":\"Aguirre\",\"dni\":\"36105733\",\"tel\":\"2966608723\",\"email\":\"gonzaa.vidal.18@gmail.com\",\"domicilio\":\"Calle 50\",\"numero\":\"608\",\"piso\":\"-\",\"dpto\":\"-\",\"pais\":\"Argentina\",\"provincia\":\"Santa Cruz\",\"ciudad\":\"La Plata\",\"codigo_postal\":\"1900\"}', '{\"transporte\":\"Cruz del Sur\",\"tipo_envio\":\"E\",\"provincia\":\"Santa Cruz\",\"ciudad\":\"La Plata\",\"domicilio\":\"Domicilio: Calle 50 N\\u00b0608\",\"cp\":\"1900\",\"costo\":1991.46}', '{\"items\":[{\"titulo\":\"Colchon una plaza y media\",\"precio\":94251,\"cantidad\":1,\"alto\":200,\"ancho\":100,\"peso\":55,\"largo\":30}]}', '77.391,8', '25514', 'Transferencia', 'text-logo-HTML-web-development-JavaScript-CSS-46304-wallhere.com.jpg', '2021-11-28 21:35:10'),
(9, '{\"nombre\":\"Gonzalo\",\"apellido\":\"Vidal\",\"dni\":\"36105733\",\"tel\":\"29665552532\",\"email\":\"gonza@gmail.com\",\"domicilio\":\"Calle 50\",\"numero\":\"4234\",\"piso\":\"-\",\"dpto\":\"-\",\"pais\":\"Argentina\",\"provincia\":\"Buenos Aires\",\"ciudad\":\"La Plata\",\"codigo_postal\":\"1900\"}', '{\"transporte\":\"Cruz del Sur\",\"tipo_envio\":\"E\",\"provincia\":\"Buenos Aires\",\"ciudad\":\"La Plata\",\"domicilio\":\"Domicilio: Calle 50 N\\u00b04234\",\"cp\":\"1900\",\"costo\":1991.46}', '{\"items\":[{\"titulo\":\"Colchon una plaza y media\",\"precio\":94251,\"cantidad\":1,\"alto\":200,\"ancho\":100,\"peso\":55,\"largo\":30}]}', '77.391,8', '41005', 'Transferencia', 'saitama-2.png', '2021-11-28 21:41:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `provincia` text NOT NULL,
  `ciudad` text NOT NULL,
  `direccion` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `password`, `provincia`, `ciudad`, `direccion`, `fecha`) VALUES
(12, 'Gonzalo Vidal', 'gonzaa.vidal.18@gmail.com', '$2y$05$2ihDv8vVf7QZ9BsaRrKyqeovWwg2D1q9cUqVE33RiTUBUzRR/SUt.', '', '', '', '2021-05-27 09:34:02'),
(25, 'Gina Vidal', 'gina.vidal@gmail.com', '$2y$05$2ihDv8vVf7QZ9BsaRrKyqetzGlasGzZsBwKR1jHcStqa2uBKeOwRW', '', '', '', '2021-05-28 04:12:02'),
(26, 'admin', 'admin@gmail.com', '$2y$05$2ihDv8vVf7QZ9BsaRrKyqeBUW3Oeca4NW7Tva/NO16UA6EK465rhK', '', '', '', '2021-05-31 22:15:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `apellido` text NOT NULL,
  `dni` text NOT NULL,
  `tel` text NOT NULL,
  `email` text NOT NULL,
  `domicilio` text NOT NULL,
  `numero` text NOT NULL,
  `piso` text NOT NULL,
  `departamento` text NOT NULL,
  `pais` text NOT NULL,
  `provincia` text NOT NULL,
  `localidad` text NOT NULL,
  `codigo` text NOT NULL,
  `metodo_pago` text NOT NULL,
  `productos` text NOT NULL,
  `envios` text NOT NULL,
  `total` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `nombre`, `apellido`, `dni`, `tel`, `email`, `domicilio`, `numero`, `piso`, `departamento`, `pais`, `provincia`, `localidad`, `codigo`, `metodo_pago`, `productos`, `envios`, `total`, `fecha`) VALUES
(24, 'Gonzalo', 'Vidal', '36105733', '2966607924', 'gonzaa.vidal.18@gmail.com', 'Calle 50', '608', '', '', 'Argentina', 'Rio Gallegos', 'Rio Gallegos', '9400', 'transferencia', '[{\"titulo\":\"Colchon una plaza y media\",\"precio\":\"85.683\",\"cantidad\":1,\"alto\":\"200\",\"ancho\":\"100\"},{\"titulo\":\"Conjunto 2.00 x 2.00\",\"precio\":\"191.395\",\"cantidad\":1,\"alto\":\"\",\"ancho\":\"\"}]', '{\"transporte\":\"Cruz del Sur\",\"sucursal\":\"E\",\"cp\":\"9400\"}', '221.662,40', '2021-07-26 03:24:41'),
(25, 'Gonzalo', 'Vidal', '423432', '432423423', 'info@neorelax.com.ar', 'fsfsd', '423423', '', '', 'Argentina', 'Rio Gallegos', 'Rio Gallegos', '9400', 'transferencia', '[{\"titulo\":\"Colchon una plaza y media\",\"precio\":\"85.683\",\"cantidad\":1,\"alto\":\"200\",\"ancho\":\"100\"},{\"titulo\":\"Conjunto 2.00 x 2.00\",\"precio\":\"191.395\",\"cantidad\":1,\"alto\":\"\",\"ancho\":\"\"}]', '{\"transporte\":\"Cruz del Sur\",\"sucursal\":\"E\",\"cp\":\"9400\"}', '221.662,40', '2021-07-26 03:28:20');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `galeria`
--
ALTER TABLE `galeria`
  ADD PRIMARY KEY (`id_img`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `suscriptores`
--
ALTER TABLE `suscriptores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `transferencia`
--
ALTER TABLE `transferencia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `galeria`
--
ALTER TABLE `galeria`
  MODIFY `id_img` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de la tabla `suscriptores`
--
ALTER TABLE `suscriptores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT de la tabla `transferencia`
--
ALTER TABLE `transferencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
