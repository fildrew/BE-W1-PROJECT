-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2024 at 06:41 PM
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
-- Database: `gestione_libreria`
--

-- --------------------------------------------------------

--
-- Table structure for table `libri`
--

CREATE TABLE `libri` (
  `id` int(10) UNSIGNED NOT NULL,
  `titolo` varchar(125) NOT NULL,
  `autore` varchar(125) NOT NULL,
  `anno_pubblicazione` int(50) NOT NULL,
  `genere` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `libri`
--

INSERT INTO `libri` (`id`, `titolo`, `autore`, `anno_pubblicazione`, `genere`, `description`) VALUES
(9, ' The Haunting of Hill House', ' Jackson, Shirley', 2006, 'Horror', 'This book has unnerved readers since its publication in 1959. It is a tale of subtle, psychological terror, and is considered one of the greatest haunted house stories ever written.'),
(10, 'The Turn of the Screw ', 'James, Henry', 1990, 'Horror', '\r\nThis ghost story,invites debate on the ambiguity of reality, where the reader must consider whether the governess is mad or whether the ghosts are real.'),
(12, ' The Shining', 'King, Stephen', 1977, 'Horror', 'Inspired by the real Stanley Hotel, this chilling tale starts with a troubled family trying to heal and pull itself back together, but as the harsh winter weather sets in, the idyllic location feels ever more remote and more sinister. The only one to notice the strange and terrible forces gathering around the Overlook is the uniquely gifted five-year-old boy'),
(13, ' The Amityville Horror', ' Anson, Jay  ', 1991, 'Horror', 'One year earlier, Ronald DeFeo had murdered his parents, brothers, and sisters in the house. In December 1975, the Lutz family moved in. Twenty-eight days later, the entire Lutz family fled in terror. This is their spellbinding, shocking tale of what happened during those twenty-eight days'),
(14, ' Heart-shaped Box ', ' Hill, Joe ', 2010, 'Horror', 'A surprisingly moving spine-tingler wherein the hero has to face himself and his past to discover his true self in order to confront the evil terrorizing him.'),
(15, ' Wait Till Helen Comes A Ghost', ' Hahn, Mary Downing  ', 2008, 'Horror', 'What happens when an insufferable brat befriends a malevolent ghost who died in a mysterious fire more than a hundred years ago? So begins this spine-chillling tale, with the unsettling threat, “Wait till Helen comes,” becoming a grim reality.'),
(16, 'Someone You Can Build a Nest In ', 'John Wiswell', 2024, 'Fantasy', 'An intriguing mix of fantasy, horror, and romance, Someone You Can Build a Nest With boasts April’s most intriguing (and frequently disturbing) premise—a story told from the perspective of a shapeshifting, distinctly non-humanoid monster who falls in love with a woman who’s not just human—she’s a monster hunter. Deeply weird in the best sort of way. '),
(17, 'A Short Walk Through a Wide World ', 'Douglas Westerbeke', 2024, 'Fantasy', ' This enthralling debut that follows the story of a woman who spends her life trying to literally outrun a curse that will destroy her if she stops moving has drawn comparisons to Life of Pi and The Invisible Life of Addie LaRue. A very literal and surprisingly emotional interpretation of the idiom that life is about the journey, not the destination. '),
(18, 'Draw Down the Moon ', ' P.C. Cast and Kristin Cast', 2024, 'Fantasy', 'Besides boasting what is probably the prettiest cover of the month, Draw Down the Moon is the latest novel from the fantasy powerhouse duo of P.C. and Kristin Cast. Set in a world where people are either  Mundane (without magic) or Moonstruck (born under a full moon with magical abilities), it follows a Mundane teen sent to a secret magical school when it’s discovered she has powers she shouldn’t. '),
(19, 'A Flicker in the Dark by Stacy', 'Stacy Willingham', 2001, 'Adventure', 'Stacy Willingham’s beautifully written debut A Flicker in the Dark tackles serial killers from the perspective of one’s daughter. Chloe Davis was twelve when her father was arrested for the murders of six young girls in their small Louisiana town, put away by evidence Chloe herself turned over to the police. Since then, she’s struggled with all sorts of residual trauma, but has managed to scrape together a life for herself against all odds.\r\n\r\nTwelve years later, her already unsteady foundation is shattered when another girl is found murdered in the same style as her father’s victims. And Chloe was the last person to see her alive. Is there a copycat killer on the loose, or was her father wrongly convicted all those years ago? Part atmospheric thriller, part psychological study.'),
(20, 'Career of Evil', 'Robert Galbraith', 2015, 'Crime', 'Cormoran Strike is back, with his assistant Robin Ellacott, in a mystery based around soldiers returning from war.\r\n\r\nWhen a mysterious package is delivered to Robin Ellacott, she is horrified to discover that it contains a woman’s severed leg.'),
(21, 'The Dry', 'Jane Harper', 2016, 'Crime', 'A small town hides big secrets in this atmospheric, page-turning debut mystery by award-winning author Jane Harper.\r\nIn the grip of the worst drought in a century, the farming community of Kiewarra is facing life and death choices daily when three members of a local family are found brutally slain.\r\nFederal Police investigator Aaron Falk reluctantly returns to his hometown for the funeral of his childhood friend, loath to face the townsfolk who turned their backs on him twenty years earlier.\r\nBut as questions mount, Falk is forced to probe deeper into the deaths of the Hadler family. Because Falk and Luke Hadler shared a secret. A secret Falk thought was long buried. A secret Luke\'s death now threatens to bring to the surface in this small Australian town, as old wounds bleed into new ones.\r\n\r\n'),
(22, 'Rivers of London', '  Ben Aaronovitch', 2010, 'Crime', 'Probationary Constable Peter Grant dreams of being a detective in London’s Metropolitan Police. Too bad his superior plans to assign him to the Case Progression Unit, where the biggest threat he’ll face is a paper cut. But Peter’s prospects change in the aftermath of a puzzling murder, when he gains exclusive information from an eyewitness who happens to be a ghost. Peter’s ability to speak with the lingering dead brings him to the attention of Detective Chief Inspector Thomas Nightingale, who investigates crimes involving magic and other manifestations of the uncanny. Now, as a wave of brutal and bizarre murders engulfs the city, Peter is plunged into a world where gods and goddesses mingle with mortals and a long-dead evil is making a comeback on a rising tide of magic.'),
(23, 'The Redbreast ', ' Jo Nesbø', 2000, 'Crime', 'The Redbreast is a fabulous introduction to Nesbø’s tough-as-nails series protagonist, Oslo police detective Harry Hole. A brilliant and epic novel, breathtaking in its scope and design—winner of The Glass Key for best Nordic crime novel and selected as the best Norwegian crime novel ever written by members of Norway’s book clubs—The Redbreast is a chilling tale of murder and betrayal that ranges from the battlefields of World War Two to the streets of modern-day Oslo. Follow Hole as he races to stop a killer and disarm a ticking time-bomb from his nation’s shadowy past. Vogue magazine says that “nobody can delve into the dark, twisted mind of a murderer better than a Scandinavian thriller writer”…and nobody does it better than Jo Nesbø! James Patterson fans should also take note.'),
(25, 'Baby X ', 'Kira Peikoff', 2024, 'Adventure', 'When any biological matter can be used to create life, stolen celebrity DNA sells to the highest bidder–or the craziest stalker–in this propulsive thriller. With a vivid imagining of the future, Gattaca meets The Ones in Kira Peikoff’s Baby X . In the near-future United States, where advanced tech ...more'),
(27, 'The Truth about the Devlins ', ' Lisa Scottoline', 2023, 'Adventure', 'TJ Devlin is the charming disappointment in the prominent Devlin family, all of whom are lawyers at their highly successful firm—except him. After a stint in prison and rehab for alcoholism, TJ can’t get hired anywhere except at the firm, in a make-work job with the title of investigator. But one n ...more'),
(28, 'The Angel of Indian Lake (The Indian Lake Trilogy, #3)', ' Stephen Graham Jones', 2011, 'Adventure', 'The final installment in the most lauded trilogy in the history of horror novels picks up four years after Don’t Fear the Reaper as Jade returns to Proofrock, Idaho, to build a life after the years of sacrifice—only to find the Lake Witch is waiting for her in New York Times bestselling author Steph ...more'),
(29, 'Such a Lovely Family ', ' Aggie Blum Thompson', 2018, 'Adventure', 'The cherry blossoms are in full bloom in Washington, D.C., and the Calhouns are in the midst of hosting their annual party to celebrate the best of the spring season. With a house full of friends, neighbors, and their beloved three adult children, the Calhouns are expecting another picture-perfect e ...more'),
(31, 'The Simmonds House Kills: A Lakeside U Mystery (The Lakeside U Mysteries, #1)', ' Meaghan Dwyer', 2020, 'Adventure', 'A witty and twisty whodunit, perfect for fans of Holly Jackson, Karen M. McManus, and Brittany Cavallaro. The Simmonds House is murder, they say. Most students only hear whispers about what goes on behind closed doors at the most exclusive society at Lakeside U. Emma Evans, on the other hand, re ...more');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `libri`
--
ALTER TABLE `libri`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `libri`
--
ALTER TABLE `libri`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
