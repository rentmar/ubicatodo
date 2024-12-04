-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 04-12-2024 a las 01:23:18
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ubicatodo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adcli`
--

CREATE TABLE `adcli` (
  `id_admin` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id_admin` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Ap_p` varchar(50) DEFAULT NULL,
  `Ap_m` varchar(50) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `constrasena` varchar(255) DEFAULT NULL,
  `nivel_acceso` varchar(20) DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id_admin`, `Nombre`, `Ap_p`, `Ap_m`, `correo`, `constrasena`, `nivel_acceso`, `estado`) VALUES
(1, 'Jesus', 'Rojas', 'Catunta', 'yuri@gmail.com', '12345', 'Administrador', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adse`
--

CREATE TABLE `adse` (
  `id_admin` int(11) NOT NULL,
  `id_servicio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre`) VALUES
(1, 'farmacias'),
(2, 'Hospitales'),
(3, 'Baños'),
(4, 'Veterinarias'),
(5, 'Centros de Salud');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Ap_p` varchar(50) DEFAULT NULL,
  `Ap_m` varchar(50) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `constrasena` varchar(100) DEFAULT NULL,
  `estado` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `Nombre`, `Ap_p`, `Ap_m`, `correo`, `telefono`, `constrasena`, `estado`) VALUES
(1, 'Yuri J', 'Rojas', 'Catunta', 'yuri1@gmail.com', 79132106, '12345', 1),
(2, 'Aldo', 'Figueredo', 'Salvatierra', 'aldo@gmail.com', 78941235, '2323', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliser`
--

CREATE TABLE `cliser` (
  `id_cliente` int(11) NOT NULL,
  `id_servicio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distrito`
--

CREATE TABLE `distrito` (
  `id_distrito` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `lat` varchar(50) NOT NULL,
  `lon` varchar(50) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `distrito`
--

INSERT INTO `distrito` (`id_distrito`, `nombre`, `url`, `lat`, `lon`, `estado`) VALUES
(1, 'Obrajes', 'assets/img/distritos/obrajes.jpg', '-16.52747', '-68.10695', 1),
(2, 'Bolognia', 'assets/img/distritos/bolognia.jpg', '-16.519659', '-68.090365', 1),
(3, 'Achumani', 'assets/img/distritos/achumani.jpg', '-16.531266', '-68.072898', 1),
(4, 'San Miguel', 'assets/img/distritos/sanmiguel.jpg', ' -16.539209', '-68.077354', 1),
(5, 'Irpavi', 'assets/img/distritos/irpavi.jpg', '-16.521605', '-68.087798', 1),
(6, 'Calacoto', 'assets/img/distritos/calacoto.jpg', '-16.539201', '-68.084190', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE `evento` (
  `id_evento` int(11) NOT NULL,
  `id_servicio` int(11) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `evento`
--

INSERT INTO `evento` (`id_evento`, `id_servicio`, `fecha_inicio`, `fecha_fin`, `descripcion`) VALUES
(1, 1, '2024-11-14', '2024-11-15', 'Farmacias Chaves tiene un 20% de descuento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE `imagenes` (
  `id_imagen` int(11) NOT NULL,
  `id_servicio` int(11) DEFAULT NULL,
  `url_imagen` varchar(500) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte_usuario`
--

CREATE TABLE `reporte_usuario` (
  `id_reporte` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_servicio` int(11) DEFAULT NULL,
  `descripcion` text NOT NULL,
  `fecha_reporte` datetime DEFAULT current_timestamp(),
  `estado` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `id_servicio` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `direccion` varchar(500) DEFAULT NULL,
  `Latitud` decimal(9,6) NOT NULL,
  `Longitud` decimal(9,6) NOT NULL,
  `telefono` int(11) DEFAULT NULL,
  `id_distrito` int(11) DEFAULT NULL,
  `url_google_maps` varchar(500) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`id_servicio`, `nombre`, `descripcion`, `tipo`, `estado`, `direccion`, `Latitud`, `Longitud`, `telefono`, `id_distrito`, `url_google_maps`, `id_categoria`) VALUES
(1, 'Hospital Metodista', 'Horario de Atención: Lunes a Viernes, 08:00 - 18:00\nEspecialidad: Medicina General, Pediatría, Ginecología\nDescripción: Ofrecemos servicios de consulta externa, emergencias y especialidades para toda la familia.', 'Publico', '1', 'FVFW+563, C. 13, La Paz', 0.000000, 0.000000, 22783509, 1, 'https://www.google.com/maps/place/Hospital+Metodista/@-16.5271202,-68.1044383,17z/data=!4m15!1m8!3m7!1s0x915f20e67fe8fdd9:0x8e09094af3fe1540!2sHospital+Metodista!8m2!3d-16.5271202!4d-68.1044383!10e1!16s%2Fg%2F1tj4ck4_!3m5!1s0x915f20e67fe8fdd9:0x8e09094af3fe1540!8m2!3d-16.5271202!4d-68.1044383!16s%2Fg%2F1tj4ck4_?entry=ttu&g_ep=EgoyMDI0MTExMi4wIKXMDSoASAFQAw%3D%3D', 2),
(2, 'Farmacias Chavez', 'Horario de Atención: Lunes a Domingo, 08:00 - 22:00\nEspecialidad: Venta de medicamentos, insumos médicos\nDescripción: Disponemos de una amplia variedad de medicamentos y productos de salud.', 'Publico', '1', 'Av Hernando Siles 5412, La Paz', 0.000000, 0.000000, NULL, 1, 'https://www.google.com/maps/place/Farmacias+Ch%C3%A1vez/@-16.5263908,-68.1110716,16z/data=!4m10!1m2!2m1!1sfarmacia+chavez!3m6!1s0x915f2108efc2ece7:0x2fb38d2b00d1b67!8m2!3d-16.5263841!4d-68.108053!15sCg9mYXJtYWNpYSBjaGF2ZXpaESIPZmFybWFjaWEgY2hhdmV6kgEIcGhhcm1hY3ngAQA!16s%2Fg%2F11lm3bl1lp?entry=ttu&g_ep=EgoyMDI0MTExMi4wIKXMDSoASAFQAw%3D%3D', 1),
(3, 'Plaza Humboldt', 'Horario de Atención: Lunes a Domingo, 07:00 - 21:00\r\nDescripción: Instalaciones limpias y seguras ubicadas cerca de la Plaza Humboldt.', 'Publico', '1', 'FVJM+Q75, La Paz', 0.000000, 0.000000, NULL, 1, 'https://www.google.com/maps/place/Ba%C3%B1o+P%C3%BAblico+E.+Morales/@-16.5181339,-68.1300999,15z/data=!4m10!1m2!2m1!1zYmHDsW8!3m6!1s0x915f21006db828c5:0x584dffa57b201726!8m2!3d-16.518138!4d-68.1166528!15sCgViYcOxb5IBD3B1YmxpY19iYXRocm9vbeABAA!16s%2Fg%2F11lcs7pjr4?entry=ttu&g_ep=EgoyMDI0MTExMi4wIKXMDSoASAFQAw%3D%3D', 3),
(4, 'Hospital Oncologico', 'Horarios de atencion:', 'Privado', '1', 'FWCF+3VV, Macrodistrito, La Paz', -16.529431, -68.075293, 554430800, 3, 'https://www.google.com/maps/place/Hospital+Oncol%C3%B3gico/@-16.5297606,-68.0833399,16z/data=!4m10!1m2!2m1!1shospital!3m6!1s0x915f213e25ff438f:0x7b2530564dfcdc36!8m2!3d-16.52976!4d-68.0753283!15sCghob3NwaXRhbJIBCGhvc3BpdGFs4AEA!16s%2Fg%2F11f4lf3hpl?entry=ttu&g_ep=EgoyMDI0MTExMi4wIKXMDSoASAFQAw%3D%3D', 2),
(5, 'Clinica Arcoiris', 'Horarios de atencion:', 'Privado', '1', 'FVFR+7WF, C. 9, La Paz', -16.526494, -68.107731, NULL, 1, 'https://www.google.com/maps/search/hospital/@-16.5268022,-68.1172152,16z?entry=ttu&g_ep=EgoyMDI0MTExMi4wIKXMDSoASAFQAw%3D%3D', 2),
(6, 'Farmacia Chavez', 'Horarios de atencion: lunes a sabado: 8 a.m.-0 p.m. domingos: 9 a.m.-9 p.m.\r\nEntregas a domicilio\r\n\"Somos una compañía comprometida con anteponer la salud y bienestar al alcance de todos, sin dejar a nadie olvidado. Lo hacemos construyendo la cadena de farmacias más sólida y pujante del país, convirtiéndonos en la solución para todos los bolivianos.\"', 'Publico', '1', 'FW97+W46, La Paz', -16.530013, -68.087114, 69203073, 5, 'https://www.google.com/maps/place/Farmacia+Chávez/@-16.5288141,-68.0896406,16.75z/data=!4m10!1m2!2m1!1sfarmacia!3m6!1s0x915f211884d1ea29:0x13bd65260e77aecf!8m2!3d-16.5302076!4d-68.0872207!15sCghmYXJtYWNpYVoKIghmYXJtYWNpYZIBCHBoYXJtYWN54AEA!16s%2Fg%2F11c20bbggf!5m1!1e2?hl=es-419&entry=ttu&g_ep=EgoyMDI0MTExMi4wIKXMDSoASAFQAw%3D%3D', 1),
(7, 'Farmacias Divina Misericordia', 'Horarios de atencion: lunes a domingo: 9 a.m.-9 p.m.\r\nEntrega a domicilio\r\n\"Variedad amplia de medicamentos, tonicos, jarabes, etc\"', 'Publico', '1', 'c, Altamirano, La Paz', -16.524782, -68.086805, 73717676, 5, 'https://www.google.com/maps/search/farmacia/@-16.5250159,-68.0879775,18.25z/data=!5m1!1e2?hl=es-419&entry=ttu&g_ep=EgoyMDI0MTExMi4wIKXMDSoASAFQAw%3D%3D', 1),
(8, 'Farmacia FarmaClinic', 'Horarios de atencion: lunes a domingo: 8 a.m.-11 p.m.\r\nEspeciales: stock completo de medicamentos, Skin care y cuidado personal y Dermocosmética\r\n\"La minicadena de farmacias más completa.\r\ncontamos con los mejores precios del mercado y el stock más completo de medicamentos\"', 'Publico', '1', 'Calle Altamirano, esquina, C. 6 Nro 6593, La Paz', -16.524192, -68.086937, 78781763, 5, 'https://www.google.com/maps/place/Farmacia+FarmaClinic/@-16.5253175,-68.0895014,16.75z/data=!4m10!1m2!2m1!1sfarmacia!3m6!1s0x915f2175cb2ff40f:0xead00aac24222c10!8m2!3d-16.524477!4d-68.0868497!15sCghmYXJtYWNpYVoKIghmYXJtYWNpYZIBCHBoYXJtYWN54AEA!16s%2Fg%2F11k9sbngxh!5m1!1e2?hl=es-419&entry=ttu&g_ep=EgoyMDI0MTExMi4wIKXMDSoASAFQAw%3D%3D', 1),
(9, 'ELAN VITAL PHARMA', 'Horarios de atencion: Desconocidos\r\nFarmacia abierta de vez en cuando, variedad de medicamentos \"desconocida\", no recomendable.\r\nPagos con dispositivos móviles mediante NFC', 'Publico', '0', 'Av. Ovando Candia 52, La Paz\r\n', -16.524466, -68.088088, 0, 5, 'https://www.google.com/maps/place/ELAN+VITAL+PHARMA/@-16.5245791,-68.0879376,18z/data=!4m7!3m6!1s0x915f21006827de1b:0x1cd315054c196d73!8m2!3d-16.5245755!4d-68.0880912!10e1!16s%2Fg%2F11vy9tz9l2!5m1!1e2?hl=es-419&entry=ttu&g_ep=EgoyMDI0MTExMi4wIKXMDSoASAFQAw%3D%3D', 1),
(10, 'Centro Salud Irpavi', 'Atención Medica Integral y Cuidado de la Salud Mental\r\nCONSULTORIO MEDICO POR SALUD IRPAVI RED I\r\nEntrada accesible para personas en silla de ruedas', 'Publico', '1', 'CALLE 5 de IRPAVI ENTRE C. PABLO CABALLERO edif IMPERIO # 423\r\n', -16.525683, -68.087203, 79127958, 5, 'https://www.google.com/maps/place/Centro+Salud+Irpavi/@-16.5257424,-68.0873644,19z/data=!4m6!3m5!1s0x915f21197acdf1a7:0xe0377509e53368fe!8m2!3d-16.5257026!4d-68.0872288!16s%2Fg%2F11gdzc35bw!5m1!1e2?hl=es-419&entry=ttu&g_ep=EgoyMDI0MTExMi4wIKXMDSoASAFQAw%3D%3D', 5),
(11, 'DR. PET', 'Horarios de atencion: lunes a viernes 9:00 a.m.-12:30 p.m.\r\nEspeciales: tramite de viajes para mascotas\r\n\"Clínica Veterinaria, somos especialistas en cirugías de esterilización de alta calidad asi como en el cuidado de la salud de tu mascotita.\"', 'Privada', '1', 'Av. Ovando Candia N° 777, La Paz', -16.527265, -68.087962, 72036044, 5, 'https://www.google.com/maps/place/DR.+PET/@-16.5274712,-68.0910951,16z/data=!4m10!1m2!2m1!1sveterinario!3m6!1s0x915f21c35d824793:0xd5fb0bc1a9efb962!8m2!3d-16.5274712!4d-68.0879998!15sCgt2ZXRlcmluYXJpb5IBDHZldGVyaW5hcmlhbuABAA!16s%2Fg%2F11jg87hrt_!5m1!1e2?hl=es-419&entry=ttu&g_ep=EgoyMDI0MTExMi4wIKXMDSoASAFQAw%3D%3D', 4),
(12, 'Veterinaria Pandy', 'Horarios de atencion: lunes a domingo: 9 a.m.-10 p.m.\r\n\"Baño de mascotas, medicamentos, vacunaciones y atencion profesional\"', 'Privado', '1', 'Pablo Sanchez &, C. 3, La Paz', -16.527939, -68.084947, 22722495, 5, 'https://www.google.com/maps/place/Veterinaria+Pandy/@-16.5280745,-68.089163,16z/data=!4m11!1m2!2m1!1sveterinario!3m7!1s0x915f2147bc27d93d:0x3edb2fbd873f1174!8m2!3d-16.5280745!4d-68.0847856!10e1!15sCgt2ZXRlcmluYXJpb5IBDHZldGVyaW5hcmlhbuABAA!16s%2Fg%2F11fq5v7lwb!5m1!1e2?hl=es-419&entry=ttu&g_ep=EgoyMDI0MTExMi4wIKXMDSoASAFQAw%3D%3D', 4),
(13, 'Baño Megacenter', 'horarios de atencion: lunes a domingo: 9 a.m.-11 p.m.\r\nBaños con calidad de limpieza, gratuito y tamaño estandar.\r\nFrente a Casaideas-Megacenter', 'Publico', '1', 'Av. Rafael Pabón, La Paz\r\n', -16.533444, -68.086675, 0, 5, 'https://www.google.com/maps/place/Casaideas+La+Paz+-+Megacenter/@-16.5337806,-68.0873221,19z/data=!4m9!1m2!2m1!1sveterinario!3m5!1s0x915f2123a9850439:0xdd21c80f7462f376!8m2!3d-16.5338024!4d-68.0866524!16s%2Fg%2F11cn0lhphn!5m1!1e2?hl=es-419&entry=ttu&g_ep=EgoyMDI0MTExMi4wIKXMDSoASAFQAw%3D%3D', 3),
(15, 'Farmacia Bolivia', 'Horario de atencion: 07:00 a 22:00', 'Privado ', '1', 'Calle 16 de achumani ', -16.531390, -68.073040, NULL, 3, 'https://www.google.com/maps/place/Mercado+Achumani/@-16.5313534,-68.0731061,21z/data=!4m6!3m5!1s0x915f213fb8eee17d:0x27875a7d450d3cf7!8m2!3d-16.5308442!4d-68.0733913!16s%2Fg%2F1tdm4t2z?entry=ttu&g_ep=EgoyMDI0MTExMi4wIKXMDSoASAFQAw%3D%3D', 1),
(16, 'Farmacia Catedral', 'Horario de atencion: 9:00 a 22:00', 'Privado ', '1', ' FW9G+7J6, La Paz \r\nCalle 15 ', -16.531850, -68.073480, 65527456, 3, 'https://www.google.com/maps/@-16.5318488,-68.0735465,21z?entry=ttu&g_ep=EgoyMDI0MTExMi4wIKXMDSoASAFQAw%3D%3D', 1),
(17, 'Farmacorp', 'Horario de atencion: 9:00 a 23:02', 'Privado ', '1', 'Calle 16 Nro 2, La Paz', -16.530320, -68.073350, 77755555, 3, 'https://www.google.com/maps/place/Farmacorp/@-16.5303041,-68.0733348,21z/data=!4m6!3m5!1s0x915f2100778f7367:0x53dbc73d2e61aaa9!8m2!3d-16.530342!4d-68.0733601!16s%2Fg%2F11w22w4w05?entry=ttu&g_ep=EgoyMDI0MTExMi4wIKXMDSoASAFQAw%3D%3D', 1),
(18, 'Farmacorp', 'Horario de atencion: 7:00??\"12:00', 'Privado ', '1', 'FW7F+VVF, Av. Garcia Lanza, La Paz', -16.535300, -68.075320, 22775220, 3, 'https://www.google.com/maps/place/Farmacorp/@-16.5352974,-68.075252,21z/data=!4m6!3m5!1s0x915f21392e00374b:0xfce569e0a1479b43!8m2!3d-16.5353153!4d-68.0753201!16s%2Fg%2F11cn6cnz0v?entry=ttu&g_ep=EgoyMDI0MTExMi4wIKXMDSoASAFQAw%3D%3D', 1),
(19, 'Mifarma', 'Horario de atencion: 8:00??\"23:00', 'Privado ', '1', 'FW9G+FWR, La Paz', -16.531265, -68.072663, 22616201, 3, 'https://www.google.com/maps/place/Mifarma+Sucursal+Achumani+1/@-16.5312645,-68.0726627,21z/data=!4m6!3m5!1s0x915f213f99e9820f:0x2087b9db4127bcfd!8m2!3d-16.5312695!4d-68.0727343!16s%2Fg%2F11x9gst7f?entry=ttu&g_ep=EgoyMDI0MTExMi4wIKXMDSoASAFQAw%3D%3D', 1),
(20, 'Super Farmacia San Alberto', 'Horario de atencion: 9:00 a 21:00', 'Privado ', '1', 'FW9G+49W, Av. Garcia Lanza, La Paz', -16.532147, -68.074308, NULL, 3, 'https://www.google.com/maps/place/Super+Farmacia+San+Alberto/@-16.5321468,-68.0743082,21z/data=!4m10!1m2!2m1!1sFarmacias!3m6!1s0x915f21de6441b73f:0x23798b95e3acb677!8m2!3d-16.5321469!4d-68.0740508!15sCglGYXJtYWNpYXNaCyIJZmFybWFjaWFzkgEIcGhhcm1hY3ngAQA!16s%2Fg%2F11j53m86fk?entry=ttu&g_ep=EgoyMDI0MTExMi4wIKXMDSoASAFQAw%3D%3D', 1),
(21, 'Centro de Salud Achumani', 'Horario de atencion: 7:00 a 16:00', 'Publico', '1', 'FW9G+J25, La Paz', -16.531073, -68.075079, 22776803, 3, 'https://www.google.com/maps/place/Centro+de+Salud+Achumani/@-16.5310733,-68.075079,21z/data=!4m9!1m2!2m1!1sFarmacias!3m5!1s0x915f213e4bc39b27:0x66f3413a80b09384!8m2!3d-16.5309922!4d-68.074877!16s%2Fg%2F11c5wq6xy5?entry=ttu&g_ep=EgoyMDI0MTExMi4wIKXMDSoASAFQAw%3D%3D', 5),
(22, 'CEM PROSALUD Achumani', 'Horario de atencion: 7:00 a 21:00', 'Privado ', '1', 'Calle 10 de Achumani Maria F. Goya, La Paz', -16.534168, -68.076637, 71558849, 3, 'https://www.google.com/maps/place/CEM+PROSALUD+Achumani/@-16.5341684,-68.0766366,21z/data=!4m9!1m2!2m1!1sFarmacias!3m5!1s0x915f213e4959c8a7:0xd3110d79229a4bee!8m2!3d-16.5341602!4d-68.076462!16s%2Fg%2F1hm3n46dj?entry=ttu&g_ep=EgoyMDI0MTExMi4wIKXMDSoASAFQAw%3D%3D', 2),
(23, 'Centro de Salud Bolognia', 'Horario de atenci?n:Lunes a S?bado 8 AM - 8PM, -SERVICIO DE MEDICINA GENERAL Y EMERGENCIAS\r\n-SERVICIO DE ODONTOLOG?A\r\n-FARMACIA\r\n-SERVICIO DE ENFERMERIA', 'Publico', '1', 'FWF7+P46, La Paz', -16.525687, -68.087228, NULL, 2, 'https://www.google.com/maps/place/Centro+De+Salud+Bolognia/@-16.5256193,-68.0876459,18.56z/data=!4m6!3m5!1s0x915f2119707d10cd:0x7a68039206e8ddda!8m2!3d-16.5257229!4d-68.0872207!16s%2Fg%2F11c1qb2zz6?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 5),
(24, 'Veterinaria Mas Salud', 'Centro veterinario, Horario de Atenci?n Lunes a S?bado 9 AM - 8:30 PM', 'Privado', '1', 'FWQ6+QG4, La Paz', -16.509929, -68.088595, 69735765, 2, 'https://www.google.com/maps/place/Veterinaria+Mas+Salud/@-16.5142289,-68.0955901,15z/data=!4m10!1m2!2m1!1sveterinaria+Bolognia+la+paz+bolivia!3m6!1s0x915f21003a4966f9:0x802f3d0c9b82cec7!8m2!3d-16.5106125!4d-68.0886719!15sCiN2ZXRlcmluYXJpYSBCb2xvZ25pYSBsYSBwYXogYm9saXZpYZIBDHZldGVyaW5hcmlhbuABAA!16s%2Fg%2F11vqpl2x_6?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 4),
(25, 'Farmacia Catedral', 'Horario de atenci?n: lunes a S?bado 7:30 AM - 10:30 PM, Domingo 8 AM - 10 PM', 'Privado', '1', 'FW6C+99 La Paz', -16.539091, -68.079022, 60564333, 4, 'https://www.google.com/maps/place/Farmacia+Catedral/@-16.5398313,-68.0802569,18.34z/data=!4m10!1m2!2m1!1sfarmacias+san+miguel+la+paz+bolivia!3m6!1s0x915f213a3881b973:0xe8e78444ba61f032!8m2!3d-16.5391181!4d-68.0790184!15sCiNmYXJtYWNpYXMgc2FuIG1pZ3VlbCBsYSBwYXogYm9saXZpYVolIiNmYXJtYWNpYXMgc2FuIG1pZ3VlbCBsYSBwYXogYm9saXZpYZIBCHBoYXJtYWN54AEA!16s%2Fg%2F11hb8gwmd6?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 1),
(26, 'Farmacorp', 'Abierto las 24 horas', 'Privado', '1', 'FW6C+4QP, Calle 21, La Paz', -16.539594, -68.078053, 22790645, 4, 'https://google.com/maps/place/Farmacorp/@-16.5398313,-68.0802569,18.34z/data=!4m10!1m2!2m1!1sfarmacias+san+miguel+la+paz+bolivia!3m6!1s0x915f213a1914aa15:0xbd5c536a7e576fbd!8m2!3d-16.5396643!4d-68.0780506!15sCiNmYXJtYWNpYXMgc2FuIG1pZ3VlbCBsYSBwYXogYm9saXZpYVolIiNmYXJtYWNpYXMgc2FuIG1pZ3VlbCBsYSBwYXogYm9saXZpYZIBCHBoYXJtYWN54AEA!16s%2Fg%2F11cn69_vwq?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 1),
(27, 'Farmacias Bolivia', 'Horarios de atenci?n: Lunes a S?bado 7:30 AM-10:30 PM, Domingo 9 AM-9PM', 'Privada', '1', 'FW5C+WR La Paz', -16.540133, -68.077981, 22792977, 4, 'https://www.google.com/maps/place/Farmacias+Bolivia/@-16.5405571,-68.08024,18.34z/data=!4m10!1m2!2m1!1sfarmacias+san+miguel+la+paz+bolivia!3m6!1s0x915f213a02c051bb:0xe621a232b487c42d!8m2!3d-16.5402304!4d-68.0779698!15sCiNmYXJtYWNpYXMgc2FuIG1pZ3VlbCBsYSBwYXogYm9saXZpYVolIiNmYXJtYWNpYXMgc2FuIG1pZ3VlbCBsYSBwYXogYm9saXZpYZIBCWRydWdzdG9yZeABAA!16s%2Fg%2F11by_h9d4p?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 1),
(28, 'Farmacias el Cristo', 'Horario de Atenci?n: Lunes a S?bado 9 AM-8 PM', 'Privado', '1', 'FW5C+M8 La Paz', -16.540721, -68.079132, 22794393, 4, 'https://www.google.com/maps/place/Farmacias+El+Cristo/@-16.5409017,-68.0801427,18.34z/data=!4m10!1m2!2m1!1sfarmacias+san+miguel+la+paz+bolivia!3m6!1s0x915f213a75208afb:0xbaf273752b3f0e21!8m2!3d-16.540774!4d-68.0791316!15sCiNmYXJtYWNpYXMgc2FuIG1pZ3VlbCBsYSBwYXogYm9saXZpYZIBCHBoYXJtYWN54AEA!16s%2Fg%2F11cr_g4q3f?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 1),
(29, 'Farmacias Ch?vez', 'Horario de atenci?n: 7:30 AM-11 PM', 'Privado', '1', 'Calle 21 8424, La Paz', -16.542534, -68.077435, NULL, 4, 'https://www.google.com/maps/place/Farmacia+Ch%C3%A1vez+-+Calacoto/@-16.5421453,-68.0793334,18.18z/data=!4m10!1m2!2m1!1sfarmacias+san+miguel+la+paz+bolivia!3m6!1s0x915f21f6bf539673:0x5f7b69ec89b457be!8m2!3d-16.5425977!4d-68.0774424!15sCiNmYXJtYWNpYXMgc2FuIG1pZ3VlbCBsYSBwYXogYm9saXZpYVolIiNmYXJtYWNpYXMgc2FuIG1pZ3VlbCBsYSBwYXogYm9saXZpYZIBCHBoYXJtYWN54AEA!16s%2Fg%2F11h2nntts3?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 1),
(30, 'Cl?nica dental San Miguel', 'Horario de Atenci?n: Lunes a S?bado 9 AM-12:30 PM', 'Privado', '1', 'FW5C+WG La Paz', -16.540048, -68.078762, 2793293, 4, 'https://www.google.com/maps/place/Cl%C3%ADnica+dental+San+Miguel/@-16.5424341,-68.0807988,16.67z/data=!4m10!1m2!2m1!1shospitales+san+miguel+la+paz+bolivia!3m6!1s0x915f21c03048fe91:0xda155640321da563!8m2!3d-16.5402265!4d-68.0787449!15sCiRob3NwaXRhbGVzIHNhbiBtaWd1ZWwgbGEgcGF6IGJvbGl2aWGSAQZkb2N0b3LgAQA!16s%2Fg%2F11frlt5pcn?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 5),
(31, 'C.I.M Centro de Imagenolog?a Maxilofacial', 'Horario de Atenci?n: 8:30 AM-6:30 PM', 'Privado', '1', 'FW4F+X2 La Paz', -16.542285, -68.077453, 78967606, 4, 'https://www.google.com/maps/place/C.I.M+Centro+de+Imagenolog%C3%ADa+Maxilofacial+.+Dr.+Jorge+Lopez+Videla/@-16.5429513,-68.0807988,16.67z/data=!4m10!1m2!2m1!1shospitales+san+miguel+la+paz+bolivia!3m6!1s0x915f21b5256d388f:0x8505f93edd113dc8!8m2!3d-16.5425399!4d-68.0774575!15sCiRob3NwaXRhbGVzIHNhbiBtaWd1ZWwgbGEgcGF6IGJvbGl2aWFaJiIkaG9zcGl0YWxlcyBzYW4gbWlndWVsIGxhIHBheiBib2xpdmlhkgEObWVkaWNhbF9jZW50ZXKaASNDaFpEU1VoTk1HOW5TMFZKUTBGblNVUnVNa3czVUdKQkVBReABAA!16s%2Fg%2F11y4qnm_pr?entry=ttu&g_ep=EgoyMD', 5),
(32, 'FAITHMED CENTRO MEDICO', 'Horario de Atenci?n: Lunes a viernes 8 AM-4 PM, http://www.faithmedbolivia.com/', 'Privado', '1', 'FW4C+QP La Paz', -16.542880, -68.078168, 22917073, 4, 'https://www.google.com/maps/place/FAITHMED+CENTRO+MEDICO/@-16.5429513,-68.0807988,16.67z/data=!4m10!1m2!2m1!1shospitales+san+miguel+la+paz+bolivia!3m6!1s0x915f21880ed1396b:0x847fecab58bae8e2!8m2!3d-16.543037!4d-68.0781713!15sCiRob3NwaXRhbGVzIHNhbiBtaWd1ZWwgbGEgcGF6IGJvbGl2aWFaJiIkaG9zcGl0YWxlcyBzYW4gbWlndWVsIGxhIHBheiBib2xpdmlhkgEIaG9zcGl0YWyaASNDaFpEU1VoTk1HOW5TMFZKUTBGblNVTkNPR05UUW1SQkVBReABAA!16s%2Fg%2F11j2w2ms_7?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 5),
(33, 'CIDIMEDIC', 'Horario de Atencion: Lunes a S?bado 8 AM-8:30 PM, https://m.facebook.com/CIDIMEDICSUR/', 'Privado', '1', 'FW3C+GC La Paz', -16.545950, -68.079034, 67146965, 4, 'https://www.google.com/maps/place/CIDIMEDIC/@-16.5462282,-68.0849132,16z/data=!4m10!1m2!2m1!1shospitales+san+miguel+la+paz+bolivia!3m6!1s0x915f2149c0bd10a7:0x65f17da90faa15ef!8m2!3d-16.5462277!4d-68.0789234!15sCiRob3NwaXRhbGVzIHNhbiBtaWd1ZWwgbGEgcGF6IGJvbGl2aWGSAQ5tZWRpY2FsX2NlbnRlcuABAA!16s%2Fg%2F11g6mgpcgm?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 5),
(34, 'MEGASalud', 'Horario de Atenci?n: 10 AM-8 PM', 'Privado', '1', 'FW49+6WR, Gabriel Ren? Moreno, La Paz', -16.544140, -68.080235, 22773855, 4, 'https://www.google.com/maps/place/MEGASalud/@-16.5462282,-68.0849132,16z/data=!4m10!1m2!2m1!1shospitales+san+miguel+la+paz+bolivia!3m6!1s0x915f21311ae4018d:0x1228b64beb91bfc7!8m2!3d-16.5443841!4d-68.0802233!15sCiRob3NwaXRhbGVzIHNhbiBtaWd1ZWwgbGEgcGF6IGJvbGl2aWGSAQ5tZWRpY2FsX2NlbnRlcuABAA!16s%2Fg%2F11bc7rzxgk?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 5),
(35, 'Cl?nica Cordes', 'Instituci?n descentralizada, de la seguridad social de corto plazo, con autonom?a de gesti?n, que otorga prestaciones en dinero, especie en los reg?menes de Enfermedad, Maternidad y Riesgos Profesionales a Corto Plazo, contribuyendo a mejorar la situaci?n de salud de la poblaci?n.', 'Publica', '1', 'FW5C+652, La Paz', -16.541870, -68.079605, 22771904, 4, 'https://www.google.com/maps/place/Clinica+Cordes/@-16.5422605,-68.08074,17.83z/data=!4m10!1m2!2m1!1shospitales+san+miguel+la+paz+bolivia!3m6!1s0x915f21309177cef5:0x6626e164c4736594!8m2!3d-16.5419834!4d-68.0796073!15sCiRob3NwaXRhbGVzIHNhbiBtaWd1ZWwgbGEgcGF6IGJvbGl2aWFaJiIkaG9zcGl0YWxlcyBzYW4gbWlndWVsIGxhIHBheiBib2xpdmlhkgEIaG9zcGl0YWyaASNDaFpEU1VoTk1HOW5TMFZKUTBGblNVTjRia2x5WlU1QkVBReABAA!16s%2Fg%2F11by_n77j4?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 5),
(36, 'Conciencia Animal', 'Horario de Atenci?n: Lunes a Viernes 9:30 AM-4:30 PM', 'Privado', '1', 'FW3C+VC La Paz', -16.545123, -68.078988, 70197209, 4, 'https://www.google.com/maps/place/Conciencia+Animal/@-16.5434328,-68.080726,17.59z/data=!4m10!1m2!2m1!1sveterinarias+san+miguel+la+paz+bolivia!3m6!1s0x915f21bd1e19441b:0x54ef6b139d78f3f4!8m2!3d-16.5453055!4d-68.0789459!15sCiZ2ZXRlcmluYXJpYXMgc2FuIG1pZ3VlbCBsYSBwYXogYm9saXZpYZIBDHZldGVyaW5hcmlhbuABAA!16s%2Fg%2F11hf5n4gp8?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 4),
(37, 'CLINICA \"URGENCIAS VETERINARIAS\"', 'Horario de Atencion: Lunes a viernes 9?AM-1?PM\r\n3-6?PM, https://www.facebook.com/profile.php?id=100015522736581', 'Privado', '1', 'FW6F+24 La Paz', -16.539832, -68.077226, 22917268, 4, 'https://www.google.com/maps/place/CLINICA+%22URGENCIAS+VETERINARIAS%22/@-16.540351,-68.0796234,17.81z/data=!4m10!1m2!2m1!1sveterinarias+san+miguel+la+paz+bolivia!3m6!1s0x915f2139f0b33d27:0xf5b8cb4b2186b0e2!8m2!3d-16.5399661!4d-68.077214!15sCiZ2ZXRlcmluYXJpYXMgc2FuIG1pZ3VlbCBsYSBwYXogYm9saXZpYZIBD2FuaW1hbF9ob3NwaXRhbOABAA!16s%2Fg%2F11dxyxlvw0?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D\r\n\r\n', 4),
(38, 'Farmacorp', 'Horarios de Atencion: Lunes a Domingo 7 AM-11 PM, http://www.farmacorp.com/', 'Privado', '1', 'FVFR+Q4 La Paz', -16.524956, -68.109691, 78500183, 1, 'https://www.google.com/maps/place/Farmacorp/@-16.5302813,-68.119939,15z/data=!4m10!1m2!2m1!1sFARMACORP!3m6!1s0x915f20ef054c7ddf:0xe207033312ada9e5!8m2!3d-16.5255428!4d-68.109694!15sCglGQVJNQUNPUlAiA4gBAVoLIglmYXJtYWNvcnCSAQhwaGFybWFjeeABAA!16s%2Fg%2F11cnd67v_k?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 1),
(39, 'Farmacias Bolivia', 'Horario de Atenci?n: Lunes a S?bado 8 AM-10 PM', 'Privado', '1', 'FVCV+WWV, C. 12, La Paz', -16.527281, -68.105335, 22783705, 1, 'https://www.google.com/maps/place/Farmacias+Bolivia/@-16.5276251,-68.1100387,17z/data=!4m10!1m2!2m1!1sFARMACIA+BOLIVIA+OBRAJES!3m6!1s0x915f20e671013d6f:0x451d72b29e0a2918!8m2!3d-16.5276399!4d-68.1052181!15sChhGQVJNQUNJQSBCT0xJVklBIE9CUkFKRVNaGiIYZmFybWFjaWEgYm9saXZpYSBvYnJhamVzkgEJZHJ1Z3N0b3Jl4AEA!16s%2Fg%2F11cnd4j8n9?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 1),
(40, 'Farmacia Hipermaxi S. A.', 'Horario de Atenci?n: Lunes a Domingo 7 AM-10 PM', 'Privado', '1', 'FVCW+MMG, Av. 14 de Septiembre, La Paz', -16.527898, -68.103275, 76500738, 1, 'https://www.google.com/maps/place/Farmacia+Hipermaxi+S.+A./@-16.5275862,-68.1078018,17.73z/data=!4m10!1m2!2m1!1sFARMACIA+BOLIVIA+OBRAJES!3m6!1s0x915f20e6ecaba5b5:0x4459f50c0f87d1d9!8m2!3d-16.5283001!4d-68.1032861!15sChhGQVJNQUNJQSBCT0xJVklBIE9CUkFKRVNaGiIYZmFybWFjaWEgYm9saXZpYSBvYnJhamVzkgEIcGhhcm1hY3ngAQA!16s%2Fg%2F11f1b8y153?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 1),
(41, 'Super Farmacia Virgen de Copacabana', 'Horario de Atenci?n: Lunes a Domingo 7:30 AM-9:30 PM, https://www.superfarmaciavc.com/', 'Privado', '1', 'FVCX+4W La Paz', -16.529338, -68.099970, 77266266, 1, 'https://www.google.com/maps/place/Super+Farmacia+Virgen+de+Copacabana/@-16.5296899,-68.1058267,16z/data=!4m10!1m2!2m1!1sFARMACIA+OBRAJES!3m6!1s0x915f20e0defab94d:0x5a042a67c03c2f72!8m2!3d-16.5296904!4d-68.1001301!15sChBGQVJNQUNJQSBPQlJBSkVTWhIiEGZhcm1hY2lhIG9icmFqZXOSAQhwaGFybWFjeeABAA!16s%2Fg%2F11bzyy5k0v?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 1),
(42, 'Cl?nica de la Caja de Salud de la Banca Privada', 'Abierto las 24 horas, http://www.csbp.com.bo/', 'Privado', '1', 'FVGP+5R6, Av. Hector Ormachea, La Paz', -16.524349, -68.113341, 22786878, 1, 'https://www.google.com/maps/place/Cl%C3%ADnica+de+la+Caja+de+Salud+de+la+Banca+Privada/@-16.5254549,-68.1154118,16.79z/data=!4m10!1m2!2m1!1sHOSPITALES+OBRAJES!3m6!1s0x915f20ee79161f29:0xb37e389b0c499108!8m2!3d-16.524586!4d-68.1129763!15sChJIT1NQSVRBTEVTIE9CUkFKRVNaFCISaG9zcGl0YWxlcyBvYnJhamVzkgEIaG9zcGl0YWyaASNDaFpEU1VoTk1HOW5TMFZKUTBGblNVUjRNMXAyTjFoM0VBReABAA!16s%2Fg%2F11b70fcxmn?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 2),
(43, 'CES Especialidades M?dicas (laboratorio MIC)', 'huhu', 'Privado', '1', 'FVFQ+HVQ, La Paz', -16.525789, -68.110251, 0, 1, 'https://www.google.com/maps/place/CES+Especialidades+M%C3%A9dicas+(laboratorio+MIC)/@-16.5260334,-68.1162286,16z/data=!4m10!1m2!2m1!1sHOSPITALES+OBRAJES!3m6!1s0x915f20ef1e460d5f:0xae6ded6198cce588!8m2!3d-16.5260338!4d-68.110256!15sChJIT1NQSVRBTEVTIE9CUkFKRVNaFCISaG9zcGl0YWxlcyBvYnJhamVzkgEIaG9zcGl0YWyaASRDaGREU1VoTk1HOW5TMFZKUTBGblNVTmxhelI2WXpOQlJSQULgAQA!16s%2Fg%2F11dxmfx6xb?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 5),
(44, 'Oncoclinic', 'Horario de Atenci?n: Lunes a S?bado 8:30 AM-6:30 PM, https://oncoclinicbolivia.com/', 'Privado', '1', 'FVFQ+4H La Paz', -16.526941, -68.111281, 74846964, 1, 'https://www.google.com/maps/place/Oncoclinic+Obrajes/@-16.5272162,-68.1492126,14z/data=!4m10!1m2!2m1!1soncoclinic!3m6!1s0x64681f9e17ac3107:0x8ee666790ad771ac!8m2!3d-16.5272186!4d-68.1111029!15sCgpvbmNvY2xpbmljkgEIaG9zcGl0YWzgAQA!16s%2Fg%2F11vm8h21m4?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 2),
(45, 'AUDIOPROT', 'Horario de Atenci?n: Lunes a S?bado 8:30 AM-12:PM, https://www.audioprot.com/', 'Privado', '1', 'FVFR+MC La Paz', -16.525699, -68.108947, 76440003, 1, 'https://www.google.com/maps/place/AUDIOPROT+LA+PAZ+OBRAJES/@-16.5271319,-68.1492126,14z/data=!4m10!1m2!2m1!1saudioprot!3m6!1s0x915f21a755d0195d:0xebecb62cb999332b!8m2!3d-16.5258424!4d-68.1089297!15sCglhdWRpb3Byb3SSAQ5tZWRpY2FsX2NlbnRlcuABAA!16s%2Fg%2F11vkqwdf03?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 5),
(46, 'Cl?nica del Sur', 'Abierto las 24 horas, http://www.clinicadelsur.com.bo/', 'Privado', '1', 'FVFR+PG La Paz', -16.525591, -68.108723, 22784003, 1, 'https://www.google.com/maps/place/Cl%C3%ADnica+del+Sur/@-16.5282294,-68.1120312,16.67z/data=!4m10!1m2!2m1!1sHOSPITALES+OBRAJES!3m6!1s0x915f20ef6c862e99:0x941b8bd380af7506!8m2!3d-16.5257087!4d-68.1087205!15sChJIT1NQSVRBTEVTIE9CUkFKRVNaFCISaG9zcGl0YWxlcyBvYnJhamVzkgEIaG9zcGl0YWyaASRDaGREU1VoTk1HOW5TMFZKUTBGblNVTkVhM1kzYzNoblJSQULgAQA!16s%2Fg%2F1tpc90qt?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 2),
(47, 'Cl?nica Arco Iris', 'Horario de Atenci?n: Lunes a viernes 8 AM-6 PM. S?bados de 9 AM-12 PM, https://www.arcoiris.org.bo/#:~:text=Consulta%20Externa%3A%20Lunes%20a%20viernes,00%20a%2012%3A00%20hrs.', 'Privado', '1', 'FVFR+7WF, C. 9, La Paz', -16.526658, -68.107670, 0, 1, 'https://www.google.com/maps/place/clinica+arco+iris/@-16.5271171,-68.1059887,17z/data=!4m14!1m7!3m6!1s0x915f20e67fe8fdd9:0x8e09094af3fe1540!2sHospital+Metodista!8m2!3d-16.5271202!4d-68.1044383!16s%2Fg%2F1tj4ck4_!3m5!1s0x915f20ef57393f9f:0xabb83a3169b997ca!8m2!3d-16.5268025!4d-68.1076877!16s%2Fg%2F11c1q9_89z?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 2),
(48, 'Hospital Petrolero CPS', 'Horario de Atenci?n: Lunes a Domingo 11 AM-6 PM, http://www.cps.com.bo/', 'Publico', '1', 'FVCR+J85 Caja Petrolera, Ave Costanerita, La Paz', -16.528238, -68.109267, 22784401, 1, 'https://www.google.com/maps/place/Hospital+Petrolero+CPS/@-16.5282294,-68.1120312,16.67z/data=!4m10!1m2!2m1!1sHOSPITALES+OBRAJES!3m6!1s0x915f20e8c643059d:0x2db6601d736a4e7!8m2!3d-16.5282902!4d-68.1093199!15sChJIT1NQSVRBTEVTIE9CUkFKRVNaFCISaG9zcGl0YWxlcyBvYnJhamVzkgEIaG9zcGl0YWyaASNDaFpEU1VoTk1HOW5TMFZKUTBGblNVUkthSFJsYTFaUkVBReABAA!16s%2Fg%2F11bzyy9rkg?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 2),
(49, 'Hospital Metodista', 'Abierto las 24 horas, https://hospitalmetodista.wixsite.com/hospital', 'Privado', '1', 'FVFW+563, C. 13, La Paz', -16.526962, -68.104449, 22783509, 1, 'https://www.google.com/maps/place/Hospital+Metodista/@-16.5271171,-68.1059887,17z/data=!3m1!4b1!4m6!3m5!1s0x915f20e67fe8fdd9:0x8e09094af3fe1540!8m2!3d-16.5271202!4d-68.1044383!16s%2Fg%2F1tj4ck4_?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 2),
(50, 'Hospital Caja de Salud de Caminos', 'Abierto las 24 horas, https://www.cajasaludcaminos.gob.bo/', 'Publico', '1', 'FVCW+QF La Paz', -16.527850, -68.103762, 22443746, 1, 'https://www.google.com/maps/place/Hospital+Caja+de+Salud+de+Caminos/@-16.527115,-68.1070132,17z/data=!4m14!1m7!3m6!1s0x915f20e67fe8fdd9:0x8e09094af3fe1540!2sHospital+Metodista!8m2!3d-16.5271202!4d-68.1044383!16s%2Fg%2F1tj4ck4_!3m5!1s0x915f21cbfa74f5b1:0x615387e90de3ea7e!8m2!3d-16.528008!4d-68.1037511!16s%2Fg%2F11h0yjkyy2?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 2),
(51, 'Veterinaria Obrajes', 'Horario de Atenci?n: Lunes a Viernes 8:30 AM- 8:30 PM', 'Privado', '1', 'FWC2+73 La Paz', -16.529109, -68.099878, 79158101, 1, 'https://www.google.com/maps/place/Veterinaria+Obrajes/@-16.5292476,-68.1047168,17z/data=!3m1!4b1!4m6!3m5!1s0x915f21c782b2a705:0x6f24d3136e0459ae!8m2!3d-16.5292528!4d-68.0998459!16s%2Fg%2F11tg5lxpmv?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 4),
(52, 'Farmacorp', 'Horario de Atenci?n: Lunes a Domingo 7 Am-11 PM, http://www.farmacorp.com/', 'Privado', '1', 'FW56+QR La Paz', -16.540330, -68.087918, 61553333, 6, 'https://www.google.com/maps/place/Farmacia+Farmacorp+Sucursal+-+J.+Ballivian+Esq.+Flor+del+Loto/@-16.5404284,-68.0904722,17.39z/data=!4m10!1m2!2m1!1sfarmacias+calacoto+la+paz+bolivia!3m6!1s0x915f213396dde3a7:0x2981b51afd46e095!8m2!3d-16.5405332!4d-68.0879083!15sCiFmYXJtYWNpYXMgY2FsYWNvdG8gbGEgcGF6IGJvbGl2aWFaIyIhZmFybWFjaWFzIGNhbGFjb3RvIGxhIHBheiBib2xpdmlhkgEIcGhhcm1hY3ngAQA!16s%2Fg%2F11ll2pfskn?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 1),
(53, 'FARMACIA CARMELITA', 'Horario de Atenci?n: Lunes a S?bado 9:30 AM-8 PM', 'Privado', '1', 'FW67+3M La Paz', -16.539716, -68.085808, 22791384, 6, 'https://www.google.com/maps/place/FARMACIA+CARMELITA/@-16.5401608,-68.0870232,17.39z/data=!4m10!1m2!2m1!1sfarmacias+calacoto+la+paz+bolivia!3m6!1s0x915f2114342555f1:0x86dbd53f018b0441!8m2!3d-16.539848!4d-68.085781!15sCiFmYXJtYWNpYXMgY2FsYWNvdG8gbGEgcGF6IGJvbGl2aWFaIyIhZmFybWFjaWFzIGNhbGFjb3RvIGxhIHBheiBib2xpdmlhkgEIcGhhcm1hY3ngAQA!16s%2Fg%2F11lk_rkdqg?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 1),
(54, 'Farmacias Ch?vez', 'Abierto las 24 horas, https://www.farmaciachavez.com.bo/', 'Privado', '1', 'FW68+FH La Paz', -16.538416, -68.083565, NULL, 6, 'https://www.google.com/maps/place/Farmacias+Ch%C3%A1vez,+Sucursal+Autofarmacia/@-16.5388373,-68.0885003,16z/data=!4m10!1m2!2m1!1sfarmacias+calacoto+la+paz+bolivia!3m6!1s0x915f21e139191d0f:0x4f728bb0e9bbe859!8m2!3d-16.5388509!4d-68.0835351!15sCiFmYXJtYWNpYXMgY2FsYWNvdG8gbGEgcGF6IGJvbGl2aWGSAQhwaGFybWFjeeABAA!16s%2Fg%2F11tsdp37p8?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 1),
(55, 'Farmacias Bolivia', 'Horarios de Atenci?n: Lunes a Domingo 7:30 AM-10 PM, http://www.farmaciasbolivia.com.bo/', 'Privado', '1', 'FW69+HG La Paz', -16.538486, -68.081171, NULL, 6, 'https://www.google.com/maps/place/Farmacias+Bolivia/@-16.5392449,-68.0836813,18z/data=!4m10!1m2!2m1!1sfarmacias+calacoto+la+paz+bolivia!3m6!1s0x915f21e8d52ac4e1:0x556dce0af40f16d3!8m2!3d-16.5385879!4d-68.0811706!15sCiFmYXJtYWNpYXMgY2FsYWNvdG8gbGEgcGF6IGJvbGl2aWFaIyIhZmFybWFjaWFzIGNhbGFjb3RvIGxhIHBheiBib2xpdmlhkgEIcGhhcm1hY3ngAQA!16s%2Fg%2F11fd_mfwky?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 1),
(56, 'Farmacia Hipermaxi', 'Horario de Atencion: Lunes a Domingo 7:30 AM-10 PM, http://hipermaxi.com/', 'Privado', '1', 'FW69+JR La Paz', -16.538339, -68.080343, NULL, 6, 'https://www.google.com/maps/place/Supermercado+Hipermaxi/@-16.5390037,-68.0823741,18.49z/data=!4m9!1m2!2m1!1sfarmacias+calacoto+la+paz+bolivia!3m5!1s0x915f213a55e9ef25:0xca89b2da7639990d!8m2!3d-16.5383897!4d-68.0803991!16s%2Fg%2F1tk_qbhx?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 1),
(57, 'Cies', 'Horario de Atenci?n: Lunes, Miercoles, Jueves, S?bado 8:30 am-12:30 PM, http://www.cies.org.bo/', 'Privado', '1', 'FW55+XMJ, C. 9, La Paz', -16.539981, -68.090871, 69706883, 6, 'https://www.google.com/maps/place/Cies+Calacoto+Atenci%C3%B3n+de+Salud+para+Hombres+y+Patologias+Mamarias/@-16.540038,-68.0956234,17z/data=!4m7!3m6!1s0x915f21005826ca4b:0xbadc1931f80fdcbb!8m2!3d-16.5400381!4d-68.0908595!15sCiJIb3NwaXRhbGVzIGNhbGFjb3RvIGxhIHBheiBib2xpdmlhkgEObWVkaWNhbF9jZW50ZXLgAQA!16s%2Fg%2F11vs2f65yn?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 2),
(58, 'CIDIMEDIC SUR', 'Abierto las 24 horas', 'Privado', '1', 'FW57+M3 La Paz', -16.540684, -68.087305, 67146965, 6, 'https://www.google.com/maps/place/CIDIMEDIC+SUR/@-16.5410232,-68.0892783,17.37z/data=!4m7!3m6!1s0x915f216840d5fd65:0x169ba55e15dc60bb!8m2!3d-16.5407656!4d-68.087288!15sCiJIb3NwaXRhbGVzIGNhbGFjb3RvIGxhIHBheiBib2xpdmlhWiQiImhvc3BpdGFsZXMgY2FsYWNvdG8gbGEgcGF6IGJvbGl2aWGSAQ5tZWRpY2FsX2NlbnRlcpoBJENoZERTVWhOTUc5blMwVkpRMEZuU1VReWJUaEhTV2xuUlJBQuABAA!16s%2Fg%2F11r_xfnq0t?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 5),
(59, 'Centro Boliviano de Intervencionismo del Dolor', 'Horario de Atenci?n: Lunes a S?bado 10 AM-7 PM, http://www.doctorenriquefernandez.com/', 'Privado', '1', 'FW57+J8 La Paz', -16.540796, -68.086714, 77259799, 6, 'https://www.google.com/maps/place/Centro+Boliviano+de+Intervencionismo+del+Dolor/@-16.5410232,-68.0892783,17.37z/data=!4m7!3m6!1s0x915f21d43e6e06fd:0x10b74185060f75da!8m2!3d-16.5409037!4d-68.086729!15sCiJIb3NwaXRhbGVzIGNhbGFjb3RvIGxhIHBheiBib2xpdmlhkgEObWVkaWNhbF9jZW50ZXLgAQA!16s%2Fg%2F11w8swq_9g?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 5),
(60, 'Cl?nica Rengel Sur', 'Abierto las 24 horas, http://clinicarengel.org/', 'Privado', '1', 'FW48+33X, La Paz', -16.544596, -68.084774, 76693798, 6, 'https://www.google.com/maps/place/Cl%C3%ADnica+Rengel+Sur/@-16.5419145,-68.0886293,16.56z/data=!4m7!3m6!1s0x915f212e34270145:0x26bb50385b90c299!8m2!3d-16.5447569!4d-68.0847607!15sCiJIb3NwaXRhbGVzIGNhbGFjb3RvIGxhIHBheiBib2xpdmlhWiQiImhvc3BpdGFsZXMgY2FsYWNvdG8gbGEgcGF6IGJvbGl2aWGSAQ5tZWRpY2FsX2NsaW5pY5oBJENoZERTVWhOTUc5blMwVkpRMEZuU1VOeWFITXRlVEZuUlJBQuABAA!16s%2Fg%2F11c1s2_gb1?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 2),
(61, 'Multisalud Centro M?dico', 'Horario de Atenci?n: Lunes a S?bado 9 AM-7 PM, https://multisalud.com.bo/', 'Privado', '1', 'FW57+VM La Paz', -16.540255, -68.085913, 22121253, 6, 'https://www.google.com/maps/place/Multisalud+Centro+M%C3%A9dico/@-16.5419145,-68.0886293,16.56z/data=!4m7!3m6!1s0x915f210075a37b93:0x3b35be18e6aaff46!8m2!3d-16.5403602!4d-68.0858573!15sCiJIb3NwaXRhbGVzIGNhbGFjb3RvIGxhIHBheiBib2xpdmlhkgEObWVkaWNhbF9jZW50ZXLgAQA!16s%2Fg%2F11wmsf50w3?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 2),
(62, 'Rheumasur', 'Horario de Atenci?n: 2:30-5:30 PM', 'Privado', '1', 'FW67+6H La Paz', -16.539387, -68.086132, NULL, 6, 'https://www.google.com/maps/place/Rheumasur/@-16.5419145,-68.0886293,16.56z/data=!4m7!3m6!1s0x915f212505d6f2cf:0x7c7a7b57bebc9162!8m2!3d-16.5394762!4d-68.0861163!15sCiJIb3NwaXRhbGVzIGNhbGFjb3RvIGxhIHBheiBib2xpdmlhkgEObWVkaWNhbF9jZW50ZXLgAQA!16s%2Fg%2F11b7q54x89?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 5),
(63, 'Centro M?dico De Deportes By Dr. Cruz', 'Horario de Atenci?n: Lunes a Viernes 8:30?AM-12:30?PM, 2:30-8?PM', 'Privado', '1', 'FW68+G4 La Paz', -16.538575, -68.084715, 77702167, 6, 'https://www.google.com/maps/place/Centro+M%C3%A9dico+De+Deportes+By+Dr.+Cruz/@-16.5419145,-68.0886293,16.56z/data=!4m7!3m6!1s0x915f2108a43f799d:0x6abdeae5de833d8a!8m2!3d-16.5386697!4d-68.0847157!15sCiJIb3NwaXRhbGVzIGNhbGFjb3RvIGxhIHBheiBib2xpdmlhkgEObWVkaWNhbF9jZW50ZXLgAQA!16s%2Fg%2F11lcls9ccx?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 5),
(64, 'Source Medicale', 'Horario de Atenci?n: Lunes a Viernes 8 AM-9 PM ', 'Privado', '1', 'FW38+XW3, Calle 15, La Paz', -16.544862, -68.082744, 22790663, 6, 'https://www.google.com/maps/place/Source+Medicale/@-16.5419145,-68.0886293,16.56z/data=!4m7!3m6!1s0x915f2131dca82acb:0x896a3ff725094ed6!8m2!3d-16.5451138!4d-68.0827142!15sCiJIb3NwaXRhbGVzIGNhbGFjb3RvIGxhIHBheiBib2xpdmlhkgEIaG9zcGl0YWzgAQA!16s%2Fg%2F119v5m25m?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 5),
(65, 'Cl?nica Veterinaria Animalis Sanitas', 'Horario de Atencion: Lunes a S?bado 8:30 AM-7 PM', 'Privado', '1', 'FW63+R6 La Paz', -16.537576, -68.096956, 69987729, 6, 'https://www.google.com/maps/place/Cl%C3%ADnica+Veterinaria+Animalis+Sanitas/@-16.5379155,-68.1064408,16z/data=!4m10!1m2!2m1!1sveterinario+calacoto+la+paz+bolivia!3m6!1s0x915f21119f316531:0x2c8ed0aec5e235d5!8m2!3d-16.5379161!4d-68.0969131!15sCiN2ZXRlcmluYXJpbyBjYWxhY290byBsYSBwYXogYm9saXZpYZIBDHZldGVyaW5hcmlhbuABAA!16s%2Fg%2F11vx235h4t?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 4),
(66, 'Veterinaria Dr. de La Pe?a', 'Horario de Atenci?n: 8:10 AM-5:10 PM, https://www.facebook.com/profile.php?id=100054543966616', 'Privado', '1', '71554417', -16.540991, -68.095025, 71554417, 6, 'https://www.google.com/maps/place/Veterinaria+Dr.+de+La+Pe%C3%B1a/@-16.5379155,-68.1064408,16z/data=!4m10!1m2!2m1!1sveterinario+calacoto+la+paz+bolivia!3m6!1s0x915f210c1e2275cb:0xc5634194e9f02b85!8m2!3d-16.5413885!4d-68.0948406!15sCiN2ZXRlcmluYXJpbyBjYWxhY290byBsYSBwYXogYm9saXZpYVolIiN2ZXRlcmluYXJpbyBjYWxhY290byBsYSBwYXogYm9saXZpYZIBDHZldGVyaW5hcmlhbpoBJENoZERTVWhOTUc5blMwVkpRMEZuU1VSMGExODJOM0pSUlJBQuABAA!16s%2Fg%2F11l2x4cp1k?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 4),
(67, 'Veterinaria del Sur', 'Horario de Atenci?n: Lunes a S?bado 9 AM-4PM', 'Privado', '1', 'FW68+8P La Paz', -16.539018, -68.083196, 70616221, 6, 'https://www.google.com/maps/place/Veterinaria+del+Sur/@-16.5402989,-68.0858233,16.52z/data=!4m10!1m2!2m1!1sveterinario+calacoto+la+paz+bolivia!3m6!1s0x915f21e3517a9ebd:0xe92b1e7bffcf9bfb!8m2!3d-16.5391651!4d-68.0832181!15sCiN2ZXRlcmluYXJpbyBjYWxhY290byBsYSBwYXogYm9saXZpYVolIiN2ZXRlcmluYXJpbyBjYWxhY290byBsYSBwYXogYm9saXZpYZIBDHZldGVyaW5hcmlhbpoBJENoZERTVWhOTUc5blMwVkpRMEZuU1VSSGJ6bHhSVGhSUlJBQuABAA!16s%2Fg%2F11q1lzcbxz?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 4),
(68, 'Animall Centro M?dico Veterinario', 'Horario de Atenci?n: Lunes a S?bado 8 AM-8 PM', 'Privado', '1', 'FW6F+J8 La Paz', -16.538369, -68.076796, 69997321, 6, 'https://www.google.com/maps/place/Animall+Centro+M%C3%A9dico+Veterinario/@-16.5384619,-68.0833411,16z/data=!4m10!1m2!2m1!1sveterinario+calacoto+la+paz+bolivia!3m6!1s0x915f215238637fd7:0x609640d0078a714d!8m2!3d-16.5384623!4d-68.0767006!15sCiN2ZXRlcmluYXJpbyBjYWxhY290byBsYSBwYXogYm9saXZpYVolIiN2ZXRlcmluYXJpbyBjYWxhY290byBsYSBwYXogYm9saXZpYZIBDHZldGVyaW5hcmlhbpoBJENoZERTVWhOTUc5blMwVkpRMEZuU1VSTFoxcGhVM1JuUlJBQuABAA!16s%2Fg%2F11fsn3b7ql?entry=ttu&g_ep=EgoyMDI0MTExMy4xIKXMDSoASAFQAw%3D%3D', 4),
(69, 'Ba?o P?blico', 'Horario de Atencion: 9 AM-7 PM', 'Publico', '1', 'calle 13 calacoto, al frente automovil club boliviano', -16.539257, -68.086268, NULL, 6, 'https://maps.app.goo.gl/xBai2Sx69UYN7LrZ6', 3),
(70, 'nombre', 'Descripcion', NULL, NULL, 'direccion', -34.600000, -23.600000, NULL, NULL, NULL, NULL),
(71, 'nombre1', 'des', 'Publico', '1', 'Direccion2', 34.500000, 34.600000, NULL, 2, 'Mapas', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `adcli`
--
ALTER TABLE `adcli`
  ADD PRIMARY KEY (`id_admin`,`id_cliente`),
  ADD KEY `fk_adcli_cliente` (`id_cliente`);

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indices de la tabla `adse`
--
ALTER TABLE `adse`
  ADD PRIMARY KEY (`id_admin`,`id_servicio`),
  ADD KEY `fk_adse_servicio` (`id_servicio`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `cliser`
--
ALTER TABLE `cliser`
  ADD PRIMARY KEY (`id_cliente`,`id_servicio`),
  ADD KEY `fk_cliser_servicio` (`id_servicio`);

--
-- Indices de la tabla `distrito`
--
ALTER TABLE `distrito`
  ADD PRIMARY KEY (`id_distrito`);

--
-- Indices de la tabla `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`id_evento`),
  ADD KEY `fk_id_servicio` (`id_servicio`);

--
-- Indices de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`id_imagen`),
  ADD KEY `fk_imagenes_servicio` (`id_servicio`);

--
-- Indices de la tabla `reporte_usuario`
--
ALTER TABLE `reporte_usuario`
  ADD PRIMARY KEY (`id_reporte`),
  ADD KEY `fk_reporte_cliente` (`id_cliente`),
  ADD KEY `fk_reporte_servicio` (`id_servicio`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`id_servicio`),
  ADD KEY `fk_id_distrito` (`id_distrito`),
  ADD KEY `fk_id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `distrito`
--
ALTER TABLE `distrito`
  MODIFY `id_distrito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `evento`
--
ALTER TABLE `evento`
  MODIFY `id_evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `id_imagen` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reporte_usuario`
--
ALTER TABLE `reporte_usuario`
  MODIFY `id_reporte` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `id_servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `adcli`
--
ALTER TABLE `adcli`
  ADD CONSTRAINT `fk_adcli_admin` FOREIGN KEY (`id_admin`) REFERENCES `administrador` (`id_admin`),
  ADD CONSTRAINT `fk_adcli_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);

--
-- Filtros para la tabla `adse`
--
ALTER TABLE `adse`
  ADD CONSTRAINT `fk_adse_admin` FOREIGN KEY (`id_admin`) REFERENCES `administrador` (`id_admin`),
  ADD CONSTRAINT `fk_adse_servicio` FOREIGN KEY (`id_servicio`) REFERENCES `servicio` (`id_servicio`);

--
-- Filtros para la tabla `cliser`
--
ALTER TABLE `cliser`
  ADD CONSTRAINT `fk_cliser_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `fk_cliser_servicio` FOREIGN KEY (`id_servicio`) REFERENCES `servicio` (`id_servicio`);

--
-- Filtros para la tabla `evento`
--
ALTER TABLE `evento`
  ADD CONSTRAINT `fk_evento_servicio` FOREIGN KEY (`id_servicio`) REFERENCES `servicio` (`id_servicio`);

--
-- Filtros para la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD CONSTRAINT `fk_imagenes_servicio` FOREIGN KEY (`id_servicio`) REFERENCES `servicio` (`id_servicio`);

--
-- Filtros para la tabla `reporte_usuario`
--
ALTER TABLE `reporte_usuario`
  ADD CONSTRAINT `fk_reporte_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `fk_reporte_servicio` FOREIGN KEY (`id_servicio`) REFERENCES `servicio` (`id_servicio`);

--
-- Filtros para la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD CONSTRAINT `fk_id_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`),
  ADD CONSTRAINT `fk_id_distrito` FOREIGN KEY (`id_distrito`) REFERENCES `distrito` (`id_distrito`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
