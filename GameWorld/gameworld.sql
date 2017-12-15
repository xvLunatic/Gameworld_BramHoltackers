-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Gegenereerd op: 15 dec 2017 om 13:45
-- Serverversie: 5.7.19
-- PHP-versie: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gameworld`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `category`
--

CREATE TABLE `category` (
  `categoryID` int(3) NOT NULL,
  `categoryTitle` varchar(50) NOT NULL,
  `categoryDesc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `category`
--

INSERT INTO `category` (`categoryID`, `categoryTitle`, `categoryDesc`) VALUES
(1, 'Playstation', 'Playstation games!'),
(2, 'XBOX', 'XBOX games!'),
(3, 'PC', 'PC games!');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `games`
--

CREATE TABLE `games` (
  `gameID` int(3) NOT NULL,
  `gameTitle` varchar(50) NOT NULL,
  `gameDesc` text NOT NULL,
  `gamePrice` decimal(5,2) NOT NULL,
  `categoryID` int(3) NOT NULL,
  `gameImage` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `games`
--

INSERT INTO `games` (`gameID`, `gameTitle`, `gameDesc`, `gamePrice`, `categoryID`, `gameImage`) VALUES
(1, 'Star Wars™ Battlefront II', 'Beleef een eindeloos avontuur met de nieuwe Star Wars™-game van de wereldberoemde HD-franchise van Star Wars. \r\n\r\n', '59.99', 1, 'images/BF2.jpg'),
(2, 'Call of Duty®: WWII', 'Keer terug naar de dodelijkste oorlog van de 20e eeuw en ervaar de dramatische achtergrond die de inspiratie vormde voor de immens populaire Call of Duty-serie, nu opnieuw vormgegeven voor een nieuwe generatie gamers.\r\n\r\n', '59.99', 1, 'images/WW2.jpg'),
(3, 'Gran Turismo Sport', 'De bekroonde realistische racesimulatorgames scheurt voor de eerste keer de PlayStation 4 op. Bereid je voor op razendsnelle actie waar je adrenaline van gaat stromen.\r\n\r\n\r\n\r\n', '59.99', 1, 'images/GTSport.jpg'),
(4, 'Assassin\'s Creed Origins', 'De bejubelde Assassin’s Creed-reeks keert terug naar PlayStation 4 met nieuwe verhalen en missies, een spannende nieuwe wereld om te verkennen en een volledig opnieuw ontworpen gevechtssysteem.\r\n\r\n\r\n', '59.99', 1, 'images/ACO.jpg'),
(5, 'FIFA 18', 'In EA SPORTS FIFA 18, verzorgd door de Frostbite-engine, vervaagt de grens tussen de virtuele en echte wereld. Spelers en teams komen tot leven. Ervaar de ultieme voetbalsfeer.\r\n\r\n', '59.99', 1, 'images/FIFA18.jpg'),
(6, 'Destiny 2', 'De laatste vrije stad van de mensen is gevallen. De brute commandant van het Red Legion, Ghaul, heeft een overweldigende legermacht naar de overwinning gevoerd en de Guardians van de stad van hun macht beroofd.\r\n\r\n\r\n\r\n', '59.99', 1, 'images/Destiny2.jpg'),
(7, 'L.A. Noire', 'Midden in het gouden tijdperk van Hollywood wordt Cole Phelps, een LAPD-detective, in het diepe gegooid in een stad die ten onder dreigt te gaan aan zijn eigen succes. De corruptie is bandeloos, de drugshandel rijst de pan uit en de moordcijfers zijn torenhoog.\r\n', '59.99', 1, 'images/LAN.jpg'),
(8, 'Horizon Zero Dawn', 'In een weelderige, post-apocalyptische wereld waar de natuur de ruïnes van een vergeten beschaving heeft overwoekerd, leven kleine groepjes mensen in primitieve jager-verzamelaarsstammen. De Machines zijn nu heer en meester in deze nieuwe wildernis. Niemand weet waar deze angstaanjagende mechanische wezens vandaan komen.', '59.99', 1, 'images/HZD.jpg'),
(9, 'Star Wars Battlefront II', 'Beleef een eindeloos avontuur met de nieuwe Star Wars™-game van de wereldberoemde HD-franchise van Star Wars. \r\n\r\n', '59.99', 2, 'images/BF2.jpg'),
(10, 'Destiny 2', 'De laatste vrije stad van de mensen is gevallen. De brute commandant van het Red Legion, Ghaul, heeft een overweldigende legermacht naar de overwinning gevoerd en de Guardians van de stad van hun macht beroofd.\r\n', '59.99', 2, 'images/Destiny2.jpg'),
(11, 'ReCore', 'Ga met je Corebots de strijd aan met gevaarlijke vijandige robots in een mysterieuze, voortdurend veranderende wereld.', '39.99', 2, 'images/Recore.jpg'),
(12, 'Forza Horizon 3', 'THIS IS YOUR HORIZON\r\nYou’re in charge of the Horizon Festival. Customize everything, hire and fire your friends, and explore Australia in over 350 of the world’s greatest cars. Make your Horizon the ultimate celebration of cars, music, and freedom of the open road. How you get there is up to you.', '59.99', 2, 'images/FH3.jpg'),
(13, 'Quantum Break', 'In Quantum Break beschik je over unieke krachten en manipuleer je de tijd om je vijanden uit te schakelen en te slim af te zijn.', '59.99', 2, 'images/QB.jpg'),
(14, 'Gears of War: Ultimate editie', 'De baanbrekende Gears of War komt terug, verbluffend geremastered en gemoderniseerd voor de Xbox One.', '49.99', 2, 'images/GOWUE.jpg'),
(15, 'Dead Rising 4', 'Kruip in de huid van de ultieme zombiedoder Frank West en keer voor de feestdagen terug naar huis om de oorzaak van een mysterieuze zombie-uitbraak te onderzoeken.', '59.99', 2, 'images/DR4.jpg'),
(16, 'Halo Wars 2', 'Realtime strategie keert op een explosieve manier terug in het Halo-universum in Halo Wars 2. Leid Spartans, Warthogs en andere klassieke Halo-strijdkrachten in een meedogenloze oorlog tegen een angstaanjagende nieuwe vijand op het grootste Halo-slagveld ooit.', '59.99', 2, 'images/HW2.jpg'),
(17, 'Counter-Strike: Global Offensive', 'Counter-Strike: Global Offensive (CS: GO) will expand upon the team-based action gameplay that it pioneered when it was launched 14 years ago.\r\n\r\n', '14.99', 3, 'images/CSGO.jpg'),
(18, 'PLAYERUNKNOWN\'S BATTLEGROUNDS', 'PLAYERUNKNOWN\'S BATTLEGROUNDS is a last-man-standing shooter being developed with community feedback. Starting with nothing, players must fight to locate weapons and supplies in a battle to be the lone survivor. This realistic, high tension game is set on a massive 8x8 km island with a level of detail that showcases Unreal Engine 4\'s capabilities. ', '29.99', 3, 'images/pubg.jpg'),
(19, 'Rocket League', 'Soccer meets driving once again in the long-awaited, physics-based sequel to the beloved arena classic, Supersonic Acrobatic Rocket-Powered Battle-Cars!\r\n', '19.99', 3, 'images/Rocket.jpg'),
(20, 'Grand Theft Auto V', 'When a young street hustler, a retired bank robber and a terrifying psychopath find themselves entangled with some of the most frightening and deranged elements of the criminal underworld, the U.S. government and the entertainment industry, they must pull off a series of dangerous heists to survive in a ruthless city in which they can trust nobody, least of all each other.', '59.99', 3, 'images/GTA5.jpg'),
(21, 'Tom Clancy\'s Rainbow Six® Siege', 'The Tom Clancy\'s Rainbow Six Siege Gold Edition includes the Standard Edition & the Year 2 Pass. \r\nTom Clancy\'s Rainbow Six Siege invites players to master the art of destruction. Intense close quarters confrontations, high lethality, tactics, team play, and explosive action are at the center of the experience', '14.99', 3, 'images/RSS.jpg'),
(22, 'ARK: Survival Evolved', 'As a man or woman stranded naked, freezing and starving on the shores of a mysterious island called ARK, you must hunt, harvest resources, craft items, grow crops, research technologies, and build shelters to withstand the elements. Use your cunning and resources to kill or tame & breed the leviathan dinosaurs and other primeval creatures roaming the land, and team up with or prey on hundreds of other players to survive, dominate... and escape!', '59.99', 3, 'images/ARK.jpg'),
(23, 'The Forest', 'As the lone survivor of a passenger jet crash, you find yourself in a mysterious forest battling to stay alive against a society of cannibalistic mutants. \r\n', '14.99', 3, 'images/Forest.jpg'),
(24, 'SpeedRunners', 'In a city filled with superheroes, getting to crimes becomes a competition on its own. Fortunately there are enough rockets, bombs, grappling hooks, spikes, and other goodies lying around -- to make the competition fun and fast. Welcome to SpeedRunners. ', '14.99', 3, 'images/Speedrunners.jpg');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexen voor tabel `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`gameID`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `category`
--
ALTER TABLE `category`
  MODIFY `categoryID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT voor een tabel `games`
--
ALTER TABLE `games`
  MODIFY `gameID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
