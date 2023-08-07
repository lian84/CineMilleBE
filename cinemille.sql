-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Ago 07, 2023 alle 10:34
-- Versione del server: 10.4.28-MariaDB
-- Versione PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinemille`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `film`
--

CREATE TABLE `film` (
  `id` bigint(10) NOT NULL,
  `titolo` varchar(255) NOT NULL,
  `regista` varchar(255) NOT NULL,
  `id_genere` bigint(10) NOT NULL,
  `durata` int(10) NOT NULL,
  `data_uscita` date NOT NULL,
  `descrizione` varchar(255) NOT NULL,
  `link_locandina` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `film`
--

INSERT INTO `film` (`id`, `titolo`, `regista`, `id_genere`, `durata`, `data_uscita`, `descrizione`, `link_locandina`) VALUES
(1, 'La Grande Bellezza', 'Paolo Sorrentino', 2, 142, '2013-05-21', 'Jep Gambardella, giornalista e scrittore, vive la sua vita mondana a Roma, tra feste, incontri e amicizie. Ma un giorno decide di fare i conti con il suo passato e con la città che lo circonda.', 'https://m.media-amazon.com/images/I/71HtFSIu1qL._AC_UF1000,1000_QL80_.jpg'),
(2, 'La vita è bella', 'Roberto Benigni', 2, 116, '1997-12-20', 'Guido, un ebreo italiano, viene deportato in un campo di concentramento con il figlioletto Giosuè. Per proteggere il bambino dalla realtà crudele del campo, Guido gli fa credere che tutto ciò che sta accadendo è solo un gioco.', 'https://m.media-amazon.com/images/I/71Di314zqRL._AC_UF894,1000_QL80_.jpg'),
(3, 'La meglio gioventù', 'Marco Tullio Giordana', 2, 366, '2003-05-19', 'La storia di due fratelli, Nicola e Matteo, e della loro famiglia, dalla fine degli anni \'60 ai giorni nostri. Un viaggio attraverso l\'Italia e la sua storia, tra amori, passioni, delusioni e speranze.', 'https://www.script-pisa.it/wp-content/uploads/2004/07/la-meglio-gioventu-2003.jpg'),
(4, 'Gomorra', 'Matteo Garrone', 7, 137, '2008-05-16', 'Il film racconta la vita quotidiana della camorra, la mafia napoletana, attraverso le storie di vari personaggi, tra cui un ragazzo che vuole diventare un boss, un sarto che lavora per la camorra, un uomo d\'affari che cerca di fare affari con la mafia, e ', 'https://support.mondadoristore.it/in/speciali/fantasticstore/gomorra/locandina.jpg'),
(5, 'Il Divo', 'Paolo Sorrentino', 1, 110, '2008-05-22', 'Il film racconta la vita di Giulio Andreotti, uno dei politici italiani più controversi e influenti del XX secolo, attraverso la sua carriera politica e i suoi rapporti con la mafia e la Chiesa.', 'https://pad.mymovies.it/filmclub/2008/04/094/locandinajp2.jpg'),
(6, 'La pazza gioia', 'Paolo Virzì', 5, 116, '2016-05-17', 'Beatrice e Donatella, due donne con problemi psichici, fuggono dal loro istituto e si avventurano in un viaggio alla ricerca della felicità.', 'https://italyformovies.it/app/img/film/locandine/la_pazza_gioia_locandina_1546942595.webp'),
(7, 'La mafia uccide solo d\'estate', 'Pif', 6, 90, '2013-11-28', 'Il film racconta la storia di Arturo, un bambino che cresce a Palermo negli anni \'70 e \'80, tra la violenza della mafia e la bellezza della sua città.', 'https://www.wildside.it/public/uploads/109588.jpg'),
(8, 'Mine vaganti', 'Ferzan Ozpetek', 7, 110, '2010-02-19', 'Tommaso, un giovane gay che vive a Roma, torna nella sua città natale, Lecce, per partecipare a una cena di famiglia. Ma durante la cena, Tommaso decide di rivelare la sua omosessualità alla sua famiglia, scatenando una serie di eventi imprevedibili.', 'https://pad.mymovies.it/filmclub/2010/02/134/locandina.jpg'),
(9, 'La ragazza del lago', 'Andrea Molaioli', 8, 95, '2007-08-31', 'Il film racconta la storia di una detective che viene inviata in un piccolo paese di montagna per indagare sull\'omicidio di una ragazza locale. Ma durante le indagini, la detective scopre che il paese nasconde molti segreti.', 'https://www.mondadoristore.it/img/La-ragazza-del-lago-Roland-Merullo/ea978882275521/BL/BL/01/NZO/?tit=La+ragazza+del+lago&aut=Roland+Merullo'),
(10, 'Romanzo criminale', 'Michele Placido', 9, 152, '2005-10-28', 'Il film racconta la storia della banda della Magliana, una delle più famose organizzazioni criminali italiane degli anni \'70 e \'80, e della loro lotta per il controllo della città di Roma.', 'https://movieplayer.net-cdn.it/t/images/2012/11/26/locandina-ufficiale-di-romanzo-criminale-la-serie-258825_jpg_400x0_crop_q85.jpg'),
(11, 'La mafia non è più quella di una volta', 'Franco Maresco', 10, 90, '2019-05-09', 'Il film racconta la storia della mafia siciliana, attraverso le storie di vari personaggi, tra cui un ex boss mafioso, un giornalista investigativo, un attivista antimafia, e molti altri.', 'https://pad.mymovies.it/filmclub/2019/07/277/locandina.jpg'),
(12, 'Il giovane favoloso', 'Mario Martone', 1, 137, '2014-09-18', 'Il film racconta la vita di Giacomo Leopardi, uno dei più grandi poeti italiani del XIX secolo, attraverso la sua carriera letteraria e i suoi rapporti con la famiglia e gli amici.', 'https://temi.repubblica.it/UserFiles/iniziative-biblioteca/Image/giovane%20favoloso/300_GiovaneFavoloso_Loghi_A.jpg'),
(13, 'La scomparsa di Patò', 'Rocco Mortelliti', 1, 90, '2010-09-10', 'Il film racconta la storia di Patò, un sindaco di un piccolo paese siciliano, che scompare misteriosamente durante una visita a Palermo. Ma durante le indagini sulla sua scomparsa, emergono molti segreti sulla vita di Patò e sulla sua città.', 'https://www.cinemadelsilenzio.it/images/film/poster/13798_big.jpg'),
(14, 'L\'uomo in più', 'Paolo Sorrentino', 1, 100, '2001-09-07', 'Il film racconta la storia di un giovane uomo che si trasferisce a Roma per cercare lavoro e amore, ma che finisce per diventare un outsider nella società romana.', 'https://pad.mymovies.it/filmclub/2001/08/024/locandina.jpg'),
(15, 'La seconda volta non si scorda mai', 'Francesco Ranieri Martinotti', 1, 90, '2008-01-18', 'Il film racconta la storia di un uomo che, dopo aver perso la moglie in un incidente d\'auto, decide di ricostruire la sua vita con una nuova compagna. Ma quando la moglie torna improvvisamente in vita, l\'uomo si trova di fronte a una scelta difficile.', 'https://pad.mymovies.it/filmclub/2008/02/052/locandina.jpg'),
(16, 'La mafia dei generi', 'Dario Argento', 1, 90, '2012-09-06', 'Il film racconta la storia di un gruppo di registi italiani che, negli anni \'70 e \'80, hanno creato alcuni dei più grandi film di genere italiani, tra cui gialli, horror e western. Ma durante la realizzazione dei loro film, i registi si sono scontrati con', 'https://movieplayer.net-cdn.it/t/images/2023/03/01/mafia_mamma_jpg_400x0_crop_q85.jpg'),
(17, 'Casablanca', 'Michael Curtiz', 3, 102, '1942-01-23', 'Un indimenticabile dramma romantico ambientato nella Casablanca occupata dai nazisti durante la Seconda Guerra Mondiale. Con Humphrey Bogart e Ingrid Bergman nei ruoli principali, il film è un capolavoro intriso di amore, sacrificio e scelte difficili.', 'https://m.media-amazon.com/images/I/71OusuDiYGL._AC_UF894,1000_QL80_.jpg'),
(18, 'Via col Vento', 'Victor Fleming', 3, 238, '1939-12-15', 'Un epico dramma storico ambientato nel periodo della Guerra Civile Americana. Racconta la storia di Scarlett O\'Hara e il suo rapporto tormentato con Rhett Butler. Il film è uno dei più grandi classici del cinema.', 'https://www.immezcla.it/wp-content/uploads/2020/06/via_col_vento_locandina_79061.jpg'),
(19, 'Il Mago di Oz', 'Victor Fleming', 8, 101, '1939-08-25', 'Un meraviglioso film di avventura e fantasy che segue le avventure di Dorothy, lo Spaventapasseri, l\'Uomo di Latta e il Leone Codardo nella Terra di Oz. Un inno alla fantasia e all\'immaginazione.', 'https://www.circuitocinema.com/wp-content/uploads/2023/03/ffd82404-c810-4fa2-bed2-89c035795066.jpg'),
(20, 'Psycho', 'Alfred Hitchcock', 5, 109, '1960-09-08', 'Un thriller psicologico senza tempo, noto per la sua scena della doccia iconica. Il film segue la misteriosa scomparsa di Marion Crane e le inquietanti rivelazioni sulla gestione di un motel da parte di Norman Bates.', 'https://m.media-amazon.com/images/I/91Om+SGDemL._AC_UF894,1000_QL80_.jpg'),
(21, 'C\'era una volta in America', 'Sergio Leone', 3, 229, '1984-05-23', 'Un\'epica saga criminale che segue le vicende di un gruppo di amici delinquente ebrei nella New York del XX secolo. Un film commovente e spettacolare che riflette sulla nostalgia, l\'amicizia e il riscatto.', 'https://www.postermania.it/8650-thickbox_default/manifesto-c-era-una-volta-in-america-sergio-leone-robert-de-niro-james-woods-w19.jpg'),
(22, 'Lo Squalo', 'Steven Spielberg', 7, 124, '1975-06-20', 'Un classico thriller che ha fatto tremare il mondo. Un grande squalo bianco minaccia una località balneare e il capo di polizia, un biologo marino e un pescatore si uniscono per affrontare la minaccia.', 'https://www.cinemadelsilenzio.it/images/film/poster/2219_big.jpg'),
(23, 'Via dalla pazza folla', 'John Schlesinger', 6, 168, '1967-10-13', 'Un dramma romantico basato sul romanzo di Thomas Hardy, che segue la vita e le relazioni di Bathsheba Everdene con tre uomini distinti. Un film che esplora l\'amore, il desiderio e le scelte della vita.', 'https://mr.comingsoon.it/imgdb/locandine/big/8060.jpg'),
(24, 'Via col vento', 'David Lean', 3, 216, '1962-12-14', 'Un\'altra versione cinematografica del celebre romanzo di Charles Dickens. Segue la vita del giovane orfano Oliver Twist che lotta per sopravvivere nella Londra vittoriana e finisce coinvolto in varie avventure e inganni.', 'https://www.immezcla.it/wp-content/uploads/2020/06/via_col_vento_locandina_79061.jpg'),
(25, 'Quarto Potere', 'Orson Welles', 3, 119, '1941-05-01', 'Un classico capolavoro del cinema, spesso considerato uno dei migliori film di tutti i tempi. Racconta la storia di un giovane giornalista che diventa famoso per la sua ascesa nella professione e le conseguenze della sua ricerca della verità.', 'https://i.ebayimg.com/images/g/PJUAAOSw2vxila3f/s-l1600.jpg'),
(26, 'L\'Esorcista', 'William Friedkin', 5, 132, '1973-12-26', 'Un film horror iconico e spaventoso che segue una madre disperata che chiede l\'aiuto di un prete per liberare sua figlia da possessioni demoniache. Un film che ha spaventato il pubblico di tutto il mondo.', 'https://pad.mymovies.it/filmclub/2006/03/527/locandina.jpg');

-- --------------------------------------------------------

--
-- Struttura della tabella `genere_film`
--

CREATE TABLE `genere_film` (
  `id` bigint(10) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `genere_film`
--

INSERT INTO `genere_film` (`id`, `nome`) VALUES
(1, 'Azione'),
(2, 'Commedia'),
(3, 'Drammatico'),
(4, 'Fantascienza'),
(5, 'Horror'),
(6, 'Romantico'),
(7, 'Thriller'),
(8, 'Animazione'),
(9, 'Documentario'),
(10, 'Avventura');

-- --------------------------------------------------------

--
-- Struttura della tabella `programmazione`
--

CREATE TABLE `programmazione` (
  `id` bigint(20) NOT NULL,
  `id_sala` bigint(20) NOT NULL,
  `id_film` bigint(20) NOT NULL,
  `data_inizio` date NOT NULL,
  `data_fine` date NOT NULL,
  `orario_proiezione` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `programmazione`
--

INSERT INTO `programmazione` (`id`, `id_sala`, `id_film`, `data_inizio`, `data_fine`, `orario_proiezione`) VALUES
(1, 1, 7, '2023-06-24', '2023-07-07', 1),
(2, 1, 8, '2023-06-24', '2023-07-07', 2),
(3, 1, 9, '2023-06-24', '2023-07-07', 3),
(4, 1, 13, '2023-07-08', '2023-07-21', 1),
(5, 1, 14, '2023-07-08', '2023-07-21', 2),
(6, 1, 15, '2023-07-08', '2023-07-21', 3),
(7, 1, 10, '2023-07-22', '2023-08-04', 1),
(8, 1, 11, '2023-07-22', '2023-08-04', 2),
(9, 1, 12, '2023-07-22', '2023-08-04', 3),
(10, 1, 1, '2023-08-05', '2023-08-18', 1),
(11, 1, 2, '2023-08-05', '2023-08-18', 2),
(12, 1, 3, '2023-08-05', '2023-08-18', 3),
(13, 1, 4, '2023-08-19', '2023-08-25', 1),
(14, 1, 5, '2023-08-19', '2023-08-25', 2),
(15, 1, 6, '2023-08-19', '2023-08-25', 3),
(16, 1, 7, '2023-08-26', '2023-09-09', 1),
(17, 1, 8, '2023-08-26', '2023-09-09', 2),
(18, 1, 9, '2023-08-26', '2023-09-09', 3),
(19, 2, 21, '2023-06-24', '2023-07-07', 1),
(20, 2, 7, '2023-06-24', '2023-07-07', 2),
(21, 2, 9, '2023-06-24', '2023-07-07', 3),
(22, 2, 13, '2023-07-08', '2023-07-21', 1),
(23, 2, 13, '2023-07-08', '2023-07-21', 2),
(24, 2, 15, '2023-07-08', '2023-07-21', 3),
(25, 2, 22, '2023-07-22', '2023-08-04', 1),
(26, 2, 24, '2023-07-22', '2023-08-04', 2),
(27, 2, 12, '2023-07-22', '2023-08-04', 3),
(28, 2, 1, '2023-08-05', '2023-08-18', 1),
(29, 2, 22, '2023-08-05', '2023-08-18', 2),
(30, 2, 12, '2023-08-05', '2023-08-18', 3),
(31, 2, 6, '2023-08-19', '2023-08-25', 1),
(32, 2, 13, '2023-08-19', '2023-08-25', 2),
(33, 2, 20, '2023-08-19', '2023-08-25', 3),
(34, 2, 5, '2023-08-26', '2023-09-09', 1),
(35, 2, 6, '2023-08-26', '2023-09-09', 2),
(36, 2, 17, '2023-08-26', '2023-09-09', 3),
(37, 3, 7, '2023-06-24', '2023-07-07', 1),
(38, 3, 8, '2023-06-24', '2023-07-07', 2),
(39, 3, 9, '2023-06-24', '2023-07-07', 3),
(40, 3, 13, '2023-07-08', '2023-07-21', 1),
(41, 3, 14, '2023-07-08', '2023-07-21', 2),
(42, 3, 15, '2023-07-08', '2023-07-21', 3),
(43, 3, 10, '2023-07-22', '2023-08-04', 1),
(44, 3, 11, '2023-07-22', '2023-08-04', 2),
(45, 3, 12, '2023-07-22', '2023-08-04', 3),
(46, 3, 1, '2023-08-05', '2023-08-18', 1),
(47, 3, 2, '2023-08-05', '2023-08-18', 2),
(48, 3, 3, '2023-08-05', '2023-08-18', 3),
(49, 3, 4, '2023-08-19', '2023-08-25', 1),
(50, 3, 5, '2023-08-19', '2023-08-25', 2),
(51, 3, 6, '2023-08-19', '2023-08-25', 3),
(52, 3, 7, '2023-08-26', '2023-09-09', 3),
(53, 3, 8, '2023-08-26', '2023-09-09', 2),
(54, 3, 9, '2023-08-26', '2023-09-09', 3),
(55, 4, 11, '2023-06-24', '2023-07-07', 1),
(56, 4, 12, '2023-06-24', '2023-07-07', 2),
(57, 4, 24, '2023-06-24', '2023-07-07', 3),
(58, 4, 8, '2023-07-08', '2023-07-21', 1),
(59, 4, 19, '2023-07-08', '2023-07-21', 2),
(60, 4, 20, '2023-07-08', '2023-07-21', 3),
(61, 4, 16, '2023-07-22', '2023-08-04', 1),
(62, 4, 17, '2023-07-22', '2023-08-04', 2),
(63, 4, 11, '2023-07-22', '2023-08-04', 3),
(64, 4, 2, '2023-08-05', '2023-08-18', 1),
(65, 4, 6, '2023-08-05', '2023-08-18', 2),
(66, 4, 22, '2023-08-05', '2023-08-18', 3),
(67, 4, 13, '2023-08-19', '2023-08-25', 1),
(68, 4, 1, '2023-08-19', '2023-08-25', 2),
(69, 4, 15, '2023-08-19', '2023-08-25', 3),
(70, 4, 18, '2023-08-26', '2023-09-09', 1),
(71, 4, 22, '2023-08-26', '2023-09-09', 2),
(72, 4, 2, '2023-08-26', '2023-09-09', 3),
(73, 5, 20, '2023-06-24', '2023-07-07', 1),
(74, 5, 15, '2023-06-24', '2023-07-07', 2),
(75, 5, 17, '2023-06-24', '2023-07-07', 3),
(76, 5, 13, '2023-07-08', '2023-07-21', 1),
(77, 5, 14, '2023-07-08', '2023-07-21', 2),
(78, 5, 2, '2023-07-08', '2023-07-21', 3),
(79, 5, 20, '2023-07-22', '2023-08-04', 1),
(80, 5, 18, '2023-07-22', '2023-08-04', 2),
(81, 5, 2, '2023-07-22', '2023-08-04', 3),
(82, 5, 7, '2023-08-05', '2023-08-18', 1),
(83, 5, 4, '2023-08-05', '2023-08-18', 2),
(84, 5, 23, '2023-08-05', '2023-08-18', 3),
(85, 5, 25, '2023-08-19', '2023-08-25', 1),
(86, 5, 5, '2023-08-19', '2023-08-25', 2),
(87, 5, 26, '2023-08-19', '2023-08-25', 3),
(88, 5, 11, '2023-08-26', '2023-09-09', 1),
(89, 5, 2, '2023-08-26', '2023-09-09', 2),
(90, 5, 5, '2023-08-26', '2023-09-09', 3),
(91, 6, 12, '2023-06-24', '2023-07-07', 1),
(92, 6, 17, '2023-06-24', '2023-07-07', 2),
(93, 6, 25, '2023-06-24', '2023-07-07', 3),
(94, 6, 23, '2023-07-08', '2023-07-21', 1),
(95, 6, 11, '2023-07-08', '2023-07-21', 2),
(96, 6, 11, '2023-07-08', '2023-07-21', 3),
(97, 6, 20, '2023-07-22', '2023-08-04', 1),
(98, 6, 18, '2023-07-22', '2023-08-04', 2),
(99, 6, 1, '2023-07-22', '2023-08-04', 3),
(100, 6, 4, '2023-08-05', '2023-08-18', 1),
(101, 6, 17, '2023-08-05', '2023-08-18', 2),
(102, 6, 21, '2023-08-05', '2023-08-18', 3),
(103, 6, 1, '2023-08-19', '2023-08-25', 1),
(104, 6, 18, '2023-08-19', '2023-08-25', 2),
(105, 6, 8, '2023-08-19', '2023-08-25', 3),
(106, 6, 11, '2023-08-26', '2023-09-09', 1),
(107, 6, 4, '2023-08-26', '2023-09-09', 2),
(108, 6, 14, '2023-08-26', '2023-09-09', 3),
(109, 7, 15, '2023-06-24', '2023-07-07', 1),
(110, 7, 2, '2023-06-24', '2023-07-07', 2),
(111, 7, 14, '2023-06-24', '2023-07-07', 3),
(112, 7, 11, '2023-07-08', '2023-07-21', 1),
(113, 7, 13, '2023-07-08', '2023-07-21', 2),
(114, 7, 4, '2023-07-08', '2023-07-21', 3),
(115, 7, 9, '2023-07-22', '2023-08-04', 1),
(116, 7, 8, '2023-07-22', '2023-08-04', 2),
(117, 7, 9, '2023-07-22', '2023-08-04', 3),
(118, 7, 22, '2023-08-05', '2023-08-18', 1),
(119, 7, 4, '2023-08-05', '2023-08-18', 2),
(120, 7, 6, '2023-08-05', '2023-08-18', 3),
(121, 7, 19, '2023-08-19', '2023-08-25', 1),
(122, 7, 24, '2023-08-19', '2023-08-25', 2),
(123, 7, 12, '2023-08-19', '2023-08-25', 3),
(124, 7, 12, '2023-08-26', '2023-09-09', 1),
(125, 7, 22, '2023-08-26', '2023-09-09', 2),
(126, 7, 23, '2023-08-26', '2023-09-09', 3),
(127, 8, 23, '2023-06-24', '2023-07-07', 1),
(128, 8, 20, '2023-06-24', '2023-07-07', 2),
(129, 8, 3, '2023-06-24', '2023-07-07', 3),
(130, 8, 6, '2023-07-08', '2023-07-21', 1),
(131, 8, 21, '2023-07-08', '2023-07-21', 2),
(132, 8, 8, '2023-07-08', '2023-07-21', 3),
(133, 8, 4, '2023-07-22', '2023-08-04', 1),
(134, 8, 20, '2023-07-22', '2023-08-04', 2),
(135, 8, 9, '2023-07-22', '2023-08-04', 3),
(136, 8, 11, '2023-08-05', '2023-08-18', 1),
(137, 8, 1, '2023-08-05', '2023-08-18', 2),
(138, 8, 23, '2023-08-05', '2023-08-18', 3),
(139, 8, 10, '2023-08-19', '2023-08-25', 1),
(140, 8, 4, '2023-08-19', '2023-08-25', 2),
(141, 8, 18, '2023-08-19', '2023-08-25', 3),
(142, 8, 25, '2023-08-26', '2023-09-09', 1),
(143, 8, 17, '2023-08-26', '2023-09-09', 2),
(144, 8, 9, '2023-08-26', '2023-09-09', 3),
(145, 9, 8, '2023-06-24', '2023-07-07', 1),
(146, 9, 16, '2023-06-24', '2023-07-07', 2),
(147, 9, 4, '2023-06-24', '2023-07-07', 3),
(148, 9, 23, '2023-07-08', '2023-07-21', 1),
(149, 9, 25, '2023-07-08', '2023-07-21', 2),
(150, 9, 4, '2023-07-08', '2023-07-21', 3),
(151, 9, 23, '2023-07-22', '2023-08-04', 1),
(152, 9, 23, '2023-07-22', '2023-08-04', 2),
(153, 9, 18, '2023-07-22', '2023-08-04', 3),
(154, 9, 23, '2023-08-05', '2023-08-18', 1),
(155, 9, 8, '2023-08-05', '2023-08-18', 2),
(156, 9, 23, '2023-08-05', '2023-08-18', 3),
(157, 9, 14, '2023-08-19', '2023-08-25', 1),
(158, 9, 25, '2023-08-19', '2023-08-25', 2),
(159, 9, 4, '2023-08-19', '2023-08-25', 3),
(160, 9, 22, '2023-08-26', '2023-09-09', 1),
(161, 9, 18, '2023-08-26', '2023-09-09', 2),
(162, 9, 26, '2023-08-26', '2023-09-09', 3),
(163, 10, 22, '2023-06-24', '2023-07-07', 1),
(164, 10, 8, '2023-06-24', '2023-07-07', 2),
(165, 10, 25, '2023-06-24', '2023-07-07', 3),
(166, 10, 20, '2023-07-08', '2023-07-21', 1),
(167, 10, 1, '2023-07-08', '2023-07-21', 2),
(168, 10, 23, '2023-07-08', '2023-07-21', 3),
(169, 10, 6, '2023-07-22', '2023-08-04', 1),
(170, 10, 14, '2023-07-22', '2023-08-04', 2),
(171, 10, 24, '2023-07-22', '2023-08-04', 3),
(172, 10, 1, '2023-08-05', '2023-08-18', 1),
(173, 10, 8, '2023-08-05', '2023-08-18', 2),
(174, 10, 12, '2023-08-05', '2023-08-18', 3),
(175, 10, 8, '2023-08-19', '2023-08-25', 1),
(176, 10, 6, '2023-08-19', '2023-08-25', 2),
(177, 10, 4, '2023-08-19', '2023-08-25', 3),
(178, 10, 2, '2023-08-26', '2023-09-09', 1),
(179, 10, 23, '2023-08-26', '2023-09-09', 2),
(180, 10, 5, '2023-08-26', '2023-09-09', 3),
(181, 11, 5, '2023-06-24', '2023-07-07', 1),
(182, 11, 12, '2023-06-24', '2023-07-07', 2),
(183, 11, 18, '2023-06-24', '2023-07-07', 3),
(184, 11, 3, '2023-07-08', '2023-07-21', 1),
(185, 11, 11, '2023-07-08', '2023-07-21', 2),
(186, 11, 21, '2023-07-08', '2023-07-21', 3),
(187, 11, 18, '2023-07-22', '2023-08-04', 1),
(188, 11, 2, '2023-07-22', '2023-08-04', 2),
(189, 11, 8, '2023-07-22', '2023-08-04', 3),
(190, 11, 6, '2023-08-05', '2023-08-18', 1),
(191, 11, 5, '2023-08-05', '2023-08-18', 2),
(192, 11, 6, '2023-08-05', '2023-08-18', 3),
(193, 11, 14, '2023-08-19', '2023-08-25', 1),
(194, 11, 26, '2023-08-19', '2023-08-25', 2),
(195, 11, 9, '2023-08-19', '2023-08-25', 3),
(196, 11, 21, '2023-08-26', '2023-09-09', 1),
(197, 11, 24, '2023-08-26', '2023-09-09', 2),
(198, 11, 6, '2023-08-26', '2023-09-09', 3),
(199, 12, 9, '2023-06-24', '2023-07-07', 1),
(200, 12, 26, '2023-06-24', '2023-07-07', 2),
(201, 12, 26, '2023-06-24', '2023-07-07', 3),
(202, 12, 25, '2023-07-08', '2023-07-21', 1),
(203, 12, 19, '2023-07-08', '2023-07-21', 2),
(204, 12, 21, '2023-07-08', '2023-07-21', 3),
(205, 12, 23, '2023-07-22', '2023-08-04', 1),
(206, 12, 24, '2023-07-22', '2023-08-04', 2),
(207, 12, 24, '2023-07-22', '2023-08-04', 3),
(208, 12, 20, '2023-08-05', '2023-08-18', 1),
(209, 12, 2, '2023-08-05', '2023-08-18', 2),
(210, 12, 2, '2023-08-05', '2023-08-18', 3),
(211, 12, 2, '2023-08-19', '2023-08-25', 1),
(212, 12, 6, '2023-08-19', '2023-08-25', 2),
(213, 12, 23, '2023-08-19', '2023-08-25', 3),
(214, 12, 19, '2023-08-26', '2023-09-09', 1),
(215, 12, 25, '2023-08-26', '2023-09-09', 2),
(216, 12, 17, '2023-08-26', '2023-09-09', 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `sala_cinema`
--

CREATE TABLE `sala_cinema` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `posti_sedere` int(11) NOT NULL,
  `imax` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `sala_cinema`
--

INSERT INTO `sala_cinema` (`id`, `nome`, `posti_sedere`, `imax`) VALUES
(1, 'Sala 1', 150, 1),
(2, 'Sala 2', 200, 1),
(3, 'Sala 3', 100, 0),
(4, 'Sala 4', 120, 0),
(5, 'Sala 5', 80, 0),
(6, 'Sala 6', 250, 0),
(7, 'Sala 7', 70, 0),
(8, 'Sala 8', 180, 0),
(9, 'Sala 9', 200, 0),
(10, 'Sala 10', 50, 0),
(11, 'Sala 11', 90, 0),
(12, 'Sala 12', 150, 0);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_genere` (`id_genere`);

--
-- Indici per le tabelle `genere_film`
--
ALTER TABLE `genere_film`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `programmazione`
--
ALTER TABLE `programmazione`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sala` (`id_sala`),
  ADD KEY `id_film` (`id_film`);

--
-- Indici per le tabelle `sala_cinema`
--
ALTER TABLE `sala_cinema`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `film`
--
ALTER TABLE `film`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT per la tabella `genere_film`
--
ALTER TABLE `genere_film`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT per la tabella `programmazione`
--
ALTER TABLE `programmazione`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT per la tabella `sala_cinema`
--
ALTER TABLE `sala_cinema`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`id_genere`) REFERENCES `genere_film` (`id`);

--
-- Limiti per la tabella `programmazione`
--
ALTER TABLE `programmazione`
  ADD CONSTRAINT `programmazione_ibfk_1` FOREIGN KEY (`id_sala`) REFERENCES `sala_cinema` (`id`),
  ADD CONSTRAINT `programmazione_ibfk_2` FOREIGN KEY (`id_film`) REFERENCES `film` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
