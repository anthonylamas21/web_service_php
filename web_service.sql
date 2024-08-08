
-- Base de datos obtenida directamente del video.

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


-- Creacion de las tablas para la base de datos de los registro que almacera el Web Service

CREATE TABLE `contactos` (
  `id` int NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(15) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--Registros aleatorios del señor del video 

INSERT INTO `contactos` (`id`, `nombre`, `telefono`, `email`) VALUES
(1, 'Juan Perez', '5512345678', 'juan@mail.com'),
(2, 'Pedro Gomez', '5512345698', 'pedro@mail.com'),
(3, 'Ezequiel Ramirez', '5512345687', 'ezequiel@mail.com'),
(4, 'Maria Solano', '5512345663', 'maria@mail.com'),
(5, 'Ana Martinez', '5512345612', 'ana@mail.com');


ALTER TABLE `contactos`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `contactos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;
