-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 23-10-2023 a las 20:32:06
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `devwebcamp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'Conferencia'),
(2, 'WorkShop');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dias`
--

CREATE TABLE `dias` (
  `id` int NOT NULL,
  `nombre` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `dias`
--

INSERT INTO `dias` (`id`, `nombre`) VALUES
(1, 'Viernes'),
(2, 'Sabado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` int NOT NULL,
  `nombre` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `descripcion` text,
  `disponibles` int DEFAULT NULL,
  `categoria_id` int NOT NULL,
  `dia_id` int NOT NULL,
  `hora_id` int NOT NULL,
  `ponente_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `nombre`, `descripcion`, `disponibles`, `categoria_id`, `dia_id`, `hora_id`, `ponente_id`) VALUES
(1, 'Next.Js', 'Descripcion', 40, 1, 1, 2, 1),
(2, 'Next.Js', 'Descripcion', 40, 1, 1, 6, 1),
(3, 'Next.Js', 'Descripcion', 40, 2, 2, 1, 1),
(36, ' Javascript', 'Elementos del DOM', 45, 1, 1, 5, 6),
(37, ' Curso de Laravel', 'Desde 0 a experto', 36, 1, 2, 6, 7),
(38, ' Taller de SQL', 'Aprende a realizar consultas', 24, 2, 1, 7, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos_registros`
--

CREATE TABLE `eventos_registros` (
  `id` int NOT NULL,
  `evento_id` int DEFAULT NULL,
  `registro_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horas`
--

CREATE TABLE `horas` (
  `id` int NOT NULL,
  `hora` varchar(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `horas`
--

INSERT INTO `horas` (`id`, `hora`) VALUES
(1, '10:00 - 10:55'),
(2, '11:00 - 11:55'),
(3, '12:00 - 12:55'),
(4, '13:00 - 13:55'),
(5, '16:00 - 16:55'),
(6, '17:00 - 17:55'),
(7, '18:00 - 18:55'),
(8, '19:00 - 19:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paquetes`
--

CREATE TABLE `paquetes` (
  `id` int NOT NULL,
  `nombre` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `paquetes`
--

INSERT INTO `paquetes` (`id`, `nombre`) VALUES
(1, 'Presencial'),
(2, 'Virtual'),
(3, 'Gratis');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ponentes`
--

CREATE TABLE `ponentes` (
  `id` int NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `apellido` varchar(40) DEFAULT NULL,
  `ciudad` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `pais` varchar(20) DEFAULT NULL,
  `imagen` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `tags` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `redes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `ponentes`
--

INSERT INTO `ponentes` (`id`, `nombre`, `apellido`, `ciudad`, `pais`, `imagen`, `tags`, `redes`) VALUES
(1, ' Julian', 'Muñoz', 'Madrid', 'España', '6764a74ccf2b4b5b74e333016c13388a', 'React,PHP,Laravel', '{\"facebook\":\"https://facebook.com/C%C3%B3digo-Con-Juan-103341632130628\",\"twitter\":\"https://twitter.com/codigoconjuan\",\"youtube\":\"\",\"instagram\":\"https://instagram.com/codigoconjuan\",\"tiktok\":\"\",\"github\":\"https://github.com/codigoconjuan\"}'),
(2, ' Israel', 'González', 'CDMX', 'México', '6497c66bcc464e26871c046dd5bb86c8', 'Vue,Node.js,MongoDB', '{\"facebook\":\"\",\"twitter\":\"\",\"youtube\":\"https://youtube.com/codigoconjuan\",\"instagram\":\"https://instagram.com/codigoconjuan\",\"tiktok\":\"https://tiktok.com/@codigoconjuan\",\"github\":\"https://github.com/codigoconjuan\"}'),
(3, ' Isabella', 'Tassis', 'Buenos Aires', 'Argentina', '55c7866df31370ec3299eed6eb63daa1', 'UX / UI,HTML,CSS,TailwindCSS', '{\"facebook\":\"https://facebook.com/C%C3%B3digo-Con-Juan-103341632130628\",\"twitter\":\"\",\"youtube\":\"https://youtube.com/codigoconjuan\",\"instagram\":\"\",\"tiktok\":\"https://tiktok.com/@codigoconjuan\",\"github\":\"\"}'),
(4, ' Jazmín', 'Hurtado', 'CDMX', 'México', 'de6e3fa0cde8402de4c28e6be0903ada', 'Django,React, Vue.js', '{\"facebook\":\"\",\"twitter\":\"https://twitter.com/codigoconjuan\",\"youtube\":\"\",\"instagram\":\"https://instagram.com/codigoconjuan\",\"tiktok\":\"\",\"github\":\"https://github.com/codigoconjuan\"}'),
(5, ' María Camila', 'Murillo', 'Guadalajara', 'México', 'cec8c9d7bcb4c19e87d1164bce8fe176', 'Devops,Git,CI CD', '{\"facebook\":\"https://facebook.com/C%C3%B3digo-Con-Juan-103341632130628\",\"twitter\":\"https://twitter.com/codigoconjuan\",\"youtube\":\"https://youtube.com/codigoconjuan\",\"instagram\":\"\",\"tiktok\":\"\",\"github\":\"\"}'),
(6, ' Tomas', 'Aleman', 'Bogotá', 'Colombia', '5332118b8d7690a1b992431802eafab1', 'WordPress,PHP,React', '{\"facebook\":\"https://facebook.com/C%C3%B3digo-Con-Juan-103341632130628\",\"twitter\":\"https://twitter.com/codigoconjuan\",\"youtube\":\"\",\"instagram\":\"https://instagram.com/codigoconjuan\",\"tiktok\":\"\",\"github\":\"https://github.com/codigoconjuan\"}'),
(7, ' Lucía', 'Velázquez', 'Buenos Aires', 'Argentina', '90956ece4adbd9f9ccb8f4ae80dc1537', 'React,Angular,Svelte', '{\"facebook\":\"\",\"twitter\":\"\",\"youtube\":\"https://youtube.com/codigoconjuan\",\"instagram\":\"https://instagram.com/codigoconjuan\",\"tiktok\":\"https://tiktok.com/@codigoconjuan\",\"github\":\"https://github.com/codigoconjuan\"}'),
(8, ' Catarina', 'Pardo', 'Lima', 'Perú', '9886ffc0d31e4c20a04acc1464630527', 'Next.js,Laravel,MERN', '{\"facebook\":\"https://facebook.com/C%C3%B3digo-Con-Juan-103341632130628\",\"twitter\":\"\",\"youtube\":\"https://youtube.com/codigoconjuan\",\"instagram\":\"\",\"tiktok\":\"https://tiktok.com/@codigoconjuan\",\"github\":\"\"}'),
(9, ' Raquel', 'Ros', 'Madrid', 'España', 'd697f6c454c36252d70abacd7599566c', 'Next.js,Remix,Vue.js', '{\"facebook\":\"\",\"twitter\":\"https://twitter.com/codigoconjuan\",\"youtube\":\"\",\"instagram\":\"https://instagram.com/codigoconjuan\",\"tiktok\":\"\",\"github\":\"https://github.com/codigoconjuan\"}'),
(10, ' Sofía', 'Amengual', 'Santiago', 'Chile', '414ffd61380bbf0e9f45cbde4d0cbb7f', 'UX / UI,Figma,TailwindCSS', '{\"facebook\":\"https://facebook.com/C%C3%B3digo-Con-Juan-103341632130628\",\"twitter\":\"https://twitter.com/codigoconjuan\",\"youtube\":\"https://youtube.com/codigoconjuan\",\"instagram\":\"\",\"tiktok\":\"\",\"github\":\"\"}'),
(11, ' María José', 'Leoz', 'NY', 'Estados Unidos', 'c8b3a77bce7a6efb6e6872db67cfa553', 'React,TypeScript,JavaScript', '{\"facebook\":\"https://facebook.com/C%C3%B3digo-Con-Juan-103341632130628\",\"twitter\":\"https://twitter.com/codigoconjuan\",\"youtube\":\"\",\"instagram\":\"https://instagram.com/codigoconjuan\",\"tiktok\":\"\",\"github\":\"https://github.com/codigoconjuan\"}'),
(12, ' Alexa', 'Mina', 'Bogotá', 'Colombia', '6eac63d88743bbb9ee0bfd8c60cf4186', 'HTML,CSS,React,TailwindCSS', '{\"facebook\":\"\",\"twitter\":\"\",\"youtube\":\"https://youtube.com/codigoconjuan\",\"instagram\":\"https://instagram.com/codigoconjuan\",\"tiktok\":\"https://tiktok.com/@codigoconjuan\",\"github\":\"https://github.com/codigoconjuan\"}'),
(13, ' Jesus', 'López', 'Madrid', 'España', 'e481bca0c512f5b4d8f76ccea2548f0d', 'PHP,WordPress,HTML,CSS', '{\"facebook\":\"https://facebook.com/C%C3%B3digo-Con-Juan-103341632130628\",\"twitter\":\"\",\"youtube\":\"https://youtube.com/codigoconjuan\",\"instagram\":\"\",\"tiktok\":\"https://tiktok.com/@codigoconjuan\",\"github\":\"\"}'),
(14, ' Irene ', 'Dávalos', 'CDMX', 'México', '6727e8ee7f6c642026247fe0556d866d', 'Node.js,Vue.js,Angular', '{\"facebook\":\"\",\"twitter\":\"https://twitter.com/codigoconjuan\",\"youtube\":\"\",\"instagram\":\"https://instagram.com/codigoconjuan\",\"tiktok\":\"\",\"github\":\"https://github.com/codigoconjuan\"}'),
(15, ' Brenda', ' Ocampo', 'Santiago', 'Chile', '40e01f5c023c7e74c9c372a8126edd97', 'Laravel,Next.js,GraphQL,Flutter', '{\"facebook\":\"https://facebook.com/C%C3%B3digo-Con-Juan-103341632130628\",\"twitter\":\"https://twitter.com/codigoconjuan\",\"youtube\":\"https://youtube.com/codigoconjuan\",\"instagram\":\"\",\"tiktok\":\"\",\"github\":\"\"}'),
(16, ' Julián ', 'Noboa', 'Las Vegas', 'EU', '6d4629dacbed2e4f5a344282ec2f4f76', 'iOS,Figma,REST API\'s', '{\"facebook\":\"\",\"twitter\":\"\",\"youtube\":\"https://youtube.com/codigoconjuan\",\"instagram\":\"https://instagram.com/codigoconjuan\",\"tiktok\":\"https://tiktok.com/@codigoconjuan\",\"github\":\"https://github.com/codigoconjuan\"}'),
(17, ' Vicente ', 'Figueroa', 'CDMX', 'México', '2a41a781d8ae8f0f7a1969c766276b08', 'React,Tailwind,JavaScript,TypeScript,Node', '{\"facebook\":\"https://facebook.com/C%C3%B3digo-Con-Juan-103341632130628\",\"twitter\":\"https://twitter.com/codigoconjuan\",\"youtube\":\"https://youtube.com/codigoconjuan\",\"instagram\":\"\",\"tiktok\":\"\",\"github\":\"\"}'),
(18, ' Nico ', 'Fraga', 'Buenos Aires', 'Argentina', '222dc6502643afa2f4a55acaecd93221', 'PHP,Laravel,Flutter,React Native', '{\"facebook\":\"https://facebook.com/C%C3%B3digo-Con-Juan-103341632130628\",\"twitter\":\"https://twitter.com/codigoconjuan\",\"youtube\":\"https://youtube.com/codigoconjuan\",\"instagram\":\"\",\"tiktok\":\"\",\"github\":\"\"}'),
(20, ' Magda', 'Perozo', 'Barquisimeto', 'Venezuela', 'a4cd34cf76665911b177f5f96d4585dd', 'SQL,Base de Datos,PHP,Java', '{\"facebook\":\"\",\"twitter\":\"\",\"youtube\":\"\",\"instagram\":\"\",\"tiktok\":\"\",\"github\":\"\"} ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regalos`
--

CREATE TABLE `regalos` (
  `id` int NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `regalos`
--

INSERT INTO `regalos` (`id`, `nombre`) VALUES
(1, 'Paquete Stickers'),
(2, 'Camisa Mujer - Chica'),
(3, 'Camisa Mujer - Mediana'),
(4, 'Camisa Mujer - Grande'),
(5, 'Camisa Mujer - XL'),
(6, 'Camisa Hombre - Chica'),
(7, 'Camisa Hombre - Mediana'),
(8, 'Camisa Hombre - Grande'),
(9, 'Camisa Hombre - XL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE `registros` (
  `id` int NOT NULL,
  `paquete_id` int DEFAULT NULL,
  `pago_id` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `token` varchar(8) DEFAULT NULL,
  `usuario_id` int DEFAULT NULL,
  `regalo_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `registros`
--

INSERT INTO `registros` (`id`, `paquete_id`, `pago_id`, `token`, `usuario_id`, `regalo_id`) VALUES
(21, 3, '', 'b3fcea9d', 5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `apellido` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `confirmado` tinyint(1) DEFAULT NULL,
  `token` varchar(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `email`, `password`, `confirmado`, `token`, `admin`) VALUES
(1, ' Mauricio', 'Alvarez', 'correo2@correo.com', '$2y$10$f5LPv2pafhWlrNUaVOUVVO6Ggd/QRaORDOR014i8e0OQGDa/xYNFi', 1, '653585aadc785', 1),
(5, ' Carlos', 'Mendoza', 'carlos@correo.com', '$2y$10$/tVCUMKQci2jXWR5tiiGyeFAJ4r3qw3A5IHPnLwLx2aAHIio26ioi', 1, '', 0),
(6, ' Jhon', 'Blanco', 'jhon@correo.com', '$2y$10$7shceEEMTafoCDMYBdYr.uqKzoUvOgzMmwC5tRsoyUwg7bq.7gr8a', 1, '', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `dias`
--
ALTER TABLE `dias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_eventos_categorias_idx` (`categoria_id`),
  ADD KEY `fk_eventos_dias1_idx` (`dia_id`),
  ADD KEY `fk_eventos_horas1_idx` (`hora_id`),
  ADD KEY `fk_eventos_ponentes1_idx` (`ponente_id`);

--
-- Indices de la tabla `eventos_registros`
--
ALTER TABLE `eventos_registros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evento_id` (`evento_id`),
  ADD KEY `registro_id` (`registro_id`);

--
-- Indices de la tabla `horas`
--
ALTER TABLE `horas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `paquetes`
--
ALTER TABLE `paquetes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ponentes`
--
ALTER TABLE `ponentes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `regalos`
--
ALTER TABLE `regalos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuarioId` (`usuario_id`),
  ADD KEY `paquete_id` (`paquete_id`),
  ADD KEY `regalo_id` (`regalo_id`) USING BTREE;

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `dias`
--
ALTER TABLE `dias`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `eventos_registros`
--
ALTER TABLE `eventos_registros`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `horas`
--
ALTER TABLE `horas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `paquetes`
--
ALTER TABLE `paquetes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ponentes`
--
ALTER TABLE `ponentes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `regalos`
--
ALTER TABLE `regalos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `registros`
--
ALTER TABLE `registros`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `fk_eventos_categorias` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`),
  ADD CONSTRAINT `fk_eventos_dias1` FOREIGN KEY (`dia_id`) REFERENCES `dias` (`id`),
  ADD CONSTRAINT `fk_eventos_horas1` FOREIGN KEY (`hora_id`) REFERENCES `horas` (`id`),
  ADD CONSTRAINT `fk_eventos_ponentes1` FOREIGN KEY (`ponente_id`) REFERENCES `ponentes` (`id`);

--
-- Filtros para la tabla `eventos_registros`
--
ALTER TABLE `eventos_registros`
  ADD CONSTRAINT `eventos_registros_ibfk_1` FOREIGN KEY (`evento_id`) REFERENCES `eventos` (`id`),
  ADD CONSTRAINT `eventos_registros_ibfk_2` FOREIGN KEY (`registro_id`) REFERENCES `registros` (`id`);

--
-- Filtros para la tabla `registros`
--
ALTER TABLE `registros`
  ADD CONSTRAINT `registros_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `registros_ibfk_2` FOREIGN KEY (`paquete_id`) REFERENCES `paquetes` (`id`),
  ADD CONSTRAINT `registros_ibfk_3` FOREIGN KEY (`regalo_id`) REFERENCES `regalos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
