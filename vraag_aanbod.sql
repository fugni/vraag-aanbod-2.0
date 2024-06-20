-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for vraag_aanbod
DROP DATABASE IF EXISTS `vraag_aanbod`;
CREATE DATABASE IF NOT EXISTS `vraag_aanbod` /*!40100 DEFAULT CHARACTER SET utf8mb4 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `vraag_aanbod`;

-- Dumping structure for table vraag_aanbod.deleted-posts
DROP TABLE IF EXISTS `deleted-posts`;
CREATE TABLE IF NOT EXISTS `deleted-posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titel` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `intern` tinyint(1) NOT NULL,
  `imagePath` text CHARACTER SET utf8mb4,
  `description` text CHARACTER SET utf8mb4 NOT NULL,
  `notionLink` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `poster` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `werkveld` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Dumping data for table vraag_aanbod.deleted-posts: ~20 rows (approximately)
DELETE FROM `deleted-posts`;
INSERT INTO `deleted-posts` (`id`, `titel`, `intern`, `imagePath`, `description`, `notionLink`, `poster`, `werkveld`, `timestamp`) VALUES
	(7, 'title', 0, 'a', 'a', 'a', 'a', 'a', '2024-05-30 12:35:21'),
	(8, 'title', 0, 'a', 'a', 'a', 'a', 'a', '2024-05-30 12:35:30'),
	(10, 'i dont fucking know', 0, 'a', 'something', 'glu.nl', 'abc', 'aha', '2024-06-06 08:16:08'),
	(11, 'kthyq`chtfbyjg h', 1, 'hgjytjr', '`gbfnb v', 'VHJ', 'JVH', 'HJV', '2024-06-06 08:17:53'),
	(12, 'Flugni', 1, 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.1IoxD8nHXV2ID6z2zI2KiQHaE7%26pid%3DApi&f=1&ipt=35466417b28dcb4b5be93f7df8c06a4a285422a145fe6d218348a4937f0817cd&ipo=images', 'Kind', 'No', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.1IoxD8nHXV2ID6z2zI2KiQHaE7%26pid%3DApi&f=1&ipt=35466417b28dcb4b5be93f7df8c06a4a285422a145fe6d218348a4937f0817cd&ipo=images', 'Therapy', '2024-06-06 08:22:33'),
	(13, 'a', 1, 'a', 'dit = "een quote"', 'a', 'a', 'a', '2024-06-06 08:27:52'),
	(14, 'a', 1, 'a', '<script>     alert("a"); </script>', 'a', 'a', 'a', '2024-06-06 08:28:31'),
	(15, 'alert', 0, 'aadfgh', '<script>alert("<%= post %>")</script>', 'iets', 'a', 'a', '2024-06-06 08:31:26'),
	(16, 'alert', 0, 'aadfgh', '<script>alert("a")</script>', 'iets', 'a', 'a', '2024-06-06 08:31:58'),
	(17, 'alert', 0, 'aadfgh', '<script>alert("<%= post %>")</script>', 'iets', 'a', 'a', '2024-06-06 08:32:18'),
	(18, 'alert', 0, 'aadfgh', '<script>alert("oeps")</script>', 'iets', 'a', 'a', '2024-06-06 08:32:46'),
	(19, 'alert', 0, 'aadfgh', '<script>alert("oeps");</script>', 'iets', 'a', 'a', '2024-06-06 08:33:00'),
	(20, 'alert', 0, 'aadfgh', '<script>alert("oeps");</script>', 'iets', 'a', 'a', '2024-06-06 08:33:11'),
	(21, 'alert', 0, 'aadfgh', '<script>alert("a");</script>', 'iets', 'a', 'a', '2024-06-06 08:33:18'),
	(22, 'alert', 1, 'aadfgh', '<script>alert("a");</script>', 'iets', 'a', 'a', '2024-06-06 08:33:31'),
	(23, 'alert', 1, 'aadfgh', '<script> alert("a"); </script>', 'iets', 'a', 'a', '2024-06-06 08:33:39'),
	(24, 'alert', 1, 'aadfgh', '<script>     alert("a"); </script>', 'iets', 'a', 'a', '2024-06-06 08:34:00'),
	(25, 'wat', 1, 'b', '<script>     alert("a"); </script>', 'b', 'b', 'b', '2024-06-06 08:34:30'),
	(26, 'wat', 1, 'b', '<script>     alert("a"); </script>', 'b', 'b', 'b', '2024-06-06 08:34:48'),
	(27, 'wat', 1, 'b', '""', 'b', 'b', 'b', '2024-06-06 08:35:06');

-- Dumping structure for table vraag_aanbod.posts
DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titel` varchar(255) NOT NULL,
  `intern` tinyint(1) NOT NULL,
  `imagePath` text CHARACTER SET utf8mb4,
  `description` text NOT NULL,
  `notionLink` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `poster` varchar(255) NOT NULL,
  `werkveld` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table vraag_aanbod.posts: ~6 rows (approximately)
DELETE FROM `posts`;
INSERT INTO `posts` (`id`, `titel`, `intern`, `imagePath`, `description`, `notionLink`, `poster`, `werkveld`, `timestamp`) VALUES
	(9, 'vraag & aanbod', 1, 'https://www.notion.so/signed/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F795079d4-91ad-41b2-a7f6-6805a8028286%2F5ba809ac-12d6-4454-b829-8a5e46947e7b%2Fvraag-aanbod-desgin.png?table=block&id=b9211162-b7aa-4372-99f4-a674a3d4f778&spaceId=795079d4-91ad-41b2-a7f6-6805a8028286&name=vraag-aanbod-desgin.png&userId=da2f5bce-c2b7-4f8e-af86-20d1a30d9f73&cache=v2', 'Werknemers kunnen een vraag noteren en mensen ervoor zoeken….', 'https://www.notion.so/het-bureau/Vraag-en-aanbod-web-applicatie-3b33196429ec4a3392bcf6b74603c136', 'sylvie', NULL, '2024-06-06 07:44:55'),
	(28, 'bsnfg', 0, 'g', '<script>     alert("a"); </script>', 'gdfs', 'hs', 'h', '2024-06-06 08:35:20'),
	(29, 'meneer kaas', 1, 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.toiA3-ZBPGwzONg9fogAygEsEs%26pid%3DApi&f=1&ipt=319850941d4f8b869c4aaed17caf07e54953e8fa8e7db8360006195d370e7a2a&ipo=images', 'ik maak kaas', 'https://www.notion.so/het-bureau/Ross-van-Teeffelen-cc555e3c61fb407a8e137b1700f1cc92', 'ross', 'kaas bakker', '2024-06-06 11:28:40'),
	(30, '<script>alert("titel");</script>', 1, '<script>alert("image");</script>', '<script>alert("description");</script>', '<script>alert("notion");</script>', '<script>alert("poster");</script>', '<script>alert("werkveld");</script>', '2024-06-06 11:33:36'),
	(31, '<script>alert("titel");</script>', 1, '<script>alert("image");</script>', '<script>alert("description");</script>', '<script>alert("notion");</script>', '<script>alert("poster");</script>', '<script>alert("werkveld");</script>', '2024-06-06 11:33:58'),
	(32, 'ae4t y5uwi6erl8ti;oiulq', 1, '', 'rgs ', 'sdfg', 'sad', 'rossi', '2024-06-13 08:45:49');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
