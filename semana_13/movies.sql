-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-10-2025 a las 16:51:33
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `movies`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `nombre`) VALUES
(8, 'Acción'),
(10, 'Aventura'),
(6, 'Comedia'),
(7, 'Drama'),
(2, 'Fantasía'),
(11, 'Ficción'),
(4, 'Juvenil'),
(5, 'Misterio'),
(3, 'Romance'),
(9, 'Suspenso'),
(1, 'Terror');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `portada` varchar(255) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `estreno` int(11) DEFAULT NULL,
  `director` varchar(255) DEFAULT NULL,
  `duracion` int(11) DEFAULT NULL,
  `trailer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`id`, `titulo`, `portada`, `descripcion`, `estreno`, `director`, `duracion`, `trailer`) VALUES
(1, 'Iron Man: El Hombre de Hierro', 'assets\\movies\\ironman.jpg', 'Cuando el afamado industrial Tony Stark es capturado, construye una armadura de alta tecnología para escapar. Ahora, debe salvar el mundo como superhéroe.', 2008, 'Jon Favreau', 120, 'https://www.youtube.com/watch?v=8ugaeA-nMTc'),
(2, 'Culpa mía', 'assets/movies/culpa-mia.jpg', 'La joven Noah deja todo para mudarse a la mansión de William Leister, el flamante y rico marido de su madre Rafaela...', 2023, 'Domingo González', 130, 'https://www.youtube.com/watch?v=sg4HGMIN9J4'),
(3, 'La extorsión', 'assets/movies/la-extorsion.jpg', 'Un experimentado piloto comercial se ve obligado a colaborar con los servicios de inteligencia de su país...', 2023, 'Martino Zaidelis', 105, 'https://www.youtube.com/watch?v=BrbYaKEYBe8'),
(4, 'Un vecino gruñón', 'assets/movies/un-vecino-gruñon.jpg', 'Otto es un hombre viudo, malhumorado...', 2023, 'Marc Forster', 126, 'https://www.youtube.com/watch?v=Zjx0QUetIS8'),
(5, 'Marravilloso Desastre', 'assets/movies/marravilloso-desastre.jpg', 'Travis pelea por las noches en combates ilegales...', 2023, 'Roger Kumble', 105, 'https://www.youtube.com/watch?v=UqEPdjetemk'),
(6, 'Misión de rescate 2', 'assets/movies/mision-rescate.jpg', 'De vuelta del borde de la muerte...', 2023, 'Sam Hargrave', 122, 'https://www.youtube.com/watch?v=3j_SErnxepk'),
(7, 'Misión: Imposible - Nación Secreta', 'assets/movies/mision-imposible.jpg', 'El equipo enfrenta al Sindicato...', 2015, 'Christopher McQuarrie', 131, 'https://www.youtube.com/watch?v=SxGt-oePGSw'),
(8, 'G.I. Joe 2: El contraataque', 'assets/movies/el-contraataque.jpg', 'En la continuación de las aventuras del equipo G.I. Joe...', 2013, 'Jon M. Chu', 120, 'https://www.youtube.com/watch?v=55mMLQsUnp4'),
(9, 'The plane', 'assets/movies/the-plane.jpg', 'El piloto Brodie Torrance salva a los pasajeros...', 2023, 'Jean-François Richet', 107, 'https://www.youtube.com/watch?v=C5JiLhxXMg0'),
(10, 'Uncharted: Fuera del mapa', 'assets/movies/uncharted.jpg', 'El cazador de tesoros Victor Sullivan recluta a Nathan Drake...', 2022, 'Ruben Fleischer', 116, 'https://www.youtube.com/watch?v=QHT-vrD7tds'),
(11, 'El Misterio de Soho', 'assets/movies/misterio-soho.jpg', 'Una joven, amante de la moda, viaja en el tiempo...', 2021, 'Edgar Wright', 116, 'https://www.youtube.com/watch?v=-tDIYpWmzFc'),
(12, 'La bruja', 'assets/movies/la-bruja.jpg', 'Nueva Inglaterra, 1630. Una familia compuesta por un matrimonio...', 2016, 'Robert Eggers', 90, 'https://www.youtube.com/watch?v=JEPQVDIFpsw'),
(13, 'Megan', 'assets/movies/megan.jpg', 'Gemma, diseñadora de una muñeca de inteligencia artificial...', 2023, 'Gerard Johnstone', 102, 'https://www.youtube.com/watch?v=e_6JPqOCH3c'),
(14, 'Gato con botas: El último deseo', 'assets/movies/gato-con-botas.jpg', 'El Gato con Botas descubre que...', 2022, 'Joel Crawford', 100, 'https://www.youtube.com/watch?v=QaiUm8jNiCk'),
(15, 'Mi vida a los diecisiete', 'assets/movies/mi-vida-a-los-diecisiete.jpg', 'Nadine y Krista asisten a la misma escuela secundaria...', 2016, 'Kelly Fremon', 102, 'https://www.youtube.com/watch?v=TAXCaL5n6q8'),
(16, 'La ciudad perdida', 'assets/movies/ciudad-perdida.jpg', 'Un modelo de portada viaja a una jungla exótica...', 2022, 'Aaron Nee, Adam Nee', 112, 'https://www.youtube.com/watch?v=2kzxPG4cz2g'),
(17, 'Como si fuera la primera vez', 'assets/movies/como-si-fuera-la-primera-vez.jpg', 'Henry, biólogo marino, no tiene la mínima intención...', 2004, 'Peter Segal', 99, 'https://www.youtube.com/watch?v=T-Ij457ykKE'),
(18, '¿No es romántico?', 'assets/movies/no-es-romantico.jpg', 'Natalie es una arquitecta neoyorquina que siempre ha tratado el amor...', 2019, 'Todd Strauss-Schulson', 88, 'https://www.youtube.com/watch?v=cD-XeEqKz00'),
(19, 'Bajo el mismo cielo', 'assets/movies/bajo-el-mismo-cielo.jpg', 'Un contratista militar se encuentra en una encrucijada amorosa...', 2015, 'Cameron Crowe', 105, 'https://www.youtube.com/watch?v=gc0s6yFBKus'),
(20, 'Palm Springs', 'assets/movies/palm-springs.jpg', 'Nyles y Sarah, invitados a la boda...', 2020, 'Max Barbakow', 87, 'https://www.youtube.com/watch?v=aQ7Np-dl9hU'),
(21, 'Evil Dead', 'assets/movies/evil-dead.jpg', 'En un edificio de apartamentos de Los Ángeles, dos hermanas luchan contra los demonios sedientos de sangre que han salido de un libro antiguo.', 2023, 'Lee Cronin', 95, 'https://www.youtube.com/watch?v=keW_fKq187k');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas_generos`
--

CREATE TABLE `peliculas_generos` (
  `id_pelicula` int(11) NOT NULL,
  `id_genero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `peliculas_generos`
--

INSERT INTO `peliculas_generos` (`id_pelicula`, `id_genero`) VALUES
(1, 11),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(4, 6),
(4, 7),
(5, 3),
(5, 4),
(6, 8),
(6, 9),
(7, 8),
(7, 10),
(8, 8),
(8, 10),
(9, 8),
(9, 10),
(10, 8),
(10, 10),
(11, 1),
(11, 7),
(12, 1),
(12, 7),
(13, 1),
(13, 11),
(14, 6),
(14, 10),
(15, 6),
(15, 7),
(16, 8),
(16, 10),
(17, 3),
(17, 6),
(18, 3),
(18, 6),
(19, 3),
(19, 6),
(20, 3),
(20, 6);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `peliculas_generos`
--
ALTER TABLE `peliculas_generos`
  ADD PRIMARY KEY (`id_pelicula`,`id_genero`),
  ADD KEY `id_genero` (`id_genero`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `peliculas_generos`
--
ALTER TABLE `peliculas_generos`
  ADD CONSTRAINT `peliculas_generos_ibfk_1` FOREIGN KEY (`id_pelicula`) REFERENCES `peliculas` (`id`),
  ADD CONSTRAINT `peliculas_generos_ibfk_2` FOREIGN KEY (`id_genero`) REFERENCES `generos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
