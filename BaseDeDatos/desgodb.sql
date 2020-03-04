-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-02-2020 a las 20:52:28
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `desgodb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acabados_ec`
--

CREATE TABLE `acabados_ec` (
  `ID_AC` int(11) NOT NULL,
  `PISO_AC` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `PUERTAS_AC` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `VENTANA_AC` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `REVESTIMIENTOPARED_AC` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `REVESTIMIENTOCUBIERTA_AC` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TUMBADO_AC` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ENERGIAELECTRICAP_AC` char(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ELRMINACIONEXCRETAS_AC` char(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TIPOACABADO_AC` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caracteristicasconstruccionlote`
--

CREATE TABLE `caracteristicasconstruccionlote` (
  `ID_CCLOTE` int(11) NOT NULL,
  `ID_PH_CCLOTE` int(11) NOT NULL,
  `ID_CBP_CCLOTE` int(11) NOT NULL,
  `ID_DDB_CCLOTE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caracterizacionlote`
--

CREATE TABLE `caracterizacionlote` (
  `ID_CLOTE` int(11) NOT NULL,
  `ID_II_CLOTE` int(11) NOT NULL,
  `AREA_CLOTE` decimal(10,0) DEFAULT NULL,
  `DIMENSIONFRENTE_CLOTE` decimal(10,0) DEFAULT NULL,
  `LOCALIZACIONMANZANA_CLOTE` char(2) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `circulo_m`
--

CREATE TABLE `circulo_m` (
  `ID_CC` int(11) NOT NULL,
  `ID_M` int(11) NOT NULL,
  `LATITUD_CC` decimal(10,0) DEFAULT NULL,
  `LONGITUD_CC` decimal(10,0) DEFAULT NULL,
  `X_CC` decimal(10,0) DEFAULT NULL,
  `Y_CC` decimal(10,0) DEFAULT NULL,
  `Z_CC` decimal(10,0) DEFAULT NULL,
  `AREA_CC` decimal(10,0) DEFAULT NULL,
  `DIAMETRO_CC` decimal(10,0) DEFAULT NULL,
  `PERIMETRO` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clavebloquepiso_cclote`
--

CREATE TABLE `clavebloquepiso_cclote` (
  `ID_CBP_CCLOTE` int(11) NOT NULL,
  `CODIGOUBICACION_CBP_CCLOTE` char(16) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CODIGOBLOQUE_CBP_CCLOTE` char(3) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CODIGOPISO_CBP_CCLOTE` char(2) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CODIGOUNIDAD_CBP_CCLOTE` char(3) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CLAVEBLOQUEPISO_CBP_CCLOTE` char(24) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conyuge_pnpro`
--

CREATE TABLE `conyuge_pnpro` (
  `ID_PNPRO2` int(11) NOT NULL,
  `ID_PNPRO` int(11) DEFAULT NULL,
  `NAPELLIDO_CON_PNPRO` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NDIDENTIFICACION_CON_PNPRO` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TELEFONO_CON_PNPRO` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CORREO_CON_PNPRO` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TIPOIDENTIFICACION_CON_PNPRO` char(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CONDICIONFISICA_CON_PNPRO` char(20) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coopropietarios_illote`
--

CREATE TABLE `coopropietarios_illote` (
  `ID_COP_ILLOTE` int(11) NOT NULL,
  `NAPELLIDOS_COP_ILLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NDIDENTIFICACION_COP_ILLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `PORCENTAJE_COP_ILLOTE` decimal(10,0) DEFAULT NULL,
  `ALICUOTA_COP_ILLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `FESCRITURA_COP_ILLOTE` date DEFAULT NULL,
  `FINSCRIPCION_COP_ILLOTE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuadrado_m`
--

CREATE TABLE `cuadrado_m` (
  `ID_C` int(11) NOT NULL,
  `ID_M` int(11) NOT NULL,
  `LATITUD_C` decimal(10,0) DEFAULT NULL,
  `LONGITUD_C` decimal(10,0) DEFAULT NULL,
  `X_C` decimal(10,0) DEFAULT NULL,
  `Y_C` decimal(10,0) DEFAULT NULL,
  `Z_C` decimal(10,0) DEFAULT NULL,
  `AREA_C` decimal(10,0) DEFAULT NULL,
  `PERIMETRO_C` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datosdescriptivosbloque_cclote`
--

CREATE TABLE `datosdescriptivosbloque_cclote` (
  `ID_DDB_CCLOTE` int(11) NOT NULL,
  `NIVELPISO_DDB_CCLOTE` char(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CONDICIONFISICA_DDB_CCLOTE` char(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `VALORCULTURAL_DDB_CCLOTE` char(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ESTADOCONSERVACION_DDB_CCLOTE` char(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ANIOCONSTRUCCION_DDB_CCLOTE` int(11) DEFAULT NULL,
  `ANIORESTAURACION_DDB_CCLOTE` int(11) DEFAULT NULL,
  `AREACONSTRUIDA_DDB_CCLOTE` decimal(10,0) DEFAULT NULL,
  `USOCONSTRUCTIVOPISO_DDB_CCLOTE` char(20) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datosdunidad_vclote`
--

CREATE TABLE `datosdunidad_vclote` (
  `ID_DDU_VCLOTE` int(11) NOT NULL,
  `CLASIFICACIONVIVIENDA_DDU_VCLOTE` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TIPODOCUMENTO_DDU_VCLOTE` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TIPOVIVIENDA_DDU_VCLOTE` char(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CONDICIONOCUPACION_DDU_VCLOTE` char(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `DESCRIPCIONDOCIDEN_DDU_VCLOTE` char(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `APJEFEHGAR_DDU_VCLOTE` char(255) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ddescriptivospredio_iulote`
--

CREATE TABLE `ddescriptivospredio_iulote` (
  `ID_DDPLOTE` int(11) NOT NULL,
  `ID_DLOTE` int(11) NOT NULL,
  `NOMBRESECTOR_DDPLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NOMBREEDIFICIO_DDPLOTE` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `USOPREDIO_DDPLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TIPOPREDIO_DDPLOTE` char(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `REGIMENTENECIA_DDPLOTE` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion_ddplote`
--

CREATE TABLE `direccion_ddplote` (
  `ID_DLOTE` int(11) NOT NULL,
  `CALLEP_DLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NO_DLOTE` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `INTERSECCION_DLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion_illote`
--

CREATE TABLE `direccion_illote` (
  `ID_DIR_ILLOTE` int(11) NOT NULL,
  `PAIS_DIR_ILLOTE` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CIUDAD_DIR_ILLOTE` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CALLEP_DIR_ILLOTE` char(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NO_DIR_ILLOTE` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `INTERSECCIOM_DIR_ILLOTE` char(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CELULAR_DIR_ILLOTE` char(15) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CONVENCIONAL_DIR_ILLOTE` char(15) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CORREO` char(100) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentotitulopro_illote`
--

CREATE TABLE `documentotitulopro_illote` (
  `ID_DOC_ILLOTE` int(11) NOT NULL,
  `NNOTARIA_DOC_ILLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CANTONITITULO_DOC_ILLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `FECHAINSCRIPCION_DOC_ILLOTE` date DEFAULT NULL,
  `FECHAPROTOCOLIZACION_DOC_ILLOTE` date DEFAULT NULL,
  `INCRIPCIONTITULO_DOC_ILLOTE` char(4) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `AREA_DOC_ILLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `UNIDADES_DOC_ILLOTE` char(10) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `economialote`
--

CREATE TABLE `economialote` (
  `ID_ELOTE` int(11) NOT NULL,
  `AVALUOTIERRA_ELOTE` decimal(10,0) DEFAULT NULL,
  `AVALUOCON_ELOTE` decimal(10,0) DEFAULT NULL,
  `AVALUOTOTAL_ELOTE` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `economialote`
--

INSERT INTO `economialote` (`ID_ELOTE`, `AVALUOTIERRA_ELOTE`, `AVALUOCON_ELOTE`, `AVALUOTOTAL_ELOTE`) VALUES
(1, '2', '150', '152'),
(2, '11', '150', '161');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elementosconstructivos`
--

CREATE TABLE `elementosconstructivos` (
  `ID_EC` int(11) NOT NULL,
  `ID_EST` int(11) NOT NULL,
  `ID_AC` int(11) NOT NULL,
  `NB_EC` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NP_EC` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `UC_EC` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CUBIERTA_EC` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `USOCONSTRUCCION_EC` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estructura_ec`
--

CREATE TABLE `estructura_ec` (
  `ID_EST` int(11) NOT NULL,
  `COLUMNAS_EST` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `VIGA_EST` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `PARED_EST` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ENTREPISO_EST` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formulario`
--

CREATE TABLE `formulario` (
  `ID_FORMULARIO` int(11) NOT NULL,
  `ID_CLOTE` int(11) NOT NULL,
  `ID_ELOTE` int(11) NOT NULL,
  `ID_VCLOTE` int(11) NOT NULL,
  `ID_RLOTE` int(11) NOT NULL,
  `ID_MLOTE` int(11) NOT NULL,
  `ID_LLOTE` int(11) NOT NULL,
  `ID_ILLOTE` int(11) NOT NULL,
  `ID_GPLOTE` int(11) NOT NULL,
  `ID_EC` int(11) NOT NULL,
  `ID_IULOTE` int(11) NOT NULL,
  `ID_CCLOTE` int(11) NOT NULL,
  `ID_M` int(11) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `graficosprediolote`
--

CREATE TABLE `graficosprediolote` (
  `ID_GPLOTE` int(11) NOT NULL,
  `PLANOPREDIO_GPLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `FOTOGRAFIAFACHADA` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `identificacionlegallote`
--

CREATE TABLE `identificacionlegallote` (
  `ID_ILLOTE` int(11) NOT NULL,
  `ID_PRO` int(11) NOT NULL,
  `ID_PRE_ILLOTE` int(11) NOT NULL,
  `ID_COP_ILLOTE` int(11) NOT NULL,
  `ID_DIR_ILLOTE` int(11) NOT NULL,
  `ID_DOC_ILLOTE` int(11) NOT NULL,
  `FORMAADQUISICION` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `identificacionubicacionlote`
--

CREATE TABLE `identificacionubicacionlote` (
  `ID_IULOTE` int(11) NOT NULL,
  `ID_DDPLOTE` int(11) NOT NULL,
  `CLAVECATASTRALANTIGUO_IULOTE` char(26) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NUMEROPREDIO_IULOTE` char(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CLAVECATASTRALNUEVO_IULOTE` char(26) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `infraestructurainst_clote`
--

CREATE TABLE `infraestructurainst_clote` (
  `ID_II_CLOTE` int(11) NOT NULL,
  `AGUA_II_CLOTE` char(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ALCANTARILLADO_II_CLOTE` char(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ENERGIAELECTRICA_II_CLOTE` char(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `VIAURBANA_II_CLOTE` char(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TIPOVIAACCESO` char(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `INFRAESTRUCTURAVIAL_II_CLOTE` char(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `OTROSSERVICIOS_II_CLOTE` char(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TELEFONO_II_CLOTE` char(30) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instalacionnivelv_vclote`
--

CREATE TABLE `instalacionnivelv_vclote` (
  `ID_INV_VCLOTE` int(11) NOT NULL,
  `ACABADOPISO_INV_VCLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `EACABADOPISO_INV_VCLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `AGUAP_INV_VCLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `AGUAR_INV_VCLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `EEXCRETAS_INV_VCLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ENERGIAEP_INV_VCLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ELIMINACIONBASURA_INV_VCLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TENENCIAVIVIENDA_INV_VCLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NUMEROHABITACION_INV_VCLOTE` int(11) DEFAULT NULL,
  `NUMERODORMITORIO_INV_VCLOTE` int(11) DEFAULT NULL,
  `ESPACIODUCHARSE_INV_VCLOTE` int(11) DEFAULT NULL,
  `NUMEROHABITANTES` int(11) DEFAULT NULL,
  `NUMEROHOGARES_INV_VCLOTE` int(11) DEFAULT NULL,
  `TELEFONOCONVENCIONAL_INV_VCLOTE` tinyint(1) DEFAULT NULL,
  `NUMEROCELULARES_INV_VCLOTE` int(11) DEFAULT NULL,
  `SERVICIOINTERNET_INV_VCLOTE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `limiteslote`
--

CREATE TABLE `limiteslote` (
  `ID_LLOTE` int(11) NOT NULL,
  `NOMBRECOLINDANTES_LLOTE` char(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `AREAESCRITURA_LLOTE` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineas_m`
--

CREATE TABLE `lineas_m` (
  `ID_L` int(11) NOT NULL,
  `ID_M` int(11) NOT NULL,
  `LATITUD_L` decimal(10,0) DEFAULT NULL,
  `LONGITUD_L` decimal(10,0) DEFAULT NULL,
  `X_L` decimal(10,0) DEFAULT NULL,
  `Y_L` decimal(10,0) DEFAULT NULL,
  `Z_L` decimal(10,0) DEFAULT NULL,
  `DISTANCIA_L` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mapa`
--

CREATE TABLE `mapa` (
  `ID_M` int(11) NOT NULL,
  `NAME_M` varchar(60) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ADDRESS_M` varchar(80) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `LAT_M` float(10,6) DEFAULT NULL,
  `LNG_M` float(10,6) DEFAULT NULL,
  `TYPE_M` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `X_M` float DEFAULT NULL,
  `Y_M` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mejoraslote`
--

CREATE TABLE `mejoraslote` (
  `ID_MLOTE` int(11) NOT NULL,
  `TIPOOBRA_MLOTE` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `MATERIALES_MLOTE` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `AREA_MLOTE` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `ID_PERSONA` int(11) NOT NULL,
  `PNOMBRE_PERSONA` char(25) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `SNOMBRE_PERSONA` char(25) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `PAPELLIDO_PERSONA` char(25) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `SAPELLIDO_PERSONA` char(25) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TELEFONO_PERSONA` char(25) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CORREO_PERSONA` char(25) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CARGO_PERSONA` char(25) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `PROFESION_PERSONA` char(25) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CEDULA_PERSONA` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `FOTO_PERSONA` varchar(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `EMPRESA_PERSONA` varchar(100) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`ID_PERSONA`, `PNOMBRE_PERSONA`, `SNOMBRE_PERSONA`, `PAPELLIDO_PERSONA`, `SAPELLIDO_PERSONA`, `TELEFONO_PERSONA`, `CORREO_PERSONA`, `CARGO_PERSONA`, `PROFESION_PERSONA`, `CEDULA_PERSONA`, `FOTO_PERSONA`, `EMPRESA_PERSONA`) VALUES
(1, 'Edwin', 'Giovanny', 'Cuichan', 'Tipan', '0984467071', 'egct@outlook.es', 'Administrador', 'Ingeniero', '1723953053', 'http://lacarpa.com.mx/wp-content/uploads/2019/06/whats-appfoto-perfil.png', 'DESGO'),
(2, 'Alexander', 'Sebastian', 'Portilla', 'Bravo', '0984467072', 'alexander@outlook.es', 'Root', 'Ingeniero sistemas', '1723953054', 'http://lacarpa.com.mx/wp-content/uploads/2019/06/whats-appfoto-perfil.png', 'DESGO'),
(7, 'Carlos', 'Alexis', 'Cabascango', 'Arias', '022385592', 'ca@outlook.es', 'root', 'Desarrollador', '1723953055', NULL, 'DESGO'),
(13, 'Carla', 'Alexa', 'Cab', 'Ari', '022385593', 'cabs@outlook.es', 'root', 'Desarrollador', '1723953056', 'http://lacarpa.com.mx/wp-content/uploads/2019/06/whats-appfoto-perfil.png', 'EMAPSQ'),
(17, 'egct2', 'edwin', 'cuichan', 'egct2', '0984467073', 'egct2@outlook.es', 'Superisor', 'Ingeniero', '1723953054', 'topologiaredTotal.png', 'EMAPSQ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personajuridica_pro`
--

CREATE TABLE `personajuridica_pro` (
  `ID_PJURI` int(11) NOT NULL,
  `RAZONSOCIAL_PJURI` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `RUC_PJURI` char(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `LUGARINSCRIPCION_PJURI` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NACUERDOREGISTRO_PJURI` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NOMBREREPRESENTANTE_PJURI` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `INSCRITO_PJURI` char(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TIPOIDENTIFICACION_PJURI` char(20) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personanatural_pro`
--

CREATE TABLE `personanatural_pro` (
  `ID_PNPRO` int(11) NOT NULL,
  `NAPELLIDO_CON_PNPRO` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NDIDENTIFICACION_CON_PNPRO` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TELEFONO_CON_PNPRO` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CORREO_CON_PNPRO` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ESTADOCIVIL_PNPRO` char(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TIPOIDENTIFICACION_CON_PNPRO` char(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CONDICIONFISICA_CON_PNPRO` char(20) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ph_cclote`
--

CREATE TABLE `ph_cclote` (
  `ID_PH_CCLOTE` int(11) NOT NULL,
  `ALICUOTA_PH_CCLOTE` decimal(10,0) DEFAULT NULL,
  `AREADECLARADA_PH_CCLOTE` decimal(10,0) DEFAULT NULL,
  `UNIDADMEDIDA_PH_CCLOTE` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `AREAAUEMENTOCONSTRUCTIVO_PH_CCLOTE` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `poligono_m`
--

CREATE TABLE `poligono_m` (
  `ID_POL` int(11) NOT NULL,
  `ID_M` int(11) NOT NULL,
  `LATITUD_POL` decimal(10,0) DEFAULT NULL,
  `LONGITUD_POL` decimal(10,0) DEFAULT NULL,
  `X_POL` decimal(10,0) DEFAULT NULL,
  `Y_POL` decimal(10,0) DEFAULT NULL,
  `Z_POL` decimal(10,0) DEFAULT NULL,
  `AREA_POL` decimal(10,0) DEFAULT NULL,
  `PERIMETRO_POL` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prediotitulo_illote`
--

CREATE TABLE `prediotitulo_illote` (
  `ID_PRE_ILLOTE` int(11) NOT NULL,
  `REQUIEREPERF_PRE_ILLOTE` tinyint(1) DEFAULT NULL,
  `ANIOSSINPER_PRE_ILLOTE` char(4) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ANIOSPOS_PRE_ILLOTE` char(4) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NOMBREPUEBLO_PRE_ILLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propietariotipoj`
--

CREATE TABLE `propietariotipoj` (
  `ID_PJURI` int(11) NOT NULL,
  `ID_PRO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propietariotipon`
--

CREATE TABLE `propietariotipon` (
  `ID_PNPRO` int(11) NOT NULL,
  `ID_PRO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propietario_illote`
--

CREATE TABLE `propietario_illote` (
  `ID_PRO` int(11) NOT NULL,
  `TIPOPROPIETARIO_PER` char(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `PERSONERIAJURIDICA_PER` char(10) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `punto_m`
--

CREATE TABLE `punto_m` (
  `ID_P` int(11) NOT NULL,
  `ID_M` int(11) NOT NULL,
  `LATITUD_P` decimal(10,0) DEFAULT NULL,
  `LONGITUD_P` decimal(10,0) DEFAULT NULL,
  `X_P` decimal(10,0) DEFAULT NULL,
  `Y_P` decimal(10,0) DEFAULT NULL,
  `Z_P` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `responsableslote`
--

CREATE TABLE `responsableslote` (
  `ID_RLOTE` int(11) NOT NULL,
  `ACTUALIZADORCEDULAPASAPORTE_RLOTE` char(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ACTUALIZADORFECHA_RLOTE` date DEFAULT NULL,
  `ACTUALIZADORFIRMA_RLOTE` char(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `FISCALIZADORCEDULAPASAPORTE_RLOTE` char(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `FISCALIZADORFECHA_RLOTE` date DEFAULT NULL,
  `FISCALIZADORFIRMA_RLOTE` char(255) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE `tipousuario` (
  `ID_TIPOUSUARIO` int(11) NOT NULL,
  `NIVEL_TIPOUSUARIO` char(40) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`ID_TIPOUSUARIO`, `NIVEL_TIPOUSUARIO`) VALUES
(1, 'Administrador'),
(2, 'Visualizador'),
(3, 'Gestor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ID_USUARIO` int(11) NOT NULL,
  `ID_TIPOUSUARIO` int(11) NOT NULL,
  `ID_PERSONA` int(11) NOT NULL,
  `USUARIO_USUARIO` char(25) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CONTRASENIA_USUARIO` char(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `EMPRESA_USUARIO` char(25) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `SALT_USUARIO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ID_USUARIO`, `ID_TIPOUSUARIO`, `ID_PERSONA`, `USUARIO_USUARIO`, `CONTRASENIA_USUARIO`, `EMPRESA_USUARIO`, `SALT_USUARIO`) VALUES
(1, 1, 1, 'egct', 'f9d4e342924e42f41f4833df59e19a8e417a7c7b955796ddcaadea1400fd133b', 'DESGO', 100),
(2, 2, 2, 'aspb', 'aspb', 'DESGO', 0),
(6, 2, 7, 'cabas', 'cabas', 'DESGO', 0),
(9, 2, 13, 'cab', 'cab', 'DESGO', 0),
(13, 2, 17, 'egct2', 'egct2', 'DESGO', 0),
(14, 2, 7, 'ca', 'f58593ec0e0de29e091db9b23e19fd5d9c24423b503db0460c45a1b9ae3efa0c', 'DESGO', 620),
(16, 2, 1, 'edwinegct', 'e794d5287493453db702ed5a925d8aaee9a1d6395e5d7cca8f8fbc8a16521d26', 'DESGO', 1705),
(17, 1, 1, 'edwin4', '3a98e531dd2c780c83f81b4a97417f4909b0de2f9fc172ce56bcffd4c8424e12', 'DESGO', 5755);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `viviendacensallote`
--

CREATE TABLE `viviendacensallote` (
  `ID_VCLOTE` int(11) NOT NULL,
  `ID_DDU_VCLOTE` int(11) NOT NULL,
  `ID_INV_VCLOTE` int(11) NOT NULL,
  `CODIGOUNIDAD_VCLOTE` char(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `OBSERVACION_VCLOTE` text COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acabados_ec`
--
ALTER TABLE `acabados_ec`
  ADD PRIMARY KEY (`ID_AC`);

--
-- Indices de la tabla `caracteristicasconstruccionlote`
--
ALTER TABLE `caracteristicasconstruccionlote`
  ADD PRIMARY KEY (`ID_CCLOTE`),
  ADD KEY `FK_CARACTERISTICAPH` (`ID_PH_CCLOTE`),
  ADD KEY `FK_CLAVECARACTERISTICA` (`ID_CBP_CCLOTE`),
  ADD KEY `FK_DDESCRIPTIVOCARACTERISTICA` (`ID_DDB_CCLOTE`);

--
-- Indices de la tabla `caracterizacionlote`
--
ALTER TABLE `caracterizacionlote`
  ADD PRIMARY KEY (`ID_CLOTE`),
  ADD KEY `FK_INFRAESTRUCTURACARACTERIZACION` (`ID_II_CLOTE`);

--
-- Indices de la tabla `circulo_m`
--
ALTER TABLE `circulo_m`
  ADD PRIMARY KEY (`ID_CC`),
  ADD KEY `FK_CIRCULOM` (`ID_M`);

--
-- Indices de la tabla `clavebloquepiso_cclote`
--
ALTER TABLE `clavebloquepiso_cclote`
  ADD PRIMARY KEY (`ID_CBP_CCLOTE`);

--
-- Indices de la tabla `conyuge_pnpro`
--
ALTER TABLE `conyuge_pnpro`
  ADD PRIMARY KEY (`ID_PNPRO2`),
  ADD KEY `FK_CONYUGEPERSONA` (`ID_PNPRO`);

--
-- Indices de la tabla `coopropietarios_illote`
--
ALTER TABLE `coopropietarios_illote`
  ADD PRIMARY KEY (`ID_COP_ILLOTE`);

--
-- Indices de la tabla `cuadrado_m`
--
ALTER TABLE `cuadrado_m`
  ADD PRIMARY KEY (`ID_C`),
  ADD KEY `FK_CUADRADOM` (`ID_M`);

--
-- Indices de la tabla `datosdescriptivosbloque_cclote`
--
ALTER TABLE `datosdescriptivosbloque_cclote`
  ADD PRIMARY KEY (`ID_DDB_CCLOTE`);

--
-- Indices de la tabla `datosdunidad_vclote`
--
ALTER TABLE `datosdunidad_vclote`
  ADD PRIMARY KEY (`ID_DDU_VCLOTE`);

--
-- Indices de la tabla `ddescriptivospredio_iulote`
--
ALTER TABLE `ddescriptivospredio_iulote`
  ADD PRIMARY KEY (`ID_DDPLOTE`),
  ADD KEY `FK_DIRECCIONDESCRIPTIVO` (`ID_DLOTE`);

--
-- Indices de la tabla `direccion_ddplote`
--
ALTER TABLE `direccion_ddplote`
  ADD PRIMARY KEY (`ID_DLOTE`);

--
-- Indices de la tabla `direccion_illote`
--
ALTER TABLE `direccion_illote`
  ADD PRIMARY KEY (`ID_DIR_ILLOTE`);

--
-- Indices de la tabla `documentotitulopro_illote`
--
ALTER TABLE `documentotitulopro_illote`
  ADD PRIMARY KEY (`ID_DOC_ILLOTE`);

--
-- Indices de la tabla `economialote`
--
ALTER TABLE `economialote`
  ADD PRIMARY KEY (`ID_ELOTE`);

--
-- Indices de la tabla `elementosconstructivos`
--
ALTER TABLE `elementosconstructivos`
  ADD PRIMARY KEY (`ID_EC`),
  ADD KEY `FK_ACABADOSEC` (`ID_AC`),
  ADD KEY `FK_ESTRUCTURAEC` (`ID_EST`);

--
-- Indices de la tabla `estructura_ec`
--
ALTER TABLE `estructura_ec`
  ADD PRIMARY KEY (`ID_EST`);

--
-- Indices de la tabla `formulario`
--
ALTER TABLE `formulario`
  ADD PRIMARY KEY (`ID_FORMULARIO`),
  ADD KEY `FK_CARACTERIZACIONFORMULARIO` (`ID_CLOTE`),
  ADD KEY `FK_CCFORMULARIO` (`ID_CCLOTE`),
  ADD KEY `FK_ECFORMULARIO` (`ID_EC`),
  ADD KEY `FK_ECONOMIAFORMULARIO` (`ID_ELOTE`),
  ADD KEY `FK_GRAFICOSFORMULARIO` (`ID_GPLOTE`),
  ADD KEY `FK_IDENTIFICACIONLEGALFORMULARIO` (`ID_ILLOTE`),
  ADD KEY `FK_IDENTIFICACIONUBICACIONFORMULARIO` (`ID_IULOTE`),
  ADD KEY `FK_LIMITEFORMULARIO` (`ID_LLOTE`),
  ADD KEY `FK_MAPAFORMULARIO` (`ID_M`),
  ADD KEY `FK_MEJORASFORMULARIO` (`ID_MLOTE`),
  ADD KEY `FK_RESPONSABLEFORMULARIO` (`ID_RLOTE`),
  ADD KEY `FK_USUARIOFORMULARIO` (`ID_USUARIO`),
  ADD KEY `FK_VIVIENDACENSALFORMULARIO` (`ID_VCLOTE`);

--
-- Indices de la tabla `graficosprediolote`
--
ALTER TABLE `graficosprediolote`
  ADD PRIMARY KEY (`ID_GPLOTE`);

--
-- Indices de la tabla `identificacionlegallote`
--
ALTER TABLE `identificacionlegallote`
  ADD PRIMARY KEY (`ID_ILLOTE`),
  ADD KEY `FK_COOPROPIETARIOIDENTIFICACION` (`ID_COP_ILLOTE`),
  ADD KEY `FK_DIRECCIONIDENTIFICACION` (`ID_DIR_ILLOTE`),
  ADD KEY `FK_DOCUMENTOIDENTIFICACION` (`ID_DOC_ILLOTE`),
  ADD KEY `FK_IDENTIFICACIONPREDIO` (`ID_PRE_ILLOTE`),
  ADD KEY `FK_PROPIETARIOINDETIFICACION` (`ID_PRO`);

--
-- Indices de la tabla `identificacionubicacionlote`
--
ALTER TABLE `identificacionubicacionlote`
  ADD PRIMARY KEY (`ID_IULOTE`),
  ADD KEY `FK_IDENTIFICACIONDIRECCION` (`ID_DDPLOTE`);

--
-- Indices de la tabla `infraestructurainst_clote`
--
ALTER TABLE `infraestructurainst_clote`
  ADD PRIMARY KEY (`ID_II_CLOTE`);

--
-- Indices de la tabla `instalacionnivelv_vclote`
--
ALTER TABLE `instalacionnivelv_vclote`
  ADD PRIMARY KEY (`ID_INV_VCLOTE`);

--
-- Indices de la tabla `limiteslote`
--
ALTER TABLE `limiteslote`
  ADD PRIMARY KEY (`ID_LLOTE`);

--
-- Indices de la tabla `lineas_m`
--
ALTER TABLE `lineas_m`
  ADD PRIMARY KEY (`ID_L`),
  ADD KEY `FK_LINEAM` (`ID_M`);

--
-- Indices de la tabla `mapa`
--
ALTER TABLE `mapa`
  ADD PRIMARY KEY (`ID_M`);

--
-- Indices de la tabla `mejoraslote`
--
ALTER TABLE `mejoraslote`
  ADD PRIMARY KEY (`ID_MLOTE`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`ID_PERSONA`);

--
-- Indices de la tabla `personajuridica_pro`
--
ALTER TABLE `personajuridica_pro`
  ADD PRIMARY KEY (`ID_PJURI`);

--
-- Indices de la tabla `personanatural_pro`
--
ALTER TABLE `personanatural_pro`
  ADD PRIMARY KEY (`ID_PNPRO`);

--
-- Indices de la tabla `ph_cclote`
--
ALTER TABLE `ph_cclote`
  ADD PRIMARY KEY (`ID_PH_CCLOTE`);

--
-- Indices de la tabla `poligono_m`
--
ALTER TABLE `poligono_m`
  ADD PRIMARY KEY (`ID_POL`),
  ADD KEY `FK_POLIGONOM` (`ID_M`);

--
-- Indices de la tabla `prediotitulo_illote`
--
ALTER TABLE `prediotitulo_illote`
  ADD PRIMARY KEY (`ID_PRE_ILLOTE`);

--
-- Indices de la tabla `propietariotipoj`
--
ALTER TABLE `propietariotipoj`
  ADD PRIMARY KEY (`ID_PJURI`,`ID_PRO`),
  ADD KEY `FK_PROPIETARIOTIPOJ2` (`ID_PRO`);

--
-- Indices de la tabla `propietariotipon`
--
ALTER TABLE `propietariotipon`
  ADD PRIMARY KEY (`ID_PNPRO`,`ID_PRO`),
  ADD KEY `FK_PROPIETARIOTIPON2` (`ID_PRO`);

--
-- Indices de la tabla `propietario_illote`
--
ALTER TABLE `propietario_illote`
  ADD PRIMARY KEY (`ID_PRO`);

--
-- Indices de la tabla `punto_m`
--
ALTER TABLE `punto_m`
  ADD PRIMARY KEY (`ID_P`),
  ADD KEY `FK_PUNTOM` (`ID_M`);

--
-- Indices de la tabla `responsableslote`
--
ALTER TABLE `responsableslote`
  ADD PRIMARY KEY (`ID_RLOTE`);

--
-- Indices de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`ID_TIPOUSUARIO`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID_USUARIO`),
  ADD KEY `FK_GENERAL` (`ID_PERSONA`),
  ADD KEY `FK_TIPOUSUARIO` (`ID_TIPOUSUARIO`);

--
-- Indices de la tabla `viviendacensallote`
--
ALTER TABLE `viviendacensallote`
  ADD PRIMARY KEY (`ID_VCLOTE`),
  ADD KEY `FK_DDVIVIENDA` (`ID_DDU_VCLOTE`),
  ADD KEY `FK_INVVIVIENDA` (`ID_INV_VCLOTE`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acabados_ec`
--
ALTER TABLE `acabados_ec`
  MODIFY `ID_AC` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `caracteristicasconstruccionlote`
--
ALTER TABLE `caracteristicasconstruccionlote`
  MODIFY `ID_CCLOTE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `caracterizacionlote`
--
ALTER TABLE `caracterizacionlote`
  MODIFY `ID_CLOTE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `circulo_m`
--
ALTER TABLE `circulo_m`
  MODIFY `ID_CC` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clavebloquepiso_cclote`
--
ALTER TABLE `clavebloquepiso_cclote`
  MODIFY `ID_CBP_CCLOTE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `conyuge_pnpro`
--
ALTER TABLE `conyuge_pnpro`
  MODIFY `ID_PNPRO2` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `coopropietarios_illote`
--
ALTER TABLE `coopropietarios_illote`
  MODIFY `ID_COP_ILLOTE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cuadrado_m`
--
ALTER TABLE `cuadrado_m`
  MODIFY `ID_C` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `datosdescriptivosbloque_cclote`
--
ALTER TABLE `datosdescriptivosbloque_cclote`
  MODIFY `ID_DDB_CCLOTE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `datosdunidad_vclote`
--
ALTER TABLE `datosdunidad_vclote`
  MODIFY `ID_DDU_VCLOTE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ddescriptivospredio_iulote`
--
ALTER TABLE `ddescriptivospredio_iulote`
  MODIFY `ID_DDPLOTE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `direccion_ddplote`
--
ALTER TABLE `direccion_ddplote`
  MODIFY `ID_DLOTE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `direccion_illote`
--
ALTER TABLE `direccion_illote`
  MODIFY `ID_DIR_ILLOTE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `documentotitulopro_illote`
--
ALTER TABLE `documentotitulopro_illote`
  MODIFY `ID_DOC_ILLOTE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `economialote`
--
ALTER TABLE `economialote`
  MODIFY `ID_ELOTE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `elementosconstructivos`
--
ALTER TABLE `elementosconstructivos`
  MODIFY `ID_EC` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estructura_ec`
--
ALTER TABLE `estructura_ec`
  MODIFY `ID_EST` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `formulario`
--
ALTER TABLE `formulario`
  MODIFY `ID_FORMULARIO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `graficosprediolote`
--
ALTER TABLE `graficosprediolote`
  MODIFY `ID_GPLOTE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `identificacionlegallote`
--
ALTER TABLE `identificacionlegallote`
  MODIFY `ID_ILLOTE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `identificacionubicacionlote`
--
ALTER TABLE `identificacionubicacionlote`
  MODIFY `ID_IULOTE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `infraestructurainst_clote`
--
ALTER TABLE `infraestructurainst_clote`
  MODIFY `ID_II_CLOTE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `instalacionnivelv_vclote`
--
ALTER TABLE `instalacionnivelv_vclote`
  MODIFY `ID_INV_VCLOTE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `limiteslote`
--
ALTER TABLE `limiteslote`
  MODIFY `ID_LLOTE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lineas_m`
--
ALTER TABLE `lineas_m`
  MODIFY `ID_L` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mapa`
--
ALTER TABLE `mapa`
  MODIFY `ID_M` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mejoraslote`
--
ALTER TABLE `mejoraslote`
  MODIFY `ID_MLOTE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `ID_PERSONA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `personajuridica_pro`
--
ALTER TABLE `personajuridica_pro`
  MODIFY `ID_PJURI` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personanatural_pro`
--
ALTER TABLE `personanatural_pro`
  MODIFY `ID_PNPRO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ph_cclote`
--
ALTER TABLE `ph_cclote`
  MODIFY `ID_PH_CCLOTE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `poligono_m`
--
ALTER TABLE `poligono_m`
  MODIFY `ID_POL` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `prediotitulo_illote`
--
ALTER TABLE `prediotitulo_illote`
  MODIFY `ID_PRE_ILLOTE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `propietario_illote`
--
ALTER TABLE `propietario_illote`
  MODIFY `ID_PRO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `punto_m`
--
ALTER TABLE `punto_m`
  MODIFY `ID_P` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `responsableslote`
--
ALTER TABLE `responsableslote`
  MODIFY `ID_RLOTE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  MODIFY `ID_TIPOUSUARIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID_USUARIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `viviendacensallote`
--
ALTER TABLE `viviendacensallote`
  MODIFY `ID_VCLOTE` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `caracteristicasconstruccionlote`
--
ALTER TABLE `caracteristicasconstruccionlote`
  ADD CONSTRAINT `FK_CARACTERISTICAPH` FOREIGN KEY (`ID_PH_CCLOTE`) REFERENCES `ph_cclote` (`ID_PH_CCLOTE`),
  ADD CONSTRAINT `FK_CLAVECARACTERISTICA` FOREIGN KEY (`ID_CBP_CCLOTE`) REFERENCES `clavebloquepiso_cclote` (`ID_CBP_CCLOTE`),
  ADD CONSTRAINT `FK_DDESCRIPTIVOCARACTERISTICA` FOREIGN KEY (`ID_DDB_CCLOTE`) REFERENCES `datosdescriptivosbloque_cclote` (`ID_DDB_CCLOTE`);

--
-- Filtros para la tabla `caracterizacionlote`
--
ALTER TABLE `caracterizacionlote`
  ADD CONSTRAINT `FK_INFRAESTRUCTURACARACTERIZACION` FOREIGN KEY (`ID_II_CLOTE`) REFERENCES `infraestructurainst_clote` (`ID_II_CLOTE`);

--
-- Filtros para la tabla `circulo_m`
--
ALTER TABLE `circulo_m`
  ADD CONSTRAINT `FK_CIRCULOM` FOREIGN KEY (`ID_M`) REFERENCES `mapa` (`ID_M`);

--
-- Filtros para la tabla `conyuge_pnpro`
--
ALTER TABLE `conyuge_pnpro`
  ADD CONSTRAINT `FK_CONYUGEPERSONA` FOREIGN KEY (`ID_PNPRO`) REFERENCES `personanatural_pro` (`ID_PNPRO`);

--
-- Filtros para la tabla `cuadrado_m`
--
ALTER TABLE `cuadrado_m`
  ADD CONSTRAINT `FK_CUADRADOM` FOREIGN KEY (`ID_M`) REFERENCES `mapa` (`ID_M`);

--
-- Filtros para la tabla `ddescriptivospredio_iulote`
--
ALTER TABLE `ddescriptivospredio_iulote`
  ADD CONSTRAINT `FK_DIRECCIONDESCRIPTIVO` FOREIGN KEY (`ID_DLOTE`) REFERENCES `direccion_ddplote` (`ID_DLOTE`);

--
-- Filtros para la tabla `elementosconstructivos`
--
ALTER TABLE `elementosconstructivos`
  ADD CONSTRAINT `FK_ACABADOSEC` FOREIGN KEY (`ID_AC`) REFERENCES `acabados_ec` (`ID_AC`),
  ADD CONSTRAINT `FK_ESTRUCTURAEC` FOREIGN KEY (`ID_EST`) REFERENCES `estructura_ec` (`ID_EST`);

--
-- Filtros para la tabla `formulario`
--
ALTER TABLE `formulario`
  ADD CONSTRAINT `FK_CARACTERIZACIONFORMULARIO` FOREIGN KEY (`ID_CLOTE`) REFERENCES `caracterizacionlote` (`ID_CLOTE`),
  ADD CONSTRAINT `FK_CCFORMULARIO` FOREIGN KEY (`ID_CCLOTE`) REFERENCES `caracteristicasconstruccionlote` (`ID_CCLOTE`),
  ADD CONSTRAINT `FK_ECFORMULARIO` FOREIGN KEY (`ID_EC`) REFERENCES `elementosconstructivos` (`ID_EC`),
  ADD CONSTRAINT `FK_ECONOMIAFORMULARIO` FOREIGN KEY (`ID_ELOTE`) REFERENCES `economialote` (`ID_ELOTE`),
  ADD CONSTRAINT `FK_GRAFICOSFORMULARIO` FOREIGN KEY (`ID_GPLOTE`) REFERENCES `graficosprediolote` (`ID_GPLOTE`),
  ADD CONSTRAINT `FK_IDENTIFICACIONLEGALFORMULARIO` FOREIGN KEY (`ID_ILLOTE`) REFERENCES `identificacionlegallote` (`ID_ILLOTE`),
  ADD CONSTRAINT `FK_IDENTIFICACIONUBICACIONFORMULARIO` FOREIGN KEY (`ID_IULOTE`) REFERENCES `identificacionubicacionlote` (`ID_IULOTE`),
  ADD CONSTRAINT `FK_LIMITEFORMULARIO` FOREIGN KEY (`ID_LLOTE`) REFERENCES `limiteslote` (`ID_LLOTE`),
  ADD CONSTRAINT `FK_MAPAFORMULARIO` FOREIGN KEY (`ID_M`) REFERENCES `mapa` (`ID_M`),
  ADD CONSTRAINT `FK_MEJORASFORMULARIO` FOREIGN KEY (`ID_MLOTE`) REFERENCES `mejoraslote` (`ID_MLOTE`),
  ADD CONSTRAINT `FK_RESPONSABLEFORMULARIO` FOREIGN KEY (`ID_RLOTE`) REFERENCES `responsableslote` (`ID_RLOTE`),
  ADD CONSTRAINT `FK_USUARIOFORMULARIO` FOREIGN KEY (`ID_USUARIO`) REFERENCES `usuario` (`ID_USUARIO`),
  ADD CONSTRAINT `FK_VIVIENDACENSALFORMULARIO` FOREIGN KEY (`ID_VCLOTE`) REFERENCES `viviendacensallote` (`ID_VCLOTE`);

--
-- Filtros para la tabla `identificacionlegallote`
--
ALTER TABLE `identificacionlegallote`
  ADD CONSTRAINT `FK_COOPROPIETARIOIDENTIFICACION` FOREIGN KEY (`ID_COP_ILLOTE`) REFERENCES `coopropietarios_illote` (`ID_COP_ILLOTE`),
  ADD CONSTRAINT `FK_DIRECCIONIDENTIFICACION` FOREIGN KEY (`ID_DIR_ILLOTE`) REFERENCES `direccion_illote` (`ID_DIR_ILLOTE`),
  ADD CONSTRAINT `FK_DOCUMENTOIDENTIFICACION` FOREIGN KEY (`ID_DOC_ILLOTE`) REFERENCES `documentotitulopro_illote` (`ID_DOC_ILLOTE`),
  ADD CONSTRAINT `FK_IDENTIFICACIONPREDIO` FOREIGN KEY (`ID_PRE_ILLOTE`) REFERENCES `prediotitulo_illote` (`ID_PRE_ILLOTE`),
  ADD CONSTRAINT `FK_PROPIETARIOINDETIFICACION` FOREIGN KEY (`ID_PRO`) REFERENCES `propietario_illote` (`ID_PRO`);

--
-- Filtros para la tabla `identificacionubicacionlote`
--
ALTER TABLE `identificacionubicacionlote`
  ADD CONSTRAINT `FK_IDENTIFICACIONDIRECCION` FOREIGN KEY (`ID_DDPLOTE`) REFERENCES `ddescriptivospredio_iulote` (`ID_DDPLOTE`);

--
-- Filtros para la tabla `lineas_m`
--
ALTER TABLE `lineas_m`
  ADD CONSTRAINT `FK_LINEAM` FOREIGN KEY (`ID_M`) REFERENCES `mapa` (`ID_M`);

--
-- Filtros para la tabla `poligono_m`
--
ALTER TABLE `poligono_m`
  ADD CONSTRAINT `FK_POLIGONOM` FOREIGN KEY (`ID_M`) REFERENCES `mapa` (`ID_M`);

--
-- Filtros para la tabla `propietariotipoj`
--
ALTER TABLE `propietariotipoj`
  ADD CONSTRAINT `FK_PROPIETARIOTIPOJ` FOREIGN KEY (`ID_PJURI`) REFERENCES `personajuridica_pro` (`ID_PJURI`),
  ADD CONSTRAINT `FK_PROPIETARIOTIPOJ2` FOREIGN KEY (`ID_PRO`) REFERENCES `propietario_illote` (`ID_PRO`);

--
-- Filtros para la tabla `propietariotipon`
--
ALTER TABLE `propietariotipon`
  ADD CONSTRAINT `FK_PROPIETARIOTIPON` FOREIGN KEY (`ID_PNPRO`) REFERENCES `personanatural_pro` (`ID_PNPRO`),
  ADD CONSTRAINT `FK_PROPIETARIOTIPON2` FOREIGN KEY (`ID_PRO`) REFERENCES `propietario_illote` (`ID_PRO`);

--
-- Filtros para la tabla `punto_m`
--
ALTER TABLE `punto_m`
  ADD CONSTRAINT `FK_PUNTOM` FOREIGN KEY (`ID_M`) REFERENCES `mapa` (`ID_M`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `FK_GENERAL` FOREIGN KEY (`ID_PERSONA`) REFERENCES `persona` (`ID_PERSONA`),
  ADD CONSTRAINT `FK_TIPOUSUARIO` FOREIGN KEY (`ID_TIPOUSUARIO`) REFERENCES `tipousuario` (`ID_TIPOUSUARIO`);

--
-- Filtros para la tabla `viviendacensallote`
--
ALTER TABLE `viviendacensallote`
  ADD CONSTRAINT `FK_DDVIVIENDA` FOREIGN KEY (`ID_DDU_VCLOTE`) REFERENCES `datosdunidad_vclote` (`ID_DDU_VCLOTE`),
  ADD CONSTRAINT `FK_INVVIVIENDA` FOREIGN KEY (`ID_INV_VCLOTE`) REFERENCES `instalacionnivelv_vclote` (`ID_INV_VCLOTE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
