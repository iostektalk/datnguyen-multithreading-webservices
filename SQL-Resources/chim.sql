
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 09, 2016 at 05:45 AM
-- Server version: 10.0.20-MariaDB
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `u288487191_tmdt`
--

-- --------------------------------------------------------

--
-- Table structure for table `chim`
--

CREATE TABLE IF NOT EXISTS `chim` (
  `idChim` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tenChim` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hinhChim` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idChim`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- Dumping data for table `chim`
--

INSERT INTO `chim` (`idChim`, `tenChim`, `hinhChim`) VALUES
(1, 'Chim đỏ', 'http://icons.iconarchive.com/icons/femfoyou/angry-birds/1024/angry-bird-icon.png'),
(2, 'Chim đen', 'http://icons.iconarchive.com/icons/femfoyou/angry-birds/1024/angry-bird-black-icon.png'),
(3, 'Chim vàng', 'http://icons.iconarchive.com/icons/femfoyou/angry-birds/1024/angry-bird-yellow-icon.png'),
(4, 'Chim hồng', 'http://vignette1.wikia.nocookie.net/angrybirds/images/1/1d/20130404-stella.png/revision/latest?cb=20130404030635'),
(5, 'Chim xanh', 'https://s-media-cache-ak0.pinimg.com/originals/d5/8f/d4/d58fd4677725c41f3da6ad862d922809.png'),
(6, 'Chim xanh dương', 'http://www.cartoonswallpapers.net/wallpapers/angry-birds-blue-bird-cartoon-background-image-pc.jpg'),
(7, 'Chim trắng', 'http://icons.iconarchive.com/icons/femfoyou/angry-birds/1024/angry-bird-white-icon.png'),
(8, 'Chim nâu', 'http://vignette2.wikia.nocookie.net/angrybirds/images/4/4a/AB_Orange_Bird4.png/revision/20121222162112'),
(9, 'Chim không màu', 'http://3.bp.blogspot.com/-N4FzMMrivuE/UV6mWNv2XoI/AAAAAAAAByA/Y82PGZPn2eI/s1600/yellow-bird-angry-birds-coloring-pages.jpg'),
(10, 'Chim dễ thương', 'http://vignette3.wikia.nocookie.net/angrybirdsfanon/images/1/19/Angry_bird_red_girl.jpg/revision/latest?cb=20130301135155'),
(11, 'Chim vua', 'https://s-media-cache-ak0.pinimg.com/236x/2b/e5/80/2be58099208bcc2e74cc92d78da3df3b.jpg'),
(12, 'Chim phi công', 'http://bknation.org/wp-content/uploads/2014/09/bknation_Angry-Birds.jpg.jpg'),
(13, 'chim Mario', 'http://www.jogosfriv.club/wp-content/uploads/2015/05/Gaming1.jpg'),
(14, 'Chim bom', 'http://iceflowstudios.com/v3/wp-content/uploads/2012/03/BlackAngryBird.jpg'),
(15, 'Chim Noel', 'https://pajamasmed.hs.llnwd.net/e1/user-content/36/files/2012/12/angry-birds-christmas-logo.jpg'),
(16, 'Chim tình yêu', 'http://vignette2.wikia.nocookie.net/angrybirdsfanon/images/c/c3/Sakura_Bird_Official.jpg/revision/latest?cb=20121017094721'),
(17, 'Chim chúm chím', 'https://geartaker.files.wordpress.com/2011/11/angry-birds-white-valentine.jpg'),
(18, 'Chim ba lô', 'http://quatructuyen.com/wp-content/uploads/2015/05/balo-angry-birds-loai-lon-5.jpg'),
(19, 'Chim trứng', 'http://androidspin.com/wp-content/uploads/2011/04/angrybirds-easter-icon.png'),
(20, 'Chim người máy', 'http://www.superhappycashcow.com/pic/2009%20New%20Figure/Angry-Birds-20141121.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
