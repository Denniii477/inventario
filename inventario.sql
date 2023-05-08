-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-05-2023 a las 04:46:52
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inventario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `categoria_id` int(7) NOT NULL,
  `categoria_nombre` varchar(50) NOT NULL,
  `categoria_ubicacion` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`categoria_id`, `categoria_nombre`, `categoria_ubicacion`) VALUES
(11, 'Categoria 2', 'Tienda'),
(12, 'Categoria 3', 'Tienda'),
(13, 'Categoria 4', 'Tienda'),
(14, 'Categoria 5', 'Tienda'),
(15, 'Categoria 6', 'Tienda'),
(16, 'Categoria 7', 'Tienda'),
(17, 'Categoria 8', 'Tienda'),
(18, 'Categoria 9', 'Tienda'),
(19, 'Categoria 10', 'Tienda'),
(20, 'Categoria 11', 'Tienda'),
(21, 'Categoria 12', 'Tienda'),
(22, 'Categoria 13', 'Tienda'),
(23, 'Categoria 14', 'Tienda'),
(24, 'Categoria 15', 'Tienda'),
(25, 'Categoria 16', 'Tienda'),
(26, 'Categoria 17', 'Tienda'),
(27, 'Categoria 18', 'Tienda'),
(28, 'Categoria 19', 'Tienda'),
(29, 'Categoria 20', 'Tienda'),
(30, 'Categoria 21', 'Tienda'),
(31, 'Categoria 22', 'Almacén'),
(32, 'Categoria 23', 'Almacén'),
(33, 'Categoria 24', 'Almacén'),
(34, 'Categoria 25', 'Almacén'),
(35, 'Categoria 26', 'Almacén'),
(36, 'Categoria 27', 'Almacén'),
(37, 'Categoria 28', 'Almacén'),
(38, 'Categoria 29', 'Almacén'),
(39, 'Categoria 30', 'Almacén');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `producto_id` int(20) NOT NULL,
  `producto_codigo` varchar(70) NOT NULL,
  `producto_nombre` varchar(70) NOT NULL,
  `producto_precio` decimal(30,2) NOT NULL,
  `producto_stock` int(25) NOT NULL,
  `producto_foto` varchar(500) NOT NULL,
  `categoria_id` int(7) NOT NULL,
  `usuario_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`producto_id`, `producto_codigo`, `producto_nombre`, `producto_precio`, `producto_stock`, `producto_foto`, `categoria_id`, `usuario_id`) VALUES
(5, '2', 'Producto 2', '20.00', 20, 'Producto_2_6.jpg', 11, 1),
(6, '3', 'Producto 3', '30.00', 30, 'Producto_3_48.jpg', 12, 1),
(7, '4', 'Producto 4', '40.00', 40, 'Producto_4_73.jpg', 13, 1),
(8, '5', 'Producto 5', '50.00', 50, 'Producto_5_50.jpg', 14, 1),
(9, '6', 'Producto 6', '60.00', 60, 'Producto_6_21.jpg', 15, 1),
(10, '7', 'Producto 7', '70.00', 70, 'Producto_7_33.jpg', 16, 1),
(11, '8', 'Producto 8', '80.00', 80, 'Producto_8_18.jpg', 17, 1),
(12, '9', 'Producto 9', '90.00', 90, 'Producto_9_42.jpg', 18, 1),
(13, '10', 'Producto 10', '100.00', 100, 'Producto_10_42.jpg', 19, 1),
(14, '11', 'Producto 11', '110.00', 110, 'Producto_11_78.jpg', 20, 1),
(15, '12', 'Producto 12', '120.00', 120, 'Producto_12_60.jpg', 21, 1),
(16, '13', 'Producto 13', '130.00', 130, 'Producto_13_77.jpg', 22, 1),
(17, '14', 'Producto 14', '140.00', 140, 'Producto_14_1.jpg', 23, 1),
(18, '15', 'Producto 15', '150.00', 150, 'Producto_15_51.jpg', 24, 1),
(19, '16', 'Producto 16', '160.00', 160, 'Producto_16_5.jpg', 25, 1),
(20, '17', 'Producto 17', '170.00', 170, 'Producto_17_80.jpg', 26, 1),
(21, '18', 'Producto 18', '180.00', 180, 'Producto_18_90.jpg', 27, 1),
(22, '19', 'Producto 19', '190.00', 190, 'Producto_19_100.jpg', 28, 1),
(23, '20', 'Producto 20', '200.00', 200, 'Producto_20_20.jpg', 29, 1),
(24, '21', 'Producto 21', '210.00', 210, 'Producto_21_89.jpg', 30, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuario_id` int(10) NOT NULL,
  `usuario_nombre` varchar(40) NOT NULL,
  `usuario_apellido` varchar(40) NOT NULL,
  `usuario_usuario` varchar(20) NOT NULL,
  `usuario_clave` varchar(200) NOT NULL,
  `usuario_email` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario_id`, `usuario_nombre`, `usuario_apellido`, `usuario_usuario`, `usuario_clave`, `usuario_email`) VALUES
(1, 'Dennis', 'Choquecota', 'Denniii', '$2y$10$KqN8T1WuDlAEhKQxGZYqLO7tMjZ8uWI6wJqqbKFl9ZqrFve1g049i', 'Dennis@gmail.com'),
(2, 'Francisco', 'Obando', 'francisco', '$2y$10$AAATcI9Z/4hlChneJdc4rOizsdvUgbyl//vJgXwXMvlFSChLYOqgi', 'Francisco@gmail.com'),
(6, 'Sachiret', 'Matos', 'sachiret', '$2y$10$yZwQgda7N92Wul9EOg3nteVyDEq2.Xoxdyq71Eao9paV3XckZV94q', 'sachiret@gmail.com'),
(8, 'Limber', 'Prado', 'limber', '$2y$10$HoQgf9/1SHNSDCBLlynLiOT.IN9zVIGYwXFpumnZPmPWYaohKhgdi', 'limber@gmail.com'),
(9, 'Madey', 'Camari', 'madey', '$2y$10$qTj91dMZCP68x7jXh8ZtA.iHkqwEcwnE9xQ.ofK12pjkRYPAlIDbG', 'madey@gmail.com'),
(10, 'Marliz', 'Davila', 'Marliz', '$2y$10$MxFBDfA3NgKVo4OoiSP2WOw0dNXpq6kUaPxfs57O7IqzGUBi/hInO', 'marliz@gmail.com'),
(12, 'Bryan', 'Amilcar', 'bryan', '$2y$10$3c/WtNmxvBPFJDN1tvWm3ulf4FsiR7rjqKrWUX3/elezz3eJPrGyO', 'bryan@gmail.com'),
(13, 'Marian', 'Chavez', 'marian', '$2y$10$4N7B17Mnflmbkx6fEUROL.Hj1fySW4mj2QZUP8zAHwED7ykFHu2Im', 'marian@gmail.com'),
(14, 'Cristian', 'Maquera', 'chote', '$2y$10$G7EAoxdHBP37khNaqfgPaue9N01Oimum40eMLC34MVrP2f5Zrr6Fu', 'cristian@gmail.com'),
(24, 'Usuario', 'Usuario', 'usuario5', '$2y$10$lS9EjlOd8VuVqR3wWB/Dr.KKfOCC7jG4XQRx9PxjD1LPpUhcvjU4W', 'usuario5@gmail.com'),
(25, 'Usuario', 'Usuario', 'usuario1', '$2y$10$yHyAY2RWJEh.6EiTBSe2nOZ.a1y7P8vl6qHWmgL63BkGP9nfxjpr2', 'usuario1@gmail.com'),
(26, 'Usuario', 'Usuario', 'usuario2', '$2y$10$mlAUnzav1wk4mpx2VXak7udfxQTY5QWrVuwSqckqXCZPd2FYh2rnS', 'usuario2@gmail.com'),
(27, 'Usuario', 'Usuario', 'usuario3', '$2y$10$lek/qPoqnEk4EcTeMx5oX.zG9Il/7Of9ztuHsixvj.42shQlatu42', 'usuario3@gmail.com'),
(28, 'Usuario', 'Usuario', 'usuario4', '$2y$10$X.Jp/HjSNozLnwKEyfmOheUz5YlozZwKoB3pG3UzcljKrHuBBzYD2', 'usuario4@gmail.com'),
(29, 'Usuario', 'Usuario', 'usuario6', '$2y$10$HgDGGemIeIZd7q11v1LxXOKn2ahV833KemeiOUbWP/cn1z7XXQAiK', 'usuario6@gmail.com'),
(30, 'Usuario', 'Usuario', 'usuario7', '$2y$10$yhyVGKbhpBeNo1YCK8OTz.HhVm9WXARJWOj.V.iuXiMPTOSOcYBwa', 'usuario7@gmail.com'),
(31, 'Usuario', 'Usuario', 'usuario8', '$2y$10$PCcjXLDFHu83h4misz4xk.w4wf8N4ZB2QtFGM/fvuBqhbqf0t8G7a', 'usuario8@gmail.com'),
(32, 'Usuario', 'Usuario', 'usuario9', '$2y$10$58Zt98/n0GGL/ku7od79c.ZTCDMlnjK0SXrjzYlvnAFhdQztssJty', 'usuario9@gmail.com'),
(33, 'Usuario', 'Usuario', 'usuario10', '$2y$10$dXikL40k6MNyd/InGRpPmeO5z1nIBY./TzUk4WV/96296PIkkwy4a', 'usuario10@gmail.com'),
(34, 'Usuario', 'Usuario', 'usuario11', '$2y$10$.ecHtDNxlqpFX9Rz2h2GLe5PEwtj17XPY.ss5Ok2HL4xSi.y0j6La', 'usuario11@gmail.com'),
(35, 'Usuario', 'Usuario', 'usuario12', '$2y$10$OgonrAMNZnh/ruXJenUMkO10ny1Qo1E3EoLqZUKx39RNtFU6D/tku', 'usuario12@gmail.com'),
(36, 'Usuario', 'Usuario', 'usuario13', '$2y$10$ILCXzaE4gHkFqzLDVb/WpObO4WeWP3PzsZgb2API/xqruqyCuD5QW', 'usuario13@gmail.com'),
(37, 'Usuario', 'Usuario', 'usuario14', '$2y$10$Cnz1ktGV9f9geSyE26Bgie/R2Yp4THZCOBPA/n0lavFpKwFULb2J6', 'usuario14@gmail.com'),
(38, 'Usuario', 'Usuario', 'usuario15', '$2y$10$dIlgEY.DIHnnsqepdrzgbuWDehQ5wDzpK.cpiEjNA5O66JoEDNYAy', 'usuario15@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`categoria_id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`producto_id`),
  ADD KEY `categoria_id` (`categoria_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `categoria_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `producto_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usuario_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`usuario_id`),
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`categoria_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
