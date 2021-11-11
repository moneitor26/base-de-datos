-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-11-2021 a las 23:02:03
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `basededatos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE `actividades` (
  `id` int(100) NOT NULL,
  `usuario_id` int(100) NOT NULL,
  `tipo_id` int(100) NOT NULL,
  `equipo_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `discos`
--

CREATE TABLE `discos` (
  `id` int(100) NOT NULL,
  `marca` varchar(100) NOT NULL,
  `capacidad` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `id` int(100) NOT NULL,
  `estado_id` int(100) NOT NULL,
  `torre_id` int(100) NOT NULL,
  `monitor_id` int(100) NOT NULL,
  `teclado_id` int(100) NOT NULL,
  `raton_id` int(100) NOT NULL,
  `otro` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `id` int(100) NOT NULL,
  `estado` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `feedback`
--

CREATE TABLE `feedback` (
  `id` int(100) NOT NULL,
  `usuario_id` int(100) NOT NULL,
  `comentarios` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` int(10) NOT NULL,
  `genero` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `id` int(100) NOT NULL,
  `actividad_id` int(100) NOT NULL,
  `equipo_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `memorias`
--

CREATE TABLE `memorias` (
  `id` int(100) NOT NULL,
  `marca` varchar(100) NOT NULL,
  `capacidad` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `otros`
--

CREATE TABLE `otros` (
  `id` int(100) NOT NULL,
  `dispositivo` varchar(100) NOT NULL,
  `n_bien` int(100) NOT NULL,
  `n_serie` varchar(100) NOT NULL,
  `marca` varchar(100) NOT NULL,
  `modelo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ratones`
--

CREATE TABLE `ratones` (
  `id` int(100) NOT NULL,
  `n_bien` int(100) NOT NULL,
  `n_serie` varchar(100) NOT NULL,
  `marca` varchar(100) NOT NULL,
  `modelo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(100) NOT NULL,
  `rol` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `soporte_act`
--

CREATE TABLE `soporte_act` (
  `id` int(100) NOT NULL,
  `usuario_id` int(100) NOT NULL,
  `actividad_id` int(100) NOT NULL,
  `tipo_id` int(100) NOT NULL,
  `fecha` date NOT NULL,
  `origen` varchar(100) NOT NULL,
  `localidad` varchar(100) NOT NULL,
  `atencion` varchar(100) NOT NULL,
  `descripcion` mediumtext NOT NULL,
  `tiempo_solucion` int(100) NOT NULL,
  `solucion` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teclados`
--

CREATE TABLE `teclados` (
  `id` int(100) NOT NULL,
  `n_bien` int(100) NOT NULL,
  `n_serie` varchar(100) NOT NULL,
  `marca` varchar(100) NOT NULL,
  `modelo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_act`
--

CREATE TABLE `tipos_act` (
  `id` int(100) NOT NULL,
  `tipo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `torres`
--

CREATE TABLE `torres` (
  `id` int(100) NOT NULL,
  `n_bien` int(100) NOT NULL,
  `n_serie` varchar(100) NOT NULL,
  `marca` varchar(100) NOT NULL,
  `modelo` varchar(100) NOT NULL,
  `procesador` varchar(100) NOT NULL,
  `disco_duro_id` int(100) NOT NULL,
  `memoria_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(100) NOT NULL,
  `n_usuario` varchar(100) NOT NULL,
  `cedula` int(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `genero_id` int(100) NOT NULL,
  `contra` varchar(100) NOT NULL,
  `rol_id` int(100) NOT NULL,
  `correo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
