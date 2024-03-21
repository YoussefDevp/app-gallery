-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2024 at 02:20 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gallery-art`
--

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `image`, `category`) VALUES
(1, 'http://127.0.0.1:5500/FrontEnd/img/home/01.png', 'home'),
(2, 'http://127.0.0.1:5500/FrontEnd/img/home/02.png', 'home'),
(3, 'http://127.0.0.1:5500/FrontEnd/img/home/03.png', 'home'),
(4, 'http://127.0.0.1:5500/FrontEnd/img/home/04.png', 'home'),
(5, 'http://127.0.0.1:5500/FrontEnd/img/blog/01.png', 'blog'),
(6, 'http://127.0.0.1:5500/FrontEnd/img/blog/02.png', 'blog'),
(7, 'http://127.0.0.1:5500/FrontEnd/img/blog/03.png', 'blog');

-- --------------------------------------------------------

--
-- Table structure for table `paragraph`
--

CREATE TABLE `paragraph` (
  `id` int(11) NOT NULL,
  `paragraph` text NOT NULL,
  `category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `paragraph`
--

INSERT INTO `paragraph` (`id`, `paragraph`, `category`) VALUES
(1, 'En nuestro espacio, celebramos la diversidad y la belleza del arte contemporáneo, ofreciendo una experiencia única para los amantes del arte y los coleccionistas por igual. Con una cuidadosa curaduría y una selección de obras de artistas emergentes y establecidos, nuestra galería es un lugar donde la creatividad florece y la inspiración se encuentra en cada rincón.', 'home'),
(2, 'Desde pinturas vibrantes hasta esculturas intrigantes, cada obra expuesta cuenta una historia única y evoca emociones profundas en aquellos que la contempla. Nos enorgullece presentar una amplia gama de estilos, técnicas y medios, garantizando que haya algo para cada gusto y preferencia artística.', 'home'),
(3, 'Nuestro compromiso va más allá de simplemente exhibir arte; nos esforzamos por crear un ambiente acogedor y enriquecedor donde los visitantes puedan explorar, aprender y conectarse con el arte de una manera significativa. Organizamos eventos, charlas y talleres que fomentan la interacción entre artistas, coleccionistas y el público en general, creando así una comunidad vibrante en torno al arte.', 'home'),
(4, 'Ya sea que seas un apasionado del arte en busca de tu próxima adquisición o simplemente estés buscando una experiencia cultural única, te invitamos a explorar nuestra galería y sumergirte en el maravilloso mundo del arte contemporáneo. ¡Esperamos verte pronto en nuestra galería de arte!', 'home'),
(5, 'En la intersección entre lo efímero y lo etéreo, la Galería de Arte Contemporáneo se convierte en un santuario para los amantes de los felinos con su última exposición: \"Gatos de Plástico\". En un mundo donde lo digital y lo tangible a menudo colisionan, esta exposición ofrece una mirada única a través de los ojos de los artistas contemporáneos que se inspiran en la figura misteriosa y cautivadora de los gatos.\r\n\r\nAl adentrarse en la galería, los visitantes son recibidos por una diversidad de formas, colores y tamaños que componen la población felina plástica. Desde pequeñas miniaturas hasta esculturas monumentales, cada pieza respira vida y personalidad propia. Los artistas han capturado la esencia de estos animales, desde su elegancia hasta su astucia, en una variedad de medios que van desde el plástico reciclado hasta el polímero moldeado con precisión.\r\n\r\nUna de las obras destacadas es \"El Baile de los Gatos\", una instalación inmersiva que transporta a los espectadores a un mundo onírico donde los gatos bailan entre luces fluorescentes y sombras danzantes. La interacción entre la luz y el plástico crea una atmósfera mágica que invita a la reflexión sobre la relación entre lo real y lo imaginario.\r\n\r\nOtra pieza que no pasa desapercibida es \"La Familia Felina\", una serie de esculturas que retratan la diversidad de las relaciones intergeneracionales entre los gatos. Desde la ternura de una madre acunando a su cría hasta la complicidad entre hermanos juguetones, estas esculturas transmiten una gama de emociones universales que resuenan con el espectador.\r\n\r\nMás allá de ser simplemente una exposición de arte, \"Gatos de Plástico\" invita a los espectadores a reflexionar sobre nuestra conexión con los animales y el medio ambiente. Al utilizar materiales reciclados y explorar temas como la sostenibilidad y la conservación, los artistas nos recuerdan la importancia de preservar la belleza y la diversidad del mundo natural.\r\n\r\nEn última instancia, \"Gatos de Plástico\" es mucho más que una simple colección de obras de arte. Es un recordatorio de la capacidad del arte para inspirar, provocar y conectar a través de fronteras y barreras, todo mientras celebra la belleza y el misterio de nuestros amigos felinos de plástico.', 'blog'),
(6, 'La Galería de Arte Metropolitano está a punto de albergar una de las exposiciones más esperadas del año: una retrospectiva completa del renombrado artista contemporáneo KAWS. Esta exposición única no solo rinde homenaje a las contribuciones pasadas del artista, sino que también ilumina su impacto en el presente y su prometedor futuro en el mundo del arte.\r\n\r\nIngresar a la galería es como sumergirse en un universo alternativo donde los personajes icónicos de KAWS cobran vida en una sinfonía de colores, formas y texturas. Desde sus primeras incursiones en el graffiti hasta sus esculturas monumentales más recientes, cada pieza revela la evolución creativa de un artista cuya obra ha dejado una marca indeleble en la cultura contemporánea.\r\n\r\nLa sección dedicada al pasado de KAWS ofrece una visión íntima de sus raíces en la escena del street art de los años 90 en Nueva York. Sus primeros grafitis y obras de arte callejero son testigos de su habilidad para fusionar elementos de la cultura popular con una estética distintiva y una crítica social sutil pero poderosa.\r\n\r\nA medida que los visitantes avanzan por la galería, son transportados al presente de KAWS, donde su influencia se extiende mucho más allá de las calles de la Gran Manzana. Sus colaboraciones con marcas de renombre mundial, así como sus incursiones en el diseño de juguetes y la moda, demuestran su capacidad para trascender las fronteras del arte convencional y llegar a un público global.\r\n\r\nSin embargo, lo más emocionante de la exposición es la sección dedicada al futuro de KAWS. Aquí, los visitantes tienen la oportunidad de explorar sus últimas obras maestras, que desafían las convenciones artísticas y exploran nuevas fronteras creativas. Desde instalaciones interactivas hasta experimentos con realidad aumentada, estas obras reflejan la continua evolución de un artista que se niega a conformarse con el status quo.\r\n\r\nAl final del recorrido, los visitantes emergen con una apreciación renovada por el legado de KAWS y una anticipación palpable por lo que el futuro le depara a este visionario del arte contemporáneo. Esta exposición no solo celebra la carrera de un artista excepcional, sino que también nos desafía a reflexionar sobre el papel del arte en la sociedad moderna y el poder transformador de la creatividad en todas sus formas.', 'blog'),
(7, 'En un cruce innovador entre la cultura del calzado urbano y la tecnología emergente, la Galería de Arte Urbano Contemporáneo presenta una exposición sin precedentes: \"Sneakers y NFTs\". Esta fascinante muestra lleva a los visitantes a un viaje donde la moda, el arte y la tecnología convergen en una experiencia única e inmersiva.\r\n\r\nAl ingresar a la galería, los asistentes son recibidos por una colección deslumbrante de zapatillas de deporte que van desde las icónicas hasta las más vanguardistas. Cada par de sneakers exhibidos cuenta con una historia propia, desde colaboraciones exclusivas con diseñadores de renombre hasta modelos vintage que han dejado una huella indeleble en la cultura del streetwear.\r\n\r\nSin embargo, lo que hace que esta exposición sea verdaderamente única es la introducción de NFTs (Tokens No Fungibles) en el mundo del calzado. Distribuidos estratégicamente entre las vitrinas de sneakers se encuentran pantallas interactivas que muestran versiones digitales únicas de algunos de los modelos más codiciados. Estos NFTs no solo capturan la esencia estilística de los sneakers, sino que también ofrecen a los coleccionistas la oportunidad de poseer una versión digital autenticada de su calzado favorito.\r\n\r\nAdemás de la exhibición física, la galería también alberga una serie de instalaciones de realidad virtual donde los visitantes pueden explorar el diseño y la historia detrás de algunos de los sneakers más emblemáticos. Desde los primeros modelos de las décadas de 1980 y 1990 hasta las colaboraciones más recientes con artistas contemporáneos, esta experiencia virtual sumerge a los espectadores en un mundo donde la moda se convierte en arte digital.\r\n\r\nLa exposición \"Sneakers y NFTs\" no solo celebra la creatividad y la innovación en el mundo del calzado urbano, sino que también plantea preguntas fascinantes sobre el futuro de la moda y el arte en la era digital. ¿Podría esta fusión de sneakers y NFTs cambiar la forma en que coleccionamos y apreciamos el calzado? ¿Qué significa realmente poseer una versión digital de un objeto físico?\r\n\r\nEn última instancia, esta exposición desafía a los espectadores a repensar la intersección entre la moda, el arte y la tecnología, y nos recuerda que la creatividad no tiene límites cuando se trata de expresar nuestra identidad en un mundo cada vez más digitalizado.', 'blog');

-- --------------------------------------------------------

--
-- Table structure for table `title`
--

CREATE TABLE `title` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `title`
--

INSERT INTO `title` (`id`, `title`, `category`) VALUES
(1, '¡Bienvenido a nuestra galería de arte!', 'home'),
(2, 'Explorando la Fascinante Dimensión Felina: Gatos de Plástico en la Galería de Arte', 'blog'),
(3, 'Explorando el Legado y la Vanguardia: La Exposición de KAWS en la Galería de Arte', 'blog'),
(4, 'Cuando el Arte se Une al Calzado: Explorando la Fusión de Sneakers y NFTs en una Exposición Única', 'blog');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paragraph`
--
ALTER TABLE `paragraph`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title`
--
ALTER TABLE `title`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `paragraph`
--
ALTER TABLE `paragraph`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `title`
--
ALTER TABLE `title`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
