-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 
-- Generation Time: Jun 30, 2021 at 10:54 AM
-- Server version: 8.0.21
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `s103`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `announcement_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime DEFAULT NULL,
  `pathToImg` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `likes` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`announcement_id`, `user_id`, `title`, `subtitle`, `content`, `created`, `updated`, `pathToImg`, `likes`) VALUES
(9, 1, ' XIII NIEDZIELA ZWYKŁA ', 'XIII NIEDZIELA ZWYKŁA  27.06.2021.', '<ol>\r\n<li>\r\n<p style=\"text-align: left;\"><span style=\"font-family: \'Times New Roman\', serif;\"><span style=\"font-size: small;\"><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\">Dziś nasze kolejne spotkanie z Jezusem. Uroczystość odpustowa jest&nbsp;</span></span></span></span><span style=\"font-family: \'Times New Roman\', serif;\"><span style=\"font-size: small;\"><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\">okazją do wpatrzenia się w Maryję, kt&oacute;ra od wielu wiek&oacute;w jest z nami i uczy nas dobrego życia. Jest dla nas Matką dobrej porady.</span></span><span style=\"color: #000000;\"><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\"><span style=\"background: #ffffff;\"> Prośmy zatem, abyśmy Jej wskazaniami kierowali się w naszych codziennych decyzjach. Wakacje są czasem odpoczynku, ale niech będą także okazją do refleksji i osobistych decyzji. </span></span></span></span><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\">Przypominamy, że w wakacyjne Niedziele Msze św. o 7.00, 9.00, 11.00, 12.30, a Msza święta wieczorna o 19.00. Msze święte w kaplicach: w Dąbrowicy o 8.00, a w Radwanie o 10.00.</span></span></span></span></p>\r\n</li>\r\n</ol>\r\n<ol start=\"2\">\r\n<li>\r\n<p style=\"text-align: left;\"><span style=\"font-family: \'Times New Roman\', serif;\"><span style=\"font-size: small;\"><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\">W liturgii tego tygodnia:</span></span><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\"> </span></span></span></span></p>\r\n</li>\r\n</ol>\r\n<ul>\r\n<li>\r\n<p style=\"text-align: left;\"><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\">Jutro wspomnienie św. Ireneusza biskupa i męczennika</span></span></p>\r\n</li>\r\n<li>\r\n<p style=\"text-align: left;\"><span style=\"font-family: \'Times New Roman\', serif;\"><span style=\"font-size: small;\"><span style=\"color: #ff0000;\"><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\">We wtorek uroczystość Świętych Apostoł&oacute;w Piotra i Pawła. Msze święte o 6.30, 9.00 i 18.00. To okazja do modlitwy w intencjach Ojca Świętego i każdego z nas. Należymy bowiem do Chrystusowego Kościoła, zbudowanego na fundamencie Apostoł&oacute;w. Zbierana składka jest oddawana do dyspozycji Ojca Świętego. To także dzień imienin księży Pawł&oacute;w i ks. Piotra. Pamiętajmy o nich w modlitwach. </span></span></span></span></span></p>\r\n</li>\r\n</ul>\r\n<ul>\r\n<li>\r\n<p style=\"text-align: left;\"><span style=\"font-family: \'Times New Roman\', serif;\"><span style=\"font-size: small;\"><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\">W czwartek rozpoczynamy miesiąc lipiec. W tym dniu m&oacute;dlmy się o powołania kapłańskie i zakonne.</span></span><span style=\"font-size: medium;\"> </span><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\">Przygotowując się do Pierwszego Piątku lipca, od godziny 17.00, mamy okazję do spowiedzi świętej i Adoracji Najświętszego Sakramentu. O 17.45 Nowenna do Matki Bożej.</span></span></span></span></p>\r\n</li>\r\n</ul>\r\n<ul>\r\n<li>\r\n<p style=\"text-align: left;\"><span style=\"font-family: \'Times New Roman\', serif;\"><span style=\"font-size: small;\"><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\">W piątek święto NMP Tuchowskiej. Ojcowie Redemptoryści serdecznie zapraszają na Wielki Odpust Tuchowski. Szczeg&oacute;ły na afiszu. To pierwszy piątek miesiąca. Naszą modlitwą czcimy Boże Serce a ofiarą na tacę</span></span><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\"> </span></span><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\">wspieramy dzieło Misyjne Kościoła. W piątek Msze Święte o Sercu Bożym o 6.30, 15.00 i 18.00. </span></span><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\"> </span></span><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\">W Dąbrowicy i w Radwanie o 9.00. Przed Mszą świętą od 8.30 &ndash; spowiedź. W piątek po wieczornej Mszy świętej spotkanie Rady Parafialnej w Domu Parafialnym KANA.</span></span></span></span></p>\r\n</li>\r\n</ul>\r\n<ul>\r\n<li>\r\n<p style=\"text-align: left;\"><span style=\"font-family: \'Times New Roman\', serif;\"><span style=\"font-size: small;\"><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\">W sobotę, kt&oacute;ra jest </span></span><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\">pierwszą sobota miesiąca, </span></span><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\">wynagradzamy Niepokalanemu Sercu NMP i modlimy się za wstawiennictwem św. Jana Pawła II za nasze rodziny</span></span><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\">. święto św. Tomasza Apostoła. Imieniny Ks. Tomasza. Pamiętajmy o nim w naszych modlitwach.</span></span><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\"> </span></span></span></span></p>\r\n</li>\r\n</ul>\r\n<ol start=\"3\">\r\n<li>\r\n<p style=\"text-align: left;\"><span style=\"font-family: \'Times New Roman\', serif;\"><span style=\"font-size: small;\"><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\">Pracującym </span></span><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\">życzymy błogosławieństwa Bożego i opieki Matki Bożej</span></span><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\">.&nbsp;</span></span></span></span><span style=\"font-family: \'Times New Roman\', serif;\"><span style=\"font-size: small;\"><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\">Odpoczywającym życzymy spokoju i miłych przeżyć. </span></span><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\">Gości przybywających na teren naszej parafii serdecznie witamy i życzymy miłego pobytu. Zapraszamy na nasze nabożeństwa</span></span><span style=\"font-size: medium;\">.</span></span></span></p>\r\n</li>\r\n</ol>\r\n<ol start=\"3\">\r\n<li>\r\n<p style=\"margin-bottom: 0.21cm; text-align: left;\"><span style=\"color: #385623;\"><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\"><strong>Nasze podziękowania:</strong></span></span></span></p>\r\n</li>\r\n</ol>\r\n<ul>\r\n<li>\r\n<p style=\"margin-bottom: 0.42cm; text-align: left;\"><span style=\"font-family: \'Times New Roman\', serif;\"><span style=\"font-size: small;\"><span style=\"color: #000000;\"><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\">Decyzją Ks. Biskupa Ks. Tomasz został mianowany wikariuszem w parafii pod wezwaniem Ducha Świętego w Mielcu. Na miejsce ks. Tomasza przychodzi ks. Łukasz Mikoś. Decyzją władz Zgromadzenia siostrę Magdalenę zastąpi siostra Katarzyna Garwol. Odchodzącym dziękujemy za pracę w naszej parafii i życzymy błogosławieństwa Bożego i życzliwości ludzi, w miejscach nowej pracy. Przychodzącym ofiarujmy dar naszej modlitwy i dobroci serca.</span></span></span></span></span></p>\r\n</li>\r\n<li>\r\n<p style=\"margin-bottom: 0.42cm; text-align: left;\"><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\">Dziękujemy za skoszenie trawy na cmentarzu oraz wykonanie parkingu dla rower&oacute;w przy kaplicy Miłosierdzia Bożego. </span></span></p>\r\n</li>\r\n<li>\r\n<p style=\"margin-bottom: 0.42cm; text-align: left;\"><span style=\"font-family: \'Times New Roman\', serif;\"><span style=\"font-size: small;\"><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\">Dziękujemy za kolejne ofiary na nasze prace. Jesteśmy wdzięczni za wszelką życzliwość i pomoc w naszych parafialnych </span></span><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\"> </span></span><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\">inwestycjach </span></span></span></span></p>\r\n</li>\r\n<li>\r\n<p style=\"margin-bottom: 0.42cm; text-align: left;\"><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\">Druhowie naszej Jednostki OSP włączyli się w akcje pomocy poszkodowanym w pożarze we wsi Nowa Biała. Do Remizy można dostarczać w godzinach od 10.00 do 15.00 środki czystości, żywność, wodę, napoje, sprzęt roboczy, sprzęt AGD, pasze dla zwierząt. Szczeg&oacute;ły na tablicy ogłoszeń.</span></span></p>\r\n</li>\r\n</ul>\r\n<ol start=\"3\">\r\n<li>\r\n<p style=\"margin-bottom: 0.42cm; text-align: left;\"><span style=\"font-family: \'Times New Roman\', serif;\"><span style=\"font-size: small;\"><span style=\"color: #002060;\"><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\"><strong>Pożegnaliśmy w naszej wsp&oacute;lnocie parafialnej śp. J&oacute;zefa&nbsp;</strong></span></span></span></span></span><span style=\"font-family: \'Times New Roman\', serif;\"><span style=\"font-size: small;\"><span style=\"color: #002060;\"><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\"><strong>Filipowicza i śp. Adama Nytko. Dobry Jezu&hellip;..</strong></span></span></span></span></span></p>\r\n</li>\r\n</ol>\r\n<ol start=\"6\">\r\n<li>\r\n<p style=\"text-align: left;\"><span style=\"color: #385623;\"><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\"><strong>Przed nami kolejny tydzień. Dzieci i młodzież radują się&nbsp;</strong></span></span></span><span style=\"font-family: \'Times New Roman\', serif;\"><span style=\"font-size: small;\"><span style=\"color: #385623;\"><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\"><strong>wakacjami. Maryja</strong></span></span></span><span style=\"color: #385623;\"><span style=\"font-size: medium;\"> </span></span><span style=\"color: #385623;\"><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\"><strong>nasza Matka raduje się z pomocy swoim dzieciom. Za wstawiennictwem św. Michała Archanioła prośmy o potrzebne nam łaski &hellip;.</strong></span></span></span></span></span></p>\r\n</li>\r\n<li>\r\n<p style=\"text-align: left;\"><span style=\"font-family: \'Times New Roman\', serif;\"><span style=\"font-size: small;\"><span style=\"color: #385623;\"><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\"><strong>M&oacute;dlmy się w intencji V Synodu naszej Diecezji: </strong></span></span></span><span style=\"color: #000000;\"><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\">Boże w Tr&oacute;jcy</span></span></span><span style=\"color: #000000;\"><span style=\"font-family: Georgia, serif;\"><span style=\"font-size: medium;\">Świętej Jedyny, obdarz nas swoją prawdą, miłością i pokojem, abyśmy jako rodzina tarnowskiego Kościoła owocnie przeżyli synod diecezjalny. Pragniemy w jedności z Kościołem powszechnym, odnowić i ożywić nasz Kości&oacute;ł tarnowski i w świetle Ewangelii właściwie odczytać znaki czasu. Maryjo, Matko Kościoła i Patronko Diecezji Tarnowskiej, prowadź nas i wspieraj w synodalnej pielgrzymce wiary! Wszyscy święci i błogosławieni diecezji tarnowskiej, m&oacute;dlcie się za nami!&hellip;</span></span></span></span></span></p>\r\n</li>\r\n</ol>', '2021-06-28 13:59:04', '2021-06-29 14:12:08', 'Images/uploads/5CM.gif', 0),
(29, 1, 'Tytuł dfdf', 'Podtytuł', '<p>HAHAHA DZIŁĄ</p>', '2021-06-28 19:38:17', '2021-06-29 23:20:45', 'Images/uploads/tenor.gif', 0),
(31, 1, 'Tytuł', 'Podtytuł', '<p>Treść</p>', '2021-06-29 01:08:01', '2021-06-29 15:06:09', 'Images/uploads/9U0u.gif', 0),
(32, 1, 'Kruci gang', 'I do przodu', '<p>Pozdrawiam serdecznie,</p>\r\n<p>Małcin Bendarz</p>', '2021-06-29 13:50:56', '2021-06-29 19:56:11', 'Images/uploads/Toothless Alpha Prep4Battle.gif', 0),
(33, 1, 'Kolejne ogłoszenia', 'Pozdrawiam Serdecznie ', '<p class=\"MsoNormal\" style=\"text-align: center; tab-stops: 165.5pt center 272.1pt;\" align=\"center\"><span style=\"font-size: 18px;\"><span style=\"font-family: georgia,serif;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"color: green;\">XIII niedziela zwykła &ndash; </span>27.06.2021 r.</strong></span></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 14px;\"><span style=\"font-family: georgia,serif;\">&nbsp;</span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 17.0pt; text-align: justify; text-indent: -17.0pt; mso-list: l0 level1 lfo1; tab-stops: list 17.0pt;\"><span style=\"font-size: 14px;\"><span style=\"font-family: georgia,serif;\"><strong style=\"mso-bidi-font-weight: normal;\">1.<span style=\"font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; line-height: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-language-override: normal; font-feature-settings: normal; font-variation-settings: normal;\"> </span></strong>Jednym z owoc&oacute;w Eucharystii jest nasze uzdrowienie. Dokonuje się w głębokiej jedności z Bogiem i nie od razu skutki Jego działania są widoczne. Czasami trzeba dystansu, czasu, a przede zaufania Bogu, kt&oacute;re wzmacnia naszą wiarę w życiu codziennym. Po wyjściu ze Mszy Świętej, pobłogosławieni przez Boga, umocnieni Jego słowem i ciałem, jesteśmy przeświadczeni, że On jest zawsze z nami, że nam błogosławi i uzdrawia nas mocą swoich sakrament&oacute;w</span></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 14px;\"><span style=\"font-family: georgia,serif;\">&nbsp;</span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 17.0pt; text-align: justify; text-indent: -17.0pt; mso-list: l0 level1 lfo1; tab-stops: list 17.0pt;\"><span style=\"font-size: 14px;\"><span style=\"font-family: georgia,serif;\"><strong style=\"mso-bidi-font-weight: normal;\">2.<span style=\"font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; line-height: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-language-override: normal; font-feature-settings: normal; font-variation-settings: normal;\"> </span></strong>Kończy się <strong style=\"mso-bidi-font-weight: normal;\"><u style=\"text-underline: words;\">CZERWIEC</u></strong> &ndash; miesiąc szczeg&oacute;lnej modlitwy do Najświętszego Serca Jezusa. Mamy za co Boga uwielbiać i za co przepraszać. Zapraszamy na ostatnie w tym miesiącu nabożeństwa czerwcowe codziennie po Mszy św. o godz. 18.00, a dzisiaj w łączności z Sumą Parafialną.</span></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 14px;\"><span style=\"font-family: georgia,serif;\">&nbsp;</span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 17.0pt; text-align: justify; text-indent: -17.0pt; mso-list: l0 level1 lfo1; tab-stops: list 17.0pt;\"><span style=\"font-size: 14px;\"><span style=\"font-family: georgia,serif;\"><strong style=\"mso-bidi-font-weight: normal;\">3. </strong><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"mso-bidi-font-size: 12.0pt; color: #993300;\">Rozpoczęliśmy czas wakacji szkolnych i urlop&oacute;w</span></strong>. Niech dobry wypoczynek, czas spędzony z najbliższymi i poświęcony Panu Bogu pomogą nam odkrywać nowy sens codziennych spraw. Wszystkim uczniom, nauczycielom i wypoczywającym na urlopach życzymy bezpiecznych i ubogacających dni. </span></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 14px;\"><span style=\"font-family: georgia,serif;\">&nbsp;</span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 17.0pt; text-align: justify; text-indent: -17.0pt; mso-list: l0 level1 lfo1; tab-stops: list 17.0pt;\"><span style=\"font-size: 14px;\"><span style=\"font-family: georgia,serif;\"><strong style=\"mso-bidi-font-weight: normal;\">4.<span style=\"font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; line-height: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-language-override: normal; font-feature-settings: normal; font-variation-settings: normal;\"> </span></strong><span style=\"mso-bidi-font-size: 12.0pt; color: black;\">We wtorek, 29 czerwca, przypada </span><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"mso-bidi-font-size: 12.0pt; color: red;\">uroczystość Świętych Apostoł&oacute;w Piotra i Pawła</span></strong><span style=\"mso-bidi-font-size: 12.0pt; color: black;\">, kt&oacute;rzy są dwoma wielkimi filarami, na kt&oacute;rych wsparty jest Kości&oacute;ł rzymski</span>. </span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 18.0pt; text-align: justify;\"><span style=\"font-size: 14px;\"><span style=\"font-family: georgia,serif;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Msze św. będą: w Lini rano o godz. 8.30 i wieczorem o godz. 16.30 i 18.00. W Kętrzynie - Msza św. będzie o godz. 16.30, a w Niepoczołowicach - o godz. 18.00. We wtorek będzie zbierana kolekta na rzecz Stolicy Apostolskiej (Świętopietrze). </span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 18.0pt; text-align: justify;\"><span style=\"font-size: 14px;\"><span style=\"font-family: georgia,serif;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Zachęcamy do zachowania świątecznego charakteru tego dnia r&oacute;wnież w swoich domach. Tego dnia w spos&oacute;b szczeg&oacute;lny pamiętajmy o Piotrze naszych czas&oacute;w, papieżu Franciszku, i ks. bp Ryszardzie&nbsp; i prośmy Ducha Świętego, aby towarzyszył im w posłudze.</span></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 14px;\"><span style=\"font-family: georgia,serif;\">&nbsp;</span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 17.0pt; text-align: justify; text-indent: -17.0pt; mso-list: l0 level1 lfo1; tab-stops: list 17.0pt;\"><span style=\"font-size: 14px;\"><span style=\"font-family: georgia,serif;\"><strong style=\"mso-bidi-font-weight: normal;\">5.<span style=\"font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; line-height: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-language-override: normal; font-feature-settings: normal; font-variation-settings: normal;\"> </span></strong>W tym tygodniu przypadają <strong style=\"mso-bidi-font-weight: normal;\"><span style=\"color: maroon;\">miesięczne dni eucharystyczne</span></strong>. W <strong style=\"mso-bidi-font-weight: normal;\"><span style=\"color: maroon;\">I czwartek</span></strong> po wieczornej Mszy św. zapraszamy na <strong style=\"mso-bidi-font-weight: normal;\"><span style=\"color: red;\">adorację Najświętszego Sakramentu</span> do godz. 19.30</strong>. Będziemy modlić się za kapłan&oacute;w, a także o nowe powołania do służby Bożej w Kościele. </span></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 14px;\"><span style=\"font-family: georgia,serif;\">&nbsp;</span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 17.0pt; text-align: justify; text-indent: -17.0pt; mso-list: l0 level1 lfo1; tab-stops: list 17.0pt;\"><span style=\"font-size: 14px;\"><span style=\"font-family: georgia,serif;\"><strong style=\"mso-bidi-font-weight: normal;\">6.<span style=\"font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; line-height: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-language-override: normal; font-feature-settings: normal; font-variation-settings: normal;\"> </span></strong>W<strong style=\"mso-bidi-font-weight: normal;\"> <span style=\"color: maroon;\">I piątek</span></strong> będziemy wynagradzać <strong style=\"mso-bidi-font-weight: normal;\"><span style=\"color: red;\">Najświętszemu Sercu Pana Jezusa</span></strong> za nasze grzechy. Msze św. będą: w Lini - o godz. 8.30 i 18.00 oraz w Kętrzynie i w Niepoczołowicach &ndash; o godz. 16.30.&nbsp; </span></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 14px;\"><span style=\"font-family: georgia,serif;\">&nbsp;</span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 17.0pt; text-align: justify; text-indent: -17.0pt; mso-list: l0 level1 lfo1; tab-stops: list 17.0pt;\"><span style=\"font-size: 14px;\"><span style=\"font-family: georgia,serif;\"><strong style=\"mso-bidi-font-weight: normal;\">7.<span style=\"font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; line-height: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-language-override: normal; font-feature-settings: normal; font-variation-settings: normal;\"> </span></strong><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"mso-bidi-font-size: 12.0pt; color: maroon;\">Chorych z posługą sakramentalną odwiedzimy</span></strong>: w piątek od godz. 9.00. W sierpniu <span style=\"color: #ff0000;\"><u>nie planujemy</u></span> odwiedzin chorych.</span></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 14px;\"><span style=\"font-family: georgia,serif;\">&nbsp;</span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 17.0pt; text-align: justify; text-indent: -17.0pt; mso-list: l0 level1 lfo1; tab-stops: list 17.0pt;\"><span style=\"font-size: 14px;\"><span style=\"font-family: georgia,serif;\"><strong style=\"mso-bidi-font-weight: normal;\">8.<span style=\"font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; line-height: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-language-override: normal; font-feature-settings: normal; font-variation-settings: normal;\"> </span></strong>W I sobotę, 3 lipca przypada w liturgii <strong style=\"mso-bidi-font-weight: normal;\"><span style=\"color: red;\">święto św. Tomasza Apostoła, </span></strong><span style=\"color: black;\">kt&oacute;ry pokonał niemoc własnej wiary i, jak głosi tradycja, zani&oacute;sł naukę Chrystusa aż do Indii, gdzie zginął śmiercią męczeńską</span>. </span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 18.0pt; text-align: justify;\"><span style=\"font-size: 14px;\"><span style=\"font-family: georgia,serif;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; W <strong style=\"mso-bidi-font-weight: normal;\"><span style=\"color: maroon;\">I sobotę</span></strong> uczcimy także<strong style=\"mso-bidi-font-weight: normal;\"><span style=\"color: blue;\"> Niepokalane Serce Maryi</span></strong>. O godz. 8.00 odśpiewamy Godzinki o Niepokalanym Poczęciu Najświętszej Maryi Panny. O godz. 8.30 będzie Msza św. i kolejne <strong style=\"mso-bidi-font-weight: normal;\"><em style=\"mso-bidi-font-style: normal;\"><span style=\"color: blue;\">nabożeństwo 5 pierwszych sob&oacute;t miesiąca</span></em></strong>. </span></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 14px;\"><span style=\"font-family: georgia,serif;\">&nbsp;</span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 17.0pt; text-align: justify; text-indent: -17.0pt; mso-list: l0 level1 lfo1; tab-stops: list 17.0pt;\"><span style=\"font-size: 14px;\"><span style=\"font-family: georgia,serif;\"><strong style=\"mso-bidi-font-weight: normal;\">9.<span style=\"font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; line-height: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-language-override: normal; font-feature-settings: normal; font-variation-settings: normal;\"> </span></strong>Za tydzień &ndash; 1. niedziela miesiąca &ndash; będzie zbierana kolekta inwestycyjna.</span></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 14px;\"><span style=\"font-family: georgia,serif;\">&nbsp;</span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 17.0pt; text-align: justify; text-indent: -17.0pt; mso-list: l0 level1 lfo1; tab-stops: list 17.0pt;\"><span style=\"font-size: 14px;\"><span style=\"font-family: georgia,serif;\"><strong style=\"mso-bidi-font-weight: normal;\">10.<span style=\"font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; line-height: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-language-override: normal; font-feature-settings: normal; font-variation-settings: normal;\"> </span></strong>Zachęcamy parafian do <strong style=\"mso-bidi-font-weight: normal;\"><span style=\"color: green;\">nabywania i czytania prasy katolickiej</span></strong>. Jest do nabycia nowy numer dwutygodnika &bdquo;Pielgrzym&rdquo;. </span></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 14px;\"><span style=\"font-family: georgia,serif;\">&nbsp;</span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 17.0pt; text-align: justify; text-indent: -17.0pt; mso-list: l0 level1 lfo1; tab-stops: list 17.0pt;\"><span style=\"font-size: 14px;\"><span style=\"font-family: georgia,serif;\"><strong style=\"mso-bidi-font-weight: normal;\">11.<span style=\"font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; line-height: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-language-override: normal; font-feature-settings: normal; font-variation-settings: normal;\"> </span></strong><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"mso-bidi-font-size: 12.0pt; mso-fareast-font-family: \'Times New Roman\'; color: black; mso-fareast-language: PL;\">W&oacute;jt Gminy Linia i Gminny Dom Kultury w Lini </span></strong><span style=\"mso-bidi-font-size: 12.0pt; mso-fareast-font-family: \'Times New Roman\'; color: black; mso-fareast-language: PL;\">zapraszają na <strong style=\"mso-bidi-font-weight: normal;\">Wakacyjny Piknik Rodzinny</strong> w sobotę 3 lipca nad jeziorem w Strzepczu.<br />W programie marsz nordic walking, koncert zespołu Krzychu&amp;Rychu, kabaret Purtce, konkursy, licytacja koszyka piknikowego, stoiska małej gastronomii, dmuchańce, zabawy z animatorem.<br />Początek pikniku od godz. 17:00</span></span></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 14px;\"><span style=\"font-family: georgia,serif;\">&nbsp;</span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 17.0pt; text-align: justify; text-indent: -17.0pt; mso-list: l0 level1 lfo1; tab-stops: list 17.0pt;\"><span style=\"font-size: 14px;\"><span style=\"font-family: georgia,serif;\"><strong style=\"mso-bidi-font-weight: normal;\">12.<span style=\"font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; line-height: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-language-override: normal; font-feature-settings: normal; font-variation-settings: normal;\"> </span></strong>W niedzielę, 11 lipca podczas Mszy św. o godz. 11.00 udzielimy <strong style=\"mso-bidi-font-weight: normal;\">sakramentu chrztu św.</strong> </span></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 14px;\"><span style=\"font-family: georgia,serif;\">&nbsp;</span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 17.0pt; text-align: justify; text-indent: -17.0pt; mso-list: l0 level1 lfo1; tab-stops: list 17.0pt;\"><span style=\"font-size: 14px;\"><span style=\"font-family: georgia,serif;\"><strong style=\"mso-bidi-font-weight: normal;\">13.<span style=\"font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; line-height: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-language-override: normal; font-feature-settings: normal; font-variation-settings: normal;\"> </span></strong>Zapowiedzi przedślubne wywieszone są w gablocie ogłoszeń.</span></span></p>', '2021-06-30 00:07:08', NULL, 'Images/uploads/default.jpg', 0),
(34, 1, 'Tytuł', 'Podtytuł', '<p><strong>1. Dzisiaj</strong> &ndash; o godzinie 15.00 &ndash; Koronka do Miłosierdzia Bożego i Nieszpory.<br />Od poniedziałku w dni powszednie będzie obowiązywał wakacyjny porządek Mszy Świętych. Msze Święte będą sprawowane o godzinie 7.00 i 18.00. <br />W niedziele porządek Mszy Świętych pozostaje bez zmian.<br />Pragniemy także poinformować Parafian, że od 1 stycznia 2022 roku jesteśmy zmuszeni dokonać modyfikacji porządku Mszy Świętych w niedziele po południu. <br />Zamiast dotychczasowych godzin: 16.00; 18.00 oraz 20.00, Msze Święte będą sprawowane o godzinie 17.00 oraz 20.00. Nieszpory będą o godzinie 16.00.<br />Tak więc niedzielny porządek Mszy Świętych od 1 stycznia 2022 roku będzie następujący: 6.00; 8.00; 10.00; 12.00; 17.00; 20.00. <br /><br /><strong>2. We wtorek &ndash; UROCZYSTOŚĆ ŚWIĘTYCH APOSTOŁ&Oacute;W PIOTRA I PAWŁA</strong><br />Msze Święte w naszym kościele o godzinie 7.00; 9.00; 16.00 i 18.00. <br />Kolekta uroczystości zwana Świętopietrzem przeznaczona na Stolicę Apostolską.<br />Msza Święta w poniedziałek o godzinie 18.00 będzie już sprawowana z Uroczystości Świętych Apostoł&oacute;w Piotra i Pawła. <br /><br /><strong>W tym tygodniu przypadają I Czwartek, I Piątek i I Sobota miesiąca.</strong><br /><br /><strong>3. W I Czwartek</strong> &ndash; o godz. 7.00 &ndash; Msza Święta w intencji Kapłan&oacute;w, o zachowanie powołań oraz o nowe powołania kapłańskie, zakonne i misyjne; <br />- po Mszy Świętej &ndash; Nabożeństwo I &ndash; Czwartkowe;<br />- po Mszy Świętej wieczornej &ndash; adoracja Najświętszego Sakramentu w ciszy z okazją do Spowiedzi.<br /><br /><strong>4. W I Piątek</strong> &ndash; o godz. 7.00 &ndash; Msza św. ku czci Najświętszego Serca Pana Jezusa w intencji Rodzin poświęconych Sercu Jezusowemu; <br />- po Mszy Świętej &ndash; Nabożeństwo I &ndash; Piątkowe.<br /><br /><strong>5. W I Sobotę</strong> &ndash; o godz. 7.00 &ndash; Msza św. ku czci Niepokalanego Serca Najświętszej Maryi Panny; <br />- po Mszy św. &ndash; Nabożeństwo do Niepokalanego Serca Najświętszej Maryi Panny;<br />- godzinie 17.00 &ndash; adoracja Najświętszego Sakramentu w ciszy z okazją do Spowiedzi.<br /><br /><strong>6. W przyszłą niedzielę &ndash; XIV Niedziela Zwykła</strong><br />- o godzinie 15.00 &ndash; Koronka do Miłosierdzia Bożego i Nieszpory.<br />Kolekta przeznaczona na Wyższe Śląskie Seminarium Duchowne w Katowicach.<br /><br /><strong>7.</strong> Msza Święta w intencji Parafian w Kaplicy Cudownego Obrazu na Jasnej G&oacute;rze zostanie odprawiona 26 lipca (poniedziałek) o godzinie 11.00. Będzie możliwość wyjazdu autokarem. Zapisy w kancelarii parafialnej. Koszt: 22 zł. Autokary wyjadą o godzinie 8.00 sprzed kościoła.<br /><br /><strong>8.</strong> Ksiądz Mariusz NITKA, kt&oacute;ry będzie Wikariuszem naszej Parafii od 28 sierpnia, organizuje pielgrzymkę do Armenii, kt&oacute;ra nazywana jest &bdquo;Ziemią Noego&rdquo;. Będzie to forma rekolekcji w drodze. Pielgrzymka odbędzie się w dniach od 27 września do 4 października. Szczeg&oacute;ły i zapisy w biurze podr&oacute;ży: www ektravel.pl<br /><br /><strong>9.</strong> W środę 30 czerwca kancelaria parafialna będzie nieczynna. Przepraszamy za niedogodności z tym związane. <br /><br /><strong>10.</strong> IV kolejowa pielgrzymka os&oacute;b chorych, senior&oacute;w i ich rodzin do Lourdes odbędzie się w dniach od 8&ndash;16 września 2022 r. Szczeg&oacute;ły organizacyjne zostaną podane po letnich wakacjach. <br /><br /><strong>11.</strong> Pragniemy przypomnieć, że po 20 latach od daty śmierci należy przedłużyć miejsce poch&oacute;wku Zmarłego. Brak przedłużenia może być odebrany jako rezygnacja z danego grobu i na tym miejscu może zostać pochowana inna osoba zmarła. Przedłużenia można dokonać w kancelarii parafialnej. Opłatę za wodę i wyw&oacute;z śmieci z cmentarza można dokonać na cmentarzu w każdą sobotę od 8.00 do 15.00. Opłata wynosi 10 złotych na rok od jednego grobu.<br /><br /><strong>12.</strong> Muzeum w Tarnowskich G&oacute;rach zwraca się do Parafian z prośbą o udostępnienie pamiątek i przedmiot&oacute;w związanych z Zakładami Przemysłu Odzieżowego &bdquo;TARMILO&rdquo;. W przyszłym roku planowana jest wystawa o tym , nieistniejącym już, zakładzie. Telefon kontaktowy: 32 285 26 07.<br /><br /><strong>13.</strong> Polecamy &bdquo;Gościa Niedzielnego&rdquo;, nasz parafialny dwumiesięcznik &bdquo;Adalbertus&rdquo; oraz inne czasopisma katolickie.<br /><br /><strong>&bdquo;EUCHARYSTIA DAJE ŻYCIE &ndash; ZGROMADZENI NA ŚWIĘTEJ WIECZERZY&rdquo;.</strong><br /><br /><em><strong>KOCHANI PARAFIANIE!</strong></em><br />Zgodnie z prawem obowiązującym od 26 czerwca: &bdquo;w miejscach kultu religijnego obowiązuje limit maksymalnie 75 procent obłożenia&rdquo;; tak więc nasz kości&oacute;ł może być wypełniony Wiernymi w 75 procentach. <br />W kościele mamy zasłonięte usta i nos maseczką. Prosimy także o zachowanie dystansu oraz o dezynfekcję rąk. <br />Przypominamy, że zgodnie z postanowieniem Księży Biskup&oacute;w dyspensa od obowiązku uczestniczenia w niedzielnej Mszy Świętej została odwołana od niedzieli 20 czerwca.<br />Przypominamy także zmienioną formę odprawiania pogrzeb&oacute;w:<br />- pogrzeb rozpoczyna się w kościele;<br />- modlitwy pierwszej Stacji pogrzebu, kt&oacute;re Kapłan odmawiał w kaplicy pogrzebowej, odmawiane są w kościele;<br />- po zakończeniu Mszy Świętej, w kondukcie udajemy się na Cmentarz.<br />Ponadto w Kaplicy pogrzebowej nie mogą odbywać się modlitwy przed pogrzebem.<br />Rodzina może zgromadzić się na modlitwie w domu lub w kościele (bez trumny czy urny). <br /><br /><em><strong>ŻYCZYMY ZDROWIA!</strong></em></p>', '2021-06-30 10:20:14', '2021-06-30 10:20:14', 'Images/uploads/0432045bff418946290c342071fbaf4e.gif', 0);

-- --------------------------------------------------------

--
-- Table structure for table `forbidden_places`
--

CREATE TABLE `forbidden_places` (
  `id` int NOT NULL,
  `taken_Column` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `taken_x` int NOT NULL,
  `taken_y` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forbidden_places`
--

INSERT INTO `forbidden_places` (`id`, `taken_Column`, `taken_x`, `taken_y`) VALUES
(1, 'column1', 0, 2),
(1, 'column1', 2, 2),
(1, 'column2', 1, 3),
(1, 'column2', 3, 3),
(1, 'column3', 2, 7),
(1, 'column3', 4, 7),
(1, 'column3', 1, 3),
(1, 'column3', 3, 3),
(1, 'column3', 1, 1),
(1, 'column3', 3, 1),
(1, 'column4', 2, 2),
(1, 'column4', 4, 2),
(1, 'column4', 1, 3),
(1, 'column4', 3, 3),
(1, 'column4', 2, 4),
(1, 'column4', 4, 4),
(1, 'column5', 1, 0),
(1, 'column5', 1, 3),
(1, 'column5', 3, 3),
(1, 'column4', 0, 5),
(1, 'column4', 2, 5),
(1, 'column6', 1, 3),
(1, 'column6', 3, 3),
(1, 'column5', 2, 4),
(1, 'column5', 4, 4),
(1, 'column5', 1, 2),
(1, 'column5', 3, 2),
(1, 'column6', 1, 2),
(1, 'column5', 0, 5),
(1, 'column5', 2, 5),
(1, 'column6', 1, 5),
(1, 'column6', 3, 5),
(1, 'column3', 1, 8),
(1, 'column6', 1, 8),
(1, 'column7', 2, 3),
(1, 'column7', 4, 3),
(1, 'column7', 2, 4),
(1, 'column7', 4, 4),
(1, 'column7', 2, 5),
(1, 'column7', 4, 5),
(1, 'column7', 2, 6),
(1, 'column7', 4, 6),
(1, 'column7', 2, 7),
(1, 'column7', 4, 7),
(3, 'column4', 1, 0),
(3, 'column4', 0, 1),
(3, 'column4', 2, 1),
(3, 'column4', 1, 2),
(3, 'column4', 3, 2),
(3, 'column4', 0, 3),
(3, 'column4', 2, 3),
(3, 'column4', 4, 3),
(3, 'column4', 1, 4),
(3, 'column4', 3, 4),
(3, 'column6', 1, 4),
(3, 'column6', 3, 4),
(6, 'column5', 1, 2),
(6, 'column5', 1, 3),
(6, 'column5', 3, 3),
(6, 'column5', 0, 4),
(6, 'column5', 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `masses`
--

CREATE TABLE `masses` (
  `id` int UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `hour` time NOT NULL,
  `author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `masses`
--

INSERT INTO `masses` (`id`, `date`, `hour`, `author`) VALUES
(1, '2021-06-28', '09:00:00', 'Ksiądz Piotr'),
(2, '2021-06-28', '10:30:00', 'Ksiądz Jacek'),
(3, '2021-06-28', '12:00:00', 'Ksiądz Grzegorz'),
(4, '2021-07-04', '07:30:00', 'Ksiądz Grzegorz'),
(5, '2021-07-04', '09:00:00', 'Ksiądz Jacek'),
(6, '2021-07-04', '18:00:00', 'Ksiądz Piotr'),
(7, '2021-06-29', '07:30:00', 'Ksiądz Grzegorz'),
(8, '2021-06-30', '12:00:00', 'Ksiądz Grzegorz'),
(9, '2021-06-30', '19:30:00', 'Ksiądz Jacek'),
(10, '2021-06-30', '10:30:00', 'Ksiądz Stanisław'),
(11, '2021-06-30', '09:00:00', 'Ksiądz Marcin'),
(12, '2021-06-30', '06:00:00', 'Ksiądz Marcin'),
(13, '2021-06-30', '13:30:00', 'Ksiądz Marcin'),
(14, '2021-06-29', '09:00:00', 'Ksiądz Marcin'),
(15, '2021-06-28', '07:30:00', 'Ksiądz Marcin'),
(16, '2021-06-28', '06:00:00', 'Ksiądz Marcin'),
(17, '2021-06-28', '13:30:00', 'Ksiądz Marcin'),
(18, '2021-07-04', '06:00:00', 'Ksiądz Marcin'),
(19, '2021-06-28', '19:30:00', 'Ksiądz Marcin'),
(20, '2021-07-04', '10:30:00', 'Ksiądz Marcin'),
(21, '2021-06-29', '19:30:00', 'Ksiądz Marcin'),
(22, '2021-06-28', '15:00:00', 'Ksiądz Marcin'),
(31, '2021-09-17', '06:00:00', 'Ksiądz Marcin');

-- --------------------------------------------------------

--
-- Table structure for table `taken_places`
--

CREATE TABLE `taken_places` (
  `id` int NOT NULL,
  `taken_Column` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `taken_x` int NOT NULL,
  `taken_y` int NOT NULL,
  `user` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taken_places`
--

INSERT INTO `taken_places` (`id`, `taken_Column`, `taken_x`, `taken_y`, `user`) VALUES
(1, 'column1', 1, 2, 'ŻabsonZiomal'),
(1, 'column2', 2, 3, 'ŻabsonZiomal'),
(1, 'column3', 3, 7, 'ŻabsonZiomal'),
(1, 'column3', 2, 3, 'ŻabsonZiomal'),
(1, 'column3', 2, 1, 'ŻabsonZiomal'),
(1, 'column4', 3, 2, 'ŻabsonZiomal'),
(1, 'column4', 2, 3, 'ŻabsonZiomal'),
(1, 'column4', 3, 4, 'ŻabsonZiomal'),
(1, 'column4', 4, 3, 'ŻabsonZiomal'),
(1, 'column5', 0, 0, 'ŻabsonZiomal'),
(1, 'column5', 2, 3, 'ŻabsonZiomal'),
(1, 'column4', 1, 5, 'ŻabsonZiomal'),
(1, 'column6', 2, 3, 'ŻabsonZiomal'),
(1, 'column5', 3, 4, 'ŻabsonZiomal'),
(1, 'column5', 2, 2, 'ŻabsonZiomal'),
(1, 'column5', 4, 2, 'ŻabsonZiomal'),
(1, 'column6', 2, 2, 'ŻabsonZiomal'),
(1, 'column6', 3, 2, 'ŻabsonZiomal'),
(1, 'column6', 4, 2, 'ŻabsonZiomal'),
(1, 'column5', 1, 5, 'ŻabsonZiomal'),
(1, 'column6', 2, 5, 'ŻabsonZiomal'),
(1, 'column3', 0, 8, 'ŻabsonZiomal'),
(1, 'column6', 2, 8, 'ŻabsonZiomal'),
(1, 'column6', 3, 8, 'ŻabsonZiomal'),
(1, 'column6', 4, 8, 'ŻabsonZiomal'),
(1, 'column7', 3, 3, 'admin'),
(1, 'column7', 3, 4, 'admin'),
(1, 'column7', 3, 5, 'admin'),
(1, 'column7', 3, 6, 'admin'),
(1, 'column7', 3, 7, 'admin'),
(3, 'column4', 0, 0, 'admin'),
(3, 'column4', 1, 1, 'admin'),
(3, 'column4', 2, 2, 'admin'),
(3, 'column4', 1, 3, 'admin'),
(3, 'column4', 3, 3, 'admin'),
(3, 'column4', 0, 4, 'admin'),
(3, 'column4', 2, 4, 'admin'),
(3, 'column4', 4, 4, 'admin'),
(3, 'column5', 1, 2, 'admin'),
(3, 'column5', 2, 2, 'admin'),
(3, 'column5', 3, 2, 'admin'),
(3, 'column6', 2, 4, 'admin'),
(9, 'column6', 1, 2, 'xdxd12'),
(9, 'column6', 2, 3, 'xdxd12'),
(9, 'column6', 1, 3, 'xdxd12'),
(9, 'column6', 0, 4, 'xdxd12'),
(9, 'column6', 1, 5, 'xdxd12'),
(6, 'column5', 2, 2, 'ŻabsonZiomal'),
(6, 'column5', 3, 2, 'ŻabsonZiomal'),
(6, 'column5', 4, 2, 'ŻabsonZiomal'),
(6, 'column5', 2, 3, 'ŻabsonZiomal'),
(6, 'column5', 1, 4, 'ŻabsonZiomal');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `permissions` int UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `last_seen` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `permissions`, `username`, `email`, `password`, `created`, `last_seen`) VALUES
(2, 0, 'ŻabsonZiomal', 'adrianciesielczyk2000@gmail.com', '$2y$10$fosTaPdjGFXGkZljXhZ7b.JTfsLvlbTO340RaqXEiNfbiODNzSbp6', '2021-06-18 09:33:10', NULL),
(3, 0, 'YoungLeosia', 'adi@gmail.com', '$2y$10$6kLYpxTqTmOA8R3/mc5a.OsUGxiAYdQdsIcLZIkTR/RHQPH30taAG', '2021-06-18 09:44:50', NULL),
(5, 0, 'asd', 'asd@gmail.com', '$2y$10$NMLwMc9nQeQr/GMsIYvX1OeGDrNWjbcUaijoEfKuRo7l.cVlow4vK', '2021-06-18 09:50:09', NULL),
(6, 0, 'wddas', 'ads@gmail.com', '$2y$10$5m9G6L8nQerUwSpnJVi9J.qwwc58rMLDbvclvRdsEeeMZA6ZhBXmG', '2021-06-18 09:51:47', NULL),
(7, 0, 'asdsadadsfsadf', 'asfsdf@gmail.com', '$2y$10$r3YK1X.xKmRVH.U1/HLAze0tLDl09zkywb9o.byZUW8ySD/tznCoW', '2021-06-18 09:53:29', NULL),
(8, 0, 'Test123', 'test123@gmail.com', '$2y$10$GrO70e0rOiGV1BZbOdzNgOgxvVQOLTYzHOdrGR3lnyum4103o8OBy', '2021-06-18 11:37:33', NULL),
(10, 0, 'Wiksa', 'wiksa@gmail.com', '$2y$10$M/UF1I0h4KEHoW6ra2VyKuf1fQeccCU3oGr1/Nm6m84QUU6dLPnrm', '2021-06-18 19:45:24', NULL),
(11, 0, 'Test1234', 'test1234@gmail.com', '$2y$10$z57qeiA.z6QvxJXCKSjRlOHWcExZfONTWXqRrVzYTt/ohzYMBes42', '2021-06-19 10:53:26', NULL),
(12, 0, 'aaaaa', 'aaaaaa@gmail.com', '$2y$10$i4g9C.Lx77iue8Ik2FkYDelxwlnEpp7vFQlZQg5dB5BtbaIYP89YS', '2021-06-19 13:02:24', NULL),
(13, 0, 'sdggeeg', 'adi12345@gmail.com', 'popraw hasło pajacu', '2021-06-19 13:03:06', NULL),
(14, 0, 'Test1234455', 'adadsadssad@gmail.com', '$2y$10$tn7A1q8kynWoBeIq26pvHOXswJLr5xqDcmdhC/GyTAGQvo1ttI2wW', '2021-06-19 13:05:47', NULL),
(15, 0, 'agrtgfgtty', 'asdfdadasfdas@gmail.com', '$2y$10$kxMbRtwO9rh1dUjeyH7YpOCmZtuy.bamTYI6QORdAoqrKi1YGTb4m', '2021-06-19 14:12:32', NULL),
(16, 0, 'Eluwina1234', 'eluwina1234@gmail.com', '$2y$10$egODXbV8hdH43VMLDl7UmeCqfEh2wy50prN.620CpdkZf/Z/iS1EO', '2021-06-27 13:28:17', NULL),
(17, 0, 'dasdsadads', 'dasadsdasfvsfgfbs@gmail.com', '$2y$10$Yz1S09VmIn5pzokzmlSD4.G4.sdQvVl6N9XLBXv8dyh8fDh4oSpn6', '2021-06-27 13:44:04', NULL),
(18, 0, 'Adi1234', 'eluwinka@gmail.com', '$2y$10$3IGudyFM4zSUF3ALgrdTje2eleqDR6R9hlx90vjXmpouKJmsZgSc6', '2021-06-27 13:51:56', NULL),
(20, 1, 'Ksiądz Marcin', 'admin@admin.pl', '$2y$10$Pm2.eV8in9tY65XZqWKa3.MWVWhLZs./2w3MoC3afuuacbzTXdzqu', '2021-06-29 01:18:28', NULL),
(21, 0, 'fssdfdsfsdfdsfsdsf', 'fssdfdsfsdfdsfsdsf@gmail.com', '$2y$10$DwDDKjFuHR0y2JdtftvjKeYHU62YvmnQ1lXbv7jOIEirF5K4vf/2C', '2021-06-29 20:49:27', NULL),
(22, 0, 'xdxd12', 'xdxd12@gmail.com', '$2y$10$ijvpig7GBRqybCzZhwdUFezhWktzfFthkGvP2JUMy5/Pc4ABPc8Mm', '2021-06-29 22:11:12', NULL),
(23, 1, 'Ksiądz Stanisław', 'ksiadzstanislaw@gmail.com', '$2y$10$4HEuY6tZKV0ebFMy4btAquH1A/zyjBRG92eg2mT/U6iH.uVelJVyO', '2021-06-29 23:26:40', NULL),
(24, 0, 'twojstary', 'arturciesielczyk@gmail.com', '$2y$10$TPvrrbVyb5xSxhO1cn1FtOiRi3bhPvIznaS9Oe6gGvGbzPWVcgF4q', '2021-06-30 06:59:47', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`announcement_id`);

--
-- Indexes for table `masses`
--
ALTER TABLE `masses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `announcement_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `masses`
--
ALTER TABLE `masses`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
