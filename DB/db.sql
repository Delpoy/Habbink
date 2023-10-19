-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-09-2017 a las 16:18:14
-- Versión del servidor: 10.1.25-MariaDB
-- Versión de PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `habbink`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `baneo`
--

CREATE TABLE `baneo` (
  `id` int(9) UNSIGNED NOT NULL,
  `usuario` varchar(180) DEFAULT NULL,
  `razon` varchar(500) NOT NULL,
  `ban_i` varchar(180) DEFAULT NULL,
  `ban_f` varchar(180) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `texto` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `imagen` varchar(700) COLLATE utf8_unicode_ci NOT NULL,
  `principal` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `url_promo` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `banner`
--

INSERT INTO `banner` (`id`, `titulo`, `texto`, `imagen`, `principal`, `url_promo`) VALUES
(1, '¡Instalaste Habbink v1.0 Correctamente!', 'Ya estas viviendo nuestra versión 1.0 entérate de las novedades y próximas actualizaciones de Habbink cms, recuerda que Habbink cms siempre esta abierto a nuevas ideas y sugerencias de la gente, con tu opinion puedes hacer que Habbink cms logre ser una buena CMS de fansites gratuita :)', 'http://www.habbonia.com/swf/c_images/web_promos/web_promo_party.png', 'No', 'http://www.servermix.esy.es/articulo.php?id=%201'),
(4, 'Empieza la historia de una Fansite', 'Ahora solo queda abrir tu fansite (Webfan) para que todos se puedan enterar de las ultimas novedades y eventos que están sucediendo en el hotel. Pública, crea, informa, comunica y habla. Son una de las cosas que puedes hacer con Habbink CMS simplemente increíble.  ', 'http://i.imgur.com/0avlX9x.png', 'No', ''),
(5, 'Noticias y mas Noticias', 'No está mal iniciar con un equipo de reporteros que sepan donde ocurre todo lo interesante y todo lo sorprendente que puede haber en un holo. Empieza a crear noticias y asi podras tener cada vez más personas atentas a las últimas actualizaciones y actividades dentro del hotel. Informa.', 'http://i.imgur.com/fcjBeC9.png', 'No', ''),
(11, '¡Que comiencen los juegos!', 'Nada más emocionante que intentar participar en los eventos de una fansite y ganar una placa única o algo especial de una fansite. Bueno ese sueño ya puede ser realidad que comiencen los eventos en Habbink :D', 'http://i.imgur.com/cR2WqbJ.png', 'No', ''),
(15, 'Ayúdanos a mejorar', 'Realiza nuestra encuesta para mejorar Habbink cms para futuras actualizaciones del mismo. Pronto nos volveremos a ver en una nueva actualización realizada según las respuestas de esta encuenta', 'http://i21.servimg.com/u/f21/14/92/41/94/2fc98c10.png', 'No', 'https://goo.gl/forms/Bs7dXVZe0YsQg5xI2'),
(16, 'Más seguridad más funciones', 'Habbink cms versión 1.0 ya esta disponible con todas sus funciones que puedes ver aquí en la demostración en vivo (servermix.esy.es) :)', 'http://habboo-a.akamaihd.net/c_images/web_promo/lpromo_infobus15.png', 'active', 'http://www.servermix.esy.es/articulo.php?id=%201');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `username` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `noticia_id` int(11) NOT NULL,
  `avatar` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `comentario` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `nameweb` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pclaves` varchar(600) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(4000) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(4000) COLLATE utf8_unicode_ci NOT NULL,
  `facebookimg` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `mantenimiento` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `iniciar_sesion` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `registro` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `publicidad` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `codigo` text COLLATE utf8_unicode_ci NOT NULL,
  `radio` varchar(9000) COLLATE utf8_unicode_ci NOT NULL,
  `nombre_radio` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `radio_op` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `xat` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `config`
--

INSERT INTO `config` (`id`, `nameweb`, `url`, `pclaves`, `descripcion`, `logo`, `facebook`, `facebookimg`, `mantenimiento`, `iniciar_sesion`, `registro`, `publicidad`, `codigo`, `radio`, `nombre_radio`, `radio_op`, `xat`) VALUES
(1, 'Habbink', 'http://localhost', 'Habbink, Fansite, webfan, Habbo, Holo, 2016, Beta, CMS, nueva', 'Únete a Habbink y mantente informado de todo lo que no sabes de Habbo, ¿Que esperas para unirte a Habbink? web fan de verdad ya estamos en línea entra Ya', 'http://i.imgur.com/5fTNGyh.png', 'https://www.facebook.com/Habbink-643041789198719/', 'http://i.imgur.com/776LiPM.png', '0', '1', '1', '1', '<a href=\"http://www.traxpixel.net/vote.php?id=1\" target=\"_blank\"><img src=\"http://www.traxpixel.net/img/votame.gif\" /></a>', '<script type=\"text/javascript\" src=\"http://www.netyco.com:82/radio-x-internet/player/player.js\"></script><div id=\"radioload\">Tu radio en Internet <a alt=\"Transmite tu radio por internet, setreaming gratis con Netyco, servidores de radio por internet\" href=\"http://www.netyco.com/radio-x-internet/radio.php\">Netyco Argentina</a></div><script type=\"text/javascript\">var params={\'url\':\'http:///;\',\'lang\':\'es\',\'codec\':\'mp3\',\'volume\':100,\'autoplay\':false,\'buffering\':10,\'title\':\'Habbink\',\'welcome\':\'Bienvenid@ a la v1.0\',\'bgcolor\':\'#FFFFFF\',\'winmedia\':false,\'realplayer\':false,\'quicktime\':false,\'html5\':false,\'celulares\':false,\'skin\':\'tweety\',\'width\':189,\'height\':62};Netyco.insert(params);</script>', 'Radio', '1', '<embed wmode=\"transparent\" src=\"http://www.xatech.com/web_gear/chat/chat.swf\" quality=\"high\" width=\"640\" height=\"480\" name=\"chat\" flashvars=\"id=218304341\" align=\"middle\" allowscriptaccess=\"sameDomain\" type=\"application/x-shockwave-flash\" pluginspage=\"http://xat.com/update_flash.php\"/>\r\n						<br>\r\n						<small><a target=\"_BLANK\" href=\"http://xat.com/web_gear/chat/embed.php?id=218304341&GroupName=HabbinkFansite\">Insertar codigo de chat</a> | <a target=\"_BLANK\" href=\"http://xat.com/HabbinkFansite\"> Página xat de Habbink</a></small>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(4000) COLLATE utf8_unicode_ci NOT NULL,
  `texto` varchar(4000) COLLATE utf8_unicode_ci NOT NULL,
  `fecha` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `autor` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `titulo`, `texto`, `fecha`, `autor`) VALUES
(3, 'Laberinto 70 niveles evento Fansite', '<p><span style=\"color: rgb(41, 105, 176);\"><span style=\"font-size: 24px;\">Super Laberinto</span></span></p><p>Prep&aacute;rate para cruzar uno de los laberintos m&aacute;s desafiantes que hayas visto en nuestro hotel, hoy te traemos un concurso especial el cual deber&aacute;s pasar un laberinto de 70 niveles (f&aacute;ciles) y ganar&aacute;s <span style=\"color: rgb(184, 49, 47);\">2 placas exclusivas de Habbink&nbsp;</span></p><p><img class=\"fr-dib fr-draggable fr-fil\" src=\"http://habboo-a.akamaihd.net/c_images/album1584/UK758.gif\"><img class=\"fr-dib fr-draggable fr-fil\" src=\"http://habboo-a.akamaihd.net/c_images/album1584/FR401.gif\"></p><p>Entra a la sala &quot;Super Laberinto Habbink&quot; y trata de pasar los niveles que tenemos preparados para ti</p><p>Te esperamos este evento solo durara 2 dias a partir de hoy</p>', '2016-12-30', 'Franko.p'),
(2, 'Evento express Habbink', '<p><span style=\"color: rgb(41, 105, 176);\"><span style=\"font-size: 24px;\">Evento express</span></span></p><p>Habbink empieza con los eventos express de 2017 y esta vez traemos un evento express especial el cual solo durar&aacute; 10 horas y este solo consiste que hagas una portada que diga Habbink Fansite para nuestra p&aacute;gina de <a href=\"https://www.facebook.com/Habbink-643041789198719/\" target=\"_blank\">Facebook</a>.</p><p><span style=\"color: rgb(184, 49, 47);\">Aqu&iacute; los premios de los primeros 4 lugares</span><img class=\"fr-draggable fr-fir fr-dii\" src=\"https://4.bp.blogspot.com/-ubbZPt6UHaU/Upu4z1hGNpI/AAAAAAAAEi4/g8ELQC5EV7s/s1600/PetPodium.gif\"></p><ol><li>Placa exclusiva + 500 creditos + usuario vip durante 1 mes</li><li>Placa exclusiva + 200 creditos + usuario vip durante 1 semana</li><li>Placa exclusiva + &nbsp;usuario vip durante 1 semana</li><li>Placa exclusiva</li></ol><p>Que gane el m&aacute;s creativo, original y r&aacute;pido&nbsp;</p><p><br></p>', '2016-12-28', 'Franko.p');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `furnis`
--

CREATE TABLE `furnis` (
  `id` int(11) NOT NULL,
  `imagen` varchar(4000) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(4000) COLLATE utf8_unicode_ci NOT NULL,
  `creditos` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `icon` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `seccion` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `furnis`
--

INSERT INTO `furnis` (`id`, `imagen`, `nombre`, `creditos`, `icon`, `seccion`) VALUES
(15, 'http://i.imgur.com/Z0uSI6I.png', 'Almohada Plata', '340', 'http://i.imgur.com/hntEBNE.png', '1'),
(11, 'http://i.imgur.com/rO3jYVF.png', 'Almohada Bronce', '420', 'http://i.imgur.com/hntEBNE.png', '4'),
(12, 'http://i.imgur.com/tARG6ys.png', 'Almohada Turquesa', '50', 'http://i.imgur.com/hntEBNE.png', '4'),
(13, 'http://i.imgur.com/jr8thpH.png', 'Almohada Azul', '150', 'http://i.imgur.com/hntEBNE.png', '4'),
(14, 'http://i.imgur.com/YmpPhMr.png', 'Almohada Azul Oscuro', '250', 'http://i.imgur.com/hntEBNE.png', '4'),
(10, 'http://i.imgur.com/0yo7aB6.png', 'Almohada Magenta', '300', 'http://i.imgur.com/hntEBNE.png', '3'),
(16, 'http://i.imgur.com/nyxfBCd.png', 'Almohada Dorada', '500', 'http://i.imgur.com/hntEBNE.png', '3'),
(17, 'http://i.imgur.com/IDk9dCq.png', 'Heladera Aqua', '9', 'http://i.imgur.com/hntEBNE.png', '3'),
(18, 'http://i.imgur.com/J18myQz.png', 'Heladera Naranja', '11', 'http://i.imgur.com/hntEBNE.png', '3'),
(19, 'http://i.imgur.com/ffmps81.png', 'Heladera Fucsia', '40', 'http://i.imgur.com/hntEBNE.png', '3'),
(20, 'http://i.imgur.com/j0078lU.png', 'Heladera Rosa', '35', 'http://i.imgur.com/hntEBNE.png', '3'),
(21, 'http://i.imgur.com/O7umf04.png', 'Heladera Black/Azul', '55', 'http://i.imgur.com/hntEBNE.png', '2'),
(22, 'http://i.imgur.com/j2BZYWQ.png', 'Heladera Azul', '100', 'http://i.imgur.com/hntEBNE.png', '2'),
(23, 'http://i.imgur.com/49Rc715.png', 'Heladera Verde', '10', 'http://i.imgur.com/hntEBNE.png', '2'),
(24, 'http://i.imgur.com/dMj5tlR.png', 'Heladera Roja', '100', 'http://i.imgur.com/QpP3wav.png', '2'),
(25, 'http://i.imgur.com/dAkogjx.png', 'Heladera Ejecutiva', '350', 'http://i.imgur.com/QpP3wav.png', '2'),
(26, 'http://i.imgur.com/3pyZZcT.png', 'Dragon Rosado', '2', 'http://i.imgur.com/QpP3wav.png', '5'),
(27, 'http://i.imgur.com/cHh9cGv.png', 'Dragon Dorado', '165', 'http://i.imgur.com/6nXSdBS.png', '5'),
(28, 'http://i.imgur.com/irfscPh.png', 'Dragon Musgo', '150', 'http://i.imgur.com/6nXSdBS.png', '5'),
(29, 'http://i.imgur.com/P0qENEK.png', 'Dragon De Bronce', '500', 'http://i.imgur.com/QpP3wav.png', '4'),
(35, 'http://ihabob.weebly.com/uploads/1/8/9/3/18933501/8069540.gif', 'Throne', '2000', 'http://i.imgur.com/2sjGOmJ.png', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `images`
--

CREATE TABLE `images` (
  `id` int(9) UNSIGNED NOT NULL,
  `url` varchar(500) DEFAULT NULL,
  `fecha` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `usuario` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `accion` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No definida',
  `fecha` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No definida'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logs_sospechosos`
--

CREATE TABLE `logs_sospechosos` (
  `id` int(9) UNSIGNED NOT NULL,
  `user_logeado` varchar(180) DEFAULT NULL,
  `ip` varchar(180) DEFAULT NULL,
  `accion` varchar(180) DEFAULT NULL,
  `fecha` varchar(180) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logs_visitantes`
--

CREATE TABLE `logs_visitantes` (
  `id` int(9) UNSIGNED NOT NULL,
  `ip` varchar(180) DEFAULT NULL,
  `fecha_i` varchar(180) DEFAULT NULL,
  `hora` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL,
  `autor` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `titulo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `resumen` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  `categoria` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `fecha` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `imagen` varchar(4000) COLLATE utf8_unicode_ci NOT NULL,
  `noticia` varchar(4000) COLLATE utf8_unicode_ci NOT NULL,
  `megusta` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `no_megusta` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id`, `autor`, `titulo`, `resumen`, `categoria`, `fecha`, `imagen`, `noticia`, `megusta`, `no_megusta`) VALUES
(8, 'Franko.p', 'Lúcete este año nuevo junto al DDC', '¡Despedimos el 2016 a lo grande!', 'Noticia', '2017-01-01', 'https://habboo-a.akamaihd.net/web_images/defaults/lpromo_gen15_11_thumb.png', '<p><img alt=\"\" src=\"https://cdn.habtium.com/album/3/noticia_1268169325avatar.PNG\" class=\"fr-dii fr-draggable fr-fir\"></p><p>A pocos d&iacute;as de recibir el a&ntilde;o nuevo, el<span>&nbsp;</span><strong>Departamento de Comunicaci&oacute;n</strong><span>&nbsp;</span>te trae su &uacute;ltima actividad por este a&ntilde;o 2016. Primero que nada, queremos agradecerle a toda la comunidad que siempre est&aacute; al tanto de nuestras redes sociales. Esperamos que el pr&oacute;ximo a&ntilde;o venga cargado de muchas cosas buenas para todos, y por nuestra parte vendremos cargados de m&aacute;s diversi&oacute;n para ustedes.</p><p><br></p><p>Pero a&uacute;n quedan unos d&iacute;as m&aacute;s para que acabe el a&ntilde;o, y es por eso que te traemos la &uacute;ltima actividad del a&ntilde;o, &iquest;te unes a esta celebraci&oacute;n? Lo que deber&aacute;s hacer en esta oportunidad es tomarte una selfie con el bot<span>&nbsp;</span><em>Comunicatium</em><span>&nbsp;</span>y la herramienta Habbo-C&aacute;mara en la sala<span>&nbsp;</span><strong>[HTM] Departamento de Comunicaci&oacute;n</strong><span>&nbsp;</span>de<span>&nbsp;</span><strong>Djosueadd</strong><span>&nbsp;</span>con tu mejor<span>&nbsp;</span><em>look de fiesta</em><span>&nbsp;</span>para celebrar junto al Afro y el DDC, luego debes subirla donde aparezca el marco de la Habbo-C&aacute;mara a Twitter mencionando la cuenta de<span>&nbsp;</span><strong><a href=\"https://www.twitter.com/habtium\" target=\"_blank\">@habtium</a></strong><span>&nbsp;</span>por supuesto, con el hashtag #<strong>A&ntilde;oNuevoConElAfro</strong>. No olvides tampoco agregar tu nombre de usuario en Habtium para poder entregarte los premios.</p><p><br></p><p>Cada participante que cumpla correctamente con los requisitos, se llevar&aacute; 20 monedas web adem&aacute;s del hermoso logro que te mostraremos a continuaci&oacute;n:</p><p><br></p><p style=\"text-align: center;\"><img alt=\"\" src=\"https://cdn.habtium.com/staff/c399f6cd3299.png\" class=\"fr-dii fr-draggable\"></p><p style=\"text-align: center;\"><strong>Bengalas</strong></p><p style=\"text-align: center;\"><em>&iquest;Qu&eacute; ser&iacute;a de un a&ntilde;o nuevo sin ellas?</em></p>', '11', '4'),
(2, 'Franko.p', '[ES] ¡Nuevos gorros en el catalogo!', '¿Te harás con la caja?', 'Actualización', '2017-01-01', 'https://habboo-a.akamaihd.net/web_images/habbo-web-articles/lpromo_xmas16_gen2_thumb.png', '<p><img alt=\"\" src=\"https://cdn.habtium.com/staff/f39784d669ed.png\" class=\"fr-dii fr-draggable\"></p><p><br></p><p>Empezamos este martes lleno de novedades y no por nada del mundo podemos dejar que solo pasen y no te enteres de ellas con cada detalle. En el d&iacute;a de hoy nos encontramos con la tan esperada<strong>&nbsp;&#39;&#39;Caja de gorros de fiesta&#39;&#39;</strong><span>&nbsp;</span>que dio mucho que hablar y tanto ha sido la espera de este.</p><p><br></p><p>La<span>&nbsp;</span><strong>caja de gorros&nbsp;</strong>la podras encontrar en el catalogo a<span>&nbsp;</span><strong>25 cr&eacute;ditos y 25 diamantes&nbsp;</strong>en donde en noticias anteriores te mostramos que hay<span>&nbsp;</span><strong>seis</strong><span>&nbsp;</span>lindos dise&ntilde;os de gorros, &iquest;Te quedaras sin ellos? A continuaci&oacute;n veremos la previa del catalogo y la caja en donde se encontraran estos gorros tan deseados.</p><p><br></p><p><a href=\"https://cdn.habtium.com/album/7/db9a4f50ca75.png\"><img src=\"https://cdn.habtium.com/album/7/db9a4f50ca75.png\" alt=\"\" class=\"fr-dii fr-draggable\"></a></p><p><em>Previa del cat&aacute;logo</em></p><p>Hemos llegado al final de la noticia,<span>&nbsp;</span><strong>&iquest;Te han gustado los gorros?</strong><span>&nbsp;</span>Sin duda van a hacer un &eacute;xito as&iacute; como esperamos tanto su apertura que pensamos que faltar&iacute;a mucho para su llegada pero pues, aqu&iacute; est&aacute;n y como esta sorpresa vendr&aacute;n muchas mas. D&eacute;janos tu comentario y no olvides de seguir visitando<strong><span>&nbsp;</span>Habtium</strong><span>&nbsp;</span>para estar atento a todas las novedades del d&iacute;a de hoy.</p>', '0', '0'),
(3, 'Franko.p', '[ES] ¡Llegaron los nuevos regalos HC!', '¿Cual es tu favorito?', 'Actualización', '2017-01-01', 'https://habboo-a.akamaihd.net/web_images/habbo-web-articles/lpromo_BC_HC_Gifts_thumb.png', '<p><img alt=\"\" src=\"https://cdn.habtium.com/staff/30ead094cb87.png\" class=\"fr-dii fr-draggable\"></p><p>Seguimos aqu&iacute; para traerte todas las noticias del hotel y no te pierdas de ninguna. Ahora seguiremos con algo que nos generaba la duda su fecha y lanzamiento pero como abras visto en noticias anteriores dimos su fecha y hora. As&iacute; que al igual que tu estamos ansiosos de la misma manera.</p><p><br></p><p>Estos regalos para los miembros del<span>&nbsp;</span><strong>Habbo Club</strong><span>&nbsp;</span>trae el detalle de ser prendas y que no cualquier prenda, si no<span>&nbsp;</span><strong>emojis&nbsp;</strong>. Esos que usamos para demostrar nuestro enojo, cari&ntilde;o o sentimiento alguno, ahora lo vamos a llevar en el hotel y demostrarlo en todas las salas , &iquest;Genial,no? &iexcl;Aqu&iacute; te dejamos las prendas de emojis!</p><p><br></p><p><a href=\"https://cdn.habtium.com/staff/70bbbf8b0b97.png\"><img src=\"https://cdn.habtium.com/staff/70bbbf8b0b97.png\" alt=\"\" class=\"fr-dii fr-draggable\"></a> <a href=\"https://cdn.habtium.com/staff/55188ded1086.png\"><img src=\"https://cdn.habtium.com/staff/55188ded1086.png\" alt=\"\" class=\"fr-dii fr-draggable\"></a></p><p><em>Previa del cat&aacute;logo</em></p><p>Ya estamos en el final de la noticia, &iquest;Que te ha parecido? Estos regalos son muy distintos a los anteriores que venimos apreciando desde hace a&ntilde;os de cambios, eso es genial ya que vemos nuevas ideas y nuevos proyectos muy interesantes. No olvides de dejar tu comentario y seguir visitando<span>&nbsp;</span><strong>Habtium</strong><span>&nbsp;</span>para estar enterado de todo acerca del hotel.</p>', '0', '0'),
(4, 'Franko.p', '¡Visita la villa navideña de nuestro primer Master Builder!', 'R3start se estrena como primer Master BAW del hotel .ES con un evento de lo más navideño. ¿Quieres saber qué ha preparado? Pue', 'Noticia', '2017-01-01', 'https://habboo-a.akamaihd.net/web_images/habbo-web-articles/lpromo_gen_baw_1_thumb.png', '<p>Nos estamos acercando cada vez m&aacute;s a la navidad y ya se perciben esos aires navide&ntilde;os. El arbolito con sus adornos, los preparativos para la cena navide&ntilde;a y todos esos detalles que conforman estas fechas. &nbsp;Por ese motivo, R3start se estrena como Master Builder del nuevo BAW 2.0 &nbsp;preparando 4 Juegos y un evento extra especial desde el dia Viernes y que se realizar&aacute; de forma rel&aacute;mpago duarante todo el fin de semana. Deber&aacute;s estar muy atent@ si quieres hacerte con las 5 placas que habr&aacute; disponibles en total.</p><p>En esta noticia iremos ampliando cada d&iacute;a informaci&oacute;n sobre el nuevo juego que abrir&aacute; a diario.</p><p>En la villa navide&ntilde;a est&aacute;n muy atareados prepar&aacute;ndose para la &eacute;poca del a&ntilde;o en la que m&aacute;s trabajo tienen, &iquest;les echar&aacute;s una mano? Cada d&iacute;a abrir&aacute; una caba&ntilde;a en la que encontrar&aacute;s un juego. Y desde el viernes podr&aacute;s entrar en las rondas rel&aacute;mpago al taller del reno, para poder entrar al taller deber&aacute;s estar atent@ a las alertas dentro del hotel que avisar&aacute;n de su apertura durante tiempo limitado. Pero no temas, el esp&iacute;ritu navide&ntilde;o har&aacute; que haya varias rondas al d&iacute;a con muchas oportunidades de ganar placa.</p><p>-Primer Juego- &nbsp;(Abre el Lunes a las 20h HPE Horario Peninsular Espa&ntilde;ol)<br><strong>Repartiendo Obsequios a los Ni&ntilde;os</strong><br>&iquest;Cual es la principal tarea de Santa en estas fechas? &iexcl;Exacto! Preparar todos los juguetes con los que sue&ntilde;an los ni&ntilde;os y ni&ntilde;as. Ay&uacute;dalo a prepararlos y dejarlos listos para el reparto.</p><p>Encontrar&aacute;s una peque&ntilde;a fila. Espera tu turno y ser&aacute;s transportado al Santa Claus al que ayudar&aacute;s a preparar el obsequio para el ni&ntilde;o/a que tienes al frente.</p><p>Para mover a Santa Claus deber&aacute;s pisar las casillas flecha para dirigirlo a cada casilla timbre que vas encontrando en tu camino.</p><p><strong>Primera casilla timbre:</strong> Cambia al Santa Claus a su atuendo de Navidad para iniciar sus labores navide&ntilde;as.</p><p><strong>Segunda casilla timbre:</strong> Una vez tu Bot de Santa Claus pise la casilla, el ni&ntilde;o te so&ntilde;ar&aacute; con el regalo que quiere para esta navidad. &nbsp;Una vez que sepas el regalo deber&aacute;s decir el nombre del furni que quiere para que sea creado en el taller de Santa.</p><p><strong>Tercera casilla timbre:</strong> Una vez el furni est&eacute; sobre la mesa de trabajo de Santa Claus, al pisar esta casilla se envolver&aacute; para regalo. Cuando el regalo est&eacute; listo deber&aacute;s dirigirte a la &uacute;ltima casilla detr&aacute;s del Reno.</p><p><strong>Cuarta casilla timbre:</strong> Una vez el Santa Claus pise esta casilla, se transportar&aacute; a los sue&ntilde;os del ni&ntilde;o/ni&ntilde;a, con el furni que pidi&oacute; para esta navidad. Cuando veas al Santa Claus en los sue&ntilde;os del ni&ntilde;o/ni&ntilde;a, deber&aacute;s decir: feliz navidad.</p><p><strong>Nota: Los 3 participantes que esten jugando podr&aacute;n ganar. Siempre y cuando no se acabe el tiempo. Dicho tiempo es controlado por la esfera que encontrar&aacute;s a mano derecha. Si llega hasta el cuadro rojo, habr&aacute; terminado el tiempo y es el turno de nuevos jugadores.</strong></p><p>&iexcl;Buena suerte!</p>', '0', '1'),
(5, 'Franko.p', '[ES] Regresan los Huevos de oro al catálogo', '¿Te harás con alguno más?', 'Actualización', '2017-01-01', 'https://habboo-a.akamaihd.net/web_images/habbo-web-articles/lpromo_xmas16_creatures_thumb.png', '<p><img alt=\"\" src=\"https://cdn.habtium.com/staff/30ead094cb87.png\" class=\"fr-dii fr-draggable\"></p><p>&iexcl;Vaya, las novedades siguen saliendo a la luz en los diferentes hoteles! Ya sentimos ese ambiente acogedor y familiar en todas nuestras casas, pues estamos en plena Navidad y, a la vuelta de la esquina, nos encontraremos ante la despedida del vigente a&ntilde;o 2016. Pero eso no es de lo que te venimos a hablar ahora, sino de los<span>&nbsp;</span><strong>Huevos de oro</strong><span>&nbsp;</span>que<span>&nbsp;</span><strong>regresan</strong><span>&nbsp;</span>hoy a nuestro cat&aacute;logo. &iexcl;Sigue leyendo y ent&eacute;rate de todo!</p><p><br></p><p>&iexcl;Y as&iacute; es! Recordamos que la pasada semana salieron por primera vez a nuestro cat&aacute;logo, y estar&iacute;an disponibles s&oacute;lo ese d&iacute;a, evitando su continuidad. Pues bien, hoy tambi&eacute;n han sido lanzados a nuestro cat&aacute;logo por el precio de<span>&nbsp;</span><strong>50 cr&eacute;ditos y 15 diamantes</strong><span>&nbsp;</span>para que todos los usuarios que tuvieran dichos recursos se hicieran con uno o varios. Para romperlos y ver qu&eacute;<span>&nbsp;</span><strong>criatura</strong><span>&nbsp;</span>te sale basta con usar el efecto<span>&nbsp;</span><strong>&quot;varita m&aacute;gica&quot;</strong>. &iexcl;A continuaci&oacute;n la demostraci&oacute;n!</p><p><br></p><p><a href=\"https://cdn.habtium.com/staff/9d6fbb8802c8.png\"><img src=\"https://cdn.habtium.com/staff/9d6fbb8802c8.png\" alt=\"\" class=\"fr-dii fr-draggable\"></a></p><p><em>Previa de los huevos en el cat&aacute;logo</em></p><p>&iexcl;Y eso es todo!<span>&nbsp;</span><strong>&iquest;Qu&eacute; piensas de la noticia? &iquest;Te gust&oacute;? &iquest;Te har&aacute;s con alg&uacute;n Huevo de oro?</strong><span>&nbsp;</span>No olvides dejarnos tu m&aacute;s sincera<span>&nbsp;</span><strong>opini&oacute;n</strong>, respondiendo a las previas cuestiones, pues a nosotros nos interesa. Adem&aacute;s, te invitamos a seguir visitando<span>&nbsp;</span><strong>Habtium</strong><span>&nbsp;</span>para m&aacute;s informaci&oacute;n.<span>&nbsp;</span><strong>Feliz a&ntilde;o nuevo</strong>.</p>', '0', '1'),
(6, 'Franko.p', '[ES] Nueva Encuesta: Charlas de los Embajadores', '¡Hazte con una exclusiva placa!', 'Noticia', '2017-01-02', 'https://habboo-a.akamaihd.net/web_images/habbo-web-articles/safety.promo__thumb.png', '<p><img alt=\"\" src=\"https://cdn.habtium.com/staff/a75fd19bd928.png\" class=\"fr-dii fr-draggable\"></p><p>Seguimos con m&aacute;s novedades. En esta ocasi&oacute;n, y tras presentarte las &uacute;ltimas placas de la semana, y por ende del a&ntilde;o, nos adentramos en nuestro hotel para informarte en primera persona de una<span>&nbsp;</span><strong>nueva encuesta que nos prepararon nuestros Embajadores</strong>. Una encuesta para demostrar lo que sabes sobre la<span>&nbsp;</span><strong>seguridad</strong>. Una<span>&nbsp;</span><strong>exclusiva placa</strong><span>&nbsp;</span>pondr&aacute;s obtener por responderla de forma correcta. &iquest;Quieres hacerlo? &iexcl;Sigue leyendo, pues!</p><p><br></p><p>&iexcl;Y as&iacute; es! Se trata de una nueva encuesta en la, como te adelant&aacute;bamos anteriormente, tendr&aacute;s que m<strong>ostrar tus conocimientos sobre la seguridad</strong>, informaci&oacute;n que pudimos obtener, en parte gracias a las<span>&nbsp;</span><strong>charlas que los propios embajadores</strong><span>&nbsp;</span>nos preparan. Para responderla, dir&iacute;gete a la sala<span>&nbsp;</span><a href=\"https://www.habbo.es/hotel?room=113543125\" target=\"_blank\">Centro Ayuda de Embajadores</a>, y te aparecer&aacute; la encuesta. &iexcl;Responde con las<span>&nbsp;</span><strong>respuestas</strong><span>&nbsp;</span>que a continuaci&oacute;n te brindamos para ganar tu<span>&nbsp;</span><strong>placa</strong>!</p><p><br></p><p><a href=\"https://cdn.habtium.com/album/7/5f4b7c16309c.png\"><img src=\"https://cdn.habtium.com/album/7/5f4b7c16309c.png\" alt=\"\" class=\"fr-dii fr-draggable\"></a></p><p><em>Previa de la encuesta</em></p><p><strong>1. &iquest;En qu&eacute; fecha se inici&oacute; el proyecto Embajadores en Habbo.es?</strong><span>&nbsp;</span>20 de noviembre de 2014.</p><p><strong>2. &iquest;Con cu&aacute;l integrante del equipo Staff empez&oacute; el proyecto Embajadores?&nbsp;</strong>Alhai.</p><p><strong>3. &iquest;Cu&aacute;ntos Master Embajadores contiene el equipo?&nbsp;</strong>3.</p><p><strong>4. Desde el inicio del proyecto Embajadores, &iquest;Cu&aacute;ntos miembros nuevos se han incluido?&nbsp;</strong>7.</p><p><strong>5. &iquest;Podr&iacute;as decir en qu&eacute; mes y a&ntilde;o se unieron al equipo los Embajadores S.Cuenta y jaumexpunk-:.?</strong><span>&nbsp;</span>Febrero de 2016.</p><p><strong>6. &iquest;Cu&aacute;l de las siguientes definiciones es la m&aacute;s apropiada para un Embajador?</strong><span>&nbsp;</span>Un usuario experto en resolver dudas a<span>&nbsp;</span>l@s<span>&nbsp;</span>usuari@s, siendo su papel de gu&iacute;a fundamental a la hora de recorrer el hotel y conocerlo.</p><p><strong>7. &iquest;Cu&aacute;les son los requisitos para ser Embajador?</strong><span>&nbsp;</span>Tener historial limpio, haber completado el camino Habbo Alfa hasta el final y tener una amplia predisposici&oacute;n a ayudar a los<span>&nbsp;</span>usuari@s.</p><p><strong>8. &iquest;C&oacute;mo se identifica un Embajador?&nbsp;</strong>Mediante una placa y un efecto de Embajador, adem&aacute;s de estar su nombre escrito en las FAQ&#39;s de Habbo.</p><p><br></p><p>&iexcl;Y eso ha sido todo!<span>&nbsp;</span><strong>&iquest;Qu&eacute; piensas de la noticia? &iquest;Respondiste a la encuesta? &iquest;Te fue interesante?</strong><span>&nbsp;</span>No olvides dejarnos tu m&aacute;s sincera<span>&nbsp;</span><strong>opini&oacute;n</strong>, respondiendo a las previas cuestiones, pues a nosotros nos interesa. Adem&aacute;s, te invitamos a seguir visitando<span>&nbsp;</span><strong>Habtium</strong><span>&nbsp;</span>para m&aacute;s informaci&oacute;n.<span>&nbsp;</span><strong>Feliz a&ntilde;o nuevo</strong>.</p>', '0', '0'),
(7, 'Franko.p', '[INT] Últimas placas de la semana', '¿Las últimas del año?', 'Noticia', '2017-01-02', 'https://habboo-a.akamaihd.net/web_images/habbo-web-articles/lpromo_gen15_10_thumb.png', '<p><img alt=\"\" src=\"https://cdn.habtium.com/staff/96af848ea812.png\" class=\"fr-dii fr-draggable\"></p><p>30 de diciembre. Son<span>&nbsp;</span><strong>d&iacute;as de fiesta</strong><span>&nbsp;</span>y mucha diversi&oacute;n en Habbo, con motivo de despedir este 2016, cargado de sorpresas. Nuestras queridas amigas, las<span>&nbsp;</span><strong>placas</strong>, se estuvieron refugiando estos &uacute;ltimas d&iacute;as, pues no te pudimos presentar muchas, pero aqu&iacute; est&aacute;n de nuevo, las &uacute;ltimas<span>&nbsp;</span><strong>insignias</strong><span>&nbsp;</span>de la semana, y,<span>&nbsp;</span><strong>&iquest;ser&aacute;n las &uacute;ltimas del a&ntilde;o?</strong><span>&nbsp;</span>&iexcl;Sigue leyendo y desc&uacute;brelas!</p><p><br></p><p>&iexcl;Y as&iacute; es! En primer lugar, y como protagonista del d&iacute;a, se sit&uacute;a nuestro querido<span>&nbsp;</span><a href=\"https://habtium.es/news/13375/habbo.es\" target=\"_blank\">hotel hispano</a>, quien en tan especial ocasi&oacute;n recibe un total de<span>&nbsp;</span><strong>seis nuevas placas</strong><span>&nbsp;</span>en sus servidores. En &eacute;stas podemos observar muy<span>&nbsp;</span><strong>distintas tem&aacute;ticas y colores</strong>, entre los cuales est&aacute;n la famosa<span>&nbsp;</span><strong>Estatua de la Libertad</strong>, un bonito<span>&nbsp;</span><strong>delf&iacute;n</strong>, un<span>&nbsp;</span><strong>b&uacute;ho</strong>, un par de<span>&nbsp;</span><strong>ping&uuml;inos</strong>, un hermoso<span>&nbsp;</span><strong>tigre</strong><span>&nbsp;</span>y por &uacute;ltimo una<span>&nbsp;</span><strong>bandera de Europa</strong>. &iquest;Deseando verlas? &iexcl;A continuaci&oacute;n te las mostramos!</p><p><br></p><p><img alt=\"\" src=\"https://images.habbo.com/c_images/album1584/ES82B.gif\" class=\"fr-dii fr-draggable\">&nbsp;<img alt=\"\" src=\"https://images.habbo.com/c_images/album1584/ES83B.gif\" class=\"fr-dii fr-draggable\">&nbsp;<img alt=\"\" src=\"https://images.habbo.com/c_images/album1584/ES84B.gif\" class=\"fr-dii fr-draggable\">&nbsp;<img alt=\"\" src=\"https://images.habbo.com/c_images/album1584/ES85B.gif\" class=\"fr-dii fr-draggable\">&nbsp;<img alt=\"\" src=\"https://images.habbo.com/c_images/album1584/ES86B.gif\" class=\"fr-dii fr-draggable\">&nbsp;<img alt=\"\" src=\"https://images.habbo.com/c_images/album1584/ES87B.gif\" class=\"fr-dii fr-draggable\"></p><p><strong>ES82B - ES87B</strong></p><p>&iexcl;Pero esas no fueron todas! Pues tambi&eacute;n tenemos al<span>&nbsp;</span><a href=\"https://habtium.es/news/13375/habbo.com\" target=\"_blank\">hotel anglosaj&oacute;n</a>, quien recibe nada m&aacute;s y nada menos que<span>&nbsp;</span><strong>tres insignias nuevas</strong><span>&nbsp;</span>a repartir entre su gran comunidad, y el<span>&nbsp;</span><a href=\"https://habtium.es/news/13375/habbo.com.tr\" target=\"_blank\">hotel turco</a>, quien s&oacute;lo recibe<span>&nbsp;</span><strong>una &uacute;nica placa</strong><span>&nbsp;</span>nueva en esta especial ocasi&oacute;n. Las tem&aacute;ticas y colores de las tres primeras las hace<span>&nbsp;</span><strong>muy similares</strong>, mientras que en la &uacute;ltima observamos la expresi&oacute;n &quot;<strong>Korkma</strong>&quot;, cuyo<span>&nbsp;</span><strong>significado es miedo</strong>. &iexcl;M&iacute;ralas a continuaci&oacute;n!</p><p><br></p><p><img alt=\"\" src=\"https://images.habbo.com/c_images/album1584/UK764.gif\" class=\"fr-dii fr-draggable\">&nbsp;<img alt=\"\" src=\"https://images.habbo.com/c_images/album1584/UK765.gif\" class=\"fr-dii fr-draggable\">&nbsp;<img alt=\"\" src=\"https://images.habbo.com/c_images/album1584/UK766.gif\" class=\"fr-dii fr-draggable\">&nbsp;<img alt=\"\" src=\"https://images.habbo.com/c_images/album1584/TR646.gif\" class=\"fr-dii fr-draggable\"></p><p><strong>UK764 - UK766; TR646</strong></p><p>&iexcl;Y eso es todo!<span>&nbsp;</span><strong>&iquest;Qu&eacute; piensas de la noticia? &iquest;Te gustaron las placas? &iquest;Cu&aacute;l es tu favorita?</strong><span>&nbsp;</span>No olvide', '1', '2'),
(1, 'Franko.p', 'Habbink versión 1.0 ya disponible', 'Ya tienes a tu servicio Habbink CMS completamente funcional y seguro :D abre esta noticia para ver las novedades...', 'Actualización', '2016-12-22', 'http://www.servermix.esy.es/images/1.png', '<p><span style=\"font-size: 24px;\">Bienvenid@ a la versi&oacute;n 1.0 de&nbsp;</span><span style=\"color: rgb(44, 130, 201);\"><span style=\"background-color: initial; text-align: initial; font-size: 24px;\">Habbink CMS</span></span></p><p><span style=\"font-size: 14px;\">Una de las nuevas novedades que traemos para ti son las siguientes:</span></p><ul><li>Tienda de placas</li><li>Dar cr&eacute;ditos y diamantes</li><li>Mensajes en privado entre usuarios</li><li>Mas opciones en perfil del usuario</li><li>Nuevo dise&ntilde;o de perfil de usuario</li><li>Nuevo sistema de Regalos de placas</li><li>Contador de visitantes</li><li>Arreglo de vulnerabilidades</li><li>Nuevas utilidades</li><li>Nueva organizaci&oacute;n de archivos de la cms</li><li>Limpieza de una parte de c&oacute;digo innecesario</li><li>Nuevo sistema de im&aacute;genes de perfil en registro de usuario</li><li>Nuevo sistema de reporte de usuario</li><li>Nuevo sistema de solicitudes de amistad</li><li>Nuevo sistema de estad&iacute;sticas de toda la web</li><li>Nuevo sistema de inventario de placas en perfiles de usuarios</li><li>Nuevo sistema de seguridad ante robo de cuenta por detecci&oacute;n de ip no registrada</li><li>Nuevo sistema de logs sospechosos</li><li>Nuevo sistema de secciones de catalogo</li><li>Nuevo sistema de botones de url en promociones</li><li>Nuevo dise&ntilde;o responsive (web adaptable a celulares y dem&aacute;s)</li></ul><p><span style=\"font-size: 14px;\"><img class=\"fr-draggable fr-fir fr-dii\" src=\"https://4.bp.blogspot.com/-rvBhRTT6HGI/Upu5uempHrI/AAAAAAAAE6A/RbOaLWIn5Ic/s1600/advertisement.gif\"></span></p><p><span style=\"color: rgb(124, 112, 107);\"><span style=\"font-size: 14px;\">Algunas de las nuevas funciones No logradas para esta versi&oacute;n 1.0</span></span></p><ul><li><span style=\"color: rgb(124, 112, 107);\">Nuevo dise&ntilde;o general de la web</span></li><li><span style=\"color: rgb(124, 112, 107);\">Men&uacute; de usuarios editable</span></li><li><span style=\"color: rgb(124, 112, 107);\">Opciones de cambio de dise&ntilde;o de la web</span></li><li><span style=\"color: rgb(124, 112, 107);\">Emojis al comentar en art&iacute;culos (noticias)</span></li><li><span style=\"color: rgb(124, 112, 107);\">Chat en vivo (En eventos activos)</span></li><li><span style=\"color: rgb(124, 112, 107);\">Opciones de administrador en modo mantenimiento</span></li><li><span style=\"color: rgb(124, 112, 107);\">CMS disponible para XAMPP y IIS</span></li></ul><p>Gracias por instalar Habbink cms v1.0 espero que les guste aqu&iacute; una encuesta para poder mejorar la cms y decidir cuales ser&aacute;n las pr&oacute;ximas actualizaciones de la cms.</p><p><span style=\"font-size: 24px;\"><a href=\"https://goo.gl/forms/Bs7dXVZe0YsQg5xI2\" target=\"_blank\">&gt;&gt; Hacer encuesta &lt;&lt;</a></span></p>', '3', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `placas`
--

CREATE TABLE `placas` (
  `id` int(11) NOT NULL,
  `code` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `imagen` varchar(4000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `placas`
--

INSERT INTO `placas` (`id`, `code`, `imagen`) VALUES
(13, 'UK758', 'http://habboo-a.akamaihd.net/c_images/album1584/UK758.gif'),
(2, 'PT106', 'http://habboo-a.akamaihd.net/c_images/album1584/PT106.gif'),
(3, 'UK731', 'http://habboo-a.akamaihd.net/c_images/album1584/UK731.gif'),
(4, 'NL233', 'http://habboo-a.akamaihd.net/c_images/album1584/NL233.gif'),
(6, 'ITB60', 'http://habboo-a.akamaihd.net/c_images/album1584/ITB60.gif'),
(7, 'IT948', 'http://habboo-a.akamaihd.net/c_images/album1584/IT948.gif'),
(8, 'FR721', 'http://habboo-a.akamaihd.net/c_images/album1584/FR721.gif'),
(9, 'FI127', 'http://habboo-a.akamaihd.net/c_images/album1584/FI127.gif'),
(10, 'UK726', 'http://habboo-a.akamaihd.net/c_images/album1584/UK726.gif'),
(12, 'UK751', 'http://habboo-a.akamaihd.net/c_images/album1584/UK751.gif'),
(14, 'UK752', 'http://habboo-a.akamaihd.net/c_images/album1584/UK752.gif'),
(15, 'FR401', 'http://habboo-a.akamaihd.net/c_images/album1584/FR401.gif'),
(16, 'IT738', 'http://habboo-a.akamaihd.net/c_images/album1584/IT738.gif'),
(17, 'X1614', 'http://habboo-a.akamaihd.net/c_images/album1584/X1614.gif'),
(18, 'ITA48', 'http://habboo-a.akamaihd.net/c_images/album1584/ITA48.gif');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rangos`
--

CREATE TABLE `rangos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mision` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `rangos`
--

INSERT INTO `rangos` (`id`, `nombre`, `mision`, `color`) VALUES
(1, 'user', 'ninguna', ''),
(2, 'vip', 'usuario exclusivo', 'orange'),
(3, 'Moderador', 'Moderar todo comportamiento inadecuado', 'rosa'),
(4, 'GameMaster', 'Creador de Games', 'red'),
(5, 'Reportero', 'Creador de Noticias', 'orange'),
(6, 'Administrador', 'Administrar web', 'oscuro'),
(7, 'Fundador', 'Creador de web', 'blue');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportes`
--

CREATE TABLE `reportes` (
  `id` int(9) UNSIGNED NOT NULL,
  `user_enviado` varchar(180) DEFAULT NULL,
  `user_reportado` varchar(180) DEFAULT NULL,
  `mensaje` varchar(180) DEFAULT NULL,
  `tipo` varchar(180) DEFAULT NULL,
  `estado` varchar(180) DEFAULT NULL,
  `fecha_i` varchar(180) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones_furnis`
--

CREATE TABLE `secciones_furnis` (
  `id` int(9) UNSIGNED NOT NULL,
  `nombre` varchar(180) DEFAULT NULL,
  `tipo_n` varchar(180) DEFAULT NULL,
  `url_seccion` varchar(180) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `secciones_furnis`
--

INSERT INTO `secciones_furnis` (`id`, `nombre`, `tipo_n`, `url_seccion`) VALUES
(1, 'Rares unicos', '1', 'rares-unicos'),
(2, 'rares_2', '2', 'rares-2'),
(3, 'rares_3', '3', 'rares-3'),
(4, 'rares_4', '4', 'rares-4'),
(5, 'Hola', '5', 'Hola-esta-es-una-url-realmente-estupida');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tienda`
--

CREATE TABLE `tienda` (
  `id` int(9) UNSIGNED NOT NULL,
  `code_placa` varchar(180) DEFAULT NULL,
  `precio` varchar(180) DEFAULT NULL,
  `unidades` varchar(180) DEFAULT NULL,
  `icono` varchar(180) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tienda`
--

INSERT INTO `tienda` (`id`, `code_placa`, `precio`, `unidades`, `icono`) VALUES
(1, 'UK758', '100', '23', 'creditos'),
(2, 'PT106', '250', '15', 'creditos'),
(3, 'IT738', '30', '7', 'diamantes'),
(4, 'UK751', '150', '29', 'creditos'),
(5, 'UK752', '40', '17', 'diamantes'),
(6, 'FI127', '20', '37', 'diamantes'),
(7, 'FR401', '20', '36', 'diamantes'),
(8, 'UK726', '40', '45', 'creditos'),
(9, 'ITA48', '70', '74', 'creditos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(9) UNSIGNED NOT NULL,
  `username` varchar(12) DEFAULT NULL,
  `password` varchar(180) DEFAULT NULL,
  `email` varchar(180) DEFAULT NULL,
  `fecha` varchar(12) NOT NULL,
  `rank` varchar(2) NOT NULL DEFAULT '1',
  `pin` varchar(4) NOT NULL,
  `id_extreme` varchar(180) DEFAULT NULL,
  `avatar` varchar(4000) NOT NULL DEFAULT 'images/avatars/anonimo.jpg',
  `portada` varchar(4000) NOT NULL DEFAULT 'http://i.imgur.com/EPmYseB.png',
  `creditos` varchar(4000) NOT NULL DEFAULT '500',
  `diamantes` varchar(4000) NOT NULL DEFAULT '100',
  `ip` varchar(500) NOT NULL,
  `nombre` varchar(120) NOT NULL DEFAULT 'No especificado',
  `apellido` varchar(120) NOT NULL DEFAULT 'No especificado',
  `pais` varchar(120) NOT NULL DEFAULT 'No especificado',
  `ban` varchar(20) NOT NULL DEFAULT '0',
  `ban_i` varchar(20) NOT NULL DEFAULT '0',
  `ban_f` varchar(20) NOT NULL DEFAULT '0',
  `mostraremail` varchar(50) NOT NULL DEFAULT 'No',
  `mostrarnombreapellido` varchar(50) NOT NULL DEFAULT 'No',
  `mostrarpais` varchar(50) NOT NULL DEFAULT 'No',
  `seguridad_ip` varchar(10) NOT NULL DEFAULT 'No'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_amigos`
--

CREATE TABLE `usuarios_amigos` (
  `id` int(9) UNSIGNED NOT NULL,
  `user` varchar(180) DEFAULT NULL,
  `user_amigo` varchar(180) DEFAULT NULL,
  `estado_solicitud` varchar(180) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_mensajes_privados`
--

CREATE TABLE `usuarios_mensajes_privados` (
  `id` int(9) UNSIGNED NOT NULL,
  `user_enviado` varchar(180) DEFAULT NULL,
  `user_recibido` varchar(180) DEFAULT NULL,
  `asunto` varchar(180) DEFAULT NULL,
  `mensaje` varchar(180) DEFAULT NULL,
  `fecha` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_placas`
--

CREATE TABLE `usuarios_placas` (
  `id` int(9) UNSIGNED NOT NULL,
  `username` varchar(180) DEFAULT NULL,
  `code_placa` varchar(180) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_regalos`
--

CREATE TABLE `usuarios_regalos` (
  `id` int(9) UNSIGNED NOT NULL,
  `user_enviado` varchar(180) DEFAULT NULL,
  `user_recibido` varchar(180) DEFAULT NULL,
  `asunto_regalo` varchar(200) NOT NULL,
  `mensaje_regalo` varchar(200) NOT NULL,
  `fecha` varchar(200) NOT NULL,
  `code_placa` varchar(180) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votos`
--

CREATE TABLE `votos` (
  `id` int(9) UNSIGNED NOT NULL,
  `username` varchar(180) DEFAULT NULL,
  `tipo` varchar(180) DEFAULT NULL,
  `noticia_id` varchar(180) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `baneo`
--
ALTER TABLE `baneo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `furnis`
--
ALTER TABLE `furnis`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `logs_sospechosos`
--
ALTER TABLE `logs_sospechosos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `logs_visitantes`
--
ALTER TABLE `logs_visitantes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `placas`
--
ALTER TABLE `placas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rangos`
--
ALTER TABLE `rangos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reportes`
--
ALTER TABLE `reportes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `secciones_furnis`
--
ALTER TABLE `secciones_furnis`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tienda`
--
ALTER TABLE `tienda`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `usuarios_amigos`
--
ALTER TABLE `usuarios_amigos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios_mensajes_privados`
--
ALTER TABLE `usuarios_mensajes_privados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios_placas`
--
ALTER TABLE `usuarios_placas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios_regalos`
--
ALTER TABLE `usuarios_regalos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `votos`
--
ALTER TABLE `votos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `baneo`
--
ALTER TABLE `baneo`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `furnis`
--
ALTER TABLE `furnis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT de la tabla `images`
--
ALTER TABLE `images`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `logs_sospechosos`
--
ALTER TABLE `logs_sospechosos`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `logs_visitantes`
--
ALTER TABLE `logs_visitantes`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `placas`
--
ALTER TABLE `placas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `rangos`
--
ALTER TABLE `rangos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `reportes`
--
ALTER TABLE `reportes`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `secciones_furnis`
--
ALTER TABLE `secciones_furnis`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `tienda`
--
ALTER TABLE `tienda`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(9) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuarios_amigos`
--
ALTER TABLE `usuarios_amigos`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuarios_mensajes_privados`
--
ALTER TABLE `usuarios_mensajes_privados`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuarios_placas`
--
ALTER TABLE `usuarios_placas`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuarios_regalos`
--
ALTER TABLE `usuarios_regalos`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `votos`
--
ALTER TABLE `votos`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
