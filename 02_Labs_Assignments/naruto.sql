-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2025 at 10:09 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `naruto`
--

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE `characters` (
  `CharacterID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Village` varchar(255) NOT NULL,
  `Rank` varchar(255) NOT NULL,
  `ChakraType` varchar(255) NOT NULL,
  `Team` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`CharacterID`, `Name`, `Village`, `Rank`, `ChakraType`, `Team`) VALUES
(1, 'Naruto Uzumaki', 'Konoha', 'Hokage', 'Wind', 'Team 7'),
(2, 'Sasuke Uchiha', 'Konoha', 'Rogue Ninja', 'Lightning', 'Team 7'),
(3, 'Sakura Haruno', 'Konoha', 'Jonin', 'Earth', 'Team 7'),
(4, 'Kakashi Hatake', 'Konoha', 'Jonin', 'Lightning', 'Team 7'),
(5, 'Shikamaru Nara', 'Konoha', 'Jonin', 'Shadow', 'Team 10'),
(6, 'Ino Yamanaka', 'Konoha', 'Jonin', 'Mind', 'Team 10'),
(7, 'Choji Akimichi', 'Konoha', 'Jonin', 'Expansion', 'Team 10'),
(8, 'Neji Hyuga', 'Konoha', 'Jonin', 'Gentle Fist', 'Team Guy'),
(9, 'Rock Lee', 'Konoha', 'Jonin', 'Taijutsu', 'Team Guy'),
(10, 'Tenten', 'Konoha', 'Jonin', 'Weapon', 'Team Guy'),
(11, 'Gaara', 'Suna', 'Kazekage', 'Sand', 'Team Baki'),
(12, 'Kankuro', 'Suna', 'Jonin', 'Puppet', 'Team Baki'),
(13, 'Temari', 'Suna', 'Jonin', 'Wind', 'Team Baki'),
(14, 'Hinata Hyuga', 'Konoha', 'Jonin', 'Gentle Fist', 'Team 8'),
(15, 'Kiba Inuzuka', 'Konoha', 'Jonin', 'Beast', 'Team 8'),
(16, 'Shino Aburame', 'Konoha', 'Jonin', 'Insect', 'Team 8'),
(17, 'Itachi Uchiha', 'Akatsuki', 'Rogue Ninja', 'Fire', 'Akatsuki'),
(18, 'Pain', 'Akatsuki', 'Leader', 'Rinnegan', 'Akatsuki'),
(19, 'Konan', 'Akatsuki', 'S-Rank', 'Paper', 'Akatsuki'),
(20, 'Madara Uchiha', 'Konoha', 'Legendary', 'Fire', 'None');

-- --------------------------------------------------------

--
-- Table structure for table `jutsus`
--

CREATE TABLE `jutsus` (
  `JutsuID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Type` varchar(255) NOT NULL,
  `ChakraNature` varchar(255) NOT NULL,
  `Rank` int(11) NOT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `jutsus`
--

INSERT INTO `jutsus` (`JutsuID`, `Name`, `Type`, `ChakraNature`, `Rank`, `UserID`) VALUES
(1, 'Rasengan', 'Ninjutsu', 'Wind', 3, 1),
(2, 'Chidori', 'Ninjutsu', 'Lightning', 3, 2),
(3, 'Shadow Clone', 'Ninjutsu', 'None', 2, 1),
(4, 'Fireball Jutsu', 'Ninjutsu', 'Fire', 1, 2),
(5, 'Byakugan', 'Dojutsu', 'None', 4, 8),
(6, 'Gentle Fist', 'Taijutsu', 'None', 2, 8),
(7, 'Mind Transfer', 'Ninjutsu', 'Mind', 2, 6),
(8, 'Expansion Jutsu', 'Ninjutsu', 'None', 2, 7),
(9, 'Sand Coffin', 'Ninjutsu', 'Sand', 3, 11),
(10, 'Puppet Technique', 'Ninjutsu', 'Chakra Strings', 2, 12),
(11, 'Paper Dance', 'Ninjutsu', 'Paper', 3, 19),
(12, 'Rinnegan Power', 'Dojutsu', 'None', 4, 18),
(13, 'Amaterasu', 'Ninjutsu', 'Fire', 4, 17),
(14, 'Susanoo', 'Ninjutsu', 'None', 4, 17),
(15, 'Rasenshuriken', 'Ninjutsu', 'Wind', 4, 1),
(16, 'Beast Fang Over Fang', 'Taijutsu', 'Beast', 2, 15),
(17, 'Insect Clone', 'Ninjutsu', 'Insect', 2, 16),
(18, 'Gentle Step Twin Lion Fists', 'Taijutsu', 'Chakra', 3, 14),
(19, 'Flying Raijin', 'Ninjutsu', 'Space-Time', 4, 4),
(20, 'Limbo Clone', 'Ninjutsu', 'Shadow', 4, 20);

-- --------------------------------------------------------

--
-- Table structure for table `missions`
--

CREATE TABLE `missions` (
  `MissionID` int(11) NOT NULL,
  `MissionName` varchar(255) NOT NULL,
  `Rank` varchar(255) NOT NULL,
  `Village` varchar(255) NOT NULL,
  `TeamID` int(11) NOT NULL,
  `Status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `missions`
--

INSERT INTO `missions` (`MissionID`, `MissionName`, `Rank`, `Village`, `TeamID`, `Status`) VALUES
(1, 'Rescue Sasuke', 'A', 'Konoha', 1, 'Completed'),
(2, 'Retrieve Gaara', 'A', 'Suna', 3, 'Completed'),
(3, 'Escort Tazuna', 'C', 'Konoha', 1, 'Completed'),
(4, 'Defend Konoha', 'S', 'Konoha', 3, 'Completed'),
(5, 'Chunin Exam Guard', 'B', 'Konoha', 4, 'Completed'),
(6, 'Spy Mission Sound', 'A', 'Oto', 6, 'Failed'),
(7, 'Invasion of Suna', 'A', 'Suna', 5, 'Completed'),
(8, 'Training Mission', 'D', 'Konoha', 16, 'Completed'),
(9, 'Akatsuki Hunt', 'S', 'Ame', 6, 'Ongoing'),
(10, 'Diplomatic Visit', 'B', 'Suna', 17, 'Completed'),
(11, 'ANBU Assassination', 'S', 'Konoha', 18, 'Completed'),
(12, 'Root Recon', 'A', 'Konoha', 19, 'Completed'),
(13, 'Sand Defense', 'A', 'Suna', 20, 'Completed'),
(14, 'Bridge Protection', 'C', 'Wave', 1, 'Completed'),
(15, 'Spy Capture', 'A', 'Rain', 6, 'Failed'),
(16, 'Beast Control', 'B', 'Kumo', 14, 'Completed'),
(17, 'Medical Aid', 'C', 'Konoha', 11, 'Completed'),
(18, 'Scroll Retrieval', 'B', 'Leaf', 2, 'Completed'),
(19, 'Infiltrate Oto', 'A', 'Sound', 7, 'Completed'),
(20, 'Escort Hokage', 'B', 'Konoha', 1, 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `TeamID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Leader` varchar(255) NOT NULL,
  `MembersCount` int(11) NOT NULL,
  `MissionType` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`TeamID`, `Name`, `Leader`, `MembersCount`, `MissionType`) VALUES
(1, 'Team 7', 'Kakashi Hatake', 3, 'Rescue'),
(2, 'Team 8', 'Kurenai Yuhi', 3, 'Tracking'),
(3, 'Team 9', 'Might Guy', 3, 'Combat'),
(4, 'Team 10', 'Asuma Sarutobi', 3, 'Strategy'),
(5, 'Team Baki', 'Baki', 3, 'Invasion'),
(6, 'Akatsuki', 'Pain', 10, 'Hunting'),
(7, 'Sound Four', 'Kimimaro', 4, 'Assassination'),
(8, 'Team Minato', 'Minato Namikaze', 3, 'Recon'),
(9, 'Team Jiraiya', 'Jiraiya', 3, 'Training'),
(10, 'Team Orochimaru', 'Orochimaru', 3, 'Experiment'),
(11, 'Team Ebisu', 'Ebisu', 3, 'Support'),
(12, 'Team Kurenai', 'Kurenai Yuhi', 3, 'Guard'),
(13, 'Team Asuma', 'Asuma Sarutobi', 3, 'Support'),
(14, 'Team Guy', 'Might Guy', 3, 'Defense'),
(15, 'Team Taka', 'Sasuke Uchiha', 4, 'Revenge'),
(16, 'Team Konohamaru', 'Konohamaru', 3, 'Training'),
(17, 'Team Gaara', 'Gaara', 3, 'Diplomacy'),
(18, 'ANBU Black Ops', 'Yamato', 5, 'Assassination'),
(19, 'Root Division', 'Danzo Shimura', 6, 'Secret Ops'),
(20, 'Sand Siblings', 'Gaara', 3, 'Defense');

-- --------------------------------------------------------

--
-- Table structure for table `villages`
--

CREATE TABLE `villages` (
  `VillageID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL,
  `Leader` varchar(255) NOT NULL,
  `Speciality` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `villages`
--

INSERT INTO `villages` (`VillageID`, `Name`, `Country`, `Leader`, `Speciality`) VALUES
(1, 'Konoha', 'Fire Country', 'Naruto Uzumaki', 'Chakra Control'),
(2, 'Suna', 'Wind Country', 'Gaara', 'Sand Techniques'),
(3, 'Kiri', 'Water Country', 'Chojuro', 'Water Techniques'),
(4, 'Iwa', 'Earth Country', 'Kurotsuchi', 'Earth Techniques'),
(5, 'Kumo', 'Lightning Country', 'Darui', 'Lightning Style'),
(6, 'Ame', 'Rain Country', 'Pain', 'Rain Manipulation'),
(7, 'Oto', 'Sound Country', 'Orochimaru', 'Sound Genjutsu'),
(8, 'Kusa', 'Grass Country', 'Unknown', 'Stealth'),
(9, 'Taki', 'Waterfall Country', 'Shibuki', 'Waterfall Jutsu'),
(10, 'Yuki', 'Snow Country', 'Kazahana Dotō', 'Ice Release'),
(11, 'Uzu', 'Whirlpool Country', 'Mito Uzumaki', 'Sealing Jutsu'),
(12, 'Hot Water Village', 'Hot Water Country', 'Unknown', 'Stealth'),
(13, 'Stone Village', 'Earth Country', 'Unknown', 'Rock Techniques'),
(14, 'Wave Village', 'Wave Country', 'Unknown', 'Bridge Building'),
(15, 'Rain Village', 'Rain Country', 'Konan', 'Paper Style'),
(16, 'Mist Village', 'Water Country', 'Mei Terumi', 'Lava Release'),
(17, 'Cloud Village', 'Lightning Country', 'Raikage', 'Lightning'),
(18, 'Leaf Village', 'Fire Country', 'Kakashi', 'Fire Style'),
(19, 'Sand Village', 'Wind Country', 'Baki', 'Sand'),
(20, 'Sound Village', 'Sound Country', 'Kabuto', 'Experimentation');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`CharacterID`);

--
-- Indexes for table `jutsus`
--
ALTER TABLE `jutsus`
  ADD PRIMARY KEY (`JutsuID`);

--
-- Indexes for table `missions`
--
ALTER TABLE `missions`
  ADD PRIMARY KEY (`MissionID`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`TeamID`);

--
-- Indexes for table `villages`
--
ALTER TABLE `villages`
  ADD PRIMARY KEY (`VillageID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
