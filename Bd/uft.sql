-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         5.7.24 - MySQL Community Server (GPL)
-- SO del servidor:              Win32
-- HeidiSQL Versión:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para uft
CREATE DATABASE IF NOT EXISTS `uft` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `uft`;

-- Volcando estructura para tabla uft.ruta
CREATE TABLE IF NOT EXISTS `ruta` (
  `nombres` varchar(50) DEFAULT NULL,
  `telefonos` varchar(50) DEFAULT NULL,
  `emails` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla uft.ruta: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `ruta` DISABLE KEYS */;
INSERT INTO `ruta` (`nombres`, `telefonos`, `emails`) VALUES
	('german gregorio', '3216541272', 'german.gregorio.ramirez@gmail.com');
/*!40000 ALTER TABLE `ruta` ENABLE KEYS */;

-- Volcando estructura para tabla uft.universitario
CREATE TABLE IF NOT EXISTS `universitario` (
  `nombre` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla uft.universitario: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `universitario` DISABLE KEYS */;
/*!40000 ALTER TABLE `universitario` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
