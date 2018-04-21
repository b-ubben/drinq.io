--
-- Database: `drinq_io`
--

-- --------------------------------------------------------


--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES 
(1,'admin',CURRENT_TIMESTAMP(),CURRENT_TIMESTAMP()),
(2,'user',CURRENT_TIMESTAMP(),CURRENT_TIMESTAMP());
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;