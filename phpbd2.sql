-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-02-2024 a las 00:03:58
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

create database phpbd2;

use phpbd2;

CREATE USER 'Daniel'@'localhost' IDENTIFIED VIA mysql_native_password USING '***';GRANT ALL PRIVILEGES ON *.* TO 'Daniel'@'localhost' REQUIRE NONE WITH GRANT OPTION MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;GRANT ALL PRIVILEGES ON `phpbd2`.* TO 'Daniel'@'localhost';

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `phpbd2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `ID` int(11) NOT NULL,
  `Name` varchar(254) NOT NULL,
  `Surname` varchar(254) NOT NULL,
  `User` varchar(254) NOT NULL,
  `Email` varchar(254) NOT NULL,
  `Password` varchar(254) NOT NULL,
  `Direccion` varchar(254) NOT NULL,
  `Pedidos` int(6) NOT NULL,
  `DineroGastado` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`ID`, `Name`, `Surname`, `User`, `Email`, `Password`, `Direccion`, `Pedidos`, `DineroGastado`) VALUES
(1, 'Daniel', 'Santiso', 'pepe', 'Daniel@gmail.com', '$2y$10$ClkqlCGhQ2sShM.6zUDSPeypxXIkCSkUwbPHhjyZNNM/VUl8ZeUEi', 'hola', 0, 0),
(2, 'Daniel', 'Santiso', 'Pepe', 'Daniel@gmail.com', '$2y$10$6.BCPusyWsQaPey80TrA8u1S7eNsxmtEhO3KJ13rQXiP6y.zbnLqq', 'hola', 0, 0),
(3, 'Pepe', 'Santiso', 'Pepe2', 'pepe@gmail.com', '$2y$10$faXGxP1tX8ogXXsJs8ZBQ.3SqgqujRLvhmfrI6UJNdZnOkrPbR3H.', 'Qwerty1234', 0, 0),
(4, 'Daniel', 'Daniel', 'Daniel', 'Daniel@gmail.com', '$2y$10$j.urp9AMf9jOYtwoxFmMwOR4DNZQetBNX42X0LcOeEiBWzAcct21e', 'Daniel', 3, 1691),
(5, 'Daniel', 'Daniel', 'Santiso2', 'Daniel@gmail.com', '$2y$10$VubsQ0RrqOn6ciMG.HOCZu8SheFwzv4Bxt8wOSlNg.RgUguxnjeMS', 'Santiso', 0, 0),
(6, 'Pepe', 'Pepe', 'Pepe4', 'Pepe@gmail.com', '$2y$10$7rVOeeeMzUvXSIa9f/F23ugScZjNUxMinPAD6X3baRo8dupsKcciu', 'Pepe', 0, 0),
(7, 'dani', 'dani', 'dani', 'dani@gmail.com', '$2y$10$Ghbt10sqCIupkbJKujSNo..oL12QqCp8uC/5N2yk4dhcYnIJUqEpW', 'dani', 0, 0),
(8, 'c', 'c', 'pasdpwa', 'hola@gmail.com', '$2y$10$3FJX6EKUUpY7TLCQNK2E1ul7e1MNLBdOr8Ko8fFfQOnNFr2orcxdu', 'c', 0, 0),
(9, 'c', 'c', 'ñaña', 'c@c.com', '$2y$10$.l2P405t0Sx./yDnGKfksuYHsQqw2yX9pUTSSDAxAxpj8LnGCqisa', 'c', 0, 0),
(10, 'adawds', 'adAWdasd', 'oasdkapwodjkpas', 'aposdijawpd@apiksndm.com', '$2y$10$5OHxANt0le7a2aVb7QFVH.zW7lz1T0mkWtjVUw1kW0cH5M8J0tCvS', 'pdqjmwpo', 0, 0),
(11, 'c', 'pasdwasd', 'palsdpkawpds', 'c@c.com', '$2y$10$zljP3nkTFFr0W0GYzZirU.7xJtuf.jGWG3.n80Co33AqJuMq/lNBS', 'c', 0, 0),
(12, 'prueba', 'prueba', 'pepe', 'prueba@gmail.com', '$2y$10$aud75ekDKwSDRbnlhzJjMeTaxn89FoiHU1bdsUucAInDVDyHQayDK', 'qwerty1234', 0, 0),
(13, 'Prueba9', 'Prueba9', 'Prueba10', 'Prueba9@gmail.com', '$2y$10$Cgdjeoza9up/cto9/zkkWumML5Yaf60DXlWghMCKfjycGnCGKfkhi', 'Prueba9', 2, 290);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(253) NOT NULL,
  `foto` int(11) NOT NULL,
  `precio` decimal(65,2) NOT NULL,
  `descripcion` longtext NOT NULL,
  `edicion` varchar(254) NOT NULL,
  `juego` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`ID`, `Nombre`, `foto`, `precio`, `descripcion`, `edicion`, `juego`) VALUES
(1, 'Figura de Lux de porcelana', 1, 36.00, 'En un mundo en el que los espíritus ancestrales y las criaturas mágicas viven en la periferia de la sociedad moderna, los poderosos artefactos de porcelana, que reciben el nombre de reliquias del zodiaco, son de vital importancia para desatar un enorme poder. Los protectores, unos guardianes inmortales, se encargan de la protección de las reliquias para evitar que caigan en las manos equivocadas.\r\n\r\nComo Protectora y portadora de la reliquia de conejo, Lux de porcelana siempre tiene algo que hacer, pero ahora que un antiguo mal ha resurgido de nuevo en busca de venganza y un nuevo Protector se ha unido al grupo (¿será coincidencia o pura casualidad?), Lux está más ocupada que nunca.\r\n\r\nCaracterísticas:\r\n\r\nIcono de invocador exclusivo\r\nNumeración de serie y estilo\r\nMedidas aproximadas:\r\n\r\nAltura: 14,8 cm\r\nAnchura: 12,5 cm\r\nProfundidad: 14 cm', 'EDICIÓN ESPECIAL', 'lol'),
(2, 'Figura de Lux de porcelana de la serie de artesanía de Beast Kingdom', 2, 394.99, 'Lux, líder actual de los Protectores y portadora de la reliquia de conejo, se niega a renunciar a su ascendencia solar, a pesar de su arduo entrenamiento como hechicera y la repentina amenaza de un mal que ha despertado y está empeñado en hacerse con las reliquias del zodiaco.\r\n\r\nLimitada a 3000 copias en todo el mundo, como parte de la serie de artesanía, Lux de porcelana cuenta con todo lujo de detalles, desde la reliquia de conejo en su mano a la magia que fluye a través de su varita de loto. ¡Evitad que Lissandra se haga con las reliquias y reservad a Lux de porcelana para vuestra colección!\r\n\r\nMedidas aproximadas:\r\n\r\nAnchura: 26 cm\r\nProfundidad: 9,4 cm\r\nAltura: 42 cm\r\nCreada en colaboración con nuestros amigos de Beast Kingdom.', 'EDICIÓN LIMITADA', 'lol'),
(3, 'Edición de coleccionista de Bandle Tale: A League of Legends Story', 3, 159.99, 'Una pequeña criatura yordle y un problema descomunal.\r\n\r\nBandle Tale: A League of Legends Story™ es un juego de rol y artesanía de un solo jugador desarrollado por Lazy Bear Games que tiene lugar en el fantástico mundo de Ciudad de Bandle. Tras una desastrosa fiesta, los portales que conectan tu hogar se derrumban, y se desata el caos. Haciendo uso de tu magia tejedora y la casa que llevas a las espaldas, restablece los portales para volver a unir Ciudad de Bandle.\r\n\r\nLa edición de coleccionista de Bandle Tale: A League of Legends Story™ incluye:\r\n\r\nUn código digital para la edición especial con la bonificación de reserva del juego Bandle Tale: A League of Legends Story™*\r\nCaja de edición de coleccionista\r\nDiorama del centro de Bandle\r\nLibro de arte de tapa dura\r\n5 figuras de campeones\r\nSet de pines de madera de Rumble y Lulu\r\nCuaderno\r\nSet de pegatinas\r\nEl código de juego para Bandle Tale: A League of Legends Story™ se enviará por correo electrónico el día del lanzamiento y no será reembolsable.\r\n\r\nLa edición de coleccionista de Bandle Tale: A League of Legends Story™ está disponible de forma exclusiva en la tienda de Riot Games Merch. Las existencias son muy limitadas.\r\n\r\nTu aventura comienza en Bandle Tale: A League of Legends Story™.', 'EDICIÓN LIMITADA', 'lol'),
(4, 'Peluche de Choncc panda', 4, 31.00, 'Con la mochila llena de petardos (y la barriga llena de empanadillas), llega Choncc panda, ¡listo para enfrentarse a lo que os depare el nuevo año! ¡Contemplad como el golpe final de Annie panda chibi cobra vida, defendeos contra los monstruos y dadle un toque lunar a vuestra colección de minileyendas con nuestro peluche de Choncc panda!', 'EDICION NORMAL', 'lol'),
(5, 'Figura de Yuumi buscacorazones (chroma rubí)', 5, 36.99, '\"¡Tú dices \'Yuumi\', yo digo \'yupi\'!\".\r\n\r\nSi le dais un tomo sobre magia a una gata con grandes conocimientos mágicos, ¡querrá leerlo en compañía de un par de colegas! ¡Nuestra figura de Yuumi buscacorazones ahora también está disponible con el chroma rubí!\r\n\r\nCon sus patitas, su libro de hechizos de amor, sus alitas de ángel y una base floral, nuestra figura de Yuumi buscacorazones (chroma rubí) es perfecta para la colección de figuras de Yuumi buscacorazones, amantes de los apoyos y de los gatos.\r\n\r\nCaracterísticas:\r\n\r\nEmbalaje especial con temática buscacorazones y revestimiento dorado\r\nIcono de invocador exclusivo\r\nNumeración de serie y estilo\r\nMedidas aproximadas:\r\n\r\nAltura: 12,6 cm\r\nAnchura: 11,5 cm\r\nProfundidad: 10 cm', 'EDICIÓN ESPECIAL', 'lol'),
(6, 'Figura de Yuumi buscacorazones (chroma perla)', 6, 36.99, '\"¡La mejor puntería de todo el reino espiritual!\".\r\n\r\nSi le dais un tomo sobre magia a una gata con grandes conocimientos mágicos, ¡querrá leerlo en compañía de un par de colegas! ¡Nuestra figura de Yuumi buscacorazones ahora también está disponible con el chroma perla!\r\n\r\nCon sus patitas, su libro de hechizos de amor, sus alitas de ángel y una base floral, nuestra figura de Yuumi buscacorazones (chroma perla) es perfecta para la colección de figuras de Yuumi buscacorazones, amantes de los apoyos y de los gatos.\r\n\r\nCaracterísticas:\r\n\r\nEmbalaje especial con temática buscacorazones y revestimiento dorado\r\nIcono de invocador exclusivo\r\nNumeración de serie y estilo\r\nMedidas aproximadas:\r\n\r\nAltura: 12,6 cm\r\nAnchura: 11,5 cm\r\nProfundidad: 10 cm', 'EDICIÓN ESPECIAL', 'lol'),
(7, 'Conjunto de pulseras Lunari y Solari de RockLove', 7, 79.99, 'Acoged con los brazos abiertos la dualidad de la noche y el día con este conjunto de dos pulseras, donde cada una captura la esencia de los Solari y los Lunari. La magia se hace realidad ante la unión de las dos pulseras. El adorno de Luna creciente se une al del Sol, como símbolo del lazo irrompible entre las almas gemelas.\r\n\r\nLa pulsera Lunari cuenta con tres adornos plateados con cristales engarzados sobre un cordón ajustable de algodón en azul marino. Esta pulsera representa el misterio que entraña la Luna, encarnando la elegancia y la resiliencia. Por otro lado, la pulsera Solari cuenta con tres adornos dorados, que resaltan gracias al brillo de los cristales blancos sobre el cordón rojo. Este diseño celestial representa el esplendor del Sol, como símbolo de fuerza y fulgor. A la venta como conjunto, celebrad el amor y las conexiones cósmicas con alguien especial.\r\n\r\nDetalles del producto:\r\n\r\nProducto con licencia oficial de League of Legends\r\nSe vende como conjunto de dos pulseras de cordón ajustable\r\nLos adornos de la Luna y el Sol\r\nLatón de artesanía sin níquel\r\nOro amarillo de 14 quilates con baño de rodio blanco\r\nSirve para muñecas de hasta 21,5 mm de circunferencia\r\nAdornos principales: 25 x 20 mm (13 x 13 mm el adorno magnético)\r\nEl conjunto de pulseras de Solari y Lunari de League of Legends x RockLove se envía en una bolsa de coleccionista de League of Legends™ X RockLove, con un tejido aterciopelado en gris y un estampado iridiscente. Las dos pulseras están aseguradas mediante una tarjeta con un diseño ilustrado y una iconografía metálica serigrafiada.\r\n\r\n©© 2024 Riot Games, Inc. League of Legends™ y Riot Games son marcas comerciales, marcas de servicios o marcas registradas de Riot Games, Inc. Todos los derechos reservados.', 'EDICION NORMAL', 'lol'),
(8, 'Peluche de Tibbers amoroso', 8, 31.50, '¿Conoces a Tibbers amoroso?\r\n\r\nAltura: 40,7 cm\r\nAnchura: 25,4 cm\r\nProfundidad: 12,7 cm\r\nFibra de poliéster', 'EDICION NORMAL', 'lol'),
(9, 'Peluche de Ziggs', 9, 31.99, 'Ziggs, a quien invitaron a la Academia Yordle de Piltover para que hiciera gala de su destreza, y su característica indiferencia por la seguridad dejaron un enorme agujero en uno de los laterales de la Academia durante la exhibición de sus inventos.\r\n\r\nLa Academia, como castigo por destruir su propiedad, transformó a Ziggs temporalmente en un adorable y mullidito peluche. Sin embargo, ¡ni los eruditos de la Academia tienen muy claro cuánto tiempo logrará esta nueva forma contener la energía hexplosiva de Ziggs!\r\n\r\nMedidas aproximadas:\r\n\r\nAltura: 14,5 cm.\r\nAnchura: 18,5 cm.', 'EDICION NORMAL', 'lol'),
(10, 'Figura de Teemo PureArts a escala 1/4', 10, 529.99, '¡Capitán Teemo de servicio!\r\n\r\nDesde el borde de un acantilado, ¡Teemo explora el mundo con infinito entusiasmo en esta extravagante figura a escala 1/4!\r\n\r\nCon su cerbatana de dardos venenosos en una mano y un telescopio con el que busca nuevas aventuras en la otra, el Explorador Veloz está armado y listo para todo. Teemo, tan travieso como animado, nunca se aleja demasiado de sus setas venenosas y tampoco ha olvidado meter una buena selección de mapas en su mochila.\r\n\r\nCon sus icónicos casco y gafas, ¡de la figura a escala 1/4 de Teemo creada por Purearts emana el poder del Código de los Exploradores de Bandle!\r\n\r\nDetalles del producto:\r\n\r\nEscala: 1/4.\r\nMaterial: polirresina.\r\nCreada en colaboración con PureArts.', 'EDICIÓN LIMITADA', 'lol'),
(11, 'Figura de Samira Unlocked', 11, 79.99, '\"¿Queríais estilo? Pues aquí la tenéis\".\r\n\r\nSamira, nacida en el seno de una familia desterrada de Shurima, recibió la invitación a unirse a un escuadrón noxiano, y el resto ya es historia.\r\n\r\nEntre tiroteos a muerte y asombrosos duelos a espada, Samira se sentía como pez en el agua siguiendo las costumbres noxianas, y entretenía a su familia contando las hazañas que representaban cada uno de sus tatuajes.\r\n\r\nYa sea vencer a un barón químico en un combate mano a mano o sobrevivir sola a un asalto en Aguas Estancadas, Samira siempre acaba su labor, por difícil que pinte.\r\n\r\nSamira, la Rosa del Desierto, ya es la #35 de la serie Unlocked.\r\n\r\nMedidas aproximadas:\r\n\r\nAltura: 24 cm\r\nAnchura: 14,5 cm\r\nProfundidad: 24,5 cm', 'EDICION NORMAL', 'lol'),
(12, 'Figura de Morgana Unlocked', 12, 79.50, 'Solo aquellos a los que amamos pueden rompernos el corazón.\r\n\r\nDividida entre el reino celestial y el mortal, Morgana decide luchar por la verdad del lado de los mortales contra un enemigo increíblemente poderoso, su divina hermana gemela, Kayle.\r\n\r\nAl contrario de lo que pueda parecer, Morgana no es en absoluto la gemela \"malvada\": defiende la compasión frente a la justicia imparcial, y se entrega a las emociones que solo los mortales son capaces de experimentar para potenciar su dolor y castigar a los corruptos y deshonestos.\r\n\r\nAhora Morgana se ha convertido en la figura Unlocked número 26.', 'EDICION NORMAL', 'lol'),
(13, 'Peluche de Dragón anciano', 13, 29.00, 'Llega volando el señor de los cielos como el dragón más suave de toda Runaterra.\r\n\r\nMedidas aproximadas:\r\n\r\nAltura: 19,8 cm\r\nAnchura: 12,2 cm\r\nProfundidad: 12,7 cm', 'EDICION NORMAL', 'lol'),
(14, 'Peluche del Barón Nashor', 14, 31.99, 'Ha tardado un poco más de 20 minutos en aparecer, ¡pero por fin llega Barón Nashor en forma de un adorable peluche! Al contrario que su colega de la Grieta, podéis llevaros vuestro peluche del Barón Nashor allá donde os lleve la aventura. Además, ¡otorgará una gran mejora a vuestra colección de peluches!\r\n\r\n¡Llevaos a Barón Nashor a casa antes de que alguien os lo robe del carrito!', 'EDICION NORMAL', 'lol'),
(15, 'Nunu y Willump Unlocked XL', 15, 137.99, 'Había una vez un niño que quería acabar con un temible monstruo para demostrar que era un héroe; pero que terminó descubriendo que la bestia, un yeti solitario y mágico, solo necesitaba un amigo.\r\n\r\nAhora, Nunu y Willump, unidos por un poder ancestral y por compartir el amor hacia las bolas de nieve, deambulan por todo Freljord en busca de aventuras.\r\n\r\nEsta es nuestra estatua Unlocked más grande hasta la fecha (¡33 cm de altura!), que representan con todo lujo de detalles a nuestro dúo dinámico de Freljord, desde el gorrito de Nunu hasta el pelaje de yeti de Willump.\r\n\r\nNunu y Willump, un Niño y su Yeti, se han convertido en la figura Unlocked número 33.\r\n\r\nMedidas aproximadas:\r\n\r\nAltura: 33,3 cm\r\nAnchura: 30,5 cm\r\nProfundidad: 25,4 cm\r\n¿Os habéis quedado con ganas de más diversión freljordiana? ¡Disfrutad de la aventura de Nunu y Willump de primera mano con nuestro juego de aventuras, Song of Nunu, ya disponible!', 'EDICION NORMAL', 'lol'),
(16, 'Edición de coleccionista de Song of Nunu: A League of Legends Story', 16, 99.99, '¡La amistad es una magia especial!\r\n\r\nSong of Nunu: A League of Legends Story™ es una aventura para un jugador desarrollada por Tequila Works. Acompañad a los mejores amigos Nunu y Willump en una aventura por los paisajes helados de Freljord. Unidos por su imaginación sin fin y su amor por las peleas de bolas de nieve, ambos tendrán que ayudarse mutuamente para descubrir la magia que se oculta bajo el hielo.\r\n\r\nLa edición coleccionista de Song of Nunu: A League of Legends Story™ incluye:\r\n\r\nUn código de juego digital para Song of Nunu: A League of Legends Story™*\r\nCaja de edición de coleccionista\r\nLibro de ilustraciones exclusivo\r\nPeluche de Willump exclusivo\r\nPeluche de poro exclusivo\r\nDiorama expandible\r\n5 pines esmaltados coleccionables\r\n1 ilustración coleccionable en blanco y negro\r\n4 postales de Freljord en papel metalizado\r\n* El código de juego para Song of Nunu: A League of Legends Story™ será enviado por correo electrónico el día del lanzamiento y no será reembolsable, a excepción de las ediciones de PlayStation 4/5, Xbox Series X|S y Xbox One. Para completar vuestra experiencia en PlayStation 4/5, Xbox Series X|S y Xbox One, deberéis comprar el juego por separado.\r\n\r\nLa edición coleccionista de Song of Nunu: A League of Legends Story™ se venderá de forma exclusiva en la tienda de Riot Merch. Las existencias son muy limitadas.\r\n\r\n¡Los pedidos de la edición de coleccionista también recibirán de forma gratuita un gorro de peluche de Nunu de edición limitada hasta fin de existencias!\r\n\r\nLa aventura os espera en Song of Nunu: A League of Legends Story™.\r\n\r\n', 'EDICION LIMITADA', 'lol');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
