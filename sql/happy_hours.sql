--
-- Database: `drinq_io`
--

-- --------------------------------------------------------


--
-- Dumping data for table `happy_hours`
--

LOCK TABLES `happy_hours` WRITE;

INSERT INTO `happy_hours` VALUES
(1, 1, 'Wed', '07:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(2, 1, 'Mon', '07:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(3, 2, 'Thu', '09:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(4, 2, 'Tue', '08:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(5, 3, 'Tue', '09:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(6, 3, 'Mon', '09:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(7, 4, 'Tue', '09:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(8, 4, 'Thu', '09:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(9, 5, 'Thu', '07:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(10, 5, 'Mon', '07:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(11, 6, 'Tue', '07:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(12, 6, 'Thu', '09:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(13, 7, 'Tue', '09:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(14, 7, 'Wed', '07:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(15, 9, 'Wed', '08:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(16, 9, 'Mon', '07:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(17, 10, 'Wed', '08:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(18, 10, 'Mon', '08:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(19, 11, 'Tue', '09:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(20, 11, 'Mon', '09:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(21, 12, 'Tue', '09:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(22, 12, 'Wed', '09:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(23, 13, 'Mon', '07:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(24, 13, 'Tue', '09:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(25, 14, 'Tue', '07:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(26, 14, 'Thu', '09:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(27, 15, 'Tue', '08:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(28, 15, 'Mon', '09:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(29, 16, 'Wed', '07:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(30, 16, 'Thu', '08:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(31, 17, 'Mon', '07:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(32, 17, 'Tue', '08:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(33, 18, 'Tue', '08:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(34, 18, 'Mon', '07:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(35, 19, 'Thu', '08:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(36, 19, 'Tue', '09:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(37, 20, 'Mon', '08:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(38, 20, 'Thu', '07:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(39, 21, 'Wed', '07:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(40, 21, 'Mon', '08:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(41, 22, 'Thu', '08:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(42, 22, 'Tue', '09:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(43, 25, 'Mon', '09:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(44, 25, 'Wed', '09:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(45, 26, 'Mon', '07:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(46, 26, 'Thu', '08:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(47, 27, 'Mon', '07:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(48, 27, 'Thu', '08:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(49, 28, 'Tue', '08:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(50, 28, 'Wed', '09:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(51, 29, 'Tue', '08:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(52, 29, 'Mon', '07:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(53, 30, 'Mon', '09:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(54, 30, 'Thu', '09:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(55, 31, 'Wed', '08:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(56, 31, 'Thu', '08:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(57, 32, 'Thu', '08:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(58, 32, 'Wed', '08:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(59, 33, 'Wed', '09:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(60, 33, 'Tue', '09:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(61, 34, 'Mon', '07:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(62, 34, 'Thu', '07:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(63, 35, 'Wed', '07:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(64, 35, 'Tue', '08:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(65, 36, 'Tue', '08:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(66, 36, 'Thu', '07:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(67, 37, 'Mon', '09:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(68, 37, 'Tue', '09:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(69, 38, 'Tue', '08:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(70, 38, 'Mon', '09:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(71, 39, 'Mon', '08:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(72, 39, 'Thu', '09:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(73, 40, 'Tue', '08:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(74, 40, 'Wed', '07:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(75, 41, 'Mon', '08:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(76, 41, 'Wed', '08:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(77, 42, 'Wed', '07:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(78, 42, 'Mon', '08:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(79, 43, 'Tue', '08:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(80, 43, 'Thu', '09:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(81, 44, 'Tue', '07:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(82, 44, 'Wed', '08:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(83, 45, 'Tue', '09:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(84, 45, 'Wed', '09:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(85, 46, 'Wed', '09:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(86, 46, 'Tue', '07:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(87, 47, 'Thu', '09:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(88, 47, 'Mon', '08:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(89, 48, 'Mon', '09:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(90, 48, 'Thu', '08:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(91, 49, 'Thu', '07:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(92, 49, 'Wed', '09:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(93, 50, 'Mon', '07:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(94, 50, 'Tue', '09:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(95, 51, 'Thu', '09:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(96, 51, 'Tue', '07:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(97, 52, 'Tue', '08:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(98, 52, 'Wed', '08:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(99, 53, 'Tue', '07:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(100, 53, 'Mon', '07:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(101, 54, 'Tue', '09:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(102, 54, 'Mon', '08:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(103, 55, 'Thu', '08:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(104, 55, 'Wed', '09:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(105, 56, 'Tue', '08:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(106, 56, 'Thu', '08:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(107, 57, 'Thu', '07:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(108, 57, 'Wed', '07:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(109, 58, 'Tue', '07:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(110, 58, 'Thu', '09:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(111, 59, 'Mon', '09:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(112, 59, 'Wed', '08:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(113, 60, 'Wed', '07:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(114, 60, 'Thu', '07:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(115, 61, 'Mon', '09:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(116, 61, 'Thu', '07:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(117, 62, 'Wed', '07:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(118, 62, 'Mon', '08:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(119, 63, 'Wed', '07:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(120, 63, 'Mon', '08:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(121, 64, 'Wed', '08:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(122, 64, 'Mon', '07:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(123, 65, 'Wed', '07:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(124, 65, 'Tue', '07:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(125, 66, 'Mon', '09:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(126, 66, 'Thu', '07:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(127, 67, 'Thu', '08:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(128, 67, 'Tue', '09:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(129, 68, 'Thu', '07:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(130, 68, 'Mon', '09:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(131, 69, 'Thu', '09:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(132, 69, 'Wed', '08:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(133, 70, 'Mon', '09:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(134, 70, 'Tue', '08:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(135, 71, 'Wed', '07:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(136, 71, 'Tue', '08:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(137, 72, 'Thu', '07:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(138, 72, 'Mon', '08:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(139, 73, 'Tue', '07:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(140, 73, 'Thu', '07:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(141, 74, 'Wed', '07:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(142, 74, 'Thu', '09:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(143, 75, 'Wed', '09:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(144, 75, 'Tue', '08:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(145, 76, 'Mon', '09:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(146, 76, 'Tue', '08:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(147, 77, 'Mon', '09:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(148, 77, 'Wed', '08:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(149, 78, 'Mon', '09:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(150, 78, 'Tue', '07:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(151, 79, 'Wed', '08:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(152, 79, 'Tue', '07:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(153, 80, 'Tue', '09:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(154, 80, 'Thu', '07:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(155, 81, 'Mon', '09:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(156, 81, 'Tue', '09:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(157, 82, 'Tue', '07:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(158, 82, 'Mon', '08:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(159, 83, 'Thu', '07:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(160, 83, 'Wed', '07:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(161, 84, 'Tue', '09:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(162, 84, 'Wed', '09:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(163, 85, 'Mon', '09:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(164, 85, 'Wed', '07:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(165, 86, 'Mon', '07:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(166, 86, 'Wed', '07:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(167, 87, 'Tue', '07:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(168, 87, 'Mon', '09:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(169, 88, 'Wed', '07:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(170, 88, 'Mon', '08:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(171, 89, 'Mon', '08:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(172, 89, 'Thu', '09:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(173, 90, 'Wed', '07:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(174, 90, 'Thu', '09:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(175, 91, 'Tue', '09:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(176, 91, 'Thu', '08:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(177, 92, 'Wed', '07:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(178, 92, 'Thu', '07:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(179, 93, 'Mon', '07:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(180, 93, 'Tue', '07:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(181, 94, 'Mon', '09:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(182, 94, 'Thu', '08:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(183, 95, 'Mon', '08:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(184, 95, 'Tue', '08:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(185, 96, 'Wed', '08:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(186, 96, 'Thu', '07:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(187, 97, 'Tue', '07:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(188, 97, 'Mon', '09:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(189, 98, 'Wed', '07:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(190, 98, 'Tue', '09:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(191, 99, 'Wed', '08:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(192, 99, 'Mon', '07:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(193, 100, 'Thu', '08:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(194, 100, 'Tue', '08:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(195, 101, 'Wed', '07:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(196, 101, 'Mon', '07:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(197, 102, 'Thu', '07:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(198, 102, 'Tue', '09:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(199, 103, 'Wed', '09:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(200, 103, 'Tue', '08:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(201, 104, 'Tue', '07:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(202, 104, 'Mon', '08:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(203, 105, 'Tue', '07:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(204, 105, 'Thu', '07:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(205, 106, 'Tue', '08:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(206, 106, 'Thu', '09:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(207, 107, 'Thu', '08:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(208, 107, 'Wed', '08:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(209, 108, 'Wed', '08:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(210, 108, 'Thu', '07:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(211, 109, 'Tue', '08:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(212, 109, 'Mon', '09:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(213, 110, 'Tue', '08:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(214, 110, 'Mon', '09:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(215, 111, 'Wed', '09:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(216, 111, 'Thu', '09:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(217, 112, 'Mon', '09:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(218, 112, 'Wed', '09:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(219, 113, 'Tue', '09:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(220, 113, 'Mon', '09:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(221, 114, 'Thu', '08:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(222, 114, 'Mon', '08:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(223, 115, 'Thu', '09:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(224, 115, 'Mon', '07:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(225, 116, 'Wed', '09:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(226, 116, 'Mon', '09:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(227, 117, 'Mon', '07:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(228, 117, 'Thu', '07:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(229, 118, 'Mon', '07:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(230, 118, 'Wed', '08:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(231, 119, 'Mon', '07:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(232, 119, 'Thu', '09:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(233, 121, 'Wed', '09:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(234, 121, 'Mon', '07:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(235, 122, 'Wed', '08:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(236, 122, 'Tue', '07:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(237, 123, 'Thu', '07:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(238, 123, 'Wed', '07:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(239, 124, 'Mon', '09:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(240, 124, 'Tue', '08:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(241, 125, 'Mon', '08:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(242, 125, 'Thu', '09:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(243, 126, 'Mon', '09:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(244, 126, 'Wed', '09:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(245, 127, 'Thu', '09:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(246, 127, 'Tue', '07:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(247, 128, 'Mon', '08:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(248, 128, 'Thu', '07:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(249, 129, 'Wed', '08:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(250, 129, 'Thu', '08:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(251, 130, 'Tue', '08:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(252, 130, 'Thu', '08:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(253, 131, 'Mon', '08:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(254, 131, 'Tue', '07:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(255, 132, 'Thu', '07:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(256, 132, 'Wed', '09:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(257, 133, 'Tue', '07:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(258, 133, 'Mon', '09:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(259, 134, 'Wed', '08:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(260, 134, 'Tue', '08:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(261, 135, 'Wed', '08:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(262, 135, 'Tue', '08:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(263, 136, 'Tue', '07:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(264, 136, 'Mon', '07:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(265, 137, 'Thu', '08:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(266, 137, 'Wed', '07:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(267, 138, 'Mon', '08:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(268, 138, 'Wed', '09:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(269, 139, 'Wed', '07:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(270, 139, 'Mon', '07:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(271, 140, 'Tue', '08:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(272, 140, 'Wed', '07:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(273, 141, 'Wed', '07:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(274, 141, 'Thu', '09:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(275, 142, 'Tue', '08:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(276, 142, 'Wed', '08:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(277, 143, 'Thu', '07:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(278, 143, 'Tue', '07:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(279, 144, 'Mon', '09:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(280, 144, 'Tue', '09:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(281, 145, 'Tue', '07:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(282, 145, 'Thu', '09:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(283, 146, 'Thu', '09:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(284, 146, 'Wed', '09:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(285, 147, 'Tue', '09:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(286, 147, 'Thu', '09:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(287, 148, 'Thu', '07:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(288, 148, 'Mon', '07:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(289, 149, 'Wed', '09:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(290, 149, 'Thu', '09:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(291, 150, 'Mon', '09:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(292, 150, 'Thu', '07:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(293, 151, 'Tue', '09:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(294, 151, 'Mon', '07:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(295, 152, 'Thu', '09:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(296, 152, 'Tue', '09:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(297, 153, 'Mon', '09:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(298, 153, 'Wed', '09:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(299, 154, 'Wed', '09:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(300, 154, 'Thu', '09:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(301, 155, 'Thu', '08:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(302, 155, 'Tue', '09:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(303, 156, 'Mon', '09:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(304, 156, 'Wed', '07:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(305, 157, 'Thu', '08:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(306, 157, 'Wed', '08:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(307, 158, 'Tue', '09:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(308, 158, 'Mon', '08:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(309, 159, 'Mon', '08:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(310, 159, 'Tue', '07:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(311, 160, 'Thu', '07:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(312, 160, 'Tue', '08:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(313, 161, 'Wed', '09:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(314, 161, 'Thu', '07:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(315, 162, 'Thu', '08:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(316, 162, 'Mon', '08:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(317, 163, 'Tue', '08:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(318, 163, 'Wed', '07:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(319, 164, 'Tue', '09:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(320, 164, 'Mon', '09:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(321, 165, 'Mon', '08:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(322, 165, 'Wed', '09:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(323, 166, 'Thu', '09:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(324, 166, 'Wed', '07:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(325, 167, 'Wed', '08:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(326, 167, 'Mon', '09:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(327, 168, 'Mon', '08:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(328, 168, 'Wed', '08:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(329, 169, 'Wed', '09:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(330, 169, 'Thu', '07:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(331, 170, 'Thu', '09:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(332, 170, 'Wed', '07:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(333, 171, 'Mon', '07:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(334, 171, 'Thu', '09:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(335, 172, 'Wed', '08:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(336, 172, 'Thu', '08:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(337, 173, 'Wed', '07:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(338, 173, 'Mon', '07:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(339, 174, 'Wed', '07:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(340, 174, 'Mon', '07:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(341, 175, 'Thu', '08:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(342, 175, 'Mon', '08:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(343, 176, 'Wed', '08:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(344, 176, 'Thu', '07:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(345, 177, 'Mon', '07:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(346, 177, 'Tue', '07:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(347, 178, 'Tue', '09:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(348, 178, 'Mon', '08:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(349, 179, 'Tue', '09:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(350, 179, 'Wed', '07:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(351, 180, 'Wed', '07:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(352, 180, 'Mon', '07:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(353, 181, 'Tue', '09:00:00', '03:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(354, 181, 'Wed', '08:00:00', '11:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(355, 182, 'Tue', '09:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(356, 182, 'Wed', '09:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(357, 183, 'Mon', '08:00:00', '01:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(358, 183, 'Wed', '07:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(359, 184, 'Wed', '09:00:00', '00:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(360, 184, 'Thu', '07:00:00', '10:00:00', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP());

UNLOCK TABLES;