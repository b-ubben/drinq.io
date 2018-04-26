--
-- Database: `drinq_io`
--

-- --------------------------------------------------------


--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;

INSERT INTO `locations` VALUES
(1, 'Idle Hour', 34.1583859, -118.3699943, '4824 Vineland Ave, Los Angeles', ' Los Angeles', 91601, 'US', 'CA', '(818) 980-5604', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(2, 'Roppongi Asian Tapas Bar & Sushi', 34.093915, -118.377508, '8535 Sunset Blvd #1, West Hollywood', ' West Hollywood', 90069, 'US', 'CA', '(310) 289-0030', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(3, 'Bar Louie', 34.2404988, -118.556436, '9301 Tampa Ave Suite# 218, Northridge', ' Northridge', 91324, 'US', 'CA', '(747) 224-5900', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(4, 'The Federal Bar', 34.167156, -118.376339, '5303 Lankershim Blvd, North Hollywood', ' North Hollywood', 91601, 'US', 'CA', '(818) 980-2555', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(5, 'The Local Peasant', 34.1491984, -118.4392045, '3532, 14058 Ventura Blvd, Sherman Oaks', ' 14058 Ventura Blvd, Sherman Oaks', 91423, 'US', 'CA', '(818) 501-0234', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(6, 'Big Wangs North Hollywood', 34.167584, -118.375598, '5300 Lankershim Blvd, North Hollywood', ' North Hollywood', 91601, 'US', 'Los Angeles County', '(818) 985-2449', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(7, 'Black Market Liquor Bar', 34.143198, -118.391145, '2607, 11915 Ventura Blvd, Studio City', ' 11915 Ventura Blvd, Studio City', 91604, 'US', 'CA', '(818) 446-2533', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(9, 'The Local Peasant - Woodland Hills', 34.165721, -118.6253058, '22901 Ventura Blvd, Woodland Hills', ' Woodland Hills', 91364, 'US', 'CA', '(818) 876-0105', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(10, 'Buffalo Wild Wings', 34.2400354, -118.5568605, '9301 Tampa Ave, Northridge', ' Northridge', 91324, 'US', 'CA', '(818) 886-8520', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(11, 'Tiki No', 34.155478, -118.369171, '4657 Lankershim Blvd, North Hollywood', ' North Hollywood', 91602, 'US', 'CA', '(818) 766-0116', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(12, 'Hyperion Public', 34.1457196, -118.4160795, '12969 Ventura Blvd, Studio City', ' Studio City', 91604, 'US', 'CA', '(818) 464-3750', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(13, 'The Fat Dog', 34.1646727, -118.3722762, '11050 W Magnolia Blvd, North Hollywood', ' North Hollywood', 91601, 'US', 'CA', '(818) 985-3644', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(14, 'Cabo Cantina', 34.0965994, -118.3705157, '8301 Sunset Blvd, West Hollywood', ' West Hollywood', 90069, 'US', 'CA', '(323) 822-7820', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(15, 'Vino Wine & Tapas Room', 34.1647823, -118.525974, '18046 W Ventura Blvd, Encino', ' Encino', 91316, 'US', 'CA', '(818) 343-2525', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(16, 'Buffalo Wild Wings', 34.2842322, -118.7724051, '1555 Simi Town Center Way, Simi Valley', ' Simi Valley', 93065, 'US', 'CA', '(805) 520-5815', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(17, 'Claim Jumper Restaurants', 34.241608, -118.5542876, '9429 Tampa Ave, Northridge', ' Northridge', 91324, 'US', 'CA', '(818) 718-2882', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(18, 'Applebee’s Grill + Bar', 34.2389548, -118.5715845, '9255 Winnetka Ave, Chatsworth', ' Chatsworth', 91311, 'US', 'CA', '(818) 885-6519', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(19, 'Newhall Refinery', 34.3782731, -118.5272377, '24258 Main St, Santa Clarita', ' Santa Clarita', 91321, 'US', 'CA', '(661) 388-4477', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(20, 'EMC Seafood & Raw Bar', 34.1847964, -118.6050313, '6252 Topanga Canyon Blvd #1695, Woodland Hills', ' Woodland Hills', 91367, 'US', 'CA', '(818) 704-1899', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(21, 'Buffalo Wild Wings', 34.1553439, -118.467014, '15301 Ventura Blvd P16, Sherman Oaks', ' Sherman Oaks', 91403, 'US', 'CA', '(818) 728-9640', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(22, 'Gyu-Kaku Japanese BBQ', 34.191026, -118.6023847, '6600 Topanga Canyon Blvd #1010B, Canoga Park', ' Canoga Park', 91303, 'US', 'CA', '(818) 888-4030', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(25, 'Freddy Smalls Bar and Kitchen', 34.0330947, -118.4424516, '11520 W Pico Blvd, Los Angeles', ' Los Angeles', 90064, 'US', 'CA', '(310) 479-3000', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(26, 'Plan Check Kitchen + Bar', 34.0439004, -118.4459537, '1800 Sawtelle Blvd, Los Angeles', ' Los Angeles', 90025, 'US', 'CA', '(310) 444-1411', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(27, 'The Tuck Room Tavern', 34.0593064, -118.441169, '10850 Wilshire Blvd, Los Angeles', ' Los Angeles', 90024, 'US', 'CA', '(310) 307-7004', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(28, 'The Arsenal', 34.029555, -118.449396, '12012 W Pico Blvd, Los Angeles', ' Los Angeles', 90064, 'US', 'CA', '(310) 575-5511', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(29, 'Cabo Cantina', 34.0477975, -118.4632247, '11829 Wilshire Blvd, Los Angeles', ' Los Angeles', 90025, 'US', 'CA', '(310) 312-5840', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(30, 'BRÜ HAUS', 34.047708, -118.4633227, '11831 Wilshire Blvd, Los Angeles', ' Los Angeles', 90025, 'US', 'CA', '(310) 473-2337', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(31, 'Kravings', 34.170882, -118.540465, '18663 Ventura Blvd, Tarzana', ' Tarzana', 91356, 'US', 'CA', '(818) 881-7111', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(32, 'Izakaya M', 34.1479811, -118.4294289, '13573 Ventura Blvd, Sherman Oaks', ' Sherman Oaks', 91423, 'US', 'CA', '(818) 981-0078', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(33, 'The Craftsman Bar and Kitchen', 34.0132933, -118.4960296, '119 Broadway, Santa Monica', ' Santa Monica', 90401, 'US', 'CA', '(310) 573-8426', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(34, 'Bodega Wine Bar', 34.018322, -118.4893316, '814 Broadway, Santa Monica', ' Santa Monica', 90401, 'US', 'CA', '(310) 394-3504', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(35, 'Bellini Osteria Bar & Lounge', 34.153146, -118.828357, '951 S Westlake Blvd #102, Westlake Village', ' Westlake Village', 91361, 'US', 'CA', '(805) 497-8482', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(36, 'The Misfit Restaurant + Bar', 34.0154415, -118.4966681, '225 Santa Monica Blvd, Santa Monica', ' Santa Monica', 90401, 'US', 'CA', '(310) 656-9800', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(37, 'Cabo Cantina', 34.0173298, -118.4985077, '1240 3rd Street Promenade, Santa Monica', ' Santa Monica', 90401, 'US', 'CA', '(310) 393-5755', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(38, 'The Independence', 34.0138334, -118.4954805, '205 Broadway, Santa Monica', ' Santa Monica', 90401, 'US', 'CA', '(310) 458-2500', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(39, 'Plan Check Kitchen + Bar', 34.0143136, -118.4974533, '1401 Ocean Ave #104, Santa Monica', ' Santa Monica', 11230, 'US', 'NY', '(310) 857-1364', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(40, 'Stella Barra Pizzeria', 34.0066943, -118.4887008, '2000 Main St, Santa Monica', ' Santa Monica', 90405, 'US', 'CA', '(310) 396-9250', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(41, 'Esters Wine Shop & Bar', 34.0193796, -118.4936477, '1314 7th St, Santa Monica', ' Santa Monica', 90401, 'US', 'CA', '(310) 899-6900', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(42, 'Buffalo Wild Wings', 34.1818032, -118.3114759, '127 Palm Ave, Burbank', ' Burbank', 91502, 'US', 'CA', '(818) 524-2373', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(43, 'Buffalo Wild Wings', 34.4153727, -118.4713281, '19252 Soledad Canyon Rd, Canyon Country', ' Canyon Country', 91351, 'US', 'CA', '(661) 250-9464', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(44, 'The Snug Burbank', 34.1662058, -118.3513444, '4108 W Magnolia Blvd, Burbank', ' Burbank', 91505, 'US', 'CA', '(818) 557-0018', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(45, 'Lazy Dog Restaurant & Bar', 34.4145321, -118.5580007, '24201 Valencia Blvd, Santa Clarita', ' Santa Clarita', 91355, 'US', 'CA', '(661) 253-9996', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(46, 'EMC Seafood & Raw Bar', 34.0633726, -118.2990036, '3500 W 6th St #101, Los Angeles', ' Los Angeles', 90020, 'US', 'CA', '(213) 351-9988', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(47, 'Rascal', 34.0604192, -118.3449173, '801 South La Brea Ave, Los Angeles', ' Los Angeles', 90036, 'US', 'CA', '(323) 933-3229', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(48, 'The Well', 34.0987452, -118.3252963, '6255 Sunset Blvd, Los Angeles', ' Los Angeles', 90028, 'US', 'CA', '(323) 467-9355', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(49, 'Buffalo Wild Wings', 34.101347, -118.343564, '7060 Hollywood Blvd, Los Angeles', ' Los Angeles', 90028, 'US', 'CA', '(323) 466-1721', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(50, 'Harlowe Bar', 34.091019, -118.3495219, '7321 Santa Monica Blvd, West Hollywood', ' West Hollywood', 90046, 'US', 'CA', '(323) 876-5839', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(51, 'Vinoteca Farfalla', 34.107341, -118.287152, '1968 Hillhurst Ave, Los Angeles', ' Los Angeles', 90027, 'US', 'CA', '(323) 661-8070', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(52, 'Saint Felix Hollywood', 34.0999856, -118.3293909, '1602 N Cahuenga Blvd, Hollywood', ' Hollywood', 90028, 'US', 'CA', '(323) 469-5001', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(53, 'R Bar', 34.057872, -118.301092, '3331 W 8th St, Los Angeles', ' Los Angeles', 90005, 'US', 'CA', '(213) 387-7227', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(54, 'Plan Check Kitchen + Bar', 34.0776525, -118.361609, '351 N Fairfax Ave, Los Angeles', ' Los Angeles', 90036, 'US', 'CA', '(323) 591-0094', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(55, 'Bar Chloe', 34.0139633, -118.4956529, '1449 2nd St, Santa Monica', ' Santa Monica', 90401, 'US', 'CA', '(310) 899-6999', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(56, 'Sara The Wine Bar', 34.0103705, -118.4148465, '3936 Sepulveda Blvd, Culver City', ' Culver City', 90230, 'US', 'CA', '(310) 313-5522', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(57, 'The Upper West', 34.027195, -118.454965, '3321 Pico Blvd, Santa Monica', ' Santa Monica', 90405, 'US', 'CA', '(310) 586-1111', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(58, '901 Bar and Grill', 34.025583, -118.2773206, '2902 S Figueroa St, Los Angeles', ' Los Angeles', 90007, 'US', 'CA', '(213) 745-7900', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(59, 'Nineteen26 Bar & Lounge', 34.1772307, -118.3042364, '549 South San Fernando Boulevard, Inside the SpringHill Suites, Burbank', ' Inside the SpringHill Suites, Burbank', 91502, 'US', 'CA', '(818) 524-2751', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(60, 'Howl at the Moon Hollywood', 34.1358566, -118.3537676, '1000 Universal Studios Blvd, Universal City', ' Universal City', 91608, 'US', 'CA', '(818) 755-9970', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(61, 'The Bunker Hill Bar & Grill', 34.0507938, -118.2538957, '601 W 5th St R 201, Los Angeles', ' Los Angeles', 90071, 'US', 'CA', '(213) 688-2988', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(62, 'Plan Check Kitchen + Bar', 34.0525983, -118.2634476, '1111 Wilshire Blvd, Los Angeles', ' Los Angeles', 90017, 'US', 'CA', '(213) 403-1616', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(63, 'Far Bar', 34.0497487, -118.2394595, '347 E 1st St, Los Angeles', ' Los Angeles', 90012, 'US', 'CA', '(213) 617-9990', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(64, 'Pour Haus Wine Bar', 34.035567, -118.2337785, '1820 Industrial St, Los Angeles', ' Los Angeles', 90021, 'US', 'CA', '(213) 327-0304', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(65, 'La Cuevita', 34.1106852, -118.1901841, '5922 N Figueroa St, Los Angeles', ' Los Angeles', 90042, 'US', 'CA', '(323) 255-6871', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(66, 'The Thirsty Crow', 34.0836876, -118.2737454, '2939 Sunset Blvd, Los Angeles', ' Los Angeles', 90026, 'US', 'CA', '(323) 661-6007', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(67, 'Hopdoddy Burger Bar', 33.9032347, -118.3951119, '830 S Sepulveda Blvd, El Segundo', ' El Segundo', 90245, 'US', 'CA', '(310) 414-2337', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(68, 'Beachside Restaurant & Bar', 33.982643, -118.457681, '4175 Admiralty Way, Marina Del Rey', ' Marina Del Rey', 90292, 'US', 'CA', '(310) 439-3033', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(69, 'The Detour Bistro Bar', 33.9970378, -118.4305491, '12473 W Washington Blvd, Los Angeles', ' Los Angeles', 90066, 'US', 'CA', '(424) 289-8191', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(70, 'Hopdoddy Burger Bar - Playa Vista', 33.9763559, -118.4178031, '12746 W Jefferson Blvd #1120, Playa Vista', ' Playa Vista', 90094, 'US', 'CA', '(310) 410-2337', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(71, 'Library Bar', 34.0490543, -118.2564433, '630 W 6th St #116a, Los Angeles', ' Los Angeles', 90017, 'US', 'CA', '(213) 614-0053', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(72, 'Bodega Wine Bar', 34.145415, -118.1450924, '300 E Colorado Blvd, Pasadena', ' Pasadena', 91129, 'US', 'CA', '(626) 793-4300', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(73, 'The Blind Donkey', 34.14688, -118.149231, '53 Union St, Pasadena', ' Pasadena', 91103, 'US', 'CA', '(626) 792-1833', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(74, 'La Cita Bar', 34.0507765, -118.2497875, '336 S Hill St, Los Angeles', ' Los Angeles', 90013, 'US', 'CA', '(213) 687-7111', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(75, 'Bar Amá', 34.0484149, -118.247928, '118 W 4th St, Los Angeles', ' Los Angeles', 90013, 'US', 'CA', '(213) 687-8002', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(76, 'Yard House', 34.0450724, -118.2656259, '800 W Olympic Blvd A-115, Los Angeles', ' Los Angeles', 90015, 'US', 'CA', '(213) 745-9273', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(77, 'Tavern on Brand', 34.148489, -118.25477, '208 N Brand Blvd, Glendale', ' Glendale', 91203, 'US', 'CA', '(818) 291-1926', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(78, 'Mediterraneo', 34.1489549, -118.8178414, '4024, 32037 Agoura Rd, Westlake Village', ' 32037 Agoura Rd, Westlake Village', 91361, 'US', 'CA', '(818) 889-9105', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(79, 'Draughts Restaurant and Bar', 34.1836856, -118.8742141, '398 N Moorpark Rd, Thousand Oaks', ' Thousand Oaks', 91360, 'US', 'CA', '(805) 777-7883', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(80, 'Farfalla Westlake', 34.1585945, -118.8215186, '160 Promenade Way, Westlake Village', ' Westlake Village', 91362, 'US', 'CA', '(805) 497-2283', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(81, 'Prime Steakhouse', 34.1425138, -118.7574941, '29020 Agoura Rd, Agoura Hills', ' Agoura Hills', 91301, 'US', 'CA', '(818) 292-5111', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(82, 'Bandits Grill & Bar', 34.1856117, -118.8760854, '589 N Moorpark Rd, Thousand Oaks', ' Thousand Oaks', 91360, 'US', 'CA', '(805) 497-7427', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(83, 'The Alamo Bar & Grill', 34.1821819, -118.9288327, '2311 Borchard Rd, Newbury Park', ' Newbury Park', 91320, 'US', 'CA', '(805) 498-3115', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(84, 'Outback Steakhouse', 34.1795047, -118.8745958, '137 Thousand Oaks Blvd, Thousand Oaks', ' Thousand Oaks', 91360, 'US', 'CA', '(805) 381-1590', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(85, 'Arena Sports Grill and Bar', 34.2837069, -118.7812971, '999 Enchanted Way, Simi Valley', ' Simi Valley', 93065, 'US', 'CA', '(805) 583-2000', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(86, 'Sunset Terrace Restaurant', 34.1827136, -118.8783091, '235 N Moorpark Rd g, Thousand Oaks', ' Thousand Oaks', 91360, 'US', 'CA', '(805) 497-4847', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(87, 'RA Sushi Bar Restaurant', 34.000566, -117.729141, '13925 City Center Dr #2065, Chino Hills', ' Chino Hills', 91709, 'US', 'CA', '(909) 902-0044', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(88, 'Wingnuts', 34.0865156, -117.6696736, '1520 N Mountain Ave #111, Ontario', ' Ontario', 91762, 'US', 'CA', '(909) 391-1500', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(89, 'Roundin 3rd Sports Bar & Grill', 34.1218172, -117.6369959, '1041 E 16th St, Upland', ' Upland', 91784, 'US', 'CA', '(909) 981-4700', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(90, 'Applebee’s Grill + Bar', 34.127915, -117.890372, '377 N Citrus Ave, Azusa', ' Azusa', 91702, 'US', 'CA', '(626) 334-5103', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(91, 'Buffalo Wild Wings', 34.0747494, -117.8912672, '2548 E Workman Ave, West Covina', ' West Covina', 91791, 'US', 'CA', '(626) 967-9888', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(92, 'Eureka!', 34.0944634, -117.7217266, '580 W 1st St, Claremont', ' Claremont', 91711, 'US', 'CA', '(909) 445-8875', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(93, 'Applebee’s Grill + Bar', 34.1045202, -117.8183415, '674 W Arrow Hwy, San Dimas', ' San Dimas', 91773, 'US', 'CA', '(909) 394-7600', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(94, 'Applebee’s Grill + Bar', 34.0278767, -117.8356236, '21625 E Valley Blvd, Walnut', ' Walnut', 91789, 'US', 'CA', '(909) 594-1140', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(95, 'Yard House', 33.918787, -117.898693, '160 S Brea Blvd, Brea', ' Brea', 92821, 'US', 'CA', '(714) 529-9273', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(96, 'Tequila Hoppers Bar & Grill', 34.0946852, -117.6697481, '60 N Mountain Ave, Upland', ' Upland', 91786, 'US', 'CA', '(909) 985-9114', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(97, 'Applebee’s Grill + Bar', 34.086373, -117.6979014, '9241 Monte Vista Ave, Montclair', ' Montclair', 91763, 'US', 'CA', '(909) 624-5555', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(98, 'Applebee’s Grill + Bar', 33.998263, -117.718393, '3956 Grand Ave, Chino', ' Chino', 91710, 'US', 'CA', '(909) 590-7844', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(99, 'Yard House', 34.001084, -117.732083, '13881 Peyton Dr, Chino Hills', ' Chino Hills', 91709, 'US', 'CA', '(909) 590-9424', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(100, 'Lazy Dog Restaurant & Bar', 33.9115977, -117.8856248, '240 S State College Blvd, Brea', ' Brea', 92821, 'US', 'CA', '(714) 529-9300', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(101, 'Buffalo Wild Wings', 34.011295, -117.7366534, '3160 Chino Ave, Chino Hills', ' Chino Hills', 91709, 'US', 'CA', '(909) 591-9035', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(102, 'Claim Jumper Restaurants', 33.9183124, -117.8825337, '190 S State College Blvd, Brea', ' Brea', 92821, 'US', 'CA', '(714) 529-9061', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(103, 'Bar Louie', 33.9217413, -118.1314674, '8860 Apollo Way Suite #304, Downey', ' Downey', 90242, 'US', 'CA', '(562) 299-5360', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(104, 'TGI Fridays', 34.2858308, -118.7181527, '2795 Tapo Canyon Rd, Simi Valley', ' Simi Valley', 93063, 'US', 'CA', '(805) 306-9073', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(105, 'Claim Jumper', 34.3902091, -118.5712686, '25740 The Old Rd, Stevenson Ranch', ' Stevenson Ranch', 91381, 'US', 'CA', '(661) 254-2628', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(106, 'TGI Fridays', 34.2756515, -118.5675622, '19855 Rinaldi St, Northridge', ' Northridge', 91326, 'US', 'CA', '(818) 831-2324', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(107, 'Outback Steakhouse', 34.2578886, -118.5405368, '18711 Devonshire St, Northridge', ' Northridge', 91324, 'US', 'CA', '(818) 366-2341', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(108, 'La Cocina Bar & Grill', 34.4606598, -118.5338791, '28022 Seco Canyon Rd, Santa Clarita', ' Santa Clarita', 91390, 'US', 'CA', '(661) 297-4546', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(109, 'Outback Steakhouse', 34.376964, -118.56642, '25261 The Old Rd, Newhall', ' Newhall', 91381, 'US', 'CA', '(661) 287-9630', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(110, 'Islands Restaurant Northridge', 34.2761632, -118.5698765, '11400 Porter Ranch Dr, Northridge', ' Northridge', 91326, 'US', 'CA', '(818) 368-2305', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(111, 'The Star Bar', 34.2570103, -118.5964388, '21340 Devonshire St, Chatsworth', ' Chatsworth', 91311, 'US', 'CA', '(818) 700-8023', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(112, 'Shooters Bar & Billiards / Mechanical Bull', 34.3775996, -118.5619912, '24450 Lyons Ave, Santa Clarita', ' Santa Clarita', 91321, 'US', 'CA', '(661) 287-5888', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(113, 'Kisho Japanese Restaurant', 34.4206616, -118.5475352, '23430 Valencia Blvd, Santa Clarita', ' Santa Clarita', 91355, 'US', 'CA', '(661) 284-3856', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(114, 'TGI Fridays', 34.1779854, -118.5983115, '5919 Canoga Ave, Woodland Hills', ' Woodland Hills', 91367, 'US', 'CA', '(818) 888-2617', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(115, 'The Sunset Restaurant', 34.0111579, -118.8166464, '6800 Westward Beach Rd, Malibu', ' Malibu', 90265, 'US', 'CA', '(310) 589-1007', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(116, 'HQ Gastropub', 34.1668555, -118.5906177, '20969 Ventura Blvd, Woodland Hills', ' Woodland Hills', 91364, 'US', 'CA', '(818) 887-2337', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(117, 'The Oaks Tavern', 34.1504803, -118.430563, '13625 Moorpark St, Sherman Oaks', ' Sherman Oaks', 91423, 'US', 'CA', '(818) 789-0401', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(118, 'On The Thirty', 34.151247, -118.452073, '14622 Ventura Blvd #112, Sherman Oaks', ' Sherman Oaks', 91403, 'US', 'CA', '(818) 788-0330', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(119, 'Magnolia House', 34.1373727, -118.1320124, '492 S Lake Ave, Pasadena', ' Pasadena', 91101, 'US', 'CA', '(626) 584-1126', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(121, 'Shakas Hawaiian Bar and Grill', 34.0949401, -118.128299, '101 W Main St, Alhambra', ' Alhambra', 91801, 'US', 'CA', '(626) 293-5520', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(122, 'Sena On Myrtle', 34.147772, -118.001227, '409 S Myrtle Ave, Monrovia', ' Monrovia', 91016, 'US', 'CA', '(626) 359-9463', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(123, 'Buffalo Wild Wings', 33.9359068, -118.1210226, '193 Stonewood Court,, Downey', ', Downey', 90241, 'US', 'CA', '(562) 923-9464', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(124, 'Buffalo Wild Wings', 33.9172035, -117.8995803, '240 S Brea Blvd, Brea', ' Brea', 92821, 'US', 'CA', '(714) 582-1590', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(125, 'Buffalo Wild Wings', 33.995682, -117.9260444, '1576 S Azusa Ave, City of Industry', ' City of Industry', 91748, 'US', 'CA', '(626) 810-6479', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(126, 'Applebee’s Grill + Bar', 33.9953077, -117.9251879, '1590 S Azusa Ave, City of Industry', ' City of Industry', 91748, 'US', 'CA', '(626) 965-6940', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(127, 'TGI Fridays', 33.9181265, -117.8867085, '935 E Birch St, Brea', ' Brea', 92821, 'US', 'CA', '(714) 671-9011', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(128, 'TGI Fridays', 33.9909603, -117.9262957, '17427 Colima Rd, City of Industry', ' City of Industry', 91748, 'US', 'CA', '(626) 839-5044', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(129, '38 Degrees Ale House & Grill', 34.0943808, -118.1279421, '100 W Main St, Alhambra', ' Alhambra', 91801, 'US', 'CA', '(626) 282-2038', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(130, 'The Belmont', 34.084986, -118.37673, '747 N La Cienega Blvd, Los Angeles', ' Los Angeles', 90069, 'US', 'CA', '(310) 659-8871', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(131, 'Lazy Dog Restaurant & Bar', 33.8334999, -118.3472247, '3525 W Carson St, Torrance', ' Torrance', 90503, 'US', 'CA', '(310) 921-6080', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(132, 'The Falls', 34.0452203, -118.2514671, '626 S Spring St, Los Angeles', ' Los Angeles', 90014, 'US', 'CA', '(213) 612-0072', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(133, 'Melody Bar & Grill', 33.9537235, -118.3959818, '9132 S Sepulveda Blvd, Los Angeles', ' Los Angeles', 90045, 'US', 'CA', '(310) 670-1994', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(134, 'Red Onion Grill', 40.2750486, -121.1240773, '303 Peninsula Dr, Lake Almanor', ' Lake Almanor', 96137, 'US', 'CA', '(530) 596-1800', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(135, 'Rush Street', 34.0230736, -118.3947999, '9546 Washington Blvd, Culver City', ' Culver City', 90232, 'US', 'CA', '(310) 837-9546', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(136, 'SALT Restaurant & Bar ,', 33.9801042, -118.446049, '13534 Bali Way, Marina Del Rey', ' Marina Del Rey', 90292, 'US', 'CA', '(424) 289-8223', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(137, 'Killer Shrimp', 33.9834464, -118.4566614, '4211 Admiralty Way, Marina Del Rey', ' Marina Del Rey', 90292, 'US', 'CA', '(310) 578-2293', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(138, 'Twenty88', 34.2165794, -119.0422919, '2088 Ventura Blvd, Camarillo', ' Camarillo', 93010, 'US', 'CA', '(805) 388-2088', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(139, 'The Grill on the Alley', 34.158855, -118.820099, '120 Promenade Way, Westlake Village', ' Westlake Village', 91362, 'US', 'CA', '(805) 418-1760', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(140, 'Islands Restaurant Simi Valley', 34.284228, -118.776706, '1213 Simi Town Center Way, Simi Valley', ' Simi Valley', 93065, 'US', 'CA', '(805) 577-0693', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(141, 'Ladyface Ale Companie - Alehouse & Brasserie', 34.1438892, -118.7628937, '29281 Agoura Rd, Agoura Hills', ' Agoura Hills', 91301, 'US', 'CA', '(818) 477-4566', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(142, 'Crown and Anchor', 34.171347, -118.8376998, '2891 Thousand Oaks Blvd, Thousand Oaks', ' Thousand Oaks', 91362, 'US', 'CA', '(805) 497-0070', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(143, 'Gordon Biersch', 34.180097, -118.3081, '145 S San Fernando Blvd, Burbank', ' Burbank', 91502, 'US', 'CA', '(818) 569-5240', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(144, 'Spring St. Bar', 34.0450978, -118.2513307, '626 S Spring St B, Los Angeles', ' Los Angeles', 90014, 'US', 'CA', '(213) 622-5859', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(145, 'Village Tavern', 34.1179318, -118.2605897, '3218 Glendale Blvd, Los Angeles', ' Los Angeles', 90039, 'US', 'CA', '(323) 644-0605', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(146, 'Big Wangs Downtown', 34.045336, -118.258884, '801 S Grand Ave, Los Angeles', ' Los Angeles', 90017, 'US', 'CA', '(213) 629-2449', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(147, 'Yard House', 34.1456259, -118.1440236, '300 E Colorado Blvd #220, Pasadena', ' Pasadena', 91129, 'US', 'CA', '(626) 577-9273', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(148, 'Buffalo Wild Wings', 34.1286568, -118.1497247, '1000 S Fair Oaks Ave, Pasadena', ' Pasadena', 91105, 'US', 'CA', '(626) 993-6400', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(149, 'The Morrison', 34.1236202, -118.2686448, '3179 Los Feliz Blvd, Los Angeles', ' Los Angeles', 90039, 'US', 'CA', '(323) 667-1839', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(150, 'Kings Row Gastropub', 34.145563, -118.150035, '20 E Colorado Blvd, Pasadena', ' Pasadena', 91105, 'US', 'CA', '(626) 793-3010', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(151, 'Ceremony Bar', 34.141926, -118.389805, '11814 Ventura Blvd, Studio City', ' Studio City', 91604, 'US', 'CA', '(818) 985-9222', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(152, 'The Hudson', 34.0912119, -118.365594, '1114 N Crescent Heights Blvd, Los Angeles', ' Los Angeles', 90046, 'US', 'CA', '(323) 654-6686', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(153, 'Buffalo Wild Wings', 34.2181488, -119.1609455, '1600 E Gonzales Rd, Oxnard', ' Oxnard', 93036, 'US', 'CA', '(805) 988-9464', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(154, 'Applebee’s Grill + Bar', 34.2187935, -119.0746739, '291 W Ventura Blvd, Camarillo', ' Camarillo', 93010, 'US', 'CA', '(805) 445-7160', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(155, 'The Tipsy Goat', 34.179469, -118.8741294, '159 Thousand Oaks Blvd, Thousand Oaks', ' Thousand Oaks', 91360, 'US', 'CA', '(805) 494-9996', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(156, 'The Lazy Dog Restaurant & Bar', 34.1828201, -118.8855036, '172 W Hillcrest Dr, Thousand Oaks', ' Thousand Oaks', 91360, 'US', 'CA', '(805) 449-5206', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(157, 'Lazy Dog Restaurant & Bar', 34.2393007, -119.1785827, '598 Town Center Dr, Oxnard', ' Oxnard', 93036, 'US', 'CA', '(805) 351-4888', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(158, 'Oxnard Copper Blues Rock Pub & Kitchen', 34.2407876, -119.1767113, '581 Collection Blvd, Oxnard', ' Oxnard', 93036, 'US', 'CA', '(805) 457-5551', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(159, 'The Dugout Sports Grill', 34.2818881, -118.794266, '109 W Cochran St, Simi Valley', ' Simi Valley', 93065, 'US', 'CA', '(805) 955-9200', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(160, 'Brophy Bros. Seafood Restaurant & Clam Bar', 34.2406712, -119.263941, '1559 Spinnaker Dr, Ventura', ' Ventura', 93001, 'US', 'CA', '(805) 639-0865', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(161, 'Prime Steakhouse & Wine Bar', 34.2747183, -119.270997, '2009 E Thompson Blvd, Ventura', ' Ventura', 93001, 'US', 'CA', '(805) 652-1055', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(162, 'El Rey', 34.2805549, -119.2968062, '294 E Main St C, Ventura', ' Ventura', 93001, 'US', 'CA', '(805) 653-1111', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(163, 'Rookees Sports Bar', 34.281173, -119.294375, '419 E Main St, Ventura', ' Ventura', 93001, 'US', 'CA', '(805) 648-6862', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(164, 'VenTiki Tiki Lounge & Lanai', 34.281009, -119.2898022, '701 E Main St, Ventura', ' Ventura', 93001, 'US', 'CA', '(805) 667-8887', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(165, 'Bombay Bar & Grill', 34.2789888, -119.2932549, '143 S California St, Ventura', ' Ventura', 93001, 'US', 'CA', '(805) 643-4404', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(166, 'Yard House', 34.2402042, -119.1758075, '501 Collection Blvd #4130, Oxnard', ' Oxnard', 93036, 'US', 'CA', '(805) 981-8707', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(167, 'Sea Fresh Channel Islands', 34.1686845, -119.2285016, '3550 Harbor Blvd, Oxnard', ' Oxnard', 93035, 'US', 'CA', '(805) 204-0974', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(168, 'Cronies Sports Grill', 34.2484965, -119.1970685, '2855 Johnson Dr, Ventura', ' Ventura', 93003, 'US', 'CA', '(805) 650-6026', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(169, 'The Lookout Bar & Grill', 34.1742845, -119.2307722, '2800 Harbor Blvd suite B, Oxnard', ' Oxnard', 93035, 'US', 'CA', '(805) 985-9300', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(170, 'Wood Ranch BBQ & Grill', 34.265704, -119.246594, '3449 E Main St, Ventura', ' Ventura', 93003, 'US', 'CA', '(805) 620-4500', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(171, 'Barrelhouse 101', 34.278476, -119.29236, '545 E Thompson Blvd, Ventura', ' Ventura', 93001, 'US', 'CA', '(805) 643-0906', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(172, 'District Wine', 33.7690314, -118.1861812, '144 Linden Ave, Long Beach', ' Long Beach', 90802, 'US', 'CA', '(562) 612-0411', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(173, 'Standard Station Sports Bar & Grill', 33.9185724, -118.4145304, '226 Standard St, El Segundo', ' El Segundo', 90245, 'US', 'CA', '(310) 322-2255', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(174, 'The Crab Pot Restaurant and Bar', 33.7488133, -118.1130774, '215 N Marina Dr, Long Beach', ' Long Beach', 90803, 'US', 'CA', '(562) 430-0272', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(175, 'Pike Restaurant & Bar', 33.7715738, -118.1691341, '1836 E 4th St, Long Beach', ' Long Beach', 90802, 'US', 'CA', '(562) 437-4453', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(176, 'Buffalo Wild Wings', 33.8527906, -118.1386896, '4678 Daneland St, Lakewood', ' Lakewood', 90712, 'US', 'CA', '(562) 220-2760', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(177, 'Buffalo Wild Wings', 33.8470385, -118.2623344, '736 E Del Amo Blvd, Carson', ' Carson', 90746, 'US', 'CA', '(310) 436-7793', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(178, 'Buffalo Wild Wings', 33.8660472, -118.0942455, '11255 183rd St, Cerritos', ' Cerritos', 90703, 'US', 'CA', '(562) 865-9464', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(179, 'Olive Garden Italian Restaurant', 34.4207385, -118.5632903, '27003 McBean Pkwy, Santa Clarita', ' Santa Clarita', 91355, 'US', 'CA', '(661) 799-8161', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(180, 'Olive Terrace Bar & Grill', 34.4408616, -118.5778806, '28261 Newhall Ranch Rd, Santa Clarita', ' Santa Clarita', 91355, 'US', 'CA', '(661) 257-7860', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(181, 'Public School 213', 34.049851, -118.257422, '612 Flower Street, Los Angeles', ' Los Angeles', 90017, 'US', 'CA', '(213) 622-4500', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(182, 'The Greyhound Bar & Grill', 34.108813, -118.1940406, '5570 N Figueroa St, Los Angeles', ' Los Angeles', 90042, 'US', 'CA', '(323) 900-0300', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(183, 'Congregation Ale House', 34.1400537, -118.148577, '300 S Raymond Ave, Pasadena', ' Pasadena', 91105, 'US', 'CA', '(626) 403-2337', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(184, 'Mexicali Cocina Cantina', 34.1436196, -118.3974444, '12161 Ventura Blvd, Studio City', ' Studio City', 91604, 'US', 'CA', '(818) 985-1744', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(185, 'Taps Valley Gastropub', 34.25843646, -118.5392713, '18673 Devonshire St', 'Northridge', 91324, 'US', 'CA', '(818) 217-4199', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
(186, 'San Fernando Brewing Company', 34.28311956, -118.4318564, '425 Park Ave', 'San Fernando', 91340, 'US', 'CA', '(818) 745-6175', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP());
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;