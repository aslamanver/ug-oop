-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2016 at 11:03 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `abcbook_aslam`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `stock` int(11) NOT NULL,
  `date` date NOT NULL,
  `addedby` varchar(50) NOT NULL,
  `barcode` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `barcode` (`barcode`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Table for store books information of ABC Book Company ICBT 68/24' AUTO_INCREMENT=106 ;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `author`, `category`, `stock`, `date`, `addedby`, `barcode`) VALUES
(1, 'Harry Potter and the Goblet of Fire ', 'JK Rowling', 'Entertainment', 20, '2016-02-04', 'aslam', 100504156),
(2, 'The Hobbit ', 'J R R Tolkien', 'Story', 10, '2010-02-05', 'john', 100504157),
(3, 'The Da Vinci Code ', 'Dan Brown', 'Mathematics', 20, '2010-02-06', 'sanaka', 100504158),
(4, 'Harry Potter and the Prisoner of Azkaban ', 'JK Rowling', 'History', 10, '2010-02-07', 'geetha', 100504159),
(5, 'The Official Highway Code ', 'Department for Transport', 'Kids', 5, '2010-02-08', 'banu', 100504160),
(6, 'The Lion, The Witch and The Wardrobe ', 'CS Lewis', 'Adults', 25, '2010-02-09', 'mohammed', 100504161),
(7, 'Fifty Shades of Grey', 'E L James', 'IT', 33, '2010-02-10', 'natasa', 100504162),
(8, 'To Kill a Mockingbird ', 'Harper Lee', 'Science', 34, '2010-02-11', 'aslam', 100504163),
(9, 'Lord of the Rings: Return of the King ', 'JRR Tolkein', 'Religious', 5, '2010-02-12', 'john', 100504164),
(10, 'Pride and Prejudice ', 'Jane Austen', 'Account', 50, '2010-02-13', 'sanaka', 100504165),
(11, 'Lord of the Rings: The Two Towers ', 'JRR Tolkein', 'Civil', 0, '2010-02-14', 'geetha', 100504166),
(12, 'Jamie’s 15 minute meals ', 'Jamie Oliver', 'Engineering', 0, '2015-02-20', 'banu', 100504167),
(13, 'The BFG ', 'Roald Dahl', 'English', 52, '2008-02-22', 'mohammed', 100504168),
(14, 'Great Expectations ', 'Charles Dickens', 'Animal', 63, '2009-02-23', 'natasa', 100504169),
(15, 'The Hitchhiker’s Guide to the Galaxy ', 'Douglas Adams', 'World', 10, '2010-02-25', 'aslam', 100504170),
(16, 'Animal Farm ', 'George Orwell', 'Geography', 25, '2011-02-27', 'john', 100504171),
(17, 'The Girl with the Dragon Tattoo ', 'Stieg Larsson', 'Entertainment', 32, '2012-02-29', 'sanaka', 100504172),
(18, 'Bridget Jones’s Diary ', 'Helen Fielding', 'Story', 11, '2013-03-02', 'geetha', 100504173),
(19, 'Little Women ', 'Louisa May Alcott', 'Mathematics', 99, '2014-03-04', 'banu', 100504174),
(20, 'Romeo and Juliet ', 'William Shakespeare', 'History', 10, '2015-03-06', 'mohammed', 100504175),
(21, 'Dracula ', 'Bram Stoker', 'Kids', 22, '2001-03-07', 'natasa', 100504176),
(22, 'The Secret Garden -Frances Hodgson Burnett', 'William Shakespeare', 'Adults', 20, '2002-05-08', 'aslam', 100504177),
(23, 'George’s Marvellous Medicine ', 'Roald Dahl', 'IT', 56, '2003-07-09', 'john', 100504178),
(24, 'Time Travellers Wife ', 'Audrey Niffenegger', 'Science', 36, '2004-09-08', 'sanaka', 100504179),
(25, 'The Hunger Games ', 'Suzanne Collins', 'Religious', 6, '2005-11-09', 'geetha', 100504180),
(26, 'The Catcher in the Rye ', 'J.D Salinger', 'Account', 3, '2007-01-10', 'banu', 100504181),
(27, 'David Copperfield ', 'Charles Dickens', 'Civil', 1, '2008-03-12', 'mohammed', 100504182),
(28, 'Lovely Bones ', 'Alice Sebold', 'Engineering', 0, '2009-05-13', 'natasa', 100504183),
(29, 'The Picture of Dorian Gray ', 'Oscar Wilde', 'English', 0, '2010-07-14', 'aslam', 100504184),
(30, 'Emma ', 'Jane Austen', 'Animal', 0, '2011-09-14', 'john', 100504185),
(31, 'Lord of the Flies ', 'William Golding', 'World', 65, '2012-11-14', 'sanaka', 100504186),
(32, 'The Story of Tracy Beaker ', 'Jacqueline Wilson', 'Geography', 69, '2014-01-15', 'geetha', 100504187),
(33, 'The shining ', 'Stephen King', 'Entertainment', 26, '2015-03-18', 'banu', 100504188),
(34, 'Confessions of a shopaholic ', 'Sophie Kinsella', 'Story', 23, '2000-05-18', 'mohammed', 100504189),
(35, 'Game of Thrones ', 'George R R Martin', 'Mathematics', 5, '2001-01-19', 'natasa', 100504190),
(36, 'Life of Pi ', 'Yann Martel', 'History', 300, '2001-09-22', 'aslam', 100504191),
(37, 'Memoirs of a Geisha ', 'Arthur Golden', 'Kids', 15, '2002-05-26', 'john', 100504192),
(38, 'Far from the Madding Crowd ', 'Thomas Hardy', 'Adults', 25, '2003-01-27', 'sanaka', 100504193),
(39, 'The Magic Faraway Tree ', 'Enid Blyton', 'IT', 36, '2003-09-30', 'geetha', 100504194),
(40, 'Silence of the Lambs ', 'Thomas Harris', 'Science', 36, '2004-06-02', 'banu', 100504195),
(41, 'My Sisters keeper ', 'Jodi Picoult', 'Religious', 15, '2005-02-03', 'mohammed', 100504196),
(42, 'Is It Just Me? ', 'Miranda Hart', 'Account', 62, '2005-10-07', 'natasa', 100504197),
(43, 'Mort ', 'Terry Pratchett', 'Civil', 26, '2006-06-10', 'aslam', 100504198),
(44, 'One Day ', 'David Nicholls', 'Engineering', 26, '2007-02-11', 'john', 100504199),
(45, 'The Kite Runner ', 'Khaled Hosseini', 'English', 312, '2007-10-15', 'sanaka', 100504200),
(46, 'Moby Dick ', 'Herman Neville', 'Animal', 500, '2008-06-17', 'geetha', 100504201),
(47, 'My Booky Wook ', 'Russell Brand', 'World', 52, '2009-02-18', 'banu', 100504202),
(48, 'The Godfather ', 'Mario Puzo', 'Geography', 621, '2009-10-22', 'mohammed', 100504203),
(49, 'The Perks of Being a Wallflower ', 'Stephen Chbosky', 'Entertainment', 6, '2010-06-25', 'natasa', 100504204),
(50, 'Wolf Hall ', 'Hilary Mantel', 'Story', 16, '2011-02-26', 'aslam', 100504205),
(51, 'Brief history of time ', 'Stephen Hawkin', 'Mathematics', 12, '2011-10-30', 'john', 100504206),
(52, 'Men are from Mars Women are from Venus ', 'John Gray', 'History', 21, '2012-07-02', 'sanaka', 100504207),
(53, 'Kane and Abel ', 'Jeffrey Archer', 'Kids', 36, '2013-03-05', 'geetha', 100504208),
(54, 'America Psycho ', 'Bret Easton-Ellis', 'Adults', 12, '2013-11-06', 'banu', 100504209),
(55, 'Artemis Fowl ', 'Eoin Colfer', 'IT', 15, '2014-07-10', 'mohammed', 100504210),
(56, 'Diary of Wimpy Kid ', 'Jeff Kinney', 'Science', 10, '2015-03-13', 'natasa', 100504211),
(57, 'Gone Girl ', 'Gillian Flynn', 'Religious', 83, '2015-11-14', 'aslam', 100504212),
(58, 'The Princess Diaries ', 'Meg Cabot', 'Account', 63, '2016-02-04', 'john', 100504213),
(59, 'Life and Laughing ', 'Michael McIntyre', 'Civil', 44, '2010-02-05', 'sanaka', 100504214),
(60, 'Wonders of the Universe ', 'Brian Cox', 'Engineering', 123, '2010-02-06', 'geetha', 100504215),
(61, 'Call The Midwife: A True Story of the East End in ', 'Jennifer Worth', 'English', 456, '2010-02-07', 'banu', 100504216),
(62, 'One The Road ', 'Jack Kerouac', 'Animal', 123, '2010-02-08', 'mohammed', 100504217),
(63, 'Being Jordan ', 'Katie Price', 'World', 456, '2010-02-09', 'natasa', 100504218),
(64, 'Bradley Wiggins: An Autobiography ', 'Bradley Wiggins', 'Geography', 123, '2010-02-10', 'aslam', 100504219),
(65, 'Cloud Atlas ', 'David Mitchell', 'Entertainment', 472, '2010-02-11', 'john', 100504220),
(66, 'Secret diary of a call girl ', 'Belle de Jour', 'Story', 23, '2010-02-12', 'sanaka', 100504221),
(67, 'How to be a Woman ', 'Caitlin Moran', 'Mathematics', 561, '2010-02-13', 'geetha', 100504222),
(68, 'The Casual Vacancy ', 'JK Rowling', 'History', 23, '2010-02-14', 'banu', 100504223),
(69, 'Riders ', 'Jilly Cooper', 'Kids', 231, '2015-02-20', 'mohammed', 100504224),
(70, 'The Pillars of the Earth ', 'Ken Follet', 'Adults', 1, '2008-02-22', 'natasa', 100504225),
(71, 'Blood of Dragons ', 'Robin Hobb', 'IT', 0, '2009-02-23', 'aslam', 100504226),
(72, 'David Walliams ', 'Mr Stink', 'Science', 1, '2010-02-25', 'john', 100504227),
(73, 'Me Before You ', 'Jojo Moyes', 'Religious', 1, '2011-02-27', 'sanaka', 100504228),
(74, 'Frank Skinner ', 'By Frank Skinner', 'Account', 0, '2012-02-29', 'geetha', 100504229),
(75, 'World War Z ', 'Max Brooks', 'Civil', 122, '2013-03-02', 'banu', 100504230),
(76, 'A thousand Splendid Suns ', 'Khaled Hosseini', 'Engineering', 2, '2014-03-04', 'mohammed', 100504231),
(77, '12th of Never ', 'James Patterson', 'English', 36, '2015-03-06', 'natasa', 100504232),
(78, 'We can remember it for you wholesale ', 'Phillip K Dick', 'Animal', 22, '2001-03-07', 'aslam', 100504233),
(79, 'The Snail and the Whale ', 'Julia Donaldson', 'World', 55, '2002-05-08', 'john', 100504234),
(80, 'Steve Jobs: The Exclusive Biography ', 'Walter Isaacson', 'Geography', 32, '2003-07-09', 'sanaka', 100504235),
(81, 'Still Standing: The Savage Years ', 'Paul O’Grady', 'Entertainment', 15, '2004-09-08', 'geetha', 100504236),
(82, 'Bring up the Bodies ', 'Hilary Mantel', 'Story', 78, '2005-11-09', 'banu', 100504237),
(83, 'The Inside ', 'Piers Morgan', 'Mathematics', 52, '2007-01-10', 'mohammed', 100504238),
(84, 'Football! Bloody Hell ', 'Alex Ferguson', 'History', 95, '2008-03-12', 'natasa', 100504239),
(85, 'The Hundred-Year-Old Man who Climbed out of the Wi', 'Jonas Jonasson', 'Kids', 62, '2009-05-13', 'aslam', 100504240),
(86, 'A Street Cat Named Bob ', 'James Bowen', 'Adults', 15, '2010-07-14', 'john', 100504241),
(87, 'My Animals and Other Family ', 'Clare Balding', 'IT', 12, '2011-09-14', 'sanaka', 100504242),
(88, 'The James Bond Archives ', 'Paul Duncan', 'Science', 20, '2012-11-14', 'geetha', 100504243),
(89, 'Entwined With You ', 'Sylvia Day', 'Religious', 28, '2014-01-15', 'banu', 100504244),
(90, 'Running My Life ', 'Seb Coe', 'Account', 36, '2015-03-18', 'mohammed', 100504245),
(91, 'Ratburger ', 'David Walliams', 'Civil', 44, '2000-05-18', 'natasa', 100504246),
(92, 'The Snow Child ', 'Eowyn Ivey', 'Engineering', 52, '2001-01-19', 'aslam', 100504247),
(93, 'Over the Moon: My Autobiography ', 'David Essex', 'English', 60, '2001-09-22', 'john', 100504248),
(94, 'Honest: My Story So Far ', 'Tulisa Contostavlos', 'Animal', 68, '2002-05-26', 'sanaka', 100504249),
(95, 'Looking for Alaska ', 'John Green', 'World', 76, '2003-01-27', 'geetha', 100504250),
(96, 'The Autobiography of Jack the Ripper ', 'James Carnac', 'Geography', 84, '2003-09-30', 'banu', 100504251),
(97, 'Eloise ', 'Judy Finnigan', 'Entertainment', 92, '2004-06-02', 'mohammed', 100504252),
(105, 'Better Life', 'Khan', 'Health', 100, '2016-09-01', 'aslam', 25252525);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `joindate` date NOT NULL,
  `forgotpassword` varchar(10) NOT NULL,
  `tel` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='User table for ABC Book Company Pvt Ltd By Aslam 68/24' AUTO_INCREMENT=10066 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `status`, `joindate`, `forgotpassword`, `tel`, `role`) VALUES
(10050, 'Anver Mohammed Aslam', 'aslam', '1234', 'Active', '2000-02-08', 'n', '075425262', 'admin'),
(10051, 'Mark John', 'john', '1234', 'Active', '2001-02-09', 'n', '075425263', 'user'),
(10052, 'S.Sanaka', 'sanaka', '1234', 'Active', '2002-02-11', 'n', '075425264', 'user'),
(10053, 'Seether Geetha', 'geetha', '1234', 'Active', '2003-02-13', 'n', '075425265', 'user'),
(10054, 'Fathima Banu', 'banu', '1234', 'Active', '2004-02-15', 'n', '075425266', 'user'),
(10055, 'Mohammed Arkam', 'mohammed', '12345', 'Inactive', '2005-02-16', 'n', '075425267', 'admin'),
(10056, 'Natasa Kusith', 'natasa', '100', 'Active', '2006-02-18', 'y', '075425268', 'admin'),
(10063, 'Aslkam', 'Basheer', 'lk', 'Active', '2016-01-27', 'n', '072', 'user'),
(10065, 'Raja Junakal', 'Raju', '456', 'Active', '2015-10-11', 'n', '0785182533', 'user');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
