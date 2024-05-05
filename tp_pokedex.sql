-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-05-2024 a las 18:26:50
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
-- Base de datos: `tp_pokedex`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `usuario` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`usuario`, `password`) VALUES
('administrador', 'programacionweb2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemon`
--

CREATE TABLE `pokemon` (
  `id` int(200) NOT NULL,
  `numero_identificador` int(200) NOT NULL,
  `imagen` varchar(260) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `tipo` enum('bug','dark','dragon','electric','fairy','fighting','fire','flying','ghost','grass','ground','ice','poison','psychic','rock','steel','water','normal') NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pokemon`
--

INSERT INTO `pokemon` (`id`, `numero_identificador`, `imagen`, `nombre`, `tipo`, `descripcion`) VALUES
(1, 1, '/Pokedex/Pokemon/Abra.png ', 'Abra ', 'psychic', ' Abra es un Pokémon tipo Psíquico conocido por su capacidad de teletransportarse '),
(2, 2, '/Pokedex/Pokemon/Aerodactyl.png ', 'Aerodactyl ', 'rock', ' Aerodactyl es un Pokémon tipo Roca y Volador que se cree que es un ancestro de los Pokémon pájaro de la era moderna '),
(3, 3, '/Pokedex/Pokemon/Alakazam.png ', 'Alakazam ', 'psychic', ' Alakazam es un Pokémon tipo Psíquico conocido por su increíble capacidad mental y su alta inteligencia '),
(4, 4, '/Pokedex/Pokemon/Arbok.png ', 'Arbok ', 'poison', ' Arbok es un Pokémon tipo Veneno conocido por su habilidad para lanzar ataques con su colmillo venenoso '),
(5, 5, '/Pokedex/Pokemon/Arcanine.png ', 'Arcanine ', 'fire', ' Arcanine es un Pokémon tipo Fuego conocido por su velocidad y lealtad inquebrantable '),
(6, 6, '/Pokedex/Pokemon/Articuno.png ', 'Articuno ', 'ice', ' Articuno es un Pokémon tipo Hielo y Volador conocido por su belleza y su habilidad para controlar el clima '),
(7, 7, '/Pokedex/Pokemon/Beedrill.png ', 'Beedrill ', 'bug', ' Beedrill es un Pokémon tipo Bicho y Veneno conocido por su aguijón venenoso y su habilidad para volar rápidamente '),
(8, 8, '/Pokedex/Pokemon/Bellsprout.png ', 'Bellsprout ', 'grass', ' Bellsprout es un Pokémon tipo Planta y Veneno conocido por su aspecto de planta y su capacidad para lanzar ataques ácidos '),
(9, 9, '/Pokedex/Pokemon/Blastoise.png ', 'Blastoise ', 'water', ' Blastoise es un Pokémon tipo Agua conocido por su poderoso cañón de agua y su resistente caparazón '),
(10, 10, '/Pokedex/Pokemon/Bulbasaur.png ', 'Bulbasaur ', 'grass', ' Bulbasaur es un Pokémon tipo Planta y Veneno conocido por el bulbo en su espalda que puede absorber nutrientes '),
(11, 11, '/Pokedex/Pokemon/Butterfree.png ', 'Butterfree ', 'bug', ' Butterfree es un Pokémon tipo Bicho y Volador conocido por su belleza y su habilidad para lanzar polvo paralizante '),
(12, 12, '/Pokedex/Pokemon/Caterpie.png ', 'Caterpie ', 'bug', ' Caterpie es un Pokémon tipo Bicho conocido por su aspecto de oruga y su habilidad para lanzar hilos de seda '),
(13, 13, '/Pokedex/Pokemon/Chansey.png ', 'Chansey ', 'normal', ' Chansey es un Pokémon tipo Normal conocido por su gran capacidad de curación y su amabilidad '),
(14, 14, '/Pokedex/Pokemon/Charizard.png ', 'Charizard ', 'fire', ' Charizard es un Pokémon tipo Fuego y Volador conocido por su ferocidad y su capacidad para lanzar fuego '),
(15, 15, '/Pokedex/Pokemon/Charmander.png ', 'Charmander ', 'fire', ' Charmander es un Pokémon tipo Fuego conocido por la llama en su cola que indica su estado de ánimo y salud '),
(16, 16, '/Pokedex/Pokemon/Charmeleon.png ', 'Charmeleon ', 'fire', ' Charmeleon es un Pokémon tipo Fuego conocido por su temperamento agresivo y su cola ardiente '),
(17, 17, '/Pokedex/Pokemon/Clefable.png ', 'Clefable ', 'normal', ' Clefable es un Pokémon tipo Normal y Hada conocido por su aspecto adorable y su habilidad para esquivar ataques '),
(18, 18, '/Pokedex/Pokemon/Clefairy.png ', 'Clefairy ', 'fairy', ' Clefairy es un Pokémon tipo Hada conocido por su amor por la luna y su dulzura '),
(19, 19, '/Pokedex/Pokemon/Cloyster.png ', 'Cloyster ', 'water', ' Cloyster es un Pokémon tipo Agua y Hielo conocido por su caparazón duro y sus poderosos ataques de hielo '),
(20, 20, '/Pokedex/Pokemon/Cubone.png ', 'Cubone ', 'ground', ' Cubone es un Pokémon tipo Tierra y Roca conocido por llevar una calavera como protección y su tristeza por la pérdida de su madre '),
(21, 21, '/Pokedex/Pokemon/Dewgong.png ', 'Dewgong ', 'water', ' Dewgong es un Pokémon tipo Agua y Hielo conocido por su elegancia en el agua y su habilidad para lanzar ataques de hielo '),
(22, 22, '/Pokedex/Pokemon/Diglett.png ', 'Diglett ', 'ground', ' Diglett es un Pokémon tipo Tierra conocido por su habilidad para excavar túneles rápidamente '),
(23, 23, '/Pokedex/Pokemon/Ditto.png ', 'Ditto ', 'normal', ' Ditto es un Pokémon tipo Normal conocido por su habilidad de transformarse en cualquier otro Pokémon '),
(24, 24, '/Pokedex/Pokemon/Dodrio.png ', 'Dodrio ', 'normal', ' Dodrio es un Pokémon tipo Normal y Volador conocido por su velocidad en tierra y sus tres cabezas '),
(25, 25, '/Pokedex/Pokemon/Doduo.png ', 'Doduo ', 'normal', ' Doduo es un Pokémon tipo Normal y Volador conocido por su velocidad y sus dos cabezas '),
(26, 26, '/Pokedex/Pokemon/Dragonair.png ', 'Dragonair ', 'dragon', ' Dragonair es un Pokémon tipo Dragón conocido por su belleza y su habilidad para controlar el clima '),
(27, 27, '/Pokedex/Pokemon/Dragonite.png ', 'Dragonite ', 'dragon', ' Dragonite es un Pokémon tipo Dragón y Volador conocido por su fuerza y su capacidad para volar a grandes alturas '),
(28, 28, '/Pokedex/Pokemon/Dratini.png ', 'Dratini ', 'dragon', ' Dratini es un Pokémon tipo Dragón conocido por su aspecto de serpiente y su capacidad para lanzar poderosos ataques de agua '),
(29, 29, '/Pokedex/Pokemon/Drowzee.png ', 'Drowzee ', 'psychic', ' Drowzee es un Pokémon tipo Psíquico conocido por su habilidad para hipnotizar a otros Pokémon y humanos '),
(30, 30, '/Pokedex/Pokemon/Dugtrio.png ', 'Dugtrio ', 'ground', ' Dugtrio es un Pokémon tipo Tierra conocido por su habilidad para excavar túneles rápidamente y su forma de tres cabezas '),
(31, 31, '/Pokedex/Pokemon/Eevee.png ', 'Eevee ', 'normal', ' Eevee es un Pokémon tipo Normal conocido por su capacidad de evolucionar en diferentes tipos de Pokémon dependiendo de las circunstancias '),
(32, 32, '/Pokedex/Pokemon/Ekans.png ', 'Ekans ', 'poison', ' Ekans es un Pokémon tipo Veneno conocido por su habilidad para lanzar ataques de mordedura y su forma de serpiente '),
(33, 33, '/Pokedex/Pokemon/Electabuzz.png ', 'Electabuzz ', 'electric', ' Electabuzz es un Pokémon tipo Eléctrico conocido por su habilidad para generar electricidad y lanzar poderosos rayos '),
(34, 34, '/Pokedex/Pokemon/Electrode.png ', 'Electrode ', 'electric', ' Electrode es un Pokémon tipo Eléctrico conocido por su forma de esfera y su capacidad de explotar en un instante '),
(35, 35, '/Pokedex/Pokemon/Exeggcute.png ', 'Exeggcute ', 'grass', ' Exeggcute es un Pokémon tipo Planta y Psíquico conocido por su forma de huevos y su capacidad para lanzar ataques de confusión '),
(36, 36, '/Pokedex/Pokemon/Exeggutor.png ', 'Exeggutor ', 'grass', ' Exeggutor es un Pokémon tipo Planta y Psíquico conocido por su altura y su capacidad para lanzar ataques de semillas '),
(37, 37, '/Pokedex/Pokemon/Farfetch.png ', 'Farfetch ', 'normal', ' Farfetch es un Pokémon tipo Normal y Volador conocido por su lealtad a su puerro y su habilidad para luchar con él '),
(38, 38, '/Pokedex/Pokemon/Fearow.png ', 'Fearow ', 'normal', ' Fearow es un Pokémon tipo Normal y Volador conocido por su velocidad y su pico afilado '),
(39, 39, '/Pokedex/Pokemon/Flareon.png ', 'Flareon ', 'fire', ' Flareon es un Pokémon tipo Fuego conocido por su pelaje flameante y su habilidad para lanzar ataques de fuego '),
(40, 40, '/Pokedex/Pokemon/Gastly.png ', 'Gastly ', 'ghost', ' Gastly es un Pokémon tipo Fantasma y Veneno conocido por su habilidad para fundirse en las sombras y asustar a otros '),
(41, 41, '/Pokedex/Pokemon/Gengar.png ', 'Gengar ', 'ghost', ' Gengar es un Pokémon tipo Fantasma y Veneno conocido por su capacidad para acechar a sus oponentes desde las sombras '),
(42, 42, '/Pokedex/Pokemon/Geodude.png ', 'Geodude ', 'rock', ' Geodude es un Pokémon tipo Roca y Tierra conocido por su forma rocosa y su resistencia física '),
(43, 43, '/Pokedex/Pokemon/Gloom.png ', 'Gloom ', 'grass', ' Gloom es un Pokémon tipo Planta y Veneno conocido por su olor fétido y su habilidad para lanzar ataques de veneno '),
(44, 44, '/Pokedex/Pokemon/Golbat.png ', 'Golbat ', 'poison', ' Golbat es un Pokémon tipo Veneno y Volador conocido por su habilidad para volar en la oscuridad y lanzar ataques de confusión '),
(45, 45, '/Pokedex/Pokemon/Goldeen.png ', 'Goldeen ', 'water', ' Goldeen es un Pokémon tipo Agua conocido por su belleza y su habilidad para nadar en ríos rápidos '),
(46, 46, '/Pokedex/Pokemon/Golduck.png ', 'Golduck ', 'water', ' Golduck es un Pokémon tipo Agua conocido por su velocidad en el agua y su habilidad para lanzar poderosos ataques de agua '),
(47, 47, '/Pokedex/Pokemon/Golem.png ', 'Golem ', 'rock', ' Golem es un Pokémon tipo Roca y Tierra conocido por su gran resistencia y su habilidad para lanzar rocas '),
(48, 48, '/Pokedex/Pokemon/Graveler.png ', 'Graveler ', 'rock', ' Graveler es un Pokémon tipo Roca y Tierra conocido por su habilidad para rodar por las montañas y lanzar rocas '),
(49, 49, '/Pokedex/Pokemon/Grimer.png ', 'Grimer ', 'poison', ' Grimer es un Pokémon tipo Veneno conocido por su forma viscosa y su capacidad de corroer cualquier cosa con su cuerpo '),
(50, 50, '/Pokedex/Pokemon/Growlithe.png ', 'Growlithe ', 'fire', ' Growlithe es un Pokémon tipo Fuego conocido por su lealtad a su entrenador y su valentía '),
(51, 51, '/Pokedex/Pokemon/Gyarados.png ', 'Gyarados ', 'water', ' Gyarados es un Pokémon tipo Agua y Volador conocido por su ferocidad y su habilidad para generar tornados '),
(52, 52, '/Pokedex/Pokemon/Haunter.png ', 'Haunter ', 'ghost', ' Haunter es un Pokémon tipo Fantasma y Veneno conocido por su capacidad para acechar a sus presas y desaparecer en las sombras '),
(53, 53, '/Pokedex/Pokemon/Hitmonchan.png ', 'Hitmonchan ', 'fighting', ' Hitmonchan es un Pokémon tipo Lucha conocido por su habilidad para lanzar rápidos y poderosos golpes '),
(54, 54, '/Pokedex/Pokemon/Hitmonlee.png ', 'Hitmonlee ', 'fighting', ' Hitmonlee es un Pokémon tipo Lucha conocido por su agilidad y su capacidad para lanzar patadas devastadoras '),
(55, 55, '/Pokedex/Pokemon/Horsea.png ', 'Horsea ', 'water', ' Horsea es un Pokémon tipo Agua conocido por su tamaño pequeño y su habilidad para nadar en mares profundos '),
(56, 56, '/Pokedex/Pokemon/Hypno.png ', 'Hypno ', 'psychic', ' Hypno es un Pokémon tipo Psíquico conocido por su habilidad para hipnotizar a sus oponentes y controlar sus mentes '),
(57, 57, '/Pokedex/Pokemon/Ivysaur.png ', 'Ivysaur ', 'grass', ' Ivysaur es un Pokémon tipo Planta y Veneno conocido por su bulbo en la espalda que puede absorber nutrientes y lanzar ataques de semillas '),
(58, 58, '/Pokedex/Pokemon/Jigglypuff.png ', 'Jigglypuff ', 'normal', ' Jigglypuff es un Pokémon tipo Normal y Hada conocido por su canto hipnótico y su habilidad para hacer dormir a otros '),
(59, 59, '/Pokedex/Pokemon/Jolteon.png ', 'Jolteon ', 'electric', ' Jolteon es un Pokémon tipo Eléctrico conocido por su velocidad y su pelaje lleno de electricidad estática '),
(60, 60, '/Pokedex/Pokemon/Jynx.png ', 'Jynx ', 'ice', ' Jynx es un Pokémon tipo Hielo y Psíquico conocido por su gracia y su habilidad para lanzar ataques de hielo '),
(61, 61, '/Pokedex/Pokemon/Kabuto.png ', 'Kabuto ', 'rock', ' Kabuto es un Pokémon tipo Roca y Agua conocido por su caparazón resistente y su habilidad para lanzar ataques de agua '),
(62, 62, '/Pokedex/Pokemon/Kabutops.png ', 'Kabutops ', 'rock', ' Kabutops es un Pokémon tipo Roca y Agua conocido por su habilidad para cortar a sus presas con sus afiladas cuchillas '),
(63, 63, '/Pokedex/Pokemon/Kadabra.png ', 'Kadabra ', 'psychic', ' Kadabra es un Pokémon tipo Psíquico conocido por su gran poder mental y su capacidad para doblar cucharas con su mente '),
(64, 64, '/Pokedex/Pokemon/Kakuna.png ', 'Kakuna ', 'bug', ' Kakuna es un Pokémon tipo Bicho y Veneno conocido por su estado de pupa y su capacidad para endurecer su caparazón '),
(65, 65, '/Pokedex/Pokemon/Kangaskhan.png ', 'Kangaskhan ', 'normal', ' Kangaskhan es un Pokémon tipo Normal conocido por su protección maternal y su habilidad para lanzar ataques de golpes '),
(66, 66, '/Pokedex/Pokemon/Kingler.png ', 'Kingler ', 'water', ' Kingler es un Pokémon tipo Agua conocido por su gran pinza y su habilidad para cortar objetos duros '),
(67, 67, '/Pokedex/Pokemon/Koffing.png ', 'Koffing ', 'poison', ' Koffing es un Pokémon tipo Veneno conocido por su forma de globo y su capacidad para lanzar gases tóxicos '),
(68, 68, '/Pokedex/Pokemon/Krabby.png ', 'Krabby ', 'water', 'Krabby es un Pokémon tipo Agua conocido por su caparazón duro y su habilidad para lanzar poderosos golpes. '),
(69, 69, '/Pokedex/Pokemon/Lapras.png ', 'Lapras ', 'water', ' Lapras es un Pokémon tipo Agua y Hielo conocido por su amabilidad y su habilidad para nadar a grandes velocidades '),
(70, 70, '/Pokedex/Pokemon/Lickitung.png ', 'Lickitung ', 'normal', ' Lickitung es un Pokémon tipo Normal conocido por su lengua larga y pegajosa y su habilidad para lanzar ataques de lenguaje '),
(71, 71, '/Pokedex/Pokemon/Machamp.png ', 'Machamp ', 'fighting', ' Machamp es un Pokémon tipo Lucha conocido por su gran fuerza y su capacidad para lanzar golpes devastadores '),
(72, 72, '/Pokedex/Pokemon/Machoke.png ', 'Machoke ', 'fighting', ' Machoke es un Pokémon tipo Lucha conocido por su musculatura y su habilidad para levantar objetos pesados '),
(73, 73, '/Pokedex/Pokemon/Machop.png ', 'Machop ', 'fighting', ' Machop es un Pokémon tipo Lucha conocido por su fuerza y su habilidad para lanzar golpes rápidos '),
(74, 74, '/Pokedex/Pokemon/Magikarp.png ', 'Magikarp ', 'water', ' Magikarp es un Pokémon tipo Agua conocido por su debilidad y su capacidad para evolucionar en un Gyarados poderoso '),
(75, 75, '/Pokedex/Pokemon/Magmar.png ', 'Magmar ', 'fire', ' Magmar es un Pokémon tipo Fuego conocido por su cuerpo en llamas y su habilidad para lanzar ataques de fuego '),
(76, 76, '/Pokedex/Pokemon/Magnemite.png ', 'Magnemite ', 'electric', ' Magnemite es un Pokémon tipo Eléctrico y Acero conocido por su cuerpo magnético y su capacidad para lanzar descargas eléctricas '),
(77, 77, '/Pokedex/Pokemon/Magneton.png ', 'Magneton ', 'electric', ' Magneton es un Pokémon tipo Eléctrico y Acero conocido por su capacidad para generar campos magnéticos y lanzar ataques eléctricos '),
(78, 78, '/Pokedex/Pokemon/Mankey.png ', 'Mankey ', 'fighting', ' Mankey es un Pokémon tipo Lucha conocido por su agresividad y su habilidad para lanzar golpes furiosos '),
(79, 79, '/Pokedex/Pokemon/Marowak.png ', 'Marowak ', 'ground', ' Marowak es un Pokémon tipo Tierra conocido por llevar un hueso como arma y su habilidad para lanzar ataques de tierra '),
(80, 80, '/Pokedex/Pokemon/Meowth.png ', 'Meowth ', 'normal', ' Meowth es un Pokémon tipo Normal conocido por su habilidad para robar objetos brillantes y su lealtad a su entrenador '),
(81, 81, '/Pokedex/Pokemon/Metapod.png ', 'Metapod ', 'bug', ' Metapod es un Pokémon tipo Bicho conocido por su estado de pupa y su capacidad para endurecer su caparazón '),
(82, 82, '/Pokedex/Pokemon/Mew.png ', 'Mew ', 'psychic', ' Mew es un Pokémon tipo Psíquico conocido por ser el Pokémon original y su capacidad para aprender cualquier movimiento '),
(83, 83, '/Pokedex/Pokemon/Mewtwo.png ', 'Mewtwo ', 'psychic', ' Mewtwo es un Pokémon tipo Psíquico conocido por su gran poder psíquico y su origen artificial '),
(84, 84, '/Pokedex/Pokemon/Moltres.png ', 'Moltres ', 'fire', ' Moltres es un Pokémon tipo Fuego y Volador conocido por su capacidad para controlar el fuego y su belleza '),
(85, 85, '/Pokedex/Pokemon/Mr_Mime.png ', 'Mr_Mime ', 'psychic', 'Mr. Mime es un Pokémon tipo Psíquico y Hada conocido por su aspecto de mimo y su habilidad para crear barreras psíquicas. '),
(86, 86, '/Pokedex/Pokemon/Muk.png ', 'Muk ', 'poison', ' Muk es un Pokémon tipo Veneno conocido por su cuerpo viscoso y su capacidad de lanzar gases tóxicos '),
(87, 87, '/Pokedex/Pokemon/Nidoking.png ', 'Nidoking ', 'poison', ' Nidoking es un Pokémon tipo Veneno y Tierra conocido por su fuerza y su habilidad para lanzar poderosos golpes '),
(88, 88, '/Pokedex/Pokemon/Nidoqueen.png ', 'Nidoqueen ', 'poison', ' Nidoqueen es un Pokémon tipo Veneno y Tierra conocido por su protección maternal y su resistencia física '),
(89, 89, '/Pokedex/Pokemon/Nidoran_H.png ', 'Nidoran_H ', 'poison', ' Nidoran Hembra es un Pokémon tipo Veneno conocido por su astucia y su habilidad para lanzar ataques de veneno '),
(90, 90, '/Pokedex/Pokemon/Nidoran_M.png ', 'Nidoran_M ', 'poison', ' Nidoran Macho es un Pokémon tipo Veneno conocido por su valentía y su habilidad para lanzar ataques de veneno '),
(91, 91, '/Pokedex/Pokemon/Nidorina.png ', 'Nidorina ', 'poison', ' Nidorina es un Pokémon tipo Veneno conocido por su protección maternal y su resistencia física '),
(92, 92, '/Pokedex/Pokemon/Nidorino.png ', 'Nidorino ', 'poison', ' Nidorino es un Pokémon tipo Veneno conocido por su ferocidad y su habilidad para lanzar ataques de veneno '),
(93, 93, '/Pokedex/Pokemon/Ninetales.png ', 'Ninetales ', 'fire', ' Ninetales es un Pokémon tipo Fuego conocido por su gracia y su capacidad para controlar el fuego '),
(94, 94, '/Pokedex/Pokemon/Oddish.png ', 'Oddish ', 'grass', ' Oddish es un Pokémon tipo Planta y Veneno conocido por su forma de planta y su habilidad para lanzar polvo paralizante '),
(95, 95, '/Pokedex/Pokemon/Omanyte.png ', 'Omanyte ', 'rock', ' Omanyte es un Pokémon tipo Roca y Agua conocido por su caparazón en espiral y su capacidad para lanzar ataques de agua '),
(96, 96, '/Pokedex/Pokemon/Omastar.png ', 'Omastar ', 'rock', ' Omastar es un Pokémon tipo Roca y Agua conocido por su caparazón duro y su capacidad para lanzar ataques de agua '),
(97, 97, '/Pokedex/Pokemon/Onix.png ', 'Onix ', 'rock', ' Onix es un Pokémon tipo Roca y Tierra conocido por su gran tamaño y su habilidad para excavar túneles rápidamente '),
(98, 98, '/Pokedex/Pokemon/Paras.png ', 'Paras ', 'bug', ' Paras es un Pokémon tipo Bicho y Planta conocido por su seta parásita y su habilidad para lanzar esporas venenosas '),
(99, 99, '/Pokedex/Pokemon/Parasect.png ', 'Parasect ', 'bug', ' Parasect es un Pokémon tipo Bicho y Planta conocido por su gran tamaño y su seta parásita que controla su mente '),
(100, 100, '/Pokedex/Pokemon/Persian.png ', 'Persian ', 'normal', ' Persian es un Pokémon tipo Normal conocido por su elegancia y su velocidad en la batalla '),
(101, 101, '/Pokedex/Pokemon/Pidgeot.png ', 'Pidgeot ', 'normal', ' Pidgeot es un Pokémon tipo Normal y Volador conocido por su velocidad en el aire y su capacidad para lanzar poderosas ráfagas de viento '),
(102, 102, '/Pokedex/Pokemon/Pidgeotto.png ', 'Pidgeotto ', 'normal', ' Pidgeotto es un Pokémon tipo Normal y Volador conocido por su agilidad y su habilidad para volar a grandes alturas '),
(103, 103, '/Pokedex/Pokemon/Pidgey.png ', 'Pidgey ', 'normal', ' Pidgey es un Pokémon tipo Normal y Volador conocido por su velocidad y su habilidad para volar en cualquier clima '),
(104, 104, '/Pokedex/Pokemon/Pikachu.png ', 'Pikachu ', 'electric', ' Pikachu es un Pokémon tipo Eléctrico conocido por su adorable aspecto y su habilidad para lanzar rayos eléctricos '),
(105, 105, '/Pokedex/Pokemon/Pinsir.png ', 'Pinsir ', 'bug', ' Pinsir es un Pokémon tipo Bicho conocido por su gran tamaño y su habilidad para lanzar potentes golpes '),
(106, 106, '/Pokedex/Pokemon/Poliwag.png ', 'Poliwag ', 'water', ' Poliwag es un Pokémon tipo Agua conocido por su forma de renacuajo y su habilidad para nadar en aguas turbulentas '),
(107, 107, '/Pokedex/Pokemon/Poliwhirl.png ', 'Poliwhirl ', 'water', ' Poliwhirl es un Pokémon tipo Agua conocido por su capacidad para girar y lanzar poderosos golpes '),
(108, 108, '/Pokedex/Pokemon/Poliwrath.png ', 'Poliwrath ', 'water', ' Poliwrath es un Pokémon tipo Agua y Lucha conocido por su fuerza y su habilidad para lanzar golpes devastadores '),
(109, 109, '/Pokedex/Pokemon/Ponyta.png ', 'Ponyta ', 'fire', ' Ponyta es un Pokémon tipo Fuego conocido por su velocidad y su habilidad para lanzar patadas ardientes '),
(110, 110, '/Pokedex/Pokemon/Porygon.png ', 'Porygon ', 'normal', ' Porygon es un Pokémon tipo Normal conocido por ser artificial y su capacidad para transformarse en diferentes formas digitales '),
(111, 111, '/Pokedex/Pokemon/Primeape.png ', 'Primeape ', 'fighting', ' Primeape es un Pokémon tipo Lucha conocido por su temperamento agresivo y su capacidad para lanzar golpes furiosos '),
(112, 112, '/Pokedex/Pokemon/Psyduck.png ', 'Psyduck ', 'water', ' Psyduck es un Pokémon tipo Agua conocido por su dolor de cabeza constante y su habilidad para lanzar ataques de agua '),
(113, 113, '/Pokedex/Pokemon/Raichu.png ', 'Raichu ', 'electric', ' Raichu es un Pokémon tipo Eléctrico conocido por su velocidad y su habilidad para lanzar potentes ataques eléctricos '),
(114, 114, '/Pokedex/Pokemon/Rapidash.png ', 'Rapidash ', 'fire', ' Rapidash es un Pokémon tipo Fuego conocido por su velocidad y su capacidad para lanzar patadas ardientes '),
(115, 115, '/Pokedex/Pokemon/Raticate.png ', 'Raticate ', 'normal', ' Raticate es un Pokémon tipo Normal conocido por su agilidad y su habilidad para lanzar mordeduras poderosas '),
(116, 116, '/Pokedex/Pokemon/Rattata.png ', 'Rattata ', 'normal', ' Rattata es un Pokémon tipo Normal conocido por su habilidad para roer objetos duros y su astucia '),
(117, 117, '/Pokedex/Pokemon/Rhydon.png ', 'Rhydon ', 'ground', ' Rhydon es un Pokémon tipo Tierra y Roca conocido por su gran tamaño y su habilidad para lanzar rocas '),
(118, 118, '/Pokedex/Pokemon/Rhyhorn.png ', 'Rhyhorn ', 'ground', ' Rhyhorn es un Pokémon tipo Tierra y Roca conocido por su gran resistencia y su capacidad para lanzar golpes '),
(119, 119, '/Pokedex/Pokemon/Sandshrew.png ', 'Sandshrew ', 'ground', ' Sandshrew es un Pokémon tipo Tierra conocido por su habilidad para excavar túneles rápidamente y su caparazón resistente '),
(120, 120, '/Pokedex/Pokemon/Sandslash.png ', 'Sandslash ', 'ground', ' Sandslash es un Pokémon tipo Tierra conocido por su agilidad y su capacidad para lanzar pinchos de arena '),
(121, 121, '/Pokedex/Pokemon/Scyther.png ', 'Scyther ', 'bug', ' Scyther es un Pokémon tipo Bicho y Volador conocido por su velocidad y sus afiladas cuchillas '),
(122, 122, '/Pokedex/Pokemon/Seadra.png ', 'Seadra ', 'water', ' Seadra es un Pokémon tipo Agua conocido por su habilidad para nadar a gran velocidad y lanzar potentes ataques de agua '),
(123, 123, '/Pokedex/Pokemon/Seaking.png ', 'Seaking ', 'water', ' Seaking es un Pokémon tipo Agua conocido por su agilidad en el agua y su habilidad para lanzar poderosos golpes '),
(124, 124, '/Pokedex/Pokemon/Seel.png ', 'Seel ', 'water', ' Seel es un Pokémon tipo Agua conocido por su habilidad para nadar en aguas frías y su aspecto de foca '),
(125, 125, '/Pokedex/Pokemon/Shellder.png ', 'Shellder ', 'water', ' Shellder es un Pokémon tipo Agua conocido por su caparazón duro y su habilidad para lanzar ataques de pinza '),
(126, 126, '/Pokedex/Pokemon/Slowbro.png ', 'Slowbro ', 'water', ' Slowbro es un Pokémon tipo Agua y Psíquico conocido por su cola que se transforma en una concha y su gran resistencia '),
(127, 127, '/Pokedex/Pokemon/Slowpoke.png ', 'Slowpoke ', 'water', ' Slowpoke es un Pokémon tipo Agua y Psíquico conocido por su lentitud y su habilidad para lanzar ataques de confusión '),
(128, 128, '/Pokedex/Pokemon/Snorlax.png ', 'Snorlax ', 'normal', ' Snorlax es un Pokémon tipo Normal conocido por su gran apetito y su capacidad para bloquear caminos '),
(129, 129, '/Pokedex/Pokemon/Spearow.png ', 'Spearow ', 'normal', ' Spearow es un Pokémon tipo Normal y Volador conocido por su velocidad en vuelo y su pico afilado '),
(130, 130, '/Pokedex/Pokemon/Squirtle.png ', 'Squirtle ', 'water', ' Squirtle es un Pokémon tipo Agua conocido por su caparazón que puede lanzar agua a presión '),
(131, 131, '/Pokedex/Pokemon/Starmie.png ', 'Starmie ', 'water', ' Starmie es un Pokémon tipo Agua y Psíquico conocido por su belleza y su habilidad para lanzar ataques psíquicos '),
(132, 132, '/Pokedex/Pokemon/Staryu.png ', 'Staryu ', 'water', ' Staryu es un Pokémon tipo Agua conocido por su forma de estrella y su habilidad para regenerar sus extremidades '),
(133, 133, '/Pokedex/Pokemon/Tangela.png ', 'Tangela ', 'grass', ' Tangela es un Pokémon tipo Planta conocido por su aspecto enredado y su habilidad para lanzar ataques de enredo '),
(134, 134, '/Pokedex/Pokemon/Tauros.png ', 'Tauros ', 'normal', ' Tauros es un Pokémon tipo Normal conocido por su temperamento salvaje y su habilidad para lanzar golpes furiosos '),
(135, 135, '/Pokedex/Pokemon/Tentacool.png ', 'Tentacool ', 'water', ' Tentacool es un Pokémon tipo Agua y Veneno conocido por su habilidad para nadar en aguas profundas y lanzar ataques de veneno '),
(136, 136, '/Pokedex/Pokemon/Tentacruel.png ', 'Tentacruel ', 'water', ' Tentacruel es un Pokémon tipo Agua y Veneno conocido por su gran tamaño y su habilidad para lanzar tentáculos '),
(137, 137, '/Pokedex/Pokemon/Vaporeon.png ', 'Vaporeon ', 'water', ' Vaporeon es un Pokémon tipo Agua conocido por su elegancia en el agua y su habilidad para lanzar ataques de agua '),
(138, 138, '/Pokedex/Pokemon/Venomoth.png ', 'Venomoth ', 'bug', ' Venomoth es un Pokémon tipo Bicho y Veneno conocido por su aspecto aterrador y su capacidad para lanzar polvo venenoso '),
(139, 139, '/Pokedex/Pokemon/Venonat.png ', 'Venonat ', 'bug', ' Venonat es un Pokémon tipo Bicho y Veneno conocido por sus grandes ojos y su habilidad para lanzar polvo venenoso '),
(140, 140, '/Pokedex/Pokemon/Venusaur.png ', 'Venusaur ', 'grass', ' Venusaur es un Pokémon tipo Planta y Veneno conocido por su bulbo gigante y su capacidad para lanzar ataques de planta '),
(141, 141, '/Pokedex/Pokemon/Victreebel.png ', 'Victreebel ', 'grass', ' Victreebel es un Pokémon tipo Planta y Veneno conocido por su trampa con forma de planta y su habilidad para lanzar ataques ácidos '),
(142, 142, '/Pokedex/Pokemon/Vileplume.png ', 'Vileplume ', 'grass', ' Vileplume es un Pokémon tipo Planta y Veneno conocido por su aroma agradable y su habilidad para lanzar ataques de polvo venenoso '),
(143, 143, '/Pokedex/Pokemon/Voltorb.png ', 'Voltorb ', 'electric', ' Voltorb es un Pokémon tipo Eléctrico conocido por su forma de esfera y su capacidad para lanzar ataques eléctricos '),
(144, 144, '/Pokedex/Pokemon/Vulpix.png ', 'Vulpix ', 'fire', ' Vulpix es un Pokémon tipo Fuego conocido por su cola ardiente y su capacidad para lanzar ataques de fuego '),
(145, 145, '/Pokedex/Pokemon/Wartortle.png ', 'Wartortle ', 'water', ' Wartortle es un Pokémon tipo Agua conocido por su caparazón que puede lanzar agua a presión y su agilidad en el agua '),
(146, 146, '/Pokedex/Pokemon/Weedle.png ', 'Weedle ', 'bug', ' Weedle es un Pokémon tipo Bicho y Veneno conocido por su aspecto de oruga y su capacidad para lanzar picaduras venenosas '),
(147, 147, '/Pokedex/Pokemon/Weepinbell.png ', 'Weepinbell ', 'grass', ' Weepinbell es un Pokémon tipo Planta y Veneno conocido por su trampa en forma de planta y su habilidad para lanzar ataques ácidos '),
(148, 148, '/Pokedex/Pokemon/Weezing.png ', 'Weezing ', 'poison', ' Weezing es un Pokémon tipo Veneno conocido por su forma de globo y su capacidad para lanzar gases tóxicos '),
(149, 149, '/Pokedex/Pokemon/Wigglytuff.png ', 'Wigglytuff ', 'normal', ' Wigglytuff es un Pokémon tipo Normal y Hada conocido por su ternura y su habilidad para lanzar ataques de canto '),
(150, 150, '/Pokedex/Pokemon/Zapdos.png ', 'Zapdos ', 'electric', ' Zapdos es un Pokémon tipo Eléctrico y Volador conocido por su capacidad para controlar el trueno y su velocidad en vuelo ');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
