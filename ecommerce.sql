-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-07-2018 a las 07:48:34
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


 create database ecommerce;

 use database ecommerce;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `email` text NOT NULL,
  `foto` text NOT NULL,
  `password` text NOT NULL,
  `perfil` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`id`, `nombre`, `email`, `foto`, `password`, `perfil`, `fecha`) VALUES
(1, 'Oscar', 'nerd.16@hotmail.cl', '', '123', 'superadministrador', '2018-06-22 21:57:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `img` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo1` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo2` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo3` text COLLATE utf8_spanish_ci NOT NULL,
  `estilo` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `banner`
--

INSERT INTO `banner` (`id`, `ruta`, `img`, `titulo1`, `titulo2`, `titulo3`, `estilo`, `fecha`) VALUES
(1, 'sin-categoria', 'vistas/img/banner/paginicio.jpeg', '{\r\n	\"texto\": \"OFERTAS ESPECIALES\",\r\n	\"color\": \"#fff\"\r\n}', '{\r\n	\"texto\": \"90% off\",\r\n	\"color\": \"#fff\"\r\n}', '{\r\n\r\n	\"texto\": \"En todos los cursos disponibles.\",\r\n\r\n	\"color\": \"#fff\"\r\n\r\n}', 'textoDer', '2018-06-09 04:09:52'),
(2, 'articulos-gratis', 'vistas/img/banner/gratis.jpeg', '{\r\n	\"texto\": \"CURSOS GRATIS\",\r\n	\"color\": \"#fff\"\r\n}', '{\r\n\r\n	\"texto\": \"¡Buen Aprendizaje!\",\r\n\r\n	\"color\": \"#fff\"\r\n\r\n}', '{\r\n	\"texto\": \"Disfrútalo\",\r\n	\"color\": \"#fff\"\r\n}', 'textoIzq', '2018-06-09 04:11:56'),
(5, 'lo-mas-vendido', 'vistas/img/banner/masvendido.jpeg', '{\r\n	\"texto\": \"LO MAS VENDIDO\",\r\n	\"color\": \"#fff\"\r\n}', '{\r\n\r\n	\"texto\": \"AMPLIO CATALOGO DE LO MEJOR PARA TI!\",\r\n\r\n	\"color\": \"#fff\"\r\n\r\n}', '{\r\n	\"texto\": \"\",\r\n	\"color\": \"#fff\"\r\n}', 'textoDer', '2018-06-09 04:27:58'),
(6, 'lo-mas-visto', 'vistas/img/banner/masvisto.jpeg', '{\r\n	\"texto\": \"LO MAS VISTO\",\r\n	\"color\": \"#fff\"\r\n}', '{\r\n\r\n	\"texto\": \"\",\r\n\r\n	\"color\": \"#fff\"\r\n\r\n}', '{\r\n\r\n	\"texto\": \"\",\r\n\r\n	\"color\": \"#fff\"\r\n\r\n}', 'textoCentro', '2018-06-09 04:32:59'),
(7, 'hazlo-tu-mismo', 'vistas/img/banner/life.jpeg', '{\r\n	\"texto\": \"Porque solo tu Puedes hacerlo!\",\r\n	\"color\": \"#fff\"\r\n}', '{\r\n\r\n	\"texto\": \"PORQUE ES IMPORTANTE!\",\r\n\r\n	\"color\": \"#fff\"\r\n\r\n}', '{\r\n\r\n	\"texto\": \"\",\r\n\r\n	\"color\": \"#fff\"\r\n\r\n}', 'textoCentro', '2018-06-09 04:36:45'),
(8, 'estilo-de-vida', 'vistas/img/banner/life2.jpeg', '{\r\n	\"texto\": \"Nuestra vida es importante!\",\r\n	\"color\": \"#fff\"\r\n}', '{\r\n\r\n	\"texto\": \"Aprovecha el Hoy!\",\r\n\r\n	\"color\": \"#fff\"\r\n\r\n}', '{\r\n\r\n	\"texto\": \"\",\r\n\r\n	\"color\": \"#fff\"\r\n\r\n}', 'textoDer', '2018-06-09 04:38:45'),
(9, 'desarrollo-personal', 'vistas/img/banner/personal.jpeg', '{\r\n	\"texto\": \"El desarrollo personal lo haces tu!\",\r\n	\"color\": \"#fff\"\r\n}', '{\r\n\r\n	\"texto\": \"Aprovecha el Hoy con Umake!\",\r\n\r\n	\"color\": \"#fff\"\r\n\r\n}', '{\r\n\r\n	\"texto\": \"\",\r\n\r\n	\"color\": \"#fff\"\r\n\r\n}', 'textoDer', '2018-06-09 04:38:45'),
(10, 'tecnologia', 'vistas/img/banner/tecnologia.jpeg', '{\r\n	\"texto\": \"TECNOLOGIA DE VANGUARDIA!\",\r\n	\"color\": \"#fff\"\r\n}', '{\r\n\r\n	\"texto\": \"Aprovecha el Hoy con Umake!\",\r\n\r\n	\"color\": \"#fff\"\r\n\r\n}', '{\r\n\r\n	\"texto\": \"\",\r\n\r\n	\"color\": \"#fff\"\r\n\r\n}', 'textoDer', '2018-06-09 04:38:45'),
(11, 'desarrollo-web', 'vistas/img/banner/web.jpeg', '{\r\n	\"texto\": \"Lo mejor para Crear tu pagina web!\",\r\n	\"color\": \"#fff\"\r\n}', '{\r\n\r\n	\"texto\": \"Aprovecha el Hoy con Umake!\",\r\n\r\n	\"color\": \"#fff\"\r\n\r\n}', '{\r\n\r\n	\"texto\": \"\",\r\n\r\n	\"color\": \"#fff\"\r\n\r\n}', 'textoDer', '2018-06-09 04:44:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cabeceras`
--

CREATE TABLE `cabeceras` (
  `id` int(11) NOT NULL,
  `ruta` text NOT NULL,
  `titulo` text NOT NULL,
  `descripcion` text NOT NULL,
  `palabrasClaves` text NOT NULL,
  `url` text NOT NULL,
  `portada` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `oferta` int(11) NOT NULL,
  `precioOferta` float NOT NULL,
  `descuentoOferta` int(11) NOT NULL,
  `imgOferta` text COLLATE utf8_spanish_ci NOT NULL,
  `finOferta` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `ruta`, `estado`, `oferta`, `precioOferta`, `descuentoOferta`, `imgOferta`, `finOferta`, `fecha`) VALUES
(1, 'ESTILO DE VIDA', 'estilo-de-vida', 1, 0, 0, 0, '', '0000-00-00 00:00:00', '2018-06-29 03:46:59'),
(2, 'DESARROLLO PERSONAL', 'desarrollo-personal', 1, 0, 0, 0, '', '0000-00-00 00:00:00', '2018-06-28 16:54:47'),
(3, 'HAZLO TU MISMO', 'hazlo-tu-mismo', 1, 0, 0, 0, '', '0000-00-00 00:00:00', '2018-06-28 16:54:47'),
(4, 'TECNOLOGÍA', 'tecnologia', 1, 0, 0, 0, '', '0000-00-00 00:00:00', '2018-06-28 16:54:47'),
(5, 'DESARROLLO WEB', 'desarrollo-web', 1, 0, 0, 0, '', '0000-00-00 00:00:00', '2018-06-29 01:55:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `calificacion` float NOT NULL,
  `comentario` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `id_usuario`, `id_producto`, `calificacion`, `comentario`, `fecha`) VALUES
(1, 3, 496, 0, '', '2018-05-25 22:49:45'),
(2, 3, 499, 0, '', '2018-05-25 22:49:45'),
(3, 3, 496, 0, '', '2018-05-25 23:59:45'),
(4, 5, 500, 0, '', '2018-05-27 02:21:45'),
(5, 5, 503, 0, '', '2018-06-07 05:27:57'),
(6, 6, 501, 0, '', '2018-06-09 04:49:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comercio`
--

CREATE TABLE `comercio` (
  `id` int(11) NOT NULL,
  `impuesto` float NOT NULL,
  `envioNacional` float NOT NULL,
  `envioInternacional` float NOT NULL,
  `tasaMinimaNal` float NOT NULL,
  `tasaMinimaInt` float NOT NULL,
  `pais` text COLLATE utf8_spanish_ci NOT NULL,
  `modoPaypal` text COLLATE utf8_spanish_ci NOT NULL,
  `clienteIdPaypal` text COLLATE utf8_spanish_ci NOT NULL,
  `llaveSecretaPaypal` text COLLATE utf8_spanish_ci NOT NULL,
  `modoPayu` text COLLATE utf8_spanish_ci NOT NULL,
  `merchantIdPayu` int(11) NOT NULL,
  `accountIdPayu` int(11) NOT NULL,
  `apiKeyPayu` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `comercio`
--

INSERT INTO `comercio` (`id`, `impuesto`, `envioNacional`, `envioInternacional`, `tasaMinimaNal`, `tasaMinimaInt`, `pais`, `modoPaypal`, `clienteIdPaypal`, `llaveSecretaPaypal`, `modoPayu`, `merchantIdPayu`, `accountIdPayu`, `apiKeyPayu`) VALUES
(1, 19, 1, 2, 10, 15, 'CO', 'sandbox', 'AZcJm3S4Pba-4hkkAfeDVwTPDbsSws7EybrsrBr8ou0b3ZxXKRLBVVET6w9rNChhQsFEnTiPSwLR1Tv8', 'EFNKNh7Cq_2nALWSRRmKy6qOdsMOI0Aptnlvrgys-j7kqVu8vWzWQPpxuYe-GeIZV64n7rcB2007HeDD', 'sandbox', 508029, 512321, '4Vj8eK4rloUd272L48hsrarnUA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `envio` int(11) NOT NULL,
  `metodo` text COLLATE utf8_spanish_ci NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `pais` text COLLATE utf8_spanish_ci NOT NULL,
  `pago` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `id_usuario`, `id_producto`, `envio`, `metodo`, `email`, `direccion`, `pais`, `pago`, `fecha`) VALUES
(21, 5, 501, 0, 'paypal', 'oavr.18-buyer@gmail.com', '1 Main St, San Jose, CA, 95131', 'US', 0, '2018-06-07 00:51:48'),
(22, 5, 503, 0, 'gratis', 'nerd.16@hotmail.cl', '', '', 0, '2018-06-07 05:27:57'),
(23, 6, 501, 0, 'paypal', 'oavr.18-buyer@gmail.com', '1 Main St, San Jose, CA, 95131', 'US', 0, '2018-06-09 04:49:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deseos`
--

CREATE TABLE `deseos` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantilla`
--

CREATE TABLE `plantilla` (
  `id` int(11) NOT NULL,
  `barraSuperior` text COLLATE utf8_spanish_ci NOT NULL,
  `textoSuperior` text COLLATE utf8_spanish_ci NOT NULL,
  `colorFondo` text COLLATE utf8_spanish_ci NOT NULL,
  `colorTexto` text COLLATE utf8_spanish_ci NOT NULL,
  `logo` text COLLATE utf8_spanish_ci NOT NULL,
  `icono` text COLLATE utf8_spanish_ci NOT NULL,
  `redesSociales` text COLLATE utf8_spanish_ci NOT NULL,
  `apiFacebook` text COLLATE utf8_spanish_ci NOT NULL,
  `pixelFacebook` text COLLATE utf8_spanish_ci NOT NULL,
  `googleAnalytics` text COLLATE utf8_spanish_ci NOT NULL,
  `map` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `plantilla`
--

INSERT INTO `plantilla` (`id`, `barraSuperior`, `textoSuperior`, `colorFondo`, `colorTexto`, `logo`, `icono`, `redesSociales`, `apiFacebook`, `pixelFacebook`, `googleAnalytics`, `map`, `fecha`) VALUES
(1, '#000000', '#ffffff', '#48B8D0', '#ffffff', 'vistas/img/plantilla/umakelogo.png', 'vistas/img/plantilla/icono.png', '[{\r\n		\"red\": \"fa-facebook\",\r\n		\"estilo\": \"facebookBlanco\",\r\n		\"url\": \"http://facebook.com/\",\r\n                \"activo\": \"1\"\r\n	}, {\r\n		\"red\": \"fa-youtube\",\r\n		\"estilo\": \"youtubeBlanco\",\r\n		\"url\": \"http://youtube.com/\",\r\n                \"activo\": \"1\"\r\n	}, {\r\n		\"red\": \"fa-twitter\",\r\n		\"estilo\": \"twitterBlanco\",\r\n		\"url\": \"http://twitter.com/\",\r\n                \"activo\": \"1\"\r\n	},{\r\n		\"red\": \"fa-google-plus\",\r\n		\"estilo\": \"googleBlanco\",\r\n		\"url\": \"http://google.com/\",\r\n                \"activo\": \"1\"\r\n	}, {\r\n		\"red\": \"fa-instagram\",\r\n		\"estilo\": \"instagramBlanco\",\r\n		\"url\": \"http://instagram.com/\",\r\n                \"activo\": \"1\"\r\n	}\r\n\r\n]', '', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1663.6606692308055!2d-70.61272027523681!3d-33.4930158062271!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9662d0057adcb637%3A0xe27be8ab6ecb4a16!2sJos%C3%A9+Miguel+Carrera+1997%2C+Macul%2C+Regi%C3%B3n+Metropolitana!5e0!3m2!1ses-419!2scl!4v1528140473484\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2018-06-28 15:02:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_subcategoria` int(11) NOT NULL,
  `tipo` text COLLATE utf8_spanish_ci NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `titulo` text COLLATE utf8_spanish_ci NOT NULL,
  `titular` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `multimedia` text COLLATE utf8_spanish_ci NOT NULL,
  `detalles` text COLLATE utf8_spanish_ci NOT NULL,
  `precio` float NOT NULL,
  `portada` text COLLATE utf8_spanish_ci NOT NULL,
  `vistas` int(11) NOT NULL,
  `ventas` int(11) NOT NULL,
  `vistasGratis` int(11) NOT NULL,
  `ventasGratis` int(11) NOT NULL,
  `ofertadoPorCategoria` int(11) NOT NULL,
  `ofertadoPorSubCategoria` int(11) NOT NULL,
  `oferta` int(11) NOT NULL,
  `precioOferta` float NOT NULL,
  `descuentoOferta` int(11) NOT NULL,
  `imgOferta` text COLLATE utf8_spanish_ci NOT NULL,
  `finOferta` datetime NOT NULL,
  `nuevo` int(11) NOT NULL,
  `peso` float NOT NULL,
  `entrega` float NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `id_subcategoria`, `tipo`, `ruta`, `estado`, `titulo`, `titular`, `descripcion`, `multimedia`, `detalles`, `precio`, `portada`, `vistas`, `ventas`, `vistasGratis`, `ventasGratis`, `ofertadoPorCategoria`, `ofertadoPorSubCategoria`, `oferta`, `precioOferta`, `descuentoOferta`, `imgOferta`, `finOferta`, `nuevo`, `peso`, `entrega`, `fecha`) VALUES
(501, 2, 5, 'virtual', 'Aprende-a-Crear-tu-Curriculum', 1, 'Aprende a Crear tu Curriculum', 'En este sencillo e intuitivo curso, aprenderás como crear un curriculum que te permita conseguir el empleo de tus sueños', 'En este curso aprenderás todo lo que necesitas saber para crear un buen currículum vitae atractivo y totalmente efectivo de una manera muy simle  y al alcance de cualquier persona. \r\n\r\nNo solo aprenderás esto si no que te voy a enseñar conceptos como \"Marca personal\" \"Encontrar trabajo sin experiencia\" etc...', 'http://localhost:8081/frontend/vistas/img/videos/curso1/intro.mp4', '{ \"Clases\": \"33 Clases\",\"Tiempo\": \"2 horas de estudio\",\"Nivel\": \"Nivel Basico\", \"Acceso\": \"Acceso de por vida\",\"Dispositivo\": \"Acceso en dispositivos moviles y TV\",\"Certificado\": \"Sin certificado de finalizacion\"}', 100, 'vistas/img/videos/curso1/portada.jpg', 2, 1, 0, 0, 0, 0, 1, 10, 90, '', '0000-00-00 00:00:00', 0, 0, 0, '2018-07-01 05:45:12'),
(503, 5, 18, 'virtual', 'Aprende-Javascript', 1, 'Aprende Javascript', 'Aprende a programar con javascript desde cero y crea APIs RESTful con NodeJS, Typescript, Angular, Express y MongoDB', 'El desarrollo web tiene su punto de partida en el lenguaje de programación Javascript. Hoy en día si quieres conocer algún Framework o Plugin derivado de Javascript como jQuery, Angular, o trabajar en entornos de desarrollo con NodeJS, debes tener conocimientos previos en este lenguaje.\r\n\r\nEste curso te enseñará a programar en JavaScript y servirá de presentación de conceptos claves para quienes no entienden de programación.\r\n\r\nAprenderás de manera práctica paso a paso la sintaxis y los fundamentos que utiliza este lenguaje, con ejemplos prácticos, aplicarás los conocimientos adquiridos para convertirte en un desarrollador Front-End, darás el salto necesario para implementar recursos interactivos a tus proyectos web.', 'http://localhost:8081/frontend/vistas/img/videos/curso2/portada.jpg', '{ \"Clases\": \"122 Clases\",\"Tiempo\": \"24 horas de estudio\",\"Nivel\": \"Nivel Basico\", \"Acceso\": \"Acceso de por vida\",\"Dispositivo\": \"Acceso en dispositivos moviles y TV\",\"Certificado\": \"Certificado de finalizacion\"}', 0, 'vistas/img/videos/curso2/portadacurso.jpg', 0, 0, 7, 1, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', 0, 0, 0, '2018-07-01 05:40:13'),
(504, 5, 18, 'virtual', 'Aprende-adobe-xd', 1, 'Aprende Adobe Xd desde Cero', 'Adobe Experience Design, o Adobe XD, es la herramienta de prototipado de Adobe para crear y compartir diseños para sitios web y aplicaciones móviles. Diseñado para un trabajo ágil y rápido, Experience Design trabaja de forma vectorial y ayuda a diseñar prototipos de user interface \"UX\", o interfaz de usuario, interactivos y multiplataforma.', 'Descubre la potencia de Adobe Experience Design, una herramienta vectorial parte de Creative Cloud pensada para el diseño de UI y UX multiplataforma. Introdúcete en el mundo del diseño de interfaz y de experiencia con un rápido ejemplo práctico y descubre este programa de Adobe, echando un vistazo a la interfaz, los menús, las herramientas y los paneles. Aprende a trabajar con imágenes o con textos y mejora tu manera de crear prototipos multiplataforma: realiza el diseño, define el recorrido que seguirán los usuarios a lo largo de la página web o aplicación móvil y crea prototipos que podrás mostrar a clientes de una forma visual y dinámica.', 'http://localhost:8081/frontend/vistas/img/videos/curso3/intro.mp4', '{ \"Clases\": \"122 Clases\",\"Tiempo\": \"24 horas de estudio\",\"Nivel\": \"Nivel Basico\", \"Acceso\": \"Acceso de por vida\",\"Dispositivo\": \"Acceso en dispositivos moviles y TV\",\"Certificado\": \"Certificado de finalizacion\"}', 100, 'vistas/img/videos/curso3/portada.jpg', 25, 0, 6, 1, 0, 0, 1, 10, 90, '', '0000-00-00 00:00:00', 0, 0, 0, '2018-07-01 05:40:17'),
(505, 1, 1, 'virtual', 'nutricion-facil-para-una-vida-mas-sana', 1, 'Nutricion facil para una vida mas sana', 'Los cambios fáciles que debes hacer en tu alimentación diaria para recuperar tu salud para siempre.', 'Aprende de manera sencilla como hacer que la nutrición sea tu mejor aliada para el mantenimiento de tu salud:\r\n\r\nLas ultimas investigaciones médicas han descubierto que el mal funcionamiento digestivo, el estreñimiento y el colapso de los órganos de depuración, están provocando enfermedades tan comunes y delicadas como la artrosis, la fibromialgia o el deficit de atención y la pérdida de memoria.\r\n\r\nAsimismo se ha demostrado como las dietas depurativas o el ayuno incrementan dramáticamente la efectividad de cualquier tratamiento de salud, reduciendo el tiempo de recuperación y logrando que la mejoría se mantenga en el tiempo.  \r\n\r\nEste curso de Nutrición te lleva de manera fácil y segura a conocer los pasos que debes dar para Limpiar y Mantener tu organismo funcionando en perfecta armonía de modo que sea capaz de defenderse y recuperarse de la enfermedad. \r\n\r\nEste curso combina la teoría y la práctica. Contiene la Guía Aprende a Comer en la que tendrás en detalle qué hacer durante 4 semanas para comer de manera sencilla y natural, darte cuidados para ayudar a tu sistema a liberarse de la carga tóxica de manera segura y solo con alimentos que están a tu alcance.', 'http://localhost:8081/frontend/vistas/img/videos/curso4/intro.mp4', '{ \"Clases\": \"33 Clases\",\"Tiempo\": \"2 horas de estudio\",\"Nivel\": \"Nivel Basico\", \"Acceso\": \"Acceso de por vida\",\"Dispositivo\": \"Acceso en dispositivos moviles y TV\",\"Certificado\": \"Sin certificado de finalizacion\"}', 100, 'vistas/img/videos/curso4/portada.jpg', 1, 1, 0, 0, 0, 0, 1, 10, 90, '', '0000-00-00 00:00:00', 0, 0, 0, '2018-07-01 05:45:04'),
(506, 4, 16, 'virtual', 'arduino-desde-cero', 1, 'Aprende a usar Arduino desde cero: crea tus proyectos', 'Creo tus propios proyectos con Arduino desde cero', 'Aprende a usar Arduino desde cero.  Crea tus propios proyectos\r\n\r\n¿Qué es Arduino? un placa electrónica open-source que permite crear prototipos y proyectos electrónicos muy fácilmente. ¡¡Hace unos años había que ser ingeniero para trabajar con estos sistemas!!\r\n\r\nHoy en día lo puedes hacer sin problema siguiendo este curso, donde aprenderás electrónica, programación y cómo hacer montajes con Arduino. \r\n\r\nEmpezarás desarrollando pequeños proyectos que podrás unir y crear uno más completo\r\n\r\nNo son necesarios conocimientos previos de electrónica ni de programación, aprenderemos todo en el curso, por medio de aplicaciones practicas. \r\n\r\nA medida que avances en el curso verás como tus ideas se convierten en proyecto reales.\r\n\r\nLa naturaleza Open-Source de Arduino nos facilita que podamos trabajar en cualquier ordenador con Linux, Mac o Windows.\r\n\r\nHablaremos de simuladores donde puedes construir tus proyectos \"virtualmente\" pero si quieres hacer tus proyectos necesitarás conseguir componentes. Algunos los tendrás que comprar pero muchos de ellos los puedes conseguir reciclando equipos.', 'http://localhost:8081/frontend/vistas/img/videos/curso5/intro.mp4', '{ \"Clases\": \"33 Clases\",\"Tiempo\": \"2 horas de estudio\",\"Nivel\": \"Nivel Basico\", \"Acceso\": \"Acceso de por vida\",\"Dispositivo\": \"Acceso en dispositivos moviles y TV\",\"Certificado\": \"Sin certificado de finalizacion\"}', 100, 'vistas/img/videos/curso5/portada.jpg', 1, 1, 0, 0, 0, 0, 1, 10, 90, '', '0000-00-00 00:00:00', 0, 0, 0, '2018-07-01 05:45:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `nombe` text COLLATE utf8_spanish_ci NOT NULL,
  `imgFondo` text COLLATE utf8_spanish_ci NOT NULL,
  `tipoSlide` text COLLATE utf8_spanish_ci NOT NULL,
  `imgProducto` text COLLATE utf8_spanish_ci NOT NULL,
  `estiloImgProducto` text COLLATE utf8_spanish_ci NOT NULL,
  `estiloTextoSlide` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo1` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo2` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo3` text COLLATE utf8_spanish_ci NOT NULL,
  `boton` text COLLATE utf8_spanish_ci NOT NULL,
  `url` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `slide`
--

INSERT INTO `slide` (`id`, `nombe`, `imgFondo`, `tipoSlide`, `imgProducto`, `estiloImgProducto`, `estiloTextoSlide`, `titulo1`, `titulo2`, `titulo3`, `boton`, `url`, `fecha`) VALUES
(1, '', 'vistas/img/slide/slide1/fondo1.jpeg', 'slideOpcion1', '', '', '{\"top\": \"20%\" ,\"right\": \"\" ,\"width\": \"40%\", \"left\":\"10%\"}', '{\"texto\": \"Expande tus Horizontes!\" ,\"color\": \"#333\"}', '{\"texto\": \"Aprende algo nuevo todos los días Aquí!\" ,\"color\": \"#777\"}', '{\"texto\": \"\" ,\"color\": \"#888\"}', '', '#', '2018-06-09 03:53:32'),
(2, '', 'vistas/img/slide/default/back_default.jpg', 'slideOpcion2', 'vistas/img/slide/slide2/curso.png', '{\r\n	\"width\": \"25%\",\r\n	\"top\": \"5%\",\r\n	\"left\": \"15%\", \"right\":\"\"\r\n}', '{\r\n	\"width\": \"40%\",\r\n	\"top\": \"15%\",\r\n	\"left\": \"\",\r\n	\"right\": \"15%\"\r\n}', '{\"texto\": \"Aprende PHP desde Cero.\" ,\"color\": \"#333\"}', '{\"texto\": \"Nuevo curso php con proyecto incluido!\" ,\"color\": \"#777\"}', '{\"texto\": \"\" ,\"color\": \"#888\"}', '', '#', '2018-06-09 03:55:44'),
(3, '', 'vistas/img/slide/slide3/fondo2.jpg', 'slideOpcion2', 'vistas/img/slide/slide3/iphone.png', '{\r\n	\"width\": \"25%\",\r\n	\"top\": \"5%\",\r\n	\"left\": \"15%\",\r\n	\"right\": \"\"\r\n}', '{\r\n	\"width\": \"40%\",\r\n	\"top\": \"15%\",\r\n	\"left\": \"\",\r\n	\"right\": \"15%\"\r\n}', '{\"texto\": \"Desarrollo movil a tu Alcance.\" ,\"color\": \"#eee\"}', '{\"texto\": \"\" ,\"color\": \"#ccc\"}', '{\"texto\": \"\" ,\"color\": \"#aaa\"}', '<button class=\"btn btn-default backColor text-uppercase\">\r\n\r\n							VER PRODUCTO <span class=\"fa fa-chevron-right\"></span>\r\n\r\n							</button>', '#', '2018-06-09 03:56:30'),
(4, '', 'vistas/img/slide/slide4/fondo4.jpeg', 'slideOpcion1', '', '', '{\r\n	\"width\": \"40%\",\r\n	\"top\": \"20%\",\r\n	\"left\": \"10%\",\r\n	\"right\": \"\"\r\n}', '{\"texto\": \"Quieres mejorar en Diseño?\" ,\"color\": \"white\"}', '{\"texto\": \"Umake lo tiene para ti!\" ,\"color\": \"white\"}', '{\"texto\": \"\" ,\"color\": \"#888\"}', '', '', '2018-06-09 04:04:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategorias`
--

CREATE TABLE `subcategorias` (
  `id` int(11) NOT NULL,
  `subcategoria` text COLLATE utf8_spanish_ci NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ofertadoPorCategoria` int(11) NOT NULL,
  `oferta` int(11) NOT NULL,
  `precioOferta` float NOT NULL,
  `descuentoOferta` int(11) NOT NULL,
  `imgOferta` text COLLATE utf8_spanish_ci NOT NULL,
  `finOferta` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `subcategorias`
--

INSERT INTO `subcategorias` (`id`, `subcategoria`, `id_categoria`, `ruta`, `estado`, `ofertadoPorCategoria`, `oferta`, `precioOferta`, `descuentoOferta`, `imgOferta`, `finOferta`, `fecha`) VALUES
(1, 'Cocina', 1, 'cocina', 1, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2018-06-29 03:46:59'),
(2, 'Arte', 1, 'arte', 1, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2018-06-29 03:46:59'),
(3, 'Manualidades', 1, 'manualidades', 1, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2018-06-29 03:46:59'),
(5, 'D. Laboral', 2, 'laboral', 1, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2018-06-29 02:03:13'),
(6, 'Crecimiento', 2, 'crecimiento', 1, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2018-06-29 02:03:13'),
(7, 'Emprendimiento', 2, 'emprendimiento', 1, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2018-06-29 02:03:13'),
(9, 'Proyectos', 3, 'proyectos-3', 1, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2018-06-29 02:03:13'),
(10, 'Casa', 3, 'casa', 1, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2018-06-29 02:03:13'),
(11, 'Fallos Domesticos', 3, 'fallos-domesticos', 1, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2018-06-29 02:03:13'),
(14, 'Proyectos', 4, 'proyectos-4', 1, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2018-06-29 02:03:13'),
(15, 'Tec. Movil', 4, 'tecnologia-movil', 1, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2018-06-29 02:03:13'),
(16, 'Creaciones', 4, 'creaciones', 1, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2018-06-29 02:03:13'),
(18, 'Desarrollo Web', 5, 'desarrollo-web', 1, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2018-06-29 02:03:13'),
(19, 'Aplicaciones Móviles', 5, 'aplicaciones-moviles', 1, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2018-06-29 02:03:13'),
(20, 'Diseño Gráfico', 5, 'diseno-grafico', 1, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2018-06-29 02:03:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `modo` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `verificacion` int(11) NOT NULL,
  `emailEncriptado` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `password`, `email`, `modo`, `foto`, `verificacion`, `emailEncriptado`, `fecha`) VALUES
(5, 'oscar', '$2a$07$asxx54ahjppf45sd87a5au9qo2/v1vfChT06JmczIy0VaYhRB6YGa', 'nerd.16@hotmail.cl', 'directo', '', 0, 'c33a4e20213ff376ba8b860821eda5f6', '2018-05-25 22:34:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `id_video` int(11) NOT NULL,
  `seccion` text NOT NULL,
  `videos` text NOT NULL,
  `recursos` text NOT NULL,
  `ruta` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `videos`
--

INSERT INTO `videos` (`id`, `id_video`, `seccion`, `videos`, `recursos`, `ruta`) VALUES
(1, 501, '1. El curriculum vitae', '[\r\n{\"nombre\":\"1. Qué es un curriculum vitae y para qué sirve\",\r\n\"ruta\":\"1/1\"},\r\n{\"nombre\":\"2. Diferencias con la Biografía de una persona\",\r\n\"ruta\":\"1/2\"},\r\n{\"nombre\":\"3. Cómo miran un curriculum vitae los entrevistadores\",\r\n\"ruta\":\"1/3\"},\r\n{\"nombre\":\"4. Qué miran en un curriculum vitae los entrevistadores\",\r\n\"ruta\":\"1/4\"},\r\n{\"nombre\":\"5. Verificación de datos en un curriculum vitae\",\r\n\"ruta\":\"1/5\"},\r\n{\"nombre\":\"6. Búsqueda de mayor información sobre el curriculum vitae\",\r\n\"ruta\":\"1/6\"}\r\n\r\n\r\n]', '{\"nombre\":\"Carpeta de Recursos\", \"url\":\"https://drive.google.com/open?id=12Y5ZBgeHoxhKDcMa-7MyLb-k0uxLM1xc\"}', 'vistas/img/videos/curso1/'),
(2, 501, '2. Cómo puede ayudarte tu curriculum en la búsqueda laboral', '[\r\n{\"nombre\":\"1. Definir y compartir tus objetivos laborales importante!!!\",\r\n\"ruta\":\"2/1\"},\r\n{\"nombre\":\"2. Contar tu experiencia laboral en función del curriculum\",\r\n\"ruta\":\"2/2\"},\r\n{\"nombre\":\"3. Demostrar el impacto de tu trabajo y tus logros laborales\",\r\n\"ruta\":\"2/3\"},\r\n{\"nombre\":\"4. Describir tu trayectoria académica en el curriculum vitae\",\r\n\"ruta\":\"2/4\"},\r\n{\"nombre\":\"5. Destacar tus logros no laborales en tu curriculum vitae\",\r\n\"ruta\":\"2/5\"},\r\n{\"nombre\":\"6. Explicar tus intereses en tu curriculum vitae\",\r\n\"ruta\":\"2/6\"},\r\n{\"nombre\":\"7. Incluir referencias y contactos en el curriculum vitae\",\r\n\"ruta\":\"2/7\"}\r\n]', '{\"nombre\":\"nada\", \"url\":\"\"}', 'vistas/img/videos/curso1/'),
(4, 501, '3. Cómo hacer que tu curriculum vitae sea atractivo visualmente', '[\r\n{\"nombre\":\"1. Conocer a la audiencia y el puesto al que aplicas\",\r\n\"ruta\":\"3/1\"},\r\n{\"nombre\":\"2. Distintos formatos básicos de curriculum vitae\",\r\n\"ruta\":\"3/2\"},\r\n{\"nombre\":\"3. Formatos atractivos para un curriculum vitae\",\r\n\"ruta\":\"3/3\"},\r\n{\"nombre\":\"4. Adaptar el curriculum a los nuevos medios y redes sociales\",\r\n\"ruta\":\"3/4\"}\r\n]\r\n', '{\"nombre\":\"nada\", \"url\":\"\"}', 'vistas/img/videos/curso1/'),
(6, 501, '4. Cómo hacer que tu curriculum vitae sea atractivo visualmente', '[\r\n{\"nombre\":\"1. Cómo buscan los reclutadores postulantes o candidatos\",\r\n\"ruta\":\"4/1\"},\r\n{\"nombre\":\"2. Dónde buscan los reclutadores candidatos\",\r\n\"ruta\":\"4/2\"},\r\n{\"nombre\":\"3. Palabras clave y cómo utilizarlas en el curriculum vitae\",\r\n\"ruta\":\"4/3\"},\r\n{\"nombre\":\"4. Empresas de tu interés en la búsqueda de empleo\",\r\n\"ruta\":\"4/4\"}\r\n]\r\n', '{\"nombre\":\"nada\", \"url\":\"\"}', 'vistas/img/videos/curso1/'),
(8, 501, '5. Cómo enviar y difundir un curriculum vitae', '[\r\n{\"nombre\":\"1. Personas que gestionan las búsquedas de empleo\",\r\n\"ruta\":\"5/1\"},\r\n{\"nombre\":\"2. Amigos o conocidos que trabajan en la empresa de interés\",\r\n\"ruta\":\"5/2\"},\r\n{\"nombre\":\"3. Enviar tu curriculum a través de profesores universitarios\",\r\n\"ruta\":\"5/3\"},\r\n{\"nombre\":\"4. Contactos interesantes para nuestra búsqueda de empleo\",\r\n\"ruta\":\"5/4\"}\r\n]', '{\"nombre\":\"nada\", \"url\":\"\"}', 'vistas/img/videos/curso1/'),
(10, 501, '6. Cómo enviar y difundir un curriculum vitae', '[\r\n{\"nombre\":\"1. Recibir curriculum vitae a través de la web de la empresa\",\r\n\"ruta\":\"6/1\"},\r\n{\"nombre\":\"2. Tu perfil laboral en LinkedIn\",\r\n\"ruta\":\"6/2\"},\r\n{\"nombre\":\"3. Tu curriculum vitae en sitios de empleos o job postings\",\r\n\"ruta\":\"6/3\"},\r\n{\"nombre\":\"4. Tu curriculum vitae en bolsas de empleo de Universidades\",\r\n\"ruta\":\"6/4\"},\r\n{\"nombre\":\"5. Tu curriculum en bolsas de empleo de cámaras empresariales\",\r\n\"ruta\":\"6/5\"},\r\n{\"nombre\":\"6. Tu curriculum vitae respondiendo a un anuncio\",\r\n\"ruta\":\"6/6\"},\r\n{\"nombre\":\"7. Tu curriculum vitae por email\",\r\n\"ruta\":\"6/7\"}\r\n]', '{\"nombre\":\"nada\", \"url\":\"\"}', 'vistas/img/videos/curso1/'),
(11, 504, '1.Presentación del curso Aprende Adobe Experience Design CC', '[\r\n{\"nombre\":\"1.Bienvenida a Aprende Adobe Experience Design CC\",\r\n\"ruta\":\"1/1\"},\r\n{\"nombre\":\"2.Archivos base de Aprende Adobe Experience Design CC\",\r\n\"ruta\":\"1/2\"},\r\n{\"nombre\":\"3.Qué no es Adobe Experience Design\",\r\n\"ruta\":\"1/3\"},\r\n{\"nombre\":\"4.Qué es UX o experiencia de uso\",\r\n\"ruta\":\"1/4\"},\r\n{\"nombre\":\"5.Diferencias entre experiencia de uso y diseño de interfaz\",\r\n\"ruta\":\"1/5\"}\r\n]', '{\"nombre\":\"nada\", \"url\":\"\"}', 'vistas/img/videos/curso3/'),
(12, 504, '2.Interfaz de trabajo en Adobe XD', '[\r\n{\"nombre\":\"1.Desglose de herramientas de Adobe XD\",\r\n\"ruta\":\"2/1\"},\r\n{\"nombre\":\"2.Desglose de paneles laterales de Adobe XD\",\r\n\"ruta\":\"2/2\"},\r\n{\"nombre\":\"3.Desglose de menú superior de Adobe XD\",\r\n\"ruta\":\"2/3\"}\r\n]', '{\"nombre\":\"nada\", \"url\":\"\"}', 'vistas/img/videos/curso3/'),
(13, 504, '3.Ejemplos prácticos con Adobe XD', '[\r\n{\"nombre\":\"1.Editar figuras básicas en Adobe XD\",\r\n\"ruta\":\"3/1\"},\r\n{\"nombre\":\"2.Creación de un blog mediante repetición de grid en Adobe XD\",\r\n\"ruta\":\"3/2\"},\r\n{\"nombre\":\"3.Crear columnas y módulos en Adobe XD\",\r\n\"ruta\":\"3/3\"},\r\n{\"nombre\":\"4.Importar mapa de bits en Adobe XD\",\r\n\"ruta\":\"3/4\"},\r\n{\"nombre\":\"5.Efectos sobre imágenes en Adobe XD\",\r\n\"ruta\":\"3/5\"},\r\n{\"nombre\":\"6.Importar vectores y extraer CSS desde Illustrator\",\r\n\"ruta\":\"3/6\"},\r\n{\"nombre\":\"7.Definir flujo de navegación en Adobe XD\",\r\n\"ruta\":\"3/7\"}\r\n]', '{\"nombre\":\"nada\", \"url\":\"\"}', 'vistas/img/videos/curso3/'),
(14, 504, '4.Opciones de exportación de Adobe XD', '[\r\n{\"nombre\":\"1.Exportar gráficos en Adobe XD\",\r\n\"ruta\":\"4/1\"},\r\n{\"nombre\":\"2.Exportar y compartir trabajo en Adobe XD\",\r\n\"ruta\":\"4/2\"},\r\n{\"nombre\":\"3.Recibir opinión de clientes en Adobe XD\",\r\n\"ruta\":\"4/3\"}\r\n]', '{\"nombre\":\"nada\", \"url\":\"\"}', 'vistas/img/videos/curso3/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitaspaises`
--

CREATE TABLE `visitaspaises` (
  `id` int(11) NOT NULL,
  `pais` text NOT NULL,
  `codigo` text NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `visitaspaises`
--

INSERT INTO `visitaspaises` (`id`, `pais`, `codigo`, `cantidad`, `fecha`) VALUES
(0, 'Japan', 'JP', 1, '2018-06-23 22:02:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitaspersonas`
--

CREATE TABLE `visitaspersonas` (
  `id` int(11) NOT NULL,
  `ip` text NOT NULL,
  `pais` text NOT NULL,
  `visitas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `visitaspersonas`
--

INSERT INTO `visitaspersonas` (`id`, `ip`, `pais`, `visitas`, `fecha`) VALUES
(1, '153.205.198.22', 'Japan', 1, '2018-06-04 18:35:48');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cabeceras`
--
ALTER TABLE `cabeceras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comercio`
--
ALTER TABLE `comercio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `deseos`
--
ALTER TABLE `deseos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `visitaspaises`
--
ALTER TABLE `visitaspaises`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `visitaspersonas`
--
ALTER TABLE `visitaspersonas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradores`
--
ALTER TABLE `administradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `cabeceras`
--
ALTER TABLE `cabeceras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `comercio`
--
ALTER TABLE `comercio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `deseos`
--
ALTER TABLE `deseos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=511;

--
-- AUTO_INCREMENT de la tabla `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `visitaspersonas`
--
ALTER TABLE `visitaspersonas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
