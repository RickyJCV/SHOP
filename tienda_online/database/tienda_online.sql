-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-05-2020 a las 18:04:55
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_online`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(255) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'Zapatillas'),
(2, 'Jeans'),
(3, 'Cazadoras'),
(4, 'Sudaderas'),
(5, 'Camisetas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineas_pedidos`
--

CREATE TABLE `lineas_pedidos` (
  `id` int(255) NOT NULL,
  `pedido_id` int(255) NOT NULL,
  `producto_id` int(255) NOT NULL,
  `unidades` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `lineas_pedidos`
--

INSERT INTO `lineas_pedidos` (`id`, `pedido_id`, `producto_id`, `unidades`) VALUES
(1, 1, 24, 1),
(2, 1, 16, 1),
(3, 1, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(255) NOT NULL,
  `usuario_id` int(255) NOT NULL,
  `provincia` varchar(100) NOT NULL,
  `localidad` varchar(100) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `coste` float(200,2) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `usuario_id`, `provincia`, `localidad`, `direccion`, `coste`, `estado`, `fecha`, `hora`) VALUES
(1, 2, 'Sevilla', 'Sevilla', 'Avenida de la constitución Bloque X Puerta X', 1000.00, 'confirm', '2020-04-25', '12:28:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(255) NOT NULL,
  `categoria_id` int(255) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` float(100,2) NOT NULL,
  `stock` int(255) NOT NULL,
  `oferta` varchar(2) DEFAULT NULL,
  `fecha` date NOT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `categoria_id`, `nombre`, `descripcion`, `precio`, `stock`, `oferta`, `fecha`, `imagen`) VALUES
(1, 5, 'Camiseta Rayas', 'Camiseta de mangas cortas con rayas blancas y azul.', 10.00, 25, NULL, '2020-04-25', 'cam1.jpg'),
(2, 5, 'Camiseta Rayas', 'Camiseta mangas cortas con rayas color rojo.', 10.00, 25, NULL, '2020-04-25', 'cam2.jpg'),
(3, 5, 'Camiseta Metallica', 'Camiseta con estampado Metallica.', 15.00, 10, NULL, '2020-04-25', 'cam3.jpg'),
(4, 5, 'Camiseta Diseño', 'Camiseta con diseño Sunset.', 15.00, 10, NULL, '2020-04-25', 'cam4.jpg'),
(5, 5, 'Camiseta Letras', 'Camiseta con una palabra.', 12.00, 15, NULL, '2020-04-25', 'cam5.jpg'),
(6, 5, 'Camiseta Morada', 'Camiseta morada con frases.', 14.00, 15, NULL, '2020-04-25', 'cam6.jpg'),
(7, 3, 'Cazadora Alas', 'Cazadora con estampado de alas.', 40.00, 5, NULL, '2020-04-25', 'caz1.jpg'),
(8, 3, 'Parka', 'Parka con capucha.', 50.00, 10, NULL, '2020-04-25', 'caz2.jpg'),
(9, 3, 'Cazadora Piel', 'Cazadora Motero Piel.', 70.00, 3, NULL, '2020-04-25', 'caz3.jpg'),
(10, 2, 'Jeans Mujer', 'Jeans de mujer ajustados.', 15.00, 20, NULL, '2020-04-25', 'jea1.jpg'),
(11, 2, 'Jeans Hombre', 'Jeans Hombre', 15.00, 20, NULL, '2020-04-25', 'jea2.jpg'),
(12, 2, 'Jeans Mujer Rasgados', 'Jeans rasgados para mujer.', 15.00, 15, NULL, '2020-04-25', 'jea3.jpg'),
(13, 4, 'Sudadera Rosa', 'Sudadera rosa con dibujo', 20.00, 30, NULL, '2020-04-25', 'sud1.jpg'),
(14, 4, 'Sudadera Corta', 'Sudadera por encima del ombligo.', 20.00, 20, NULL, '2020-04-25', 'sud2.jpg'),
(15, 4, 'Sudadera Jordan', 'Sudadera baloncesto Jordan.', 40.00, 15, NULL, '2020-04-25', 'sud3.jpg'),
(16, 4, 'Sudadera Harry Potter', 'Sudadera estilo harry potter.', 35.00, 15, NULL, '2020-04-25', 'sud4.jpg'),
(17, 4, 'Sudadera Nasa', 'Sudadera de la nasa.', 30.00, 15, NULL, '2020-04-25', 'sud5.jpg'),
(18, 4, 'Sudadera North Face', 'Sudadera marca The North Face.', 55.00, 20, NULL, '2020-04-25', 'sud6.jpg'),
(19, 1, 'Zapatillas Jordan', 'Jordan Max.', 60.00, 10, NULL, '2020-04-25', 'zap1.png'),
(20, 1, 'Zapatillas Nike', 'Zapatillas nike último modelo.', 70.00, 20, NULL, '2020-04-25', 'zap2.jpg'),
(21, 1, 'Zapatillas Nike', 'Zapatillas nike deportivas.', 45.00, 30, NULL, '2020-04-25', 'zap3.jpg'),
(22, 1, 'Zapatillas Pokemon', 'Zapatillas con diseño pokemon.', 30.00, 10, NULL, '2020-04-25', 'zap4.jpg'),
(23, 1, 'Zapatillas DC', 'Zapatillas marca DC.', 40.00, 15, NULL, '2020-04-25', 'zap5.jpg'),
(24, 1, 'Zapatillas Gucci Usadas', 'Zapatillas marca Gucci usadas (EXCLUSIVAS)', 950.00, 1, NULL, '2020-04-25', 'zap6.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(255) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol` varchar(20) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellidos`, `email`, `password`, `rol`, `imagen`) VALUES
(1, 'Admin', 'Admin', 'admin@admin.com', '$2y$04$TsvwTblVVCiuZD7RVAXIkOEVXavQZgT3Fa62vLH6T/cTNtqlU1X8G', 'admin', NULL),
(2, 'Ricardo', 'Cabrera Cabrera', 'estudiante@estudiante.com', '$2y$04$RMr/AiR.96srCK/qc4IBvOngqGVatujd2fYH3c6kZjUwkwjeERiXK', 'user', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lineas_pedidos`
--
ALTER TABLE `lineas_pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_linea_pedido` (`pedido_id`),
  ADD KEY `fk_linea_producto` (`producto_id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pedido_usuario` (`usuario_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_producto_categoria` (`categoria_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `lineas_pedidos`
--
ALTER TABLE `lineas_pedidos`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `lineas_pedidos`
--
ALTER TABLE `lineas_pedidos`
  ADD CONSTRAINT `fk_linea_pedido` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`),
  ADD CONSTRAINT `fk_linea_producto` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `fk_pedido_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_producto_categoria` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
