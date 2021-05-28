-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 28, 2021 alle 10:19
-- Versione del server: 10.4.17-MariaDB
-- Versione PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sideline`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `campionati`
--

CREATE TABLE `campionati` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(30) NOT NULL,
  `Nazione` varchar(20) NOT NULL,
  `FK_Sport` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `campionati`
--

INSERT INTO `campionati` (`ID`, `Nome`, `Nazione`, `FK_Sport`) VALUES
(1, 'SERIE A', 'ITALIA', 1),
(2, 'SERIE B', 'ITALIA', 1),
(3, 'PREMIER LEAGUE', 'INGHILTERRA', 1),
(4, 'BUNDESLIGA', 'GERMANIA', 1),
(5, 'LA LIGA', 'FRANCIA', 1),
(6, 'LIGUE 1', 'INTERNAZIONALE', 1),
(7, 'CHAMPIONS LEAGUE', 'INTERNAZIONALE', 1),
(8, 'EUROPA LEAGUE', 'INTERNAZIONALE', 1),
(9, 'FORMULA 1', 'INTERNAZIONALE', 3),
(10, 'MOTO GP', 'INTERNAZIONALE', 4),
(11, 'LEGA SERIE A', 'ITALIA', 2),
(12, 'EUROLEGA', 'INTERNAZIONALE', 2),
(13, 'NBA', 'STATI UNITI', 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `citta`
--

CREATE TABLE `citta` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `citta`
--

INSERT INTO `citta` (`ID`, `Nome`) VALUES
(0, '\'\''),
(1, 'TORINO'),
(2, 'MILANO'),
(3, 'ROMA'),
(4, 'BERGAMO'),
(5, 'REGGIO EMILIA'),
(6, 'GENOVA'),
(7, 'NAPOLI'),
(8, 'PARMA'),
(9, 'VERONA'),
(10, 'BOLOGNA'),
(11, 'UDINE'),
(12, 'CAGLIARI'),
(13, 'FIRENZE'),
(14, 'LA SPEZIA'),
(15, 'BENEVENTO'),
(16, 'CROTONE'),
(17, 'SASSUOLO'),
(18, 'EMPOLI'),
(19, 'SALERNO'),
(20, 'MONZA'),
(21, 'LECCE'),
(22, 'VENEZIA'),
(23, 'CITTADELLA'),
(24, 'BRESCIA'),
(25, 'FERRARA'),
(26, 'FROSINONE '),
(27, 'REGGIO CALABRIA'),
(28, 'VICENZA'),
(29, 'CREMONA'),
(30, 'PISA'),
(31, 'PORDENONE'),
(32, 'ASCOLI'),
(33, 'COSENZA'),
(34, 'PESCARA'),
(35, 'CHIAVARI'),
(36, 'MARANELLO'),
(37, 'MILTON KEYNES'),
(38, 'BRACKLEY'),
(39, 'WOKING'),
(40, 'KANNAPOLIS'),
(41, 'ENSTONE'),
(42, 'WANTAGE'),
(43, 'FAENZA'),
(44, 'HINWIL'),
(45, 'SILVERSTONE'),
(46, 'MONACO'),
(47, 'TAVULLIA'),
(48, 'MADRID'),
(49, 'CASOLE D\'ELSA'),
(50, 'MOL'),
(51, 'GERNO DI LESMO'),
(52, 'BOLOGNA'),
(53, 'HAMAMATSU'),
(54, 'AALST'),
(55, 'BORMES-LES-MIMOSAS'),
(56, 'MUNDERFING');

-- --------------------------------------------------------


--
-- Struttura della tabella `societa_sportiva`
--

CREATE TABLE `societa_sportiva` (
  `Nome` varchar(30) NOT NULL,
  `ID` int(11) NOT NULL,
  `FK_Citta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `societa_sportiva`
--

INSERT INTO `societa_sportiva` (`Nome`, `ID`, `FK_Citta`) VALUES
('AC MILAN', 3, 2),
('AEK ATHENS', 175, 0),
('AJAX', 145, 0),
('ALAVES', 115, 0),
('ALFA ROMEO RACING', 48, 44),
('ALPHATAURI', 46, 43),
('ALPINE', 45, 41),
('ANADOLU EFES', 208, 0),
('ANGERS', 132, 0),
('ANTWERP', 181, 0),
('APRILIA', 51, 43),
('ARMINIA BIELEFELD', 96, 0),
('ARSENAL', 69, 0),
('ASCOLI', 36, 32),
('ASTON MARTIN', 47, 45),
('ASTON VILLA', 72, 0),
('ASVEL', 218, 0),
('ATALANTA', 4, 4),
('ATHLETIC BILBAO', 109, 0),
('ATLANTA HAWKS', 227, 0),
('ATLETICO MADRID', 100, 0),
('AUGSBURG', 94, 0),
('AZ ALKMAAR', 171, 0),
('BARCELONA', 102, 0),
('BASKONIA', 214, 0),
('BAYER LEVERKUSEN', 87, 0),
('BAYERN', 209, 0),
('BAYERN MUNICH', 82, 0),
('BENEVENTO', 18, 15),
('BENFICA', 164, 0),
('BERLINO', 219, 0),
('BIELLA', 203, 0),
('BOLOGNA ', 11, 10),
('BORDEAUX', 131, 0),
('BORUSSIA DORTMUND', 84, 0),
('BORUSSIA MOENCHENGLADBACH', 89, 0),
('BOSTON CELTICS', 229, 0),
('BRAGA', 173, 0),
('BRESCIA', 27, 24),
('BREST', 136, 0),
('BRIGHTON', 77, 0),
('BRINDISI', 192, 0),
('BROOKLYN NETS', 224, 0),
('BURNLEY ', 78, 0),
('CADIZ', 111, 0),
('CAGLIARI', 15, 12),
('Cantù', 205, 0),
('CELTA VIGO', 107, 0),
('CELTIC', 177, 0),
('CFR CLUJ', 156, 0),
('CHARLOTTE HORNETS', 232, 0),
('CHELSEA', 65, 0),
('CHICAGO BULLS', 233, 0),
('CHIEVO', 28, 9),
('CITTADELLA', 26, 23),
('CLEVELAND CAVALIERS', 235, 0),
('CLUB BRUGES', 149, 0),
('COSENZA', 37, 33),
('CREMONA', 200, 29),
('CREMONESE', 33, 29),
('CROTONE', 19, 16),
('CRVENA ZVEZDA', 221, 0),
('CRYSTAL PALACE', 75, 0),
('CSKA ', 207, 0),
('CSKA MOSCOW', 187, 0),
('DALLAS MAVERICKS', 242, 0),
('DENVER NUGGETS', 240, 0),
('DETROIT PISTONS', 237, 0),
('DIJON', 139, 0),
('DINAMO SASSARI', 195, 0),
('DINAMO ZAGREB', 184, 0),
('DUCATI', 52, 10),
('DUNDALK', 160, 0),
('DYNAMO KYIV', 151, 0),
('EIBAR', 119, 0),
('EINTRACHT FRANKFURT', 86, 0),
('ELCHE', 116, 0),
('EMPOLI', 21, 18),
('ENTELLA', 40, 35),
('ESPONSORAMA RACING', 59, 47),
('EVERTON', 71, 0),
('FC KÖLN', 97, 0),
('FC KRASNODAR', 147, 0),
('FC MIDTJYLLAND', 146, 0),
('FC PORTO', 143, 0),
('FENERBAHÇE', 211, 0),
('FERENCVAROS', 152, 0),
('FERRARI', 41, 36),
('FEYENOORD', 186, 0),
('FIORENTINA ', 13, 13),
('FK CRVENA ZVEZDA', 188, 0),
('FORTITUDO BOLOGNA', 253, 52),
('FREIBURG', 91, 0),
('FROSINONE', 30, 26),
('FSV MAINZ', 93, 0),
('FULHAM', 79, 0),
('GENOA', 14, 6),
('GENT', 190, 0),
('GETAFE', 114, 0),
('GOLDEN STATE WARRIORS', 246, 0),
('GRANADA', 108, 0),
('HAAS', 50, 40),
('HAPOEL BEER SHEVA', 162, 0),
('HERTHA BERLIN', 95, 0),
('HOFFENHEIM', 92, 0),
('HONDA', 58, 53),
('HOUSTON ROCKETS', 252, 0),
('HUESCA', 117, 0),
('INDIANA PACERS', 231, 0),
('INTER', 2, 2),
('ISTANBUL BASAKSEHIR', 154, 0),
('JUVENTUS', 1, 1),
('KHIMKI', 222, 0),
('KTM', 57, 55),
('LASK LINZ', 182, 0),
('LAZIO', 6, 3),
('LCR HONDA', 53, 46),
('LECCE', 24, 21),
('LECH POZNAN', 166, 0),
('LEEDS', 70, 0),
('LEICESTER', 66, 0),
('LENS', 126, 0),
('LEVANTE', 113, 0),
('LIBEREC', 189, 0),
('LILLE', 120, 0),
('LIVERPOOL', 64, 0),
('LOKOMOTIV MOSCOW', 141, 0),
('LORIENT', 135, 0),
('LOS ANGELES CLIPPERS', 241, 0),
('LOS ANGELES LAKERS', 244, 0),
('LUDOGORETS RAZGRAD', 183, 0),
('LYON', 123, 0),
('MACCABI', 217, 0),
('MACCABI TEL AVIV', 178, 0),
('MANCHESTER CITY', 62, 0),
('MANCHESTER UNITED', 63, 0),
('MARSEILLE', 124, 0),
('MCLAREN', 44, 39),
('MEMPHIS GRIZZLIES', 245, 0),
('MERCEDES', 42, 38),
('METZ', 129, 0),
('MIAMI HEAT', 228, 0),
('MILWAUKEE BUCKS', 225, 0),
('MINNESOTA TIMBERWOLVES', 250, 0),
('MOLDE', 158, 0),
('MONACO', 122, 0),
('MONTPELLIER', 127, 0),
('MONZA', 23, 20),
('NANTES', 137, 0),
('NAPOLI', 5, 7),
('NEW ORLEANS PELICANS', 248, 0),
('NEW YORK KNICKS', 226, 0),
('NEWCASTLE UNITED', 73, 0),
('NICE', 128, 0),
('NIMES', 138, 0),
('OKLAHOMA CITY THUNDER', 251, 0),
('OLIMPIA MILANO', 191, 2),
('OLYMPIACOS', 144, 0),
('OMONIA NICOSIA', 170, 0),
('ORLANDO MAGIC', 236, 0),
('OSASUNA', 110, 0),
('PANATHINAIKOS', 220, 0),
('PAOK THESSALONIKI FC', 169, 0),
('PARMA', 20, 8),
('PESCARA', 39, 34),
('PETRONAS SRT', 55, 50),
('PFC CSKA-SOFIA', 157, 0),
('PHILADELPHIA 76ER', 223, 0),
('PHOENIX SUNS', 239, 0),
('PISA', 34, 30),
('PORDENONE', 35, 31),
('PORTLAND TRAIL BLAZERS', 243, 0),
('PRAMAC RACING', 56, 49),
('PSG', 121, 0),
('PSV EINDHOVEN', 167, 0),
('QARABAG FK', 180, 0),
('RANGERS', 163, 0),
('RAPID WIEN', 159, 0),
('RASENBALLSPORT LEIPZIG', 83, 0),
('REAL BETIS', 105, 0),
('REAL MADRID', 101, 0),
('REAL SOCIEDAD', 104, 0),
('RED BULL', 43, 37),
('REGGIANA', 38, 5),
('REGGINA', 31, 27),
('REIMS', 133, 0),
('RENNES', 125, 0),
('REYER VENEZIA', 194, 22),
('RIJEKA', 172, 0),
('ROMA', 7, 3),
('SACRAMENTO KINGS', 249, 0),
('SAINT-ETIENNE', 130, 0),
('SALERNITANA', 22, 19),
('SALZBURG', 140, 0),
('SAMPDORIA', 9, 6),
('SAN ANTONIO SPURS', 247, 0),
('SASSUOLO', 8, 5),
('SCHALKE 04', 99, 0),
('SEVILLA', 103, 0),
('SHAKHTAR DONETSK', 142, 0),
('SHEFFIELD UNITED', 81, 0),
('SIVASSPOR', 179, 0),
('SLAVIA PRAGUE', 161, 0),
('SOUTHAMPTON ', 76, 0),
('SPAL', 29, 25),
('SPARTA PRAGUE', 176, 0),
('SPEZIA', 17, 14),
('STANDARD LIEGE', 165, 0),
('STRASBOURG', 134, 0),
('SUZUKI', 60, 52),
('TECH 3 KTM', 61, 54),
('TORINO', 16, 1),
('TORONTO RAPTORS', 234, 0),
('TOTTENHAM', 68, 0),
('TRENTO', 198, 0),
('TRIESTE', 197, 0),
('UDINESE', 12, 11),
('UNION BERLIN', 88, 0),
('UNIVERSO TREVISO', 196, 0),
('UTAH JAZZ', 238, 0),
('VALENCIA', 112, 0),
('VALLADOLID', 118, 0),
('VARESE', 204, 0),
('VENEZIA', 25, 22),
('VERONA', 10, 9),
('VFB STUTTGART', 90, 0),
('VICENZA', 32, 28),
('VILLARREAL', 106, 0),
('VIRTUS BOLOGNA', 193, 10),
('VL PESARO', 254, 0),
('WASHINGTON WIZARDS', 230, 0),
('WERDER BREMEN', 98, 0),
('WEST BROMWICH ALBION', 80, 0),
('WEST HAM', 67, 0),
('WILLIAMS', 49, 42),
('WOLFSBERGER AC', 185, 0),
('WOLFSBURG', 85, 0),
('WOLVERHAMPTON WANDERERS', 74, 0),
('YAMAHA', 54, 51),
('YOUNG BOYS', 155, 0),
('ŽALGIRIS', 215, 0),
('ZENIT', 212, 0),
('ZENIT ST. PETERSBURG', 150, 0),
('ZORYA', 174, 0);

-- --------------------------------------------------------
--
-- Struttura della tabella `classifica`
--

CREATE TABLE `classifica` (
  `ID` int(11) NOT NULL,
  `Posizione_classifica` int(11) NOT NULL,
  `Punteggio` int(11) NOT NULL,
  `Giocate` int(11) DEFAULT NULL,
  `Vinte` int(11) DEFAULT NULL,
  `Pareggiate` int(11) DEFAULT NULL,
  `Perse` int(11) DEFAULT NULL,
  `Punti_segnati` int(11) DEFAULT NULL,
  `Punti_subiti` int(11) DEFAULT NULL,
  `Differenza_reti` int(11) DEFAULT NULL,
  `FK_Campionati` int(11) NOT NULL,
  `FK_Societa_sportiva` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `classifica`
--

INSERT INTO `classifica` (`ID`, `Posizione_classifica`, `Punteggio`, `Giocate`, `Vinte`, `Pareggiate`, `Perse`, `Punti_segnati`, `Punti_subiti`, `Differenza_reti`, `FK_Campionati`, `FK_Societa_sportiva`) VALUES
(1, 1, 38, 91, 28, 7, 3, 89, 35, 54, 1, 'INTER'),
(2, 2, 38, 79, 24, 7, 7, 74, 41, 33, 1, 'AC MILAN'),
(3, 3, 38, 78, 23, 9, 6, 90, 47, 43, 1, 'ATALANTA'),
(4, 4, 38, 78, 23, 9, 6, 77, 38, 39, 1, 'JUVENTUS'),
(5, 5, 38, 77, 24, 5, 9, 86, 41, 45, 1, 'NAPOLI'),
(6, 6, 38, 68, 21, 5, 12, 61, 55, 6, 1, 'LAZIO'),
(7, 7, 38, 62, 18, 8, 12, 68, 58, 10, 1, 'ROMA'),
(8, 8, 38, 62, 17, 11, 10, 64, 56, 8, 1, 'SASSUOLO'),
(9, 9, 38, 52, 15, 7, 16, 52, 54, -2, 1, 'SAMPDORIA'),
(10, 10, 38, 45, 11, 12, 15, 46, 48, -2, 1, 'VERONA'),
(11, 11, 38, 42, 10, 12, 16, 47, 58, -11, 1, 'GENOA'),
(12, 12, 38, 41, 10, 11, 17, 51, 65, -14, 1, 'BOLOGNA'),
(13, 13, 38, 40, 9, 13, 16, 47, 59, -12, 1, 'FIORENTINA'),
(14, 14, 38, 40, 10, 10, 18, 42, 58, -16, 1, 'UDINESE'),
(15, 15, 38, 39, 9, 12, 17, 52, 72, -20, 1, 'SPEZIA'),
(16, 16, 38, 37, 9, 10, 19, 43, 59, -16, 1, 'CAGLIARI'),
(17, 17, 38, 37, 7, 16, 15, 50, 69, -19, 1, 'TORINO'),
(18, 18, 38, 33, 7, 12, 19, 40, 75, -35, 1, 'BENEVENTO'),
(19, 19, 38, 23, 6, 5, 27, 45, 92, -47, 1, 'CROTONE'),
(20, 20, 38, 20, 3, 11, 24, 39, 83, -44, 1, 'PARMA'),
(21, 1, 38, 73, 19, 16, 3, 68, 35, 33, 2, 'EMPOLI'),
(22, 2, 38, 69, 19, 12, 7, 46, 34, 12, 2, 'SALERNITANA'),
(23, 3, 38, 64, 17, 13, 8, 51, 33, 18, 2, 'MONZA'),
(24, 4, 38, 62, 16, 14, 8, 68, 47, 21, 2, 'LECCE'),
(25, 5, 38, 59, 15, 14, 9, 53, 39, 14, 2, 'VENEZIA'),
(26, 6, 38, 57, 15, 12, 11, 48, 35, 13, 2, 'CITTADELLA'),
(27, 7, 38, 56, 14, 14, 10, 50, 37, 13, 2, 'CHIEVO'),
(28, 8, 38, 56, 15, 11, 12, 61, 53, 8, 2, 'BRESCIA'),
(29, 9, 38, 56, 14, 14, 10, 44, 42, 2, 2, 'SPAL'),
(30, 10, 38, 50, 12, 14, 12, 38, 42, -4, 2, 'FROSINONE'),
(31, 11, 38, 50, 12, 14, 12, 42, 45, -3, 2, 'REGGINA'),
(32, 12, 38, 48, 12, 12, 14, 46, 44, 2, 2, 'CREMONESE'),
(33, 13, 38, 48, 11, 15, 12, 54, 59, -5, 2, 'PISA'),
(34, 14, 38, 48, 11, 15, 12, 48, 53, -5, 2, 'BASSANO VIRTUS'),
(35, 15, 38, 45, 10, 15, 13, 40, 39, 1, 2, 'PORDENONE CALCIO'),
(36, 16, 38, 44, 11, 11, 16, 37, 48, -11, 2, 'ASCOLI PICCHIO FC 1898'),
(37, 17, 38, 35, 6, 17, 15, 29, 47, -18, 2, 'COSENZA'),
(38, 18, 38, 34, 9, 7, 22, 31, 57, -26, 2, 'REGGIO AUDACE'),
(39, 19, 38, 32, 7, 11, 20, 29, 60, -31, 2, 'PESCARA'),
(40, 20, 38, 23, 4, 11, 23, 30, 64, -34, 2, 'ENTELLA'),
(53, 1, 38, 86, 27, 5, 6, 83, 32, 51, 3, 'MANCHESTER CITY'),
(54, 2, 38, 74, 21, 11, 6, 73, 44, 29, 3, 'MANCHESTER UNITED'),
(55, 3, 38, 69, 20, 9, 9, 68, 42, 26, 3, 'LIVERPOOL'),
(56, 4, 38, 67, 19, 10, 9, 58, 36, 22, 3, 'CHELSEA'),
(57, 5, 38, 66, 20, 6, 12, 68, 50, 18, 3, 'LEICESTER'),
(58, 6, 38, 65, 19, 8, 11, 62, 47, 15, 3, 'WEST HAM'),
(59, 7, 38, 62, 18, 8, 12, 68, 45, 23, 3, 'TOTTENHAM'),
(60, 8, 38, 61, 18, 7, 13, 55, 39, 16, 3, 'ARSENAL'),
(61, 9, 38, 59, 18, 5, 15, 62, 54, 8, 3, 'LEEDS'),
(62, 10, 38, 59, 17, 8, 13, 47, 48, -1, 3, 'EVERTON'),
(63, 11, 38, 55, 16, 7, 15, 55, 46, 9, 3, 'ASTON VILLA'),
(64, 12, 38, 45, 12, 9, 17, 46, 62, -16, 3, 'NEWCASTLE UNITED'),
(65, 13, 38, 45, 12, 9, 17, 36, 52, -16, 3, 'WOLVERHAMPTON WANDERERS'),
(66, 14, 38, 44, 12, 8, 18, 41, 66, -25, 3, 'CRYSTAL PALACE'),
(67, 15, 38, 43, 12, 7, 19, 47, 68, -21, 3, 'SOUTHAMPTON'),
(68, 16, 38, 41, 9, 14, 15, 40, 46, -6, 3, 'BRIGHTON'),
(69, 17, 38, 39, 10, 9, 19, 33, 55, -22, 3, 'BURNLEY'),
(70, 18, 38, 28, 5, 13, 20, 27, 53, -26, 3, 'FULHAM'),
(71, 19, 38, 26, 5, 11, 22, 35, 76, -41, 3, 'WEST BROMWICH ALBION'),
(72, 20, 38, 23, 7, 2, 29, 20, 63, -43, 3, 'SHEFFIELD UNITED'),
(111, 1, 34, 78, 24, 6, 4, 99, 44, 55, 4, 'BAYERN MUNICH'),
(112, 2, 34, 65, 19, 8, 7, 60, 32, 28, 4, 'RASENBALLSPORT LEIPZIG'),
(113, 3, 34, 64, 20, 4, 10, 75, 46, 29, 4, 'BORUSSIA DORTMUND'),
(114, 4, 34, 61, 17, 10, 7, 61, 37, 24, 4, 'WOLFSBURG'),
(115, 5, 34, 60, 16, 12, 6, 69, 53, 16, 4, 'EINTRACHT FRANKFURT'),
(116, 6, 34, 52, 14, 10, 10, 53, 39, 14, 4, 'BAYER LEVERKUSEN'),
(117, 7, 34, 50, 12, 14, 8, 50, 43, 7, 4, 'UNION BERLIN'),
(118, 8, 34, 49, 13, 10, 11, 64, 56, 8, 4, 'BORUSSIA MOENCHENGLADBACH'),
(119, 9, 34, 45, 12, 9, 13, 56, 55, 1, 4, 'VFB STUTTGART'),
(120, 10, 34, 45, 12, 9, 13, 52, 52, 0, 4, 'FREIBURG'),
(121, 11, 34, 43, 11, 10, 13, 52, 54, -2, 4, 'HOFFENHEIM'),
(122, 12, 34, 39, 10, 9, 15, 39, 56, -17, 4, 'FSV MAINZ'),
(123, 13, 34, 36, 10, 6, 18, 36, 54, -18, 4, 'AUGSBURG'),
(124, 14, 34, 35, 8, 11, 15, 41, 52, -11, 4, 'HERTHA BERLIN'),
(125, 15, 34, 35, 9, 8, 17, 26, 52, -26, 4, 'ARMINIA BIELEFELD'),
(126, 16, 34, 33, 8, 9, 17, 34, 60, -26, 4, 'FC KÖLN'),
(127, 17, 34, 31, 7, 10, 17, 36, 57, -21, 4, 'WERDER BREMEN'),
(128, 18, 34, 16, 3, 7, 24, 25, 86, -61, 4, 'SCHALKE 04'),
(129, 1, 38, 86, 26, 8, 4, 67, 25, 42, 5, 'ATLETICO MADRID'),
(130, 2, 38, 84, 25, 9, 4, 67, 28, 39, 5, 'REAL MADRID'),
(131, 3, 38, 79, 24, 7, 7, 85, 38, 47, 5, 'BARCELONA'),
(132, 4, 38, 77, 24, 5, 9, 53, 33, 20, 5, 'SEVILLA'),
(133, 5, 38, 62, 17, 11, 10, 59, 38, 21, 5, 'REAL SOCIEDAD'),
(134, 6, 38, 61, 17, 10, 11, 50, 50, 0, 5, 'REAL BETIS'),
(135, 7, 38, 58, 15, 13, 10, 60, 44, 16, 5, 'VILLARREAL'),
(136, 8, 38, 53, 14, 11, 13, 55, 57, -2, 5, 'CELTA VIGO'),
(137, 9, 38, 46, 13, 7, 18, 47, 65, -18, 5, 'GRANADA'),
(138, 10, 38, 46, 11, 13, 14, 46, 42, 4, 5, 'ATHLETIC BILBAO'),
(139, 11, 38, 44, 11, 11, 16, 37, 48, -11, 5, 'OSASUNA'),
(140, 12, 38, 44, 11, 11, 16, 36, 58, -22, 5, 'CADIZ'),
(141, 13, 38, 43, 10, 13, 15, 50, 53, -3, 5, 'VALENCIA'),
(142, 14, 38, 41, 9, 14, 15, 46, 57, -11, 5, 'LEVANTE'),
(143, 15, 38, 38, 9, 11, 18, 28, 43, -15, 5, 'GETAFE'),
(144, 16, 38, 38, 9, 11, 18, 36, 57, -21, 5, 'ALAVES'),
(145, 17, 38, 36, 8, 12, 18, 34, 55, -21, 5, 'ELCHE'),
(146, 18, 38, 34, 7, 13, 18, 34, 53, -19, 5, 'HUESCA'),
(147, 19, 38, 31, 5, 16, 17, 34, 57, -23, 5, 'VALLADOLID'),
(148, 20, 38, 30, 6, 12, 20, 29, 52, -23, 5, 'EIBAR'),
(149, 1, 38, 83, 24, 11, 3, 64, 23, 41, 6, 'LILLE'),
(150, 2, 38, 82, 26, 4, 8, 86, 28, 58, 6, 'PSG'),
(151, 3, 38, 78, 24, 6, 8, 76, 42, 34, 6, 'MONACO'),
(152, 4, 38, 76, 22, 10, 6, 81, 43, 38, 6, 'LYON'),
(153, 5, 38, 60, 16, 12, 10, 54, 47, 7, 6, 'MARSEILLE'),
(154, 6, 38, 58, 16, 10, 12, 52, 40, 12, 6, 'RENNES'),
(155, 7, 38, 57, 15, 12, 11, 55, 54, 1, 6, 'LENS'),
(156, 8, 38, 54, 14, 12, 12, 60, 62, -2, 6, 'MONTPELLIER'),
(157, 9, 38, 52, 15, 7, 16, 50, 53, -3, 6, 'NICE'),
(158, 10, 38, 47, 12, 11, 15, 44, 48, -4, 6, 'METZ'),
(159, 11, 38, 46, 12, 10, 16, 42, 54, -12, 6, 'SAINT-ETIENNE'),
(160, 12, 38, 45, 13, 6, 19, 42, 56, -14, 6, 'BORDEAUX'),
(161, 13, 38, 44, 12, 8, 18, 40, 58, -18, 6, 'ANGERS'),
(162, 14, 38, 42, 9, 15, 14, 42, 50, -8, 6, 'REIMS'),
(163, 15, 38, 42, 11, 9, 18, 49, 58, -9, 6, 'STRASBOURG'),
(164, 16, 38, 42, 11, 9, 18, 50, 68, -18, 6, 'LORIENT'),
(165, 17, 38, 41, 11, 8, 19, 50, 66, -16, 6, 'BREST'),
(166, 18, 38, 40, 9, 13, 16, 47, 55, -8, 6, 'NANTES'),
(167, 19, 38, 35, 9, 8, 21, 40, 71, -31, 6, 'NIMES'),
(168, 20, 38, 21, 4, 9, 25, 25, 73, -48, 6, 'DIJON'),
(196, 1, 6, 16, 5, 1, 0, 18, 5, 13, 7, 'BAYERN MUNICH'),
(197, 2, 6, 9, 2, 3, 1, 7, 8, -1, 7, 'ATLETICO MADRID'),
(198, 3, 6, 4, 1, 1, 4, 10, 17, -7, 7, 'SALZBURG'),
(199, 4, 6, 3, 0, 3, 3, 5, 10, -5, 7, 'LOKOMOTIV MOSCOW'),
(200, 1, 6, 10, 3, 1, 2, 11, 9, 2, 7, 'REAL MADRID'),
(201, 2, 6, 8, 2, 2, 2, 16, 9, 7, 7, 'BORUSSIA MOENCHENGLADBACH'),
(202, 3, 6, 8, 2, 2, 2, 5, 12, -7, 7, 'SHAKHTAR DONETSK'),
(203, 4, 6, 6, 1, 3, 2, 7, 9, -2, 7, 'INTER'),
(204, 1, 6, 16, 5, 1, 0, 13, 1, 12, 7, 'MANCHESTER CITY'),
(205, 2, 6, 13, 4, 1, 1, 10, 3, 7, 7, 'FC PORTO'),
(206, 3, 6, 3, 1, 0, 5, 2, 10, -8, 7, 'OLYMPIACOS'),
(207, 4, 6, 3, 1, 0, 5, 2, 13, -11, 7, 'MARSEILLE'),
(208, 1, 6, 13, 4, 1, 1, 10, 3, 7, 7, 'LIVERPOOL'),
(209, 2, 6, 11, 3, 2, 1, 10, 8, 2, 7, 'ATALANTA'),
(210, 3, 6, 7, 2, 1, 3, 7, 7, 0, 7, 'AJAX'),
(211, 4, 6, 2, 0, 2, 4, 4, 13, -9, 7, 'FC MIDTJYLLAND'),
(212, 1, 6, 14, 4, 2, 0, 14, 2, 12, 7, 'CHELSEA'),
(213, 2, 6, 13, 4, 1, 1, 9, 8, 1, 7, 'SEVILLA'),
(214, 3, 6, 5, 1, 2, 3, 6, 11, -5, 7, 'FC KRASNODAR'),
(215, 4, 6, 1, 0, 1, 5, 3, 11, -8, 7, 'RENNES'),
(216, 1, 6, 13, 4, 1, 1, 12, 5, 7, 7, 'BORUSSIA DORTMUND'),
(217, 2, 6, 10, 2, 4, 0, 11, 7, 4, 7, 'LAZIO'),
(218, 3, 6, 8, 2, 2, 2, 8, 10, -2, 7, 'CLUB BRUGES'),
(219, 4, 6, 1, 0, 1, 5, 4, 13, -9, 7, 'ZENIT ST. PETERSBURG'),
(220, 1, 6, 15, 5, 0, 1, 14, 4, 10, 7, 'JUVENTUS'),
(221, 2, 6, 15, 5, 0, 1, 16, 5, 11, 7, 'BARCELONA'),
(222, 3, 6, 4, 1, 1, 4, 4, 13, -9, 7, 'DYNAMO KYIV'),
(223, 4, 6, 1, 0, 1, 5, 5, 17, -12, 7, 'FERENCVAROS'),
(224, 1, 6, 12, 4, 0, 2, 13, 6, 7, 7, 'PSG'),
(225, 2, 6, 12, 4, 0, 2, 11, 12, -1, 7, 'RASENBALLSPORT LEIPZIG'),
(226, 3, 6, 9, 3, 0, 3, 15, 10, 5, 7, 'MANCHESTER UNITED'),
(227, 4, 6, 3, 1, 0, 5, 7, 18, -11, 7, 'ISTANBUL BASAKSEHIR'),
(276, 1, 6, 13, 4, 1, 1, 13, 5, 8, 8, 'ROMA'),
(277, 2, 6, 10, 3, 1, 2, 9, 7, 2, 8, 'YOUNG BOYS'),
(278, 3, 6, 5, 1, 2, 3, 4, 10, -6, 8, 'CFR CLUJ'),
(279, 4, 6, 5, 1, 2, 3, 3, 7, -4, 8, 'PFC CSKA-SOFIA'),
(280, 1, 6, 18, 6, 0, 0, 20, 5, 15, 8, 'ARSENAL'),
(281, 2, 6, 10, 3, 1, 2, 9, 11, -2, 8, 'MOLDE'),
(282, 3, 6, 7, 2, 1, 3, 11, 13, -2, 8, 'RAPID WIEN'),
(283, 4, 6, 0, 0, 0, 6, 8, 19, -11, 8, 'DUNDALK'),
(284, 1, 6, 15, 5, 0, 1, 21, 8, 13, 8, 'BAYER LEVERKUSEN'),
(285, 2, 6, 12, 4, 0, 2, 11, 10, 1, 8, 'SLAVIA PRAGUE'),
(286, 3, 6, 6, 2, 0, 4, 7, 13, -6, 8, 'HAPOEL BEER SHEVA'),
(287, 4, 6, 3, 1, 0, 5, 8, 16, -8, 8, 'NICE'),
(288, 1, 6, 14, 4, 2, 0, 13, 7, 6, 8, 'RANGERS'),
(289, 2, 6, 12, 3, 3, 0, 18, 9, 9, 8, 'BENFICA'),
(290, 3, 6, 4, 1, 1, 4, 7, 14, -7, 8, 'STANDARD LIEGE'),
(291, 4, 6, 3, 1, 0, 5, 6, 14, -8, 8, 'LECH POZNAN'),
(292, 1, 6, 12, 4, 0, 2, 12, 9, 3, 8, 'PSV EINDHOVEN'),
(293, 2, 6, 11, 3, 2, 1, 6, 3, 3, 8, 'GRANADA'),
(294, 3, 6, 6, 1, 3, 2, 8, 7, 1, 8, 'PAOK THESSALONIKI FC'),
(295, 4, 6, 4, 1, 1, 4, 5, 12, -7, 8, 'OMONIA NICOSIA'),
(296, 1, 6, 11, 3, 2, 1, 7, 4, 3, 8, 'NAPOLI'),
(297, 2, 6, 9, 2, 3, 1, 5, 4, 1, 8, 'REAL SOCIEDAD'),
(298, 3, 6, 8, 2, 2, 2, 7, 5, 2, 8, 'AZ ALKMAAR'),
(299, 4, 6, 4, 1, 1, 4, 6, 12, -6, 8, 'RIJEKA'),
(300, 1, 6, 13, 4, 1, 1, 14, 5, 9, 8, 'LEICESTER'),
(301, 2, 6, 13, 4, 1, 1, 14, 10, 4, 8, 'BRAGA'),
(302, 3, 6, 6, 2, 0, 4, 6, 11, -5, 8, 'ZORYA'),
(303, 4, 6, 3, 1, 0, 5, 7, 15, -8, 8, 'AEK ATHENS'),
(304, 1, 6, 13, 4, 1, 1, 12, 7, 5, 8, 'AC MILAN'),
(305, 2, 6, 11, 3, 2, 1, 14, 8, 6, 8, 'LILLE'),
(306, 3, 6, 6, 2, 0, 4, 10, 12, -2, 8, 'SPARTA PRAGUE'),
(307, 4, 6, 4, 1, 1, 4, 10, 19, -9, 8, 'CELTIC'),
(308, 1, 6, 16, 5, 1, 0, 17, 5, 12, 8, 'VILLARREAL'),
(309, 2, 6, 11, 3, 2, 1, 6, 7, -1, 8, 'MACCABI TEL AVIV'),
(310, 3, 6, 6, 2, 0, 4, 9, 11, -2, 8, 'SIVASSPOR'),
(311, 4, 6, 1, 0, 1, 5, 4, 13, -9, 8, 'QARABAG FK'),
(312, 1, 6, 13, 4, 1, 1, 15, 5, 10, 8, 'TOTTENHAM'),
(313, 2, 6, 12, 4, 0, 2, 8, 5, 3, 8, 'ANTWERP'),
(314, 3, 6, 10, 3, 1, 2, 11, 12, -1, 8, 'LASK LINZ'),
(315, 4, 6, 0, 0, 0, 6, 7, 19, -12, 8, 'LUDOGORETS RAZGRAD'),
(316, 1, 6, 14, 4, 2, 0, 9, 1, 8, 8, 'DINAMO ZAGREB'),
(317, 2, 6, 10, 3, 1, 2, 7, 6, 1, 8, 'WOLFSBERGER AC'),
(318, 3, 6, 5, 1, 2, 3, 4, 8, -4, 8, 'FEYENOORD'),
(319, 4, 6, 3, 0, 3, 3, 3, 8, -5, 8, 'CSKA MOSCOW'),
(320, 1, 6, 16, 5, 1, 0, 17, 2, 15, 8, 'HOFFENHEIM'),
(321, 2, 6, 11, 3, 2, 1, 9, 4, 5, 8, 'FK CRVENA ZVEZDA'),
(322, 3, 6, 7, 2, 1, 3, 4, 13, -9, 8, 'LIBEREC'),
(323, 4, 6, 0, 0, 0, 6, 4, 15, -11, 8, 'GENT'),
(334, 1, 149, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 'RED BULL'),
(335, 2, 148, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 'MERCEDES'),
(336, 3, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 'MCLAREN'),
(337, 4, 78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 'FERRARI'),
(338, 5, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 'ASTON MARTIN'),
(339, 6, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 'ALPHATAURI'),
(340, 7, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 'ALPINE'),
(341, 8, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 'ALFA ROMEO RACING'),
(342, 9, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 'HAAS'),
(343, 10, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 'WILLIAMS'),
(354, 1, 143, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 'DUCATI'),
(355, 2, 136, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 'YAMAHA'),
(356, 3, 86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 'PRAMAC RACING'),
(357, 4, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 'SUZUKI'),
(358, 5, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 'HONDA'),
(359, 6, 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 'LCR HONDA'),
(360, 7, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 'PETRONAS SRT'),
(361, 8, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 'APRILIA'),
(362, 9, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 'KTM'),
(363, 10, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 'ESPONSORAMA RACING');

-- --------------------------------------------------------

--
-- Struttura della tabella `eventi_sportivi`
--

CREATE TABLE `eventi_sportivi` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(20) NOT NULL,
  `Luogo` varchar(20) NOT NULL,
  `N_giornata` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `membri`
--

CREATE TABLE `membri` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(20) NOT NULL,
  `Cognome` varchar(20) NOT NULL,
  `Ruolo` varchar(20) NOT NULL,
  `Numero` varchar(20) DEFAULT NULL,
  `Nazionalità` varchar(20) NOT NULL,
  `FK_Societa_sportiva` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `membri`
--

INSERT INTO `membri` (`ID`, `Nome`, `Cognome`, `Ruolo`, `Numero`, `Nazionalità`, `FK_Societa_sportiva`) VALUES
(1001, 'Mattia', 'Binotto', 'Team manager', '', 'Italiana', 'FERRARI'),
(1002, 'Charles ', 'Leclerc', 'pilota', '16', 'Monegasca', 'FERRARI'),
(1003, 'Carlos', 'Sainz', 'pilota', '55', 'Spagnola', 'FERRARI'),
(1004, 'Toto', 'Wolff', 'Team manager', '', 'Austriaca', 'MERCEDES'),
(1005, 'Lewis', 'Hamilton', 'pilota', '44', 'Inglese', 'MERCEDES'),
(1006, 'Valtteri', 'Bottas', 'pilota', '77', 'Finlandese', 'MERCEDES'),
(1007, 'Christian ', 'Horner', 'Team manager', '', 'Inglese', 'RED BULL'),
(1008, 'Max', 'Verstappen', 'pilota', '33', 'Olandese', 'RED BULL'),
(1009, 'Sergio', 'Perez', 'pilota', '11', 'Messicana', 'RED BULL'),
(1010, 'Andreas', 'Seidl', 'Team manager', '', 'Tedesca', 'MCLAREN'),
(1011, 'Daniel', 'Ricciardo', 'pilota', '3', 'Australiana', 'MCLAREN'),
(1012, 'Lando', 'Norris', 'pilota', '4', 'Inglese', 'MCLAREN'),
(1013, 'Davide', 'Brivio', 'Team manager', '', 'Italiana', 'ALPINE'),
(1014, 'Fernando', 'Alonso', 'pilota', '14', 'Spagnola', 'ALPINE'),
(1015, 'Esteban', 'Ocon', 'pilota', '31', 'Francese', 'ALPINE'),
(1016, 'Franz', 'Tost', 'Team manager', '', 'Austriaca', 'ALPHATAURI'),
(1017, 'Pierre', 'Gasly', 'pilota', '10', 'Francese', 'ALPHATAURI'),
(1018, 'Yuki', 'Tsunoda', 'pilota', '22', 'Giapponese', 'ALPHATAURI'),
(1019, 'Otmar', 'Szafnauer', 'Team manager', '', 'Statunitense', 'ASTON MARTIN'),
(1020, 'Sebastian', 'Vettel', 'pilota', '5', 'Tedesca', 'ASTON MARTIN'),
(1021, 'Lance ', 'Stroll', 'pilota', '18', 'Canadese', 'ASTON MARTIN'),
(1022, 'Frédéric', 'Vasseur', 'Team manager', '', 'Francese', 'ALFA ROMEO RACING'),
(1023, 'Kimi', 'Raikkonen', 'pilota', '7', 'Finlandese', 'ALFA ROMEO RACING'),
(1024, 'Antonio', 'Giovinazzi', 'pilota', '99', 'Italiana', 'ALFA ROMEO RACING'),
(1025, 'Simon', 'Roberts', 'Team manager', '', 'Inglese', 'WILLIAMS'),
(1026, 'Nicholas', 'Latifi', 'pilota', '6', 'Canadese', 'WILLIAMS'),
(1027, 'George ', 'Russell', 'pilota', '63', 'Inglese', 'WILLIAMS'),
(1028, 'Guenther ', 'Steiner', 'Team manager', '', 'Italiana', 'HAAS'),
(1029, 'Mick', 'Schumacher', 'pilota', '47', 'Tedesca', 'HAAS'),
(1030, 'Nikita', 'Mazepin', 'pilota', '9', 'Russa', 'HAAS'),
(1031, 'Fausto', 'Gresini', 'Team manager', '', 'Italiana', 'APRILIA'),
(1032, 'Lorenzo', 'Salvadori', 'pilota', '32', 'Italiana', 'APRILIA'),
(1033, 'Aleix', 'Espargaro', 'pilota', '41', 'Spagnola', 'APRILIA'),
(1034, 'Davide ', 'Tardozzi', 'Team manager', '', 'Italana', 'DUCATI'),
(1035, 'Jack', 'Miller', 'pilota', '43', 'Australiana', 'DUCATI'),
(1036, 'Francesco', 'Bagnaia', 'pilota', '63', 'Italiana', 'DUCATI'),
(1037, 'Lucio', 'Cecchinello', 'Team manager', '', 'Italiana', 'LCR HONDA'),
(1038, 'Takaaki', 'Nakagami', 'pilota', '30', 'Giapponese', 'LCR HONDA'),
(1039, 'Alex', 'Marquez', 'pilota', '73', 'Spagnola', 'LCR HONDA'),
(1040, 'Massimo', 'Meregalli', 'Team manager', '', 'Italiana', 'YAMAHA'),
(1041, 'Maverick', 'Vinales', 'pilota', '12', 'Spagnola', 'YAMAHA'),
(1042, 'Fabio', 'Quartararo', 'pilota', '20', 'Francese', 'YAMAHA'),
(1043, 'Johan', 'Stigefelt', 'Team manager', '', 'Svedese', 'PETRONAS SRT'),
(1044, 'Franco', 'Morbidelli', 'pilota', '21', 'Italiana', 'PETRONAS SRT'),
(1045, 'Valentino', 'Rossi', 'pilota', '46', 'Italiana', 'PETRONAS SRT'),
(1046, 'Framcesco', 'Guidotti', 'Team manager', '', 'Italiana', 'PRAMAC RACING'),
(1047, 'Johann', 'Zarco', 'pilota', '5', 'Francese', 'PRAMAC RACING'),
(1048, 'Tito', 'Rabat', 'pilota', '53', 'Spagnola', 'PRAMAC RACING'),
(1049, 'Pit', 'Beirer', 'Team manager', '', 'Tedesca', 'KTM'),
(1050, 'Brad', 'Binder', 'pilota', '33', 'Sudafricana', 'KTM'),
(1051, 'Miguel', 'Oliveira', 'pilota', '88', 'Portoghese', 'KTM'),
(1052, 'Alberto', 'Puig', 'Team manager', '', 'Spagnola', 'HONDA'),
(1053, 'Pol', 'Espargaro', 'pilota', '44', 'Spagnola', 'HONDA'),
(1054, 'Marc', 'Marquez', 'pilota', '93', 'Spagnola', 'HONDA'),
(1055, 'Pablo', 'Nieto', 'Team manager', '', 'Spagnola', 'ESPONSORAMA RACING'),
(1056, 'Luca', 'Marini', 'pilota', '10', 'Italiana', 'ESPONSORAMA RACING'),
(1057, 'Enea', 'Bastianini', 'pilota', '23', 'Italiana', 'ESPONSORAMA RACING'),
(1058, 'Shinichi', 'Saraha', 'Team manager', '', 'Giapponese', 'SUZUKI'),
(1059, 'Joan', 'Mir', 'pilota', '36', 'Spagnola', 'SUZUKI'),
(1060, 'Alex', 'Rins', 'pilota', '42', 'Spagnola', 'SUZUKI'),
(1061, 'Hervè', 'Poncharal', 'Team manager', '', 'Francese', 'TECH 3 KTM'),
(1062, 'Danilo', 'Petrucci', 'pilota', '9', 'Italiana', 'TECH 3 KTM'),
(1063, 'Iker', 'Lecuona', 'pilota', '27', 'Spagnola', 'TECH 3 KTM'),
(1064, 'Jorge', 'Martin', 'pilota', '89', 'Spagnola', 'PRAMAC RACING'),
(1065, 'Stefan', 'Bradl', 'pilota', '6', 'Tedesca', 'HONDA');

-- --------------------------------------------------------

--
-- Struttura della tabella `partecipanti`
--

CREATE TABLE `partecipanti` (
  `ID` int(11) NOT NULL,
  `Piazzamento` varchar(20) NOT NULL,
  `Risultato` varchar(20) NOT NULL,
  `FK_Societa_sportiva` varchar(20) NOT NULL,
  `FK_Eventi_sportivi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `sport`
--

CREATE TABLE `sport` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `sport`
--

INSERT INTO `sport` (`ID`, `Nome`) VALUES
(1, 'Calcio'),
(2, 'Basket'),
(3, 'Formula 1'),
(4, 'Moto GP');

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti`
--

CREATE TABLE `utenti` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(20) NOT NULL,
  `Cognome` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Sesso` varchar(20) NOT NULL,
  `Privacy` bit(1) NOT NULL,
  `FK_Societa_sportiva` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `utenti`
--

INSERT INTO `utenti` (`ID`, `Nome`, `Cognome`, `Email`, `Password`, `Sesso`, `Privacy`, `FK_Societa_sportiva`) VALUES
(4, 'alberto', 'incerti', 'incio.albi02@gmail.com', 'p', 'Maschio', b'1', 'JUVENTUS'),
(5, 'alberto', 'incerti', 'gio.albi@alice.it', 'pp', 'Maschio', b'1', NULL);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `campionati`
--
ALTER TABLE `campionati`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK Sport` (`FK_Sport`);

--
-- Indici per le tabelle `citta`
--
ALTER TABLE `citta`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `classifica`
--
ALTER TABLE `classifica`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `classifica_ibfk_1` (`FK_Campionati`),
  ADD KEY `classifica_ibfk_2` (`FK_Societa_sportiva`);

--
-- Indici per le tabelle `eventi_sportivi`
--
ALTER TABLE `eventi_sportivi`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `membri`
--
ALTER TABLE `membri`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK Società sprtiva` (`FK_Societa_sportiva`);

--
-- Indici per le tabelle `partecipanti`
--
ALTER TABLE `partecipanti`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK Eventi sportivi` (`FK_Eventi_sportivi`),
  ADD KEY `FK Società sportiva` (`FK_Societa_sportiva`);

--
-- Indici per le tabelle `societa_sportiva`
--
ALTER TABLE `societa_sportiva`
  ADD PRIMARY KEY (`Nome`),
  ADD KEY `FK_Citta` (`FK_Citta`);

--
-- Indici per le tabelle `sport`
--
ALTER TABLE `sport`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `utenti`
--
ALTER TABLE `utenti`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK Società sportive` (`FK_Societa_sportiva`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `classifica`
--
ALTER TABLE `classifica`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=364;

--
-- AUTO_INCREMENT per la tabella `utenti`
--
ALTER TABLE `utenti`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `campionati`
--
ALTER TABLE `campionati`
  ADD CONSTRAINT `campionati_ibfk_1` FOREIGN KEY (`FK_Sport`) REFERENCES `sport` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `classifica`
--
ALTER TABLE `classifica`
  ADD CONSTRAINT `classifica_ibfk_3` FOREIGN KEY (`FK_Campionati`) REFERENCES `campionati` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `classifica_ibfk_4` FOREIGN KEY (`FK_Societa_sportiva`) REFERENCES `societa_sportiva` (`Nome`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `membri`
--
ALTER TABLE `membri`
  ADD CONSTRAINT `membri_ibfk_1` FOREIGN KEY (`FK_Societa_sportiva`) REFERENCES `societa_sportiva` (`Nome`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `partecipanti`
--
ALTER TABLE `partecipanti`
  ADD CONSTRAINT `partecipanti_ibfk_1` FOREIGN KEY (`FK_Societa_sportiva`) REFERENCES `societa_sportiva` (`Nome`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `societa_sportiva`
--
ALTER TABLE `societa_sportiva`
  ADD CONSTRAINT `societa_sportiva_ibfk_1` FOREIGN KEY (`FK_Citta`) REFERENCES `citta` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `utenti`
--
ALTER TABLE `utenti`
  ADD CONSTRAINT `utenti_ibfk_1` FOREIGN KEY (`FK_Societa_sportiva`) REFERENCES `societa_sportiva` (`Nome`),
  ADD CONSTRAINT `utenti_ibfk_2` FOREIGN KEY (`FK_Societa_sportiva`) REFERENCES `societa_sportiva` (`Nome`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
