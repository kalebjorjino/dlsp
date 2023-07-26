-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-06-2021 a las 13:41:00
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dlsp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_actividad`
--

CREATE TABLE `tm_actividad` (
  `acti_id` int(11) NOT NULL,
  `acti_nom` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tm_actividad`
--

INSERT INTO `tm_actividad` (`acti_id`, `acti_nom`, `est`) VALUES
(1, '1.1. Monitoreo G.A.S.C Regular DdV', 1),
(2, '1.2. Implementos y equipos PMAC AU', 1),
(3, '1.3. Gastos operativos y gestion PMAC AU (CC y monitores)', 1),
(4, '1.4. Infraestructura y operaci?n local PMAC AU', 1),
(5, '1.5. Funcionamiento asistencia tecnica del PMAC AU', 1),
(6, '1.6. Seguros y atencion medica (CC y monitores)', 1),
(7, '1.8. RR.HH. Subvencion mensual monitoreo', 1),
(8, '1.7. Seguros y examenes medicos Eq. T?cnico', 1),
(9, '1.9. RR.HH. PRO (equipo T?cnico)', 1),
(10, '1.10. RR.HH Equipo Consultores Especializados', 1),
(11, '2.1. Programa de Fortalecimiento de HHBB', 1),
(12, '2.2. Programa de fortalecimiento de capacidades-Talleres', 1),
(13, '2.3. Programa de fortalecimiento de capacidades t?cnicas - Plan de Pasantias', 1),
(14, '3.1. Plan difusion de monitores: rondas informativas trimestrales', 1),
(15, '3.2. Elaboracion de boletin informativo - 2 ediciones', 1),
(16, '3.3. Video institucional PMAC AU', 1),
(17, '3.4. Comunicaci?n externa del PMAC (eventos, reuniones, talleres, congresos)', 1),
(18, '4.3. Sitematizacion y analisis de hallazgos educativos comunicacionales (saberes machiguengas)', 1),
(19, '4.2. Plan de Educacion Ambiental (ponte pilas, CC limpia y saludable, composteras, microrrellenos)', 1),
(20, '4.1. Cine ambiental: proyeccion en comunidades', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_beneficiario`
--

CREATE TABLE `tm_beneficiario` (
  `beni_id` int(11) NOT NULL,
  `beni_nom` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tm_beneficiario`
--

INSERT INTO `tm_beneficiario` (`beni_id`, `beni_nom`, `est`) VALUES
(1, 'ALEX ZANDER MAURI CUMPI', 1),
(2, 'AMANCIO PEREZ PALOMINO', 1),
(3, 'ARMANDO CARDENAS PEREIRA', 1),
(4, 'CRISTIAN NORIZO MATAMALA', 1),
(5, 'DIEGO CARDENAS MATEO', 1),
(6, 'DIOMER CARDENAS MATEO', 1),
(7, 'EDGAR CARDENAS MINA', 1),
(8, 'ELENA MU?OZ ARANA', 1),
(9, 'FERNY AVONANTSI VICENTE', 1),
(10, 'FREDY CHAVEZ LORES', 1),
(11, 'JAIME RIOS MANITI', 1),
(12, 'JAVIER CAHUENIRE CORINTI', 1),
(13, 'JHOEL GOSHI KATEGARI', 1),
(14, 'JHONY OSCCO MEJIA', 1),
(15, 'JOAQUIN CARDENAS RIO', 1),
(16, 'JOSEFINA ARANA GOMEZ', 1),
(17, 'LEONEL MENTIANI TENTEYO', 1),
(18, 'MARTIN IGNACIO MARIN', 1),
(19, 'PERCY YOVENI GOSHI', 1),
(20, 'REGINO MIRANDA CORINTI', 1),
(21, 'RONAL ANDRES PEREIRA', 1),
(22, 'SAMUEL MINA ROJAS', 1),
(23, 'VICENTE DUE?AS PARQUI', 1),
(24, 'YEISON SILVA VALENCIA', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_cargo`
--

CREATE TABLE `tm_cargo` (
  `carg_id` int(11) NOT NULL,
  `carg_nom` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tm_cargo`
--

INSERT INTO `tm_cargo` (`carg_id`, `carg_nom`, `est`) VALUES
(1, 'Comité Coordinación', 1),
(2, 'Monitor', 1),
(3, 'técnico', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_cobeneficiarios`
--

CREATE TABLE `tm_cobeneficiarios` (
  `cobe_id` int(11) NOT NULL,
  `cobe_nom` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tm_cobeneficiarios`
--

INSERT INTO `tm_cobeneficiarios` (`cobe_id`, `cobe_nom`, `est`) VALUES
(1, '1', 1),
(2, '2', 1),
(3, '3', 1),
(4, '4', 1),
(5, '5', 1),
(6, '6', 1),
(7, '7', 1),
(8, '8', 1),
(9, '9', 1),
(10, '10', 1),
(11, '11', 1),
(12, '12', 1),
(13, '13', 1),
(14, '14', 1),
(15, '15', 1),
(16, '16', 1),
(17, '17', 1),
(18, '18', 1),
(19, '19', 1),
(20, '20', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_codigo`
--

CREATE TABLE `tm_codigo` (
  `cod_id` int(11) NOT NULL,
  `cod_nom` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tm_codigo`
--

INSERT INTO `tm_codigo` (`cod_id`, `cod_nom`, `est`) VALUES
(1, '8322101', 1),
(2, '8322104', 1),
(3, '8323106', 1),
(4, '8323107', 1),
(5, '8324006', 1),
(6, '8323204', 1),
(7, '8323201', 1),
(8, '8323202', 1),
(9, '8323203', 1),
(10, '8323205', 1),
(11, '8323206', 1),
(12, '8323207', 1),
(13, '8323208', 1),
(14, '8323211', 1),
(15, '8323212', 1),
(16, '8323101', 1),
(17, '8323102', 1),
(18, '8323103', 1),
(19, '8323104', 1),
(20, '8323105', 1),
(21, '8324001', 1),
(22, '8325001', 1),
(23, '8325002', 1),
(24, '8325003', 1),
(25, '8325004', 1),
(26, '8321101', 1),
(27, '8321102', 1),
(28, '8321103', 1),
(29, '8321201', 1),
(30, '8321202', 1),
(31, '8321203', 1),
(32, '8321204', 1),
(33, '8321205', 1),
(34, '8321206', 1),
(35, '8321303', 1),
(36, '8321304', 1),
(37, '8321305', 1),
(38, '8321307', 1),
(39, '8321309', 1),
(40, '8322301', 1),
(41, '8322302', 1),
(42, '8322303', 1),
(43, '8322402', 1),
(44, '8322404', 1),
(45, '8322405', 1),
(46, '8322406', 1),
(47, '8322606', 1),
(48, '8322602', 1),
(49, '8322603', 1),
(50, '8322607', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_componente`
--

CREATE TABLE `tm_componente` (
  `comp_id` int(11) NOT NULL,
  `comp_nom` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tm_componente`
--

INSERT INTO `tm_componente` (`comp_id`, `comp_nom`, `est`) VALUES
(1, '1.-Monitoreo Participativo', 1),
(2, '2.-Fortalecimiento de capacidades', 1),
(3, '3.-Comunicacion y difusión', 1),
(4, '4.-Educacion ambiental', 1),
(5, '5.-Evaluacion del Proyecto', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_con_gastos`
--

CREATE TABLE `tm_con_gastos` (
  `cong_id` int(11) NOT NULL,
  `cong_nom` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tm_con_gastos`
--

INSERT INTO `tm_con_gastos` (`cong_id`, `cong_nom`, `est`) VALUES
(1, 'SERV. DE TEL?FONO', 1),
(2, 'TRANSPORTE TERRESTRE', 1),
(3, 'ACCESORIOS LOGISTICOS', 1),
(4, 'ALMUERZO', 1),
(5, 'TRANSPORTE TERRESTRE', 1),
(6, 'ANTIVIRUS', 1),
(7, 'BANNER', 1),
(8, 'ACCESORIOS LOGISTICOS', 1),
(9, 'REFRIGERIO', 1),
(10, 'LAPICEROS', 1),
(11, 'CAJA DE MASCARILLAS', 1),
(12, 'CENA', 1),
(13, 'DESAYUNO', 1),
(14, 'PAPEL BOND', 1),
(15, 'ACCESORIOS LOGISTICOS', 1),
(16, 'TRANSPORTE TERRESTRE', 1),
(17, 'MOUSE INAL?MBRICO', 1),
(18, 'PRUEBA ANTIGENO COVID', 1),
(19, 'PREMIACI?N DE TALLERES', 1),
(20, 'ALIMENTACI?N ', 1),
(21, 'ALQUILER DE BOTE Y MOTOR ', 1),
(22, 'ANALISTA ESTADISTICO Y PROC.INFORMACION ', 1),
(23, 'APOYO Y SOPORTE A COMUNICADORA', 1),
(24, 'ARTICULOS DE LIMPIEZA VARIOS', 1),
(25, 'COBRO DE COMISIONES  POR CCI', 1),
(26, 'BAL?N DE GAS', 1),
(27, 'GAL?N DE GASOLINA', 1),
(28, 'COMUNICADORA Y REGISTRO AUDIOVISUAL PMAC AU', 1),
(29, 'CONSULTORA - EDUACION AMBIENTAL X 10 DIAS ENERO', 1),
(30, 'CONSULTORA - GESTION SOCIAL X 10 DIAS ENERO', 1),
(31, 'CONSULTORIA - COMUNICACION SOCIAL ', 1),
(32, 'COORDINADOR DE CAMPO ', 1),
(33, 'ELAB.PLAN EDUCACION AMBIENTAL ', 1),
(34, 'ESPECIALISTA AMBIENTAL ', 1),
(35, 'EXTENSI?JN ELECTRICA , CLAVOS', 1),
(36, 'FRANELA, TINER, REFRIGERIOS', 1),
(37, 'HOSPEDAJE ', 1),
(38, 'PAGO SERVICIO ENERGIA ELECTRICO ', 1),
(39, 'PAGO SUBVENCI?N ACTIVIDADES DE MONITOR COMUNITARIO', 1),
(40, 'PAGO SUBVENCI?N COORDINADOR DE MONITORES ', 1),
(41, 'PAGO SUBVENCI?N MONITORES COMUNITARIO', 1),
(42, 'PASAJE ?EREO', 1),
(43, 'PROVISION BENEFICIOS SOCIALES ', 1),
(44, 'SERVICIO DE INTERNET', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_cuenta`
--

CREATE TABLE `tm_cuenta` (
  `cuent_id` int(11) NOT NULL,
  `cuent_nom` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tm_cuenta`
--

INSERT INTO `tm_cuenta` (`cuent_id`, `cuent_nom`, `est`) VALUES
(1, 'SERV. DE TEL?FONO', 1),
(2, 'TRANSPORTE TERRESTRE', 1),
(3, 'ACCESORIOS LOGISTICOS', 1),
(4, 'ALMUERZO', 1),
(5, 'TRANSPORTE TERRESTRE', 1),
(6, 'ANTIVIRUS', 1),
(7, 'BANNER', 1),
(8, 'ACCESORIOS LOGISTICOS', 1),
(9, 'REFRIGERIO', 1),
(10, 'LAPICEROS', 1),
(11, 'CAJA DE MASCARILLAS', 1),
(12, 'CENA', 1),
(13, 'DESAYUNO', 1),
(14, 'PAPEL BOND', 1),
(15, 'ACCESORIOS LOGISTICOS', 1),
(16, 'TRANSPORTE TERRESTRE', 1),
(17, 'TRANSPORTE TERRESTRE', 1),
(18, 'TRANSPORTE TERRESTRE', 1),
(19, 'TRANSPORTE TERRESTRE', 1),
(20, 'MOUSE INAL?MBRICO', 1),
(21, 'PRUEBA ANTIGENO COVID', 1),
(22, 'PREMIACI?N DE TALLERES', 1),
(23, 'ALIMENTACI?N ', 1),
(24, 'ALQUILER DE BOTE Y MOTOR ', 1),
(25, 'ANALISTA ESTADISTICO Y PROC.INFORMACION ', 1),
(26, 'APOYO Y SOPORTE A COMUNICADORA', 1),
(27, 'ARTICULOS DE LIMPIEZA VARIOS', 1),
(28, 'COBRO DE COMISIONES  POR CCI', 1),
(29, 'BAL?N DE GAS', 1),
(30, 'GAL?N DE GASOLINA', 1),
(31, 'COMUNICADORA Y REGISTRO AUDIOVISUAL PMAC AU', 1),
(32, 'CONSULTORA - EDUACION AMBIENTAL X 10 DIAS ENERO', 1),
(33, 'CONSULTORA - GESTION SOCIAL X 10 DIAS ENERO', 1),
(34, 'CONSULTORIA - COMUNICACION SOCIAL ', 1),
(35, 'COORDINADOR DE CAMPO ', 1),
(36, 'ELAB.PLAN EDUCACION AMBIENTAL ', 1),
(37, 'ESPECIALISTA AMBIENTAL ', 1),
(38, 'EXTENSI?JN ELECTRICA , CLAVOS', 1),
(39, 'FRANELA, TINER, REFRIGERIOS', 1),
(40, 'HOSPEDAJE ', 1),
(41, 'PAGO SERVICIO ENERGIA ELECTRICO ', 1),
(42, 'PAGO SUBVENCI?N ACTIVIDADES DE MONITOR COMUNITARIO', 1),
(43, 'PAGO SUBVENCI?N COORDINADOR DE MONITORES ', 1),
(44, 'PAGO SUBVENCI?N MONITORES COMUNITARIO', 1),
(45, 'PASAJE ?EREO', 1),
(46, 'PROVISION BENEFICIOS SOCIALES ', 1),
(47, 'SERVICIO DE INTERNET', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_lgastos`
--

CREATE TABLE `tm_lgastos` (
  `lgst_id` int(11) NOT NULL,
  `lgst_nom` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tm_lgastos`
--

INSERT INTO `tm_lgastos` (`lgst_id`, `lgst_nom`, `est`) VALUES
(1, 'AENDOSHIARI', 1),
(2, 'CAMANA', 1),
(3, 'CN TICUMPINIA', 1),
(4, 'CUSCO', 1),
(5, 'IQUITOS', 1),
(6, 'IVOCHOTE', 1),
(7, 'KEPASHIATO', 1),
(8, 'KIENI', 1),
(9, 'KIETENI', 1),
(10, 'KIMBIRI - VILLA KINTIARINA', 1),
(11, 'KUMPIRO', 1),
(12, 'LIMA', 1),
(13, 'MANITINKIARI', 1),
(14, 'MANTALO', 1),
(15, 'MAZOKIATO', 1),
(16, 'MONTE CARMELO', 1),
(17, 'PALMA REAL', 1),
(18, 'PIRI', 1),
(19, 'POYENTIMARI', 1),
(20, 'QUILLABAMBA', 1),
(21, 'RUTA QUILLABAMBA-KITENI', 1),
(22, 'SAMANIATO', 1),
(23, 'SARINGAVENI', 1),
(24, 'SHIMAA', 1),
(25, 'TALANCATO', 1),
(26, 'TICUMPINIIA', 1),
(27, 'TIMPIA', 1),
(28, 'TUPAC AMARU', 1),
(29, 'VILLA KINTIARINA', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_proveedor`
--

CREATE TABLE `tm_proveedor` (
  `prov_id` int(11) NOT NULL,
  `prov_nom` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tm_proveedor`
--

INSERT INTO `tm_proveedor` (`prov_id`, `prov_nom`, `est`) VALUES
(1, 'FRUTIMAX DE: Rimachi Farf?n Marisela', 1),
(2, 'KAIROS RESTAURANT DE: Trujillo Hancco Carmen Mercy', 1),
(3, 'ADRIANA ARCE LOVAT?N', 1),
(4, 'AGROINDUSTRIAL Y COMERCIAL ARRIOLA E HIJOS / AICASA', 1),
(5, 'ALAGON ASCARZA JORAM / MULTISERVICIO MAROT', 1),
(6, 'ALDO RAMOS ORE-COMERCIAL EL HUEQUITO', 1),
(7, 'ALFREDO TAPARA QUISPE / RESTAURANT TAPARACOS', 1),
(8, 'ALTA MONTA?A S.A.C.', 1),
(9, 'ALTOMAYO PERU SAC', 1),
(10, 'AMERICA MOVIL PERU SAC', 1),
(11, 'ANGULO ROSERO MIRELLA / EL BIJAO RESTAURANT', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_proyecto`
--

CREATE TABLE `tm_proyecto` (
  `pry_id` int(11) NOT NULL,
  `pry_nom` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_proyecto`
--

INSERT INTO `tm_proyecto` (`pry_id`, `pry_nom`, `est`) VALUES
(1, 'PMAC-AU', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_registro`
--

CREATE TABLE `tm_registro` (
  `reg_id` int(11) NOT NULL,
  `us_id` int(11) NOT NULL,
  `reg_fech` date DEFAULT NULL,
  `pry_id` int(11) NOT NULL,
  `prov_id` int(11) NOT NULL,
  `reg_prov` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `reg_doc` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `cod_id` int(11) NOT NULL,
  `beni_id` int(11) NOT NULL,
  `cobe_id` int(11) NOT NULL,
  `carg_id` int(11) NOT NULL,
  `comp_id` int(11) NOT NULL,
  `acti_id` int(11) NOT NULL,
  `cuent_id` int(11) NOT NULL,
  `lgst_id` int(11) NOT NULL,
  `tgst_id` int(11) NOT NULL,
  `serv_id` int(11) NOT NULL,
  `cong_id` int(11) NOT NULL,
  `reg_monto` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `reg_descrip` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `reg_estado` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `fech_crea` datetime DEFAULT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_registro`
--

INSERT INTO `tm_registro` (`reg_id`, `us_id`, `reg_fech`, `pry_id`, `prov_id`, `reg_prov`, `reg_doc`, `cod_id`, `beni_id`, `cobe_id`, `carg_id`, `comp_id`, `acti_id`, `cuent_id`, `lgst_id`, `tgst_id`, `serv_id`, `cong_id`, `reg_monto`, `reg_descrip`, `reg_estado`, `fech_crea`, `est`) VALUES
(59, 18, '2021-06-28', 1, 6, 'LA VACA JACINTA', '2020202020', 1, 1, 11, 2, 2, 13, 1, 5, 1, 1, 11, '15000', '<p>PRUEBA DE ALMACENAMIENTO 28062021 HORAS 13:41</p>', 'Activo', '2021-06-28 13:41:06', 1),
(60, 18, '2021-06-27', 1, 4, 'LA VACA JACINTA recargada', '30303030', 9, 9, 10, 2, 3, 9, 1, 6, 1, 1, 11, '25000', '<p>PRUEBA DE REGISTRO NUMERO 02 FECHA 28062021 HORAS 13:43</p>', 'Activo', '2021-06-28 13:43:35', 1),
(61, 18, '2021-06-30', 1, 6, 'Isabel Gonzales Melendez S.A.C', '44310889', 13, 2, 1, 2, 3, 13, 1, 13, 1, 1, 14, '8000', '<p>Registro numero 03 prueba de ingreso y coneccion db 28062021</p>', 'Activo', '2021-06-28 18:00:49', 1),
(62, 20, '2021-06-20', 1, 4, 'REGISTRO NUMERO 01', '40660268', 11, 15, 18, 2, 2, 11, 7, 1, 1, 1, 13, '19000', '<p>Prueba de ingreso de datos 01</p>', 'Activo', '2021-06-28 22:49:51', 1),
(63, 20, '2021-06-02', 1, 6, 'ZAYURI HERRERA', '987654321', 12, 1, 16, 1, 2, 12, 1, 1, 1, 1, 1, '33000', '<p>PRUEBA ZAYURI INGRRESO DE DATA PASADA</p>', 'Activo', '2021-06-28 23:37:53', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_servicio`
--

CREATE TABLE `tm_servicio` (
  `serv_id` int(11) NOT NULL,
  `serv_nom` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tm_servicio`
--

INSERT INTO `tm_servicio` (`serv_id`, `serv_nom`, `est`) VALUES
(1, 'SERV DESCONOCIDO', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_tgastos`
--

CREATE TABLE `tm_tgastos` (
  `tgst_id` int(11) NOT NULL,
  `tgst_nom` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tm_tgastos`
--

INSERT INTO `tm_tgastos` (`tgst_id`, `tgst_nom`, `est`) VALUES
(1, 'LUGAR DE GASTO DESCONOCIDO', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_usuario`
--

CREATE TABLE `tm_usuario` (
  `us_id` int(11) NOT NULL,
  `us_nom` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `us_ap` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `us_correo` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `us_pass` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `rol_id` int(11) DEFAULT NULL,
  `fech_crea` datetime DEFAULT NULL,
  `fech_mod` datetime DEFAULT NULL,
  `fech_elim` datetime DEFAULT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_usuario`
--

INSERT INTO `tm_usuario` (`us_id`, `us_nom`, `us_ap`, `us_correo`, `us_pass`, `rol_id`, `fech_crea`, `fech_mod`, `fech_elim`, `est`) VALUES
(17, 'admin', 'Administrador', 'admin@gmail.com', 'admin', 2, '2021-06-28 10:46:33', NULL, NULL, 1),
(18, 'christian', 'Ramirez Mauriz', 'christian', '123456', 2, '2021-06-28 10:53:04', NULL, NULL, 1),
(19, 'registrador', 'registrado', 'registrador', 'registrador', 1, '2021-06-28 21:50:14', NULL, NULL, 1),
(20, 'ALEX ZANDER', 'MAURI CUMPI', 'AMAURIC', '44455138', 1, '2021-06-28 21:53:09', NULL, NULL, 1),
(21, 'AMANCIO', 'PEREZ PALOMINO', 'APEREZP', '45404556', 1, '2021-06-28 21:53:41', NULL, NULL, 1),
(22, 'ARMANDO', 'CARDENAS PEREIRA', 'ACARDENASP', '23971082', 1, '2021-06-28 21:56:33', NULL, NULL, 1),
(23, 'CRISTIAN', 'NORIZO MATAMALA', 'CNORIZOM', '47764160', 1, '2021-06-28 21:56:57', NULL, NULL, 1),
(24, 'DIEGO', 'CARDENAS MATEO', 'DCARDENASM', '70163655', 1, '2021-06-28 21:57:28', NULL, NULL, 1),
(25, 'DIOMER', 'CARDENAS MATEO', 'DCARDENASMA', '45488953', 1, '2021-06-28 21:57:53', NULL, NULL, 1),
(26, 'EDGAR', 'CARDENAS MINA', 'ECARDENASM', '63374916', 1, '2021-06-28 21:58:19', NULL, NULL, 1),
(27, 'ELENA', 'MUÑOZ ARANA', 'EMUNOZA', '25004856', 1, '2021-06-28 21:59:08', NULL, NULL, 1),
(28, 'FERNY', 'AVONANTSI VICENTE', 'FAVONANTSIV', '44150744', 1, '2021-06-28 21:59:33', NULL, NULL, 1),
(29, 'FREDY', 'CHAVEZ LORES', 'FCHAVEZL', '44335187', 1, '2021-06-28 21:59:58', NULL, NULL, 1),
(30, 'JAIME', 'RIOS MANITI', 'JCAHUENIREC', '24959847', 1, '2021-06-28 22:00:23', NULL, NULL, 1),
(31, 'JHOEL', 'GOSHI KATEGARI', 'JGOSHIK', '48216856', 1, '2021-06-28 22:00:46', NULL, NULL, 1),
(32, 'JHONY', 'OSCCO MEJIA', 'JOSCCOM', '80610223', 1, '2021-06-28 22:01:12', NULL, NULL, 1),
(33, 'JOAQUIN', 'CARDENAS RIO', 'JCARDENASR', '23970954', 1, '2021-06-28 22:01:36', NULL, NULL, 1),
(34, 'JOSEFINA', 'ARANA GOMEZ', 'JARANAG', '24996445', 1, '2021-06-28 22:02:06', NULL, NULL, 1),
(35, 'LEONEL', 'MENTIANI TENTEYO', 'LMENTIANIT', '43722918', 1, '2021-06-28 22:02:30', NULL, NULL, 1),
(36, 'MARTIN', 'IGNACIO MARIN', 'MIGNACIOM', '80148500', 1, '2021-06-28 22:02:53', NULL, NULL, 1),
(37, 'PERCY', 'YOVENI GOSHI', 'PYOVENIG', '42405632', 1, '2021-06-28 22:03:17', NULL, NULL, 1),
(38, 'REGINO', 'MIRANDA CORINTI', 'RMIRANDAC', '40298821', 1, '2021-06-28 22:03:40', NULL, NULL, 1),
(39, 'RONAL', 'ANDRES PEREIRA', 'RANDRESP', '25005254', 1, '2021-06-28 22:04:02', NULL, NULL, 1),
(40, 'SAMUEL', 'MINA ROJAS', 'SMINAR', '47505726', 1, '2021-06-28 22:04:25', NULL, NULL, 1),
(41, 'VICENTE', 'DUEÑAS PARQUI', 'VDUENASP', '24949882', 1, '2021-06-28 22:04:47', NULL, NULL, 1),
(42, 'YEISON', 'SILVA VALENCIA', 'YSILVAV', '80983384', 1, '2021-06-28 22:05:10', NULL, NULL, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tm_actividad`
--
ALTER TABLE `tm_actividad`
  ADD PRIMARY KEY (`acti_id`);

--
-- Indices de la tabla `tm_beneficiario`
--
ALTER TABLE `tm_beneficiario`
  ADD PRIMARY KEY (`beni_id`);

--
-- Indices de la tabla `tm_cargo`
--
ALTER TABLE `tm_cargo`
  ADD PRIMARY KEY (`carg_id`);

--
-- Indices de la tabla `tm_cobeneficiarios`
--
ALTER TABLE `tm_cobeneficiarios`
  ADD PRIMARY KEY (`cobe_id`);

--
-- Indices de la tabla `tm_codigo`
--
ALTER TABLE `tm_codigo`
  ADD PRIMARY KEY (`cod_id`);

--
-- Indices de la tabla `tm_componente`
--
ALTER TABLE `tm_componente`
  ADD PRIMARY KEY (`comp_id`);

--
-- Indices de la tabla `tm_con_gastos`
--
ALTER TABLE `tm_con_gastos`
  ADD PRIMARY KEY (`cong_id`);

--
-- Indices de la tabla `tm_cuenta`
--
ALTER TABLE `tm_cuenta`
  ADD PRIMARY KEY (`cuent_id`);

--
-- Indices de la tabla `tm_lgastos`
--
ALTER TABLE `tm_lgastos`
  ADD PRIMARY KEY (`lgst_id`);

--
-- Indices de la tabla `tm_proveedor`
--
ALTER TABLE `tm_proveedor`
  ADD PRIMARY KEY (`prov_id`);

--
-- Indices de la tabla `tm_proyecto`
--
ALTER TABLE `tm_proyecto`
  ADD PRIMARY KEY (`pry_id`);

--
-- Indices de la tabla `tm_registro`
--
ALTER TABLE `tm_registro`
  ADD PRIMARY KEY (`reg_id`);

--
-- Indices de la tabla `tm_servicio`
--
ALTER TABLE `tm_servicio`
  ADD PRIMARY KEY (`serv_id`);

--
-- Indices de la tabla `tm_tgastos`
--
ALTER TABLE `tm_tgastos`
  ADD PRIMARY KEY (`tgst_id`);

--
-- Indices de la tabla `tm_usuario`
--
ALTER TABLE `tm_usuario`
  ADD PRIMARY KEY (`us_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tm_actividad`
--
ALTER TABLE `tm_actividad`
  MODIFY `acti_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `tm_beneficiario`
--
ALTER TABLE `tm_beneficiario`
  MODIFY `beni_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `tm_cargo`
--
ALTER TABLE `tm_cargo`
  MODIFY `carg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tm_cobeneficiarios`
--
ALTER TABLE `tm_cobeneficiarios`
  MODIFY `cobe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `tm_codigo`
--
ALTER TABLE `tm_codigo`
  MODIFY `cod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `tm_componente`
--
ALTER TABLE `tm_componente`
  MODIFY `comp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tm_con_gastos`
--
ALTER TABLE `tm_con_gastos`
  MODIFY `cong_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `tm_cuenta`
--
ALTER TABLE `tm_cuenta`
  MODIFY `cuent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `tm_lgastos`
--
ALTER TABLE `tm_lgastos`
  MODIFY `lgst_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `tm_proveedor`
--
ALTER TABLE `tm_proveedor`
  MODIFY `prov_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tm_proyecto`
--
ALTER TABLE `tm_proyecto`
  MODIFY `pry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tm_registro`
--
ALTER TABLE `tm_registro`
  MODIFY `reg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `tm_servicio`
--
ALTER TABLE `tm_servicio`
  MODIFY `serv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tm_tgastos`
--
ALTER TABLE `tm_tgastos`
  MODIFY `tgst_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tm_usuario`
--
ALTER TABLE `tm_usuario`
  MODIFY `us_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
