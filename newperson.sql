-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 16-09-2020 a las 05:58:53
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `personal`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id_articulo` int(11) NOT NULL,
  `imagen_arti` varchar(100) NOT NULL,
  `titulo_arti` varchar(50) NOT NULL,
  `descripcion_arti` text NOT NULL,
  `enlace_arti` varchar(40) NOT NULL,
  `categoria` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id_articulo`, `imagen_arti`, `titulo_arti`, `descripcion_arti`, `enlace_arti`, `categoria`) VALUES
(1, 'nube.webp', 'Antes y despues de la Nube', 'Recordemos unas 2 décadas atrás cuando toda la información se almacenaba en el ordenador. Si trabajabas con un archivo Word desde tu lugar de trabajo ese elemento solo podía permanecer ahí. Ahora si querías que el ordenador de tu casa también tenga esos archivos tendrías que copiarlos con dispositivos de almacenamiento como son los pendrive o diskette, algo que era muy molestoso.', 'la-nube', 'General'),
(2, 'responsive-web.webp', 'Adapta tu estructura a cualquier pantalla', 'Uno de los objetivos de los desarrolladores web es que su diseño pueda tener una buena apariencia en cualquier tamaño de pantalla, en cualquier resolución, en cualquier dispositivo. Quizás te preguntes ¿Se crear un diseño diferente para cada dispositivo o pantalla?', 'responsive-desing', 'Frontend'),
(3, 'sass-1.webp', 'Sass - Programa y diseña a la vez', 'Te imaginas escribir el código CSS de un proyecto entero que toma días en escribir, probar e implementar, ¿Qué pasaría si después de algún tiempo decides cambiar los colores de todo los botones? De seguro tendrás que ir de botón en botón cambiando esa propiedad.', 'sass-preprocesador', 'Frontend'),
(4, 'primer-lenguaje.webp', 'Tu primer lenguaje de programación', 'De seguro te han dicho que el lenguaje de programación que debes aprender primero es c o c++ incluso Java, ya que estos son los padres de la programación por así decirlo y creen que dominando esto lenguajes el resto será sencillo. En ciertas situaciones es correcta pero no precisamente debes empezar con estos lenguajes.', 'primer-lenguaje', 'General'),
(5, 'reglas-contra-hacker.webp', '¿Cómo protegerse de los hackers?', 'Existen maneras de proteger tu información de estas personas llamadas hackers, aunque no todos tienen la mentalidad de hacer el MAL, existe una gran parte de hackers que prefieren ayudar a la comunidad. Aun así, veamos algunas reglas para estar seguros.', 'proteccion-hacker', 'Seguridad'),
(6, 'sitios-web.webp', 'Sitios y aplicaciones web, ¿Cómo se crean?', 'Los sitios o aplicaciones web se dividen en 2 partes. La parte que se visualiza y la parte que no se visualiza, los desarrolladores lo conocen como Frontend y Backend. El Frontend utiliza tecnologías como HTML, CSS y JAVASCRIPT (JS - es un lenguaje programación).', 'sitios-we', 'Desarrollo Web'),
(7, 'internet.webp', '¿Cuál es el Proceso de peticiones por internet?', 'En nuestra vida cotidiana se ha vuelto normal consultar cosas o solicitar información en internet pero ¿Sabes cuál es el proceso que ejecuta internet para mostrarte los resultados?', 'el-internet', 'General'),
(8, 'linux-importante.webp', 'Linux ¿Lo conoces?, pues deberías', 'Aunque no es muy conocido por los usuarios comunes, Linux es un kernel o también conocido como SOS que está presente en muchos dispositivos y es de los más usados en los servidores.', 'ventajas-de-linux', 'Backend'),
(9, 'php-importancia.webp', 'PHP - ¿Que es?', 'Php es un lenguaje de programación y fue uno de los primeros creados para realizar sitios dinámicos, aunque es amado por unos y odiado por otros debido a su indisciplina en codificación obteniendo como resultado un código “Espagueti” algo que es muy complejo de entender.', 'ventajas-de-php', 'Backend'),
(10, 'metodos-hackers.webp', 'Métodos que utilizan los hackers', 'La mayoría de las personas creen que los hackers son magos, debido a que obtiene información que se suponía imposible de obtener, pero la realidad es que estos hackers tienen un conocimiento muy amplio en lo que es la “seguridad informática” y conocen métodos de ataque para obtener información.', 'metodos-de-hacker', 'Seguridad'),
(11, 'bits-bytes.webp', 'Bits y Bytes, estan en todas partes', 'Bit es la unidad mínima de información en informática. Nuestro entorno digital se basa en bit es decir (0 – 1) ceros y unos, todo esto tiene que ver gracias a la electricidad que contiene nuestros dispositivos informáticos.', 'bits-bytes', 'General'),
(12, 'https.webp', 'Protocolo Https y Http, son iguales?', 'HTTP no suele ser seguro que quiero decir: por ejemplo, si envías datos confidenciales, personales, privados viajan al servidor tal como lo especificaste no contiene ningún tipo de seguridad, o encriptación lo cual es muy malo si se trata de un sitio de compras donde tienes que utilizar la tarjeta de crédito, o si te registras con tus datos en algún formulario', 'http-y-https', 'General'),
(13, 'habilidades.webp', 'Como puedo mejorar mis habilidades de desarrollo?', 'Te ha sucedido que tienes el entusiasmo, las ganas, los motivos necesarios para aprender algo, pero con pasar el tiempo esa motivación va disminuyendo. déjame decirte que no eres el único a quien le sucede esto pues es muy común, pero tienes que saber cómo sobrellevarlo', 'mis-habilidades', 'General'),
(14, 'base-de-dato-1.webp', 'la base de datos más popular, ¿Por qué?', 'Te has preguntado alguna vez donde se almacena la información de los usuarios ya sea que estés utilizando una aplicación o en un sitio de internet, esto es gracias a las bases de datos donde se guardan grandes cantidades de información', 'mysql', 'Backend');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id_contacto` int(11) NOT NULL,
  `nombres` varchar(40) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `asunto` varchar(30) NOT NULL,
  `mensaje` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia`
--

CREATE TABLE `experiencia` (
  `id_experiencia` int(11) NOT NULL,
  `titulo_ex` varchar(50) NOT NULL,
  `descripcion_ex` text NOT NULL,
  `fecha_ex` varchar(20) NOT NULL,
  `imagen_ex` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `experiencia`
--

INSERT INTO `experiencia` (`id_experiencia`, `titulo_ex`, `descripcion_ex`, `fecha_ex`, `imagen_ex`) VALUES
(1, 'Congreso de tecnología ( Atsa ) 2019', 'Cada año el ISTB (Instituto Superior Tecnológico Babahoyo) realiza un evento donde invitan: Desarrolladores, ING en sistemas, diseñadores, producción audio visual y más. Los estudiantes también pueden participar con un tema que solucione un problema. Mi tema se trataba de elaborar un semáforo electrónico a base de (Arduino uno) y que sea portable a cualquier lugar o circunstancias y más que todo barato en su construcción.', '2019-09-21', 'atsa.jpg'),
(2, 'Como crear ciudades inteligentes, IOT?', 'En la capital del Ecuador (Quito) se dio a cabo en evento donde ING y especialistas en las áreas, fueron invitados para dar charla y a conocer sus propuestas de cómo crear ciudades inteligentes gracias al internet de las cosas o conocido como: (IOT)', '2020-03-19', 'telecomunicaciones.jpg'),
(3, 'Aplicación móvil para niños con discapacidades', 'El ISTB apoyo con la donación de 10 tabletas con teclados a niños con discapacidades, haciendo que su aprendizaje sea mucho más rápido mediante juego interactivos ya sea con audio o visual. Los beneficios fueron para una escuela pública ubicada en el \"Cantón BABA\" llamada \"El Sol sale para todos\"', '2020-02-10', 'vinculo.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `id_proyecto` int(11) NOT NULL,
  `imagen_proy` varchar(50) NOT NULL,
  `titulo_proy` varchar(50) NOT NULL,
  `descripcion_proy` text NOT NULL,
  `enlace_pry` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proyecto`
--

INSERT INTO `proyecto` (`id_proyecto`, `imagen_proy`, `titulo_proy`, `descripcion_proy`, `enlace_pry`) VALUES
(1, 'web-tech.png', 'VideoBloger Personal en Tech Web', 'Web-Tech es un sitio creado para compartir conocimientos de tecnologías web ya sea mediante vídeo y publicaciones (POST)', 'http://andres-coello.onlinewebshop.net/index.php'),
(2, 's-s-php.png', 'Social Students', 'Social Students la plataforma de educación sobre la industria de la tecnología, en particular tiene contenidos de instituciones tecnológicas.', 'https://github.com/GandresCoello18/social-students-and-php'),
(3, 's-s-react.png', 'Notice Andres Coello', 'App para compartir deberes, trabajos y código de desarrollo de software del ISTB y consume las noticias más recientes de una API google new.', 'https://notice-andres-coello.goyeselcoca.now.sh/'),
(4, 'personal-antiguo.webp', 'Antiguo Sitio Web Personal', 'Mi sitio web donde muestro quien soy, a que me dedico, mis habilidades, muestro mis post de desarrollo, mis proyectos personales y experiencias, Creado en React js, dando mi primer paso con esta librería.', 'https://andres-coello-goyes.goyeselcoca.now.sh/'),
(5, 'wire-frames.webp', 'Diseño y Prototipo de una App Web', 'Crear la jerarquía de una aplicación web desde el wireframes en papel ah utilizar balsmiq mackoup para representar el grafico más claro y finalmente un prototipo en adobe XD.', 'https://drive.google.com/drive/folders/1oluDuPh9uqgj947RMPoXvVAEUf7w8hvY?usp=drive_open'),
(6, 'la-carreta.webp', 'La Carreta', 'La carreta es un restaurante familiar que brinda platos a la carta como también reservaciones de mesas o para eventos', 'https://la-carreta-next.now.sh/'),
(7, 'necesito_ya.webp', 'Necesito Ya', 'Manejar Next para hacer más sencilla el web site, levantar la app con node js y consumir los datos con Api res construida en php', 'https://github.com/jpmayorga/NecesitoYaPHP'),
(8, 'api-carreta.webp', 'Api Rest de la Carreta', 'Api Rest para la capa de datos y comunicación entre frontend y backend consultando clientes, administradores, platos, registro de eventos...', 'https://api-next-carreta.now.sh/plato'),
(9, 'far.png', 'Farmacia Juanito Version 1', 'Aplicación de escritorio para la administración y ventas de productos farmacéuticos, basado en JavaScript (React y Redux) y TypeScript (MySQL).', 'https://farmacia-juanito.now.sh/'),
(10, 'palabra.jpg', 'Arma la palabra (English)', 'Juego interactivo, encontrar la palabra correcta a partir de la longitud de caracteres, creado con React Native para luego compilar a Java u Object-C', 'https://github.com/GandresCoello18/Arma-la-palabra-English'),
(11, 'far-v2.png', 'Farmacia juanito Version 2', 'Single Page Aplication con redux para la venta y administracion de productos farmaceuticos, agregando un TypeScript para un javascript tipado y MySQL como motor de base de datos haciendo uso de api rest', 'https://farmacia-juanito-response.vercel.app/stock'),
(12, 'wolman.png', 'Wolman | Interfaz grafica', 'Practica de UI ( interfaz grafica de usuario ) wolman es una plataforma para tutoriales sobre tecnologia, desarrollada con NEXT js para el SSR con React y password js para la integracion de inicio de session en diferentes plataformas.', 'https://wolman.now.sh/video'),
(13, 'petgram.png', 'Petgram - social media para mascotas', 'Petgram es una red social de mascotas con categoria, podes seleccionar a tu favorito, desarrollado en React Hooks, JWT, Graphql', 'https://gitlab.com/GandresCoello20/petgram');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reconocimiento`
--

CREATE TABLE `reconocimiento` (
  `id_recon` int(11) NOT NULL,
  `imagen_recon` varchar(150) NOT NULL,
  `titulo_recon` varchar(40) NOT NULL,
  `enlace` varchar(150) NOT NULL,
  `tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reconocimiento`
--

INSERT INTO `reconocimiento` (`id_recon`, `imagen_recon`, `titulo_recon`, `enlace`, `tipo`) VALUES
(1, 'https://static.platzi.com/media/learningpath/golden_badges/8b95de65-f055-4268-8ca5-3582ab7723e2.jpg', 'Desarrollo Backend con Go', 'https://platzi.com/@programandres/ruta/17-backend-go/diploma/detalle/', 'Diploma'),
(2, 'https://static.platzi.com/media/achievements/golden_datos2x.png', 'Bases de Datos desde Cero', 'https://platzi.com/@programandres/ruta/6-base-de-datos/diploma/detalle/', 'Diploma'),
(3, 'https://static.platzi.com/media/learningpath/golden_badges/3b3f6b5b-ac06-4d2c-be9f-58e41f3282e3.jpg', 'Desarrollo Web Backend con PHP', 'https://platzi.com/@programandres/ruta/10-desarrollo-php/diploma/detalle/', 'Diploma'),
(4, 'https://static.platzi.com/media/achievements/Golden-badge-arquitecto-front.png', 'Arquitectura Frontend', 'https://platzi.com/@programandres/ruta/7-arquitecto/diploma/detalle/', 'Diploma'),
(5, 'https://static.platzi.com/media/achievements/golden-badge-carrera-javascript-48750f5a-8298-4d64-a06f-53982113c5e2.png', 'Carrera de JavaScript', 'https://platzi.com/@programandres/ruta/100-escuela-javascript/diploma/detalle/', 'Diploma'),
(6, 'https://static.platzi.com/media/achievements/1222-434ce348-c008-4386-b0fc-edc18b8ec5e7.png', 'Curso Básico de Java SE 2018', 'https://platzi.com/@programandres/curso/1222-java-basico-2018/diploma/detalle/', 'Certificado'),
(7, 'https://static.platzi.com/media/achievements/badge-mongo-db-5f684168-798f-42ad-a17c-2e8f0c40a477.png', 'Curso Básico de MongoDB', 'https://platzi.com/@programandres/curso/1533-mongodb/diploma/detalle/', 'Certificado'),
(8, 'https://static.platzi.com/media/achievements/badge-api-rest-212c45cd-0b2b-4989-90c5-b489c0627de4.png', 'Curso de API REST', 'https://platzi.com/@programandres/curso/1638-api-rest/diploma/detalle/', 'Certificado'),
(9, 'https://static.platzi.com/media/achievements/badge-asincronismo-javascript-3f44d51e-209e-4e47-a228-4142d049525c.png', 'Curso de Asincronismo con JavaScript', 'https://platzi.com/@programandres/curso/1789-asincronismo-js/diploma/detalle/', 'Certificado'),
(10, 'https://static.platzi.com/media/achievements/badge-autenticacion-passport-6d45426a-2b24-4757-8927-7bfaf54529dd.png', 'Curso de Autenticación con Passport.js', 'https://platzi.com/@programandres/curso/1649-passport/diploma/detalle/', 'Certificado'),
(11, 'https://static.platzi.com/media/achievements/1331-cda68a62-24e5-464a-95ca-6e5d339c7244.png', 'Curso de Bootstrap', 'https://platzi.com/@programandres/curso/1331-bootstrap/diploma/detalle/', 'Certificado'),
(12, 'https://static.platzi.com/media/achievements/1139-2394fba7-2a9e-43f4-a140-1b8e35764d8a.png', 'Curso de Deploy con Now.sh', 'https://platzi.com/@programandres/curso/1139-deploy-now/diploma/detalle/', 'Certificado'),
(13, 'https://static.platzi.com/media/achievements/badges-express-43987e06-2d8c-4f0d-89d4-c4aecd2135dd.png', 'Curso de Express.js', 'https://platzi.com/@programandres/curso/1437-express-js/diploma/detalle/', 'Certificado'),
(14, 'https://static.platzi.com/media/achievements/badge-gestion-dependencias-paquetes-npm-f02e4608-c688-4d99-aa6d-293ea6c0be8d.png', 'Curso de Gestión de Dependencias y Paque', 'https://platzi.com/@programandres/curso/1763-npm/diploma/detalle/', 'Certificado'),
(15, 'https://static.platzi.com/media/achievements/badges-terminal-c9ee432b-2598-4e94-88d8-0a30842ef886.png', 'Curso de Introducción a la Terminal y Lí', 'https://platzi.com/@programandres/curso/1748-terminal/diploma/detalle/', 'Certificado'),
(16, 'https://static.platzi.com/media/achievements/1338-af905fe2-6399-4342-a5a7-57a580cae86b.png', 'Curso de Introducción a PHP', 'https://platzi.com/@programandres/curso/1338-php/diploma/detalle/', 'Certificado'),
(17, 'https://static.platzi.com/media/achievements/og-posicionamiento-buscadores-df975616-d821-4e3a-92e0-c68952d322e8.png', 'Curso de SEO: Posicionamiento en Buscado', 'https://platzi.com/@programandres/curso/1622-seo/diploma/detalle/', 'Certificado'),
(18, 'https://static.platzi.com/media/achievements/1357-a959540b-9de5-4dd4-af7b-73adaf44433f.png', 'Curso de JavaScript Testing con Jest', 'https://platzi.com/@programandres/curso/1357-js-jest-2019/diploma/detalle/', 'Certificado'),
(19, 'https://static.platzi.com/media/achievements/1311-3feb09d7-e4a1-4259-a0b9-12c873e1d730.png', 'Curso de Next.js', 'https://platzi.com/@programandres/curso/1311-next-js/diploma/detalle/', 'Certificado'),
(20, 'https://static.platzi.com/media/achievements/badge-node-js-54cb43fe-527e-4315-9472-81021bac36a7.png', 'Curso de Node.js', 'https://platzi.com/@programandres/curso/1689-backend-js/diploma/detalle/', 'Certificado'),
(21, 'https://static.platzi.com/media/achievements/badge-postaman-4d6e9a21-4553-4f0e-8e5d-6592b1151988.png', 'Curso de Postman', 'https://platzi.com/@programandres/curso/1765-postman/diploma/detalle/', 'Certificado'),
(22, 'https://static.platzi.com/media/achievements/badge-react-2018-afc93257-48af-4e54-acaa-4d0433380f64.png', 'Curso de React.js', 'https://platzi.com/@programandres/curso/1548-react/diploma/detalle/', 'Certificado'),
(23, 'https://static.platzi.com/media/achievements/1342-b3aca9a0-32a2-4d6b-ad81-9edf7f982fb5.png', 'Curso de React Router', 'https://platzi.com/@programandres/curso/1342-react-router/diploma/detalle/', 'Certificado'),
(24, 'https://static.platzi.com/media/achievements/badge-redux-d62a60e2-00b8-43aa-97e8-fa0b5d574fcc.png', 'Curso de Redux por Bedu', 'https://platzi.com/@programandres/curso/1613-redux/diploma/detalle/', 'Certificado'),
(25, 'https://static.platzi.com/media/achievements/1244-caa8d210-5abc-4728-b21a-609a23a572a7.png', 'Curso de Sass', 'https://platzi.com/@programandres/curso/1244-sass/diploma/detalle/', 'Certificado'),
(26, 'https://static.platzi.com/media/achievements/1272-15ff4836-0221-4001-b945-5cf34bd65bab.png', 'Curso de SQL y MySQL', 'https://platzi.com/@programandres/curso/1272-sql-mysql/diploma/detalle/', 'Certificado'),
(27, 'https://static.platzi.com/media/achievements/badges-categorias-negocios-emprendimiento-1-90ace212-529a-4741-8a55-6a56d0d48f0f.png', 'Curso de Trabajo Remoto o Teletrabajo', 'https://platzi.com/@programandres/curso/1872-teletrabajo-trabajo-remoto/diploma/detalle/', 'Certificado'),
(28, 'https://static.platzi.com/media/achievements/badge-webpack-e9f63293-1e52-4bd1-90b7-82740c8131a9.png', 'Curso de Webpack', 'https://platzi.com/@programandres/curso/1620-webpack/diploma/detalle/', 'Certificado'),
(29, 'https://static.platzi.com/media/achievements/badge-github-0b729570-934d-47d8-ba6b-610d7f15e0ec.png', '\r\nCurso Profesional de Git y GitHub', 'https://platzi.com/@programandres/curso/1557-git-github/diploma/detalle/', 'Certificado'),
(30, 'https://static.platzi.com/media/achievements/badges-fundamentos-docker-ef085173-492c-4076-b457-78af9155f8c0.png', 'Fundamentos de Docker', 'https://platzi.com/@programandres/curso/1432-docker/diploma/detalle/', 'Certificado');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id_articulo`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id_contacto`);

--
-- Indices de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  ADD PRIMARY KEY (`id_experiencia`);

--
-- Indices de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`id_proyecto`);

--
-- Indices de la tabla `reconocimiento`
--
ALTER TABLE `reconocimiento`
  ADD PRIMARY KEY (`id_recon`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id_articulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id_contacto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  MODIFY `id_experiencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  MODIFY `id_proyecto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `reconocimiento`
--
ALTER TABLE `reconocimiento`
  MODIFY `id_recon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
