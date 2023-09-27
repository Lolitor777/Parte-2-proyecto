-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.31 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para proyecto_integrador
DROP DATABASE IF EXISTS `proyecto_integrador`;
CREATE DATABASE IF NOT EXISTS `proyecto_integrador` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `proyecto_integrador`;

-- Volcando estructura para tabla proyecto_integrador.tb_carrito
DROP TABLE IF EXISTS `tb_carrito`;
CREATE TABLE IF NOT EXISTS `tb_carrito` (
  `id_carrito` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int unsigned NOT NULL,
  `id_producto` int NOT NULL,
  `estado` bit(1) DEFAULT b'1',
  `id_pedido` int NOT NULL,
  PRIMARY KEY (`id_carrito`),
  KEY `id_pedido` (`id_pedido`),
  KEY `id_producto` (`id_producto`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla proyecto_integrador.tb_carrito: 4 rows
DELETE FROM `tb_carrito`;
/*!40000 ALTER TABLE `tb_carrito` DISABLE KEYS */;
INSERT INTO `tb_carrito` (`id_carrito`, `id_usuario`, `id_producto`, `estado`, `id_pedido`) VALUES
	(1, 2, 1, b'1', 2),
	(2, 1, 2, b'1', 4),
	(3, 2, 4, b'1', 2),
	(4, 4, 3, b'1', 1);
/*!40000 ALTER TABLE `tb_carrito` ENABLE KEYS */;

-- Volcando estructura para tabla proyecto_integrador.tb_categorias
DROP TABLE IF EXISTS `tb_categorias`;
CREATE TABLE IF NOT EXISTS `tb_categorias` (
  `id_categoria` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre_categoria` varchar(45) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `estado` bit(1) DEFAULT b'1',
  PRIMARY KEY (`id_categoria`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla proyecto_integrador.tb_categorias: 4 rows
DELETE FROM `tb_categorias`;
/*!40000 ALTER TABLE `tb_categorias` DISABLE KEYS */;
INSERT INTO `tb_categorias` (`id_categoria`, `nombre_categoria`, `descripcion`, `estado`) VALUES
	(1, 'Tecnología', 'Disco duro, memoria ram, teclado, mouse', b'1'),
	(2, 'Electrodomésticos', 'Licuadora, estufa, horno, nevera', b'1'),
	(3, 'Muebles', 'Sillones, mesas, armarios', b'1'),
	(4, 'Alcoba', 'Colchones, camas, nocheros, espejos', b'0');
/*!40000 ALTER TABLE `tb_categorias` ENABLE KEYS */;

-- Volcando estructura para tabla proyecto_integrador.tb_ciudad
DROP TABLE IF EXISTS `tb_ciudad`;
CREATE TABLE IF NOT EXISTS `tb_ciudad` (
  `id_ciudad` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre_ciudad` varchar(45) NOT NULL,
  `cobertura` bit(1) DEFAULT b'1',
  PRIMARY KEY (`id_ciudad`),
  UNIQUE KEY `nombre_ciudad` (`nombre_ciudad`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla proyecto_integrador.tb_ciudad: 4 rows
DELETE FROM `tb_ciudad`;
/*!40000 ALTER TABLE `tb_ciudad` DISABLE KEYS */;
INSERT INTO `tb_ciudad` (`id_ciudad`, `nombre_ciudad`, `cobertura`) VALUES
	(1, 'Cali', b'0'),
	(2, 'Medellin', b'1'),
	(3, 'Bogota', b'1'),
	(4, 'Armenia', b'1');
/*!40000 ALTER TABLE `tb_ciudad` ENABLE KEYS */;

-- Volcando estructura para tabla proyecto_integrador.tb_oferta
DROP TABLE IF EXISTS `tb_oferta`;
CREATE TABLE IF NOT EXISTS `tb_oferta` (
  `id_oferta` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre_oferta` varchar(45) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `estado` bit(1) DEFAULT b'1',
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  PRIMARY KEY (`id_oferta`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla proyecto_integrador.tb_oferta: 2 rows
DELETE FROM `tb_oferta`;
/*!40000 ALTER TABLE `tb_oferta` DISABLE KEYS */;
INSERT INTO `tb_oferta` (`id_oferta`, `nombre_oferta`, `descripcion`, `estado`, `fecha_inicio`, `fecha_fin`) VALUES
	(1, 'Remate', 'Descuento del 20%', b'0', '2023-09-26', '2023-09-30'),
	(2, 'Gangazo', 'descuento del 25% por día del padre', b'1', '2023-06-17', '2023-06-23');
/*!40000 ALTER TABLE `tb_oferta` ENABLE KEYS */;

-- Volcando estructura para tabla proyecto_integrador.tb_pedido
DROP TABLE IF EXISTS `tb_pedido`;
CREATE TABLE IF NOT EXISTS `tb_pedido` (
  `id_pedido` int unsigned NOT NULL AUTO_INCREMENT,
  `fecha_pago` date NOT NULL,
  `metodo_pago` varchar(45) NOT NULL,
  `estado` bit(1) DEFAULT b'1',
  PRIMARY KEY (`id_pedido`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla proyecto_integrador.tb_pedido: 4 rows
DELETE FROM `tb_pedido`;
/*!40000 ALTER TABLE `tb_pedido` DISABLE KEYS */;
INSERT INTO `tb_pedido` (`id_pedido`, `fecha_pago`, `metodo_pago`, `estado`) VALUES
	(1, '2023-09-26', 'Efectivo', b'1'),
	(2, '2023-09-26', 'Debito', b'1'),
	(3, '2023-09-26', 'Credito', b'0'),
	(4, '2023-09-26', 'Efectivo', b'1');
/*!40000 ALTER TABLE `tb_pedido` ENABLE KEYS */;

-- Volcando estructura para tabla proyecto_integrador.tb_productos
DROP TABLE IF EXISTS `tb_productos`;
CREATE TABLE IF NOT EXISTS `tb_productos` (
  `id_productos` int unsigned NOT NULL AUTO_INCREMENT,
  `descripcion_producto` varchar(45) DEFAULT NULL,
  `id_categoria` int NOT NULL,
  `precio` int NOT NULL,
  `cantidad` int unsigned NOT NULL,
  `id_oferta` int DEFAULT NULL,
  PRIMARY KEY (`id_productos`),
  KEY `id_categoria` (`id_categoria`),
  KEY `id_oferta` (`id_oferta`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla proyecto_integrador.tb_productos: 0 rows
DELETE FROM `tb_productos`;
/*!40000 ALTER TABLE `tb_productos` DISABLE KEYS */;
INSERT INTO `tb_productos` (`id_productos`, `descripcion_producto`, `id_categoria`, `precio`, `cantidad`, `id_oferta`) VALUES
	(1, 'Memoria RAM', 1, 20000, 4, 2),
	(2, 'Sillón', 3, 230000, 1, 2),
	(3, 'Licuadora', 2, 80000, 1, 2),
	(4, 'Disco duro', 1, 120000, 2, 2);
/*!40000 ALTER TABLE `tb_productos` ENABLE KEYS */;

-- Volcando estructura para tabla proyecto_integrador.tb_rol
DROP TABLE IF EXISTS `tb_rol`;
CREATE TABLE IF NOT EXISTS `tb_rol` (
  `id_rol` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_rol`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla proyecto_integrador.tb_rol: 4 rows
DELETE FROM `tb_rol`;
/*!40000 ALTER TABLE `tb_rol` DISABLE KEYS */;
INSERT INTO `tb_rol` (`id_rol`, `nombre`, `descripcion`) VALUES
	(1, 'Asesor', 'Asesor comercial'),
	(2, 'Cliente', ' '),
	(3, 'Vendedor', 'Venta de productos'),
	(4, 'Coordinador', 'jefe de tienda');
/*!40000 ALTER TABLE `tb_rol` ENABLE KEYS */;

-- Volcando estructura para tabla proyecto_integrador.tb_usuarios
DROP TABLE IF EXISTS `tb_usuarios`;
CREATE TABLE IF NOT EXISTS `tb_usuarios` (
  `id_usuario` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(60) NOT NULL,
  `id_ciudad` int NOT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `id_rol` int NOT NULL,
  `id_refiere` int unsigned DEFAULT NULL,
  `estado` bit(1) DEFAULT b'1',
  `contraseña_usuario` varchar(10) NOT NULL,
  `correo_usuario` varchar(45) NOT NULL,
  `telefono_usuario` varchar(13) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `correo_usuario` (`correo_usuario`),
  UNIQUE KEY `telefono_usuario` (`telefono_usuario`),
  KEY `id_ciudad` (`id_ciudad`),
  KEY `id_rol` (`id_rol`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla proyecto_integrador.tb_usuarios: 4 rows
DELETE FROM `tb_usuarios`;
/*!40000 ALTER TABLE `tb_usuarios` DISABLE KEYS */;
INSERT INTO `tb_usuarios` (`id_usuario`, `nombre_usuario`, `id_ciudad`, `direccion`, `id_rol`, `id_refiere`, `estado`, `contraseña_usuario`, `correo_usuario`, `telefono_usuario`, `created_at`, `updated_at`) VALUES
	(1, 'Victor', 2, 'car 44 #45-32', 2, 0, b'1', 'car123', 'victor@gmail.com', '3135627965', '2023-09-22 17:05:41', '2023-09-22 17:05:41'),
	(2, 'Manuel', 3, 'car 44 #42-93', 1, 1, b'1', 'man122', 'manuel@gmail.com', '3135626965', '2023-09-22 17:05:41', '2023-09-22 17:05:41'),
	(3, 'Steven', 2, 'cll 5a #23-3a', 4, 1, b'1', 'stv123', 'steven@gmail.com', '3175940032', '2023-09-22 17:05:41', '2023-09-22 17:05:41'),
	(4, 'juan', 3, 'car 34 #10-32', 3, 2, b'1', 'juan123', 'juan@gmail.com', '3175940055', '2023-09-22 17:05:41', '2023-09-22 17:05:41');
/*!40000 ALTER TABLE `tb_usuarios` ENABLE KEYS */;

-- Volcando estructura para tabla proyecto_integrador.tb_usuario_rol
DROP TABLE IF EXISTS `tb_usuario_rol`;
CREATE TABLE IF NOT EXISTS `tb_usuario_rol` (
  `id_usuario` int unsigned NOT NULL,
  `id_rol` int NOT NULL,
  `estado` bit(1) DEFAULT b'1',
  KEY `id_usuario` (`id_usuario`),
  KEY `id_rol` (`id_rol`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla proyecto_integrador.tb_usuario_rol: 4 rows
DELETE FROM `tb_usuario_rol`;
/*!40000 ALTER TABLE `tb_usuario_rol` DISABLE KEYS */;
INSERT INTO `tb_usuario_rol` (`id_usuario`, `id_rol`, `estado`) VALUES
	(1, 2, b'1'),
	(2, 1, b'1'),
	(3, 4, b'1'),
	(4, 3, b'1');
/*!40000 ALTER TABLE `tb_usuario_rol` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
