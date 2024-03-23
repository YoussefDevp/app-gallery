-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2024 at 03:49 AM
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
(7, 'http://127.0.0.1:5500/FrontEnd/img/blog/03.png', 'blog'),
(8, 'http://127.0.0.1:5500/FrontEnd/img/expo/01.png', 'expo'),
(9, 'http://127.0.0.1:5500/FrontEnd/img/expo/02.png', 'expo'),
(10, 'http://127.0.0.1:5500/FrontEnd/img/expo/03.png', 'expo'),
(11, 'http://127.0.0.1:5500/FrontEnd/img/expo/04.png', 'expo'),
(12, 'http://127.0.0.1:5500/FrontEnd/img/expo/05.png', 'expo'),
(13, 'http://127.0.0.1:5500/FrontEnd/img/expo/06.png', 'expo'),
(14, 'http://127.0.0.1:5500/FrontEnd/img/expo/07.png', 'expo'),
(15, 'http://127.0.0.1:5500/FrontEnd/img/expo/08.png', 'expo'),
(16, 'http://127.0.0.1:5500/FrontEnd/img/expo/09.png', 'expo'),
(17, 'http://127.0.0.1:5500/FrontEnd/img/expo/10.png', 'expo'),
(18, 'http://127.0.0.1:5500/FrontEnd/img/galeria/01.png', 'galeria'),
(19, 'http://127.0.0.1:5500/FrontEnd/img/galeria/02.png', 'galeria'),
(20, 'http://127.0.0.1:5500/FrontEnd/img/galeria/03.png', 'galeria'),
(21, 'http://127.0.0.1:5500/FrontEnd/img/galeria/04.png', 'galeria'),
(22, 'http://127.0.0.1:5500/FrontEnd/img/galeria/05.png', 'galeria'),
(23, 'http://127.0.0.1:5500/FrontEnd/img/galeria/06.png', 'galeria'),
(24, 'http://127.0.0.1:5500/FrontEnd/img/en-venta/01.png', 'venta'),
(25, 'http://127.0.0.1:5500/FrontEnd/img/en-venta/02.png', 'venta'),
(26, 'http://127.0.0.1:5500/FrontEnd/img/en-venta/03.png', 'venta'),
(27, 'http://127.0.0.1:5500/FrontEnd/img/en-venta/04.png', 'venta'),
(28, 'http://127.0.0.1:5500/FrontEnd/img/en-venta/05.png', 'venta'),
(29, 'http://127.0.0.1:5500/FrontEnd/img/en-venta/06.png', 'venta'),
(30, 'http://127.0.0.1:5500/FrontEnd/img/en-venta/07.png', 'venta'),
(31, 'http://127.0.0.1:5500/FrontEnd/img/equipo/01.png', 'equipo'),
(32, 'http://127.0.0.1:5500/FrontEnd/img/equipo/02.png', 'equipo'),
(33, 'http://127.0.0.1:5500/FrontEnd/img/equipo/03.png', 'equipo'),
(34, 'http://127.0.0.1:5500/FrontEnd/img/artistas/01.png', 'artistas'),
(35, 'http://127.0.0.1:5500/FrontEnd/img/artistas/02.png', 'artistas'),
(36, 'http://127.0.0.1:5500/FrontEnd/img/artistas/03.png', 'artistas'),
(37, 'http://127.0.0.1:5500/FrontEnd/img/artistas/04.png', 'artistas'),
(38, 'http://127.0.0.1:5500/FrontEnd/img/artistas/05.png', 'artistas'),
(39, 'http://127.0.0.1:5500/FrontEnd/img/artistas/06.png', 'artistas'),
(40, 'http://127.0.0.1:5500/FrontEnd/img/artistas/07.png', 'artistas'),
(41, 'http://127.0.0.1:5500/FrontEnd/img/artistas/08.png', 'artistas'),
(42, 'http://127.0.0.1:5500/FrontEnd/img/premios/01.png', 'premios'),
(43, 'http://127.0.0.1:5500/FrontEnd/img/premios/02.png', 'premios'),
(44, 'http://127.0.0.1:5500/FrontEnd/img/premios/03.png', 'premios');

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
(7, 'En un cruce innovador entre la cultura del calzado urbano y la tecnología emergente, la Galería de Arte Urbano Contemporáneo presenta una exposición sin precedentes: \"Sneakers y NFTs\". Esta fascinante muestra lleva a los visitantes a un viaje donde la moda, el arte y la tecnología convergen en una experiencia única e inmersiva.\r\n\r\nAl ingresar a la galería, los asistentes son recibidos por una colección deslumbrante de zapatillas de deporte que van desde las icónicas hasta las más vanguardistas. Cada par de sneakers exhibidos cuenta con una historia propia, desde colaboraciones exclusivas con diseñadores de renombre hasta modelos vintage que han dejado una huella indeleble en la cultura del streetwear.\r\n\r\nSin embargo, lo que hace que esta exposición sea verdaderamente única es la introducción de NFTs (Tokens No Fungibles) en el mundo del calzado. Distribuidos estratégicamente entre las vitrinas de sneakers se encuentran pantallas interactivas que muestran versiones digitales únicas de algunos de los modelos más codiciados. Estos NFTs no solo capturan la esencia estilística de los sneakers, sino que también ofrecen a los coleccionistas la oportunidad de poseer una versión digital autenticada de su calzado favorito.\r\n\r\nAdemás de la exhibición física, la galería también alberga una serie de instalaciones de realidad virtual donde los visitantes pueden explorar el diseño y la historia detrás de algunos de los sneakers más emblemáticos. Desde los primeros modelos de las décadas de 1980 y 1990 hasta las colaboraciones más recientes con artistas contemporáneos, esta experiencia virtual sumerge a los espectadores en un mundo donde la moda se convierte en arte digital.\r\n\r\nLa exposición \"Sneakers y NFTs\" no solo celebra la creatividad y la innovación en el mundo del calzado urbano, sino que también plantea preguntas fascinantes sobre el futuro de la moda y el arte en la era digital. ¿Podría esta fusión de sneakers y NFTs cambiar la forma en que coleccionamos y apreciamos el calzado? ¿Qué significa realmente poseer una versión digital de un objeto físico?\r\n\r\nEn última instancia, esta exposición desafía a los espectadores a repensar la intersección entre la moda, el arte y la tecnología, y nos recuerda que la creatividad no tiene límites cuando se trata de expresar nuestra identidad en un mundo cada vez más digitalizado.', 'blog'),
(8, 'En esta sección, presentamos una cuidadosa selección de obras de arte disponibles para adquirir. Sin embargo, debido a la naturaleza única de cada obra y las variaciones en los precios, te invitamos cordialmente a ponerte en contacto con nuestra galería para obtener información detallada sobre disponibilidad y precios.', 'venta'),
(9, 'Nuestro equipo estará encantado de proporcionarte asistencia personalizada y responder a todas tus preguntas. ¡No dudes en comunicarte con nosotros para descubrir cómo puedes llevar a casa una obra de arte que te inspire!', 'venta'),
(10, 'En nuestra galería de arte, contamos con un equipo apasionado y comprometido que se dedica a ofrecerte la mejor experiencia artística posible. Conformado por dos talentosas mujeres y un creativo hombre, nuestro equipo combina una amplia experiencia en el mundo del arte, una pasión compartida por la creatividad y un profundo compromiso con nuestros visitantes y artistas representados. Estamos aquí para guiarte, inspirarte y ayudarte en cada paso del camino mientras exploras nuestra colección y participas en nuestras emocionantes actividades y eventos. ¡Conoce más sobre nuestro equipo y únete a nosotros en nuestra apasionante travesía artística!', 'equipo'),
(11, 'En nuestra galería de arte, nos enorgullece contar con un equipo de artistas excepcionales que colaboran de forma permanente con nosotros para crear una experiencia artística única y cautivadora. Cada uno de estos talentosos individuos aporta su propia visión, estilo y habilidades distintivas a nuestra colección, enriqueciendo nuestro espacio con una variedad de expresiones artísticas.\r\n', 'artistas'),
(12, 'Desde pinturas vibrantes hasta esculturas innovadoras, nuestro equipo de artistas abarca una amplia gama de estilos y medios, garantizando que haya algo para todos los gustos y preferencias artísticas. Su dedicación a su oficio y su pasión por el arte se reflejan en cada obra que producen, creando un ambiente en nuestra galería que inspira, emociona y desafía a nuestros visitantes.', 'artistas'),
(13, 'Estamos comprometidos a brindar una plataforma sólida y un apoyo continuo a nuestros artistas, permitiéndoles explorar nuevas ideas, experimentar con diferentes técnicas y alcanzar nuevas alturas en su práctica artística. Su creatividad y talento son fundamentales para nuestra misión de ofrecer una experiencia artística excepcional a nuestros visitantes y coleccionistas.', 'artistas'),
(14, 'Nos sentimos honrados de colaborar con estos artistas increíbles y estamos emocionados de compartir su trabajo con el mundo. Te invitamos a explorar nuestra colección y descubrir las emocionantes obras que nuestro equipo de artistas tiene para ofrecer. ¡Únete a nosotros en este viaje artístico y sumérgete en el maravilloso mundo del arte contemporáneo!', 'artistas'),
(15, 'En nuestra galería de arte, nos enorgullece compartir los logros y reconocimientos que hemos obtenido a lo largo de nuestra historia. A través de nuestro compromiso con la excelencia y la innovación en el mundo del arte, hemos sido honrados con diversos premios y distinciones que destacan nuestro impacto en la comunidad artística y cultural.', 'premios'),
(16, 'Entre nuestros logros más destacados se incluyen premios como el \"Premio a la Excelencia en la Curaduría\" y el \"Premio a la Mejor Galería de Arte Contemporáneo\". Estos reconocimientos reflejan nuestro compromiso con la presentación de exposiciones de alta calidad y el apoyo a artistas emergentes y establecidos.', 'premios'),
(17, 'Además, hemos sido honrados con el \"Premio al Compromiso con la Diversidad Artística\" por nuestra dedicación a la promoción de la diversidad en el arte y la inclusión de voces diversas en nuestras exhibiciones y programas.', 'premios'),
(18, 'Estos premios no solo son un testimonio de nuestro arduo trabajo y dedicación, sino también un estímulo para seguir adelante y continuar elevando los estándares en el mundo del arte contemporáneo.\r\n', 'premios'),
(19, 'Nos sentimos agradecidos por el apoyo d e nuestra comunidad artística y cultural, y nos comprometemos a seguir adelante con nuestra misión de inspirar, educar y enriquecer la experiencia artística para todos. Juntos, esperamos seguir cosechando éxitos y celebrando el arte en todas sus formas.', 'premios');

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
(4, 'Cuando el Arte se Une al Calzado: Explorando la Fusión de Sneakers y NFTs en una Exposición Única', 'blog'),
(5, '¡Bienvenido a nuestra sección de ventas!\r\n', 'venta'),
(6, '¡Conoce a nuestra equipo!', 'equipo');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `paragraph`
--
ALTER TABLE `paragraph`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `title`
--
ALTER TABLE `title`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
