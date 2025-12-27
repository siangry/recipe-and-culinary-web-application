-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2025 at 08:19 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment_v5`
--

-- --------------------------------------------------------

--
-- Table structure for table `competition_recipe`
--

CREATE TABLE `competition_recipe` (
  `compRecipe_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comp_title` varchar(150) NOT NULL,
  `comp_desc` text NOT NULL,
  `compRecipe_cat` varchar(50) NOT NULL,
  `compRecipe_file` varchar(255) NOT NULL,
  `compRecipe_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `competition_recipe`
--

INSERT INTO `competition_recipe` (`compRecipe_id`, `user_id`, `comp_title`, `comp_desc`, `compRecipe_cat`, `compRecipe_file`, `compRecipe_image`) VALUES
(6, 8, 'Yoyo nasi lemak', 'yoyo nasi lemak best', 'Rice, Malay', 'competition_uploads/pdfs/1744724025_yoyo_nasi_lemak_recipe.pdf', 'competition_uploads/images/1744724025_yoyo_nasi_lemak.jpg'),
(7, 9, 'Haluuu ABC soup', 'Haluuu ABC soup very nice', 'Soup, Chinese', 'competition_uploads/pdfs/1744732153_ABC soup.pdf', 'competition_uploads/images/1744732153_abc.jpeg'),
(9, 10, 'Mamak roti canai', 'Mamak roti canai good', 'Malay', 'competition_uploads/pdfs/1744732396_roticanai.pdf', 'competition_uploads/images/1744732396_roticanai.jpg'),
(10, 11, 'Walau egg fried rice', 'Walau egg fried rice use leftover rice', 'Rice', 'competition_uploads/pdfs/1744763784_Egg-Fried-Rice-Recipe-Card.pdf', 'competition_uploads/images/1744763784_eggfriedrice.jpeg'),
(11, 12, 'Simple chicken rendang', 'simple cook but delicious', 'Malay', 'competition_uploads/pdfs/1744773119_recipe-chicken-rendang.pdf', 'competition_uploads/images/1744773119_chicken-rendang.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `competition_votes`
--

CREATE TABLE `competition_votes` (
  `vote_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `compRecipe_id` int(11) NOT NULL,
  `vote_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `competition_votes`
--

INSERT INTO `competition_votes` (`vote_id`, `user_id`, `compRecipe_id`, `vote_date`) VALUES
(10, 8, 11, '2025-04-16'),
(11, 9, 11, '2025-04-16'),
(3, 10, 6, '2025-04-15'),
(7, 10, 7, '2025-04-16'),
(8, 11, 7, '2025-04-16'),
(9, 12, 7, '2025-04-16');

-- --------------------------------------------------------

--
-- Table structure for table `custom_recipe`
--

CREATE TABLE `custom_recipe` (
  `cusRecipe_id` int(10) NOT NULL,
  `cusRecipe_title` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `cuisine_type` varchar(30) NOT NULL,
  `ingredient` text NOT NULL,
  `description` text NOT NULL,
  `step` text NOT NULL,
  `save_record` datetime NOT NULL,
  `modify_record` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `custom_recipe`
--

INSERT INTO `custom_recipe` (`cusRecipe_id`, `cusRecipe_title`, `image`, `cuisine_type`, `ingredient`, `description`, `step`, `save_record`, `modify_record`, `user_id`) VALUES
(1, 'milo2', 'img_67fb8cf7c1d57.jpg', 'milo', '-dsadsa\r\n-asd as\r\n-dsadsa', '- very good\r\n- very easy', '1. asdasd\r\n2. asdasd\r\n3. dasdasd', '2025-04-13 18:07:51', '2025-04-13 14:26:14', 3),
(2, 'ice kacang2', 'img_67fb8e3dd5231.jpg', 'ice kacang', '- ice\r\n- kacang', '- ice kacang', '1. aba\r\n2. aba\r\n3. aba', '2025-04-13 18:13:17', '2025-04-14 12:25:22', 3),
(3, 'cake2', 'img_67fb8e6030fdf.jpg', 'cake', 'cake2', 'cake2', 'cake\r\ncake', '2025-04-13 18:13:52', '2025-04-13 14:27:09', 3),
(4, 'cookie4', '67fbe04f9dabf.jpg', 'cookie', 'cookie', 'cookie', 'cookie\r\ncookie', '2025-04-13 18:14:21', '2025-04-13 18:03:27', 3),
(5, 'oreo2', 'img_67fb8ea2ac55d.jpg', 'oreo', 'oreo', 'oreo', 'oreo', '2025-04-13 18:14:58', '2025-04-13 14:28:03', 3),
(8, 'chicken breast', 'img_67fd11b036c24.jpg', 'chicken breast', '- chicken', '- chicken', '- put chicken\r\n- cook', '2025-04-14 21:46:24', '0000-00-00 00:00:00', 3),
(13, 'asd', 'img_67fe17b6ce215.jpg', 'asd', 'asd', 'asd', 'asd', '2025-04-15 16:24:22', '2025-04-15 10:41:27', 6),
(18, 'asd', 'img_67fe269d10797.jpg', 'asd', 'asd', 'asd', 'asd', '2025-04-15 17:27:57', '0000-00-00 00:00:00', 6);

-- --------------------------------------------------------

--
-- Table structure for table `meal_entry`
--

CREATE TABLE `meal_entry` (
  `mealEntry_id` int(10) NOT NULL,
  `meal_category` varchar(30) NOT NULL,
  `meal_date` datetime NOT NULL,
  `mealPlan_id` int(10) NOT NULL,
  `cusRecipe_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meal_entry`
--

INSERT INTO `meal_entry` (`mealEntry_id`, `meal_category`, `meal_date`, `mealPlan_id`, `cusRecipe_id`) VALUES
(5, 'snack', '2025-04-13 16:37:20', 3, 2),
(31, 'breakfast', '2025-04-14 11:31:55', 3, 1),
(33, 'dinner', '2025-04-14 12:11:51', 3, 2),
(34, 'lunch', '2025-04-14 12:12:07', 5, 1),
(39, 'breakfast', '2025-04-14 16:23:33', 3, 5),
(49, 'breakfast', '2025-04-15 10:52:09', 11, 13),
(52, 'snack', '2025-04-15 10:57:02', 11, 13),
(54, 'lunch', '2025-04-15 11:28:03', 11, 18);

-- --------------------------------------------------------

--
-- Table structure for table `meal_plan`
--

CREATE TABLE `meal_plan` (
  `mealPlan_id` int(10) NOT NULL,
  `plan_name` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meal_plan`
--

INSERT INTO `meal_plan` (`mealPlan_id`, `plan_name`, `start_date`, `end_date`, `user_id`) VALUES
(3, 'GYM', '2025-04-18', '2025-05-03', 3),
(5, 'DIET', '2025-04-14', '2025-04-17', 3),
(11, 'asdc', '2025-04-15', '2025-04-24', 6),
(16, 'fdsf', '2025-04-25', '2025-05-02', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expires` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `expires`) VALUES
(7, 'shaoyuan@1utar.my', '1c74ecdc9ef10e6f221f4ec345f90f06552d58e617944721f76c3f89a376217d', '2025-04-15 06:00:24');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `image` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `user_id`, `title`, `content`, `created_at`, `image`) VALUES
(16, 14, 'Chicken', 'Nice', '2025-04-17 05:34:11', '1744839251_herb-roasted-chicken.jpg'),
(18, 3, 'Testing', 'ha', '2025-04-17 05:39:16', '1744839556_1C4A7731 - Ayam Masak Bawang.jpg'),
(21, 3, 'OHAIYO SEKAI', 'good morning world', '2025-04-17 05:41:32', '1744839692_salad.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `post_comment`
--

CREATE TABLE `post_comment` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_comment`
--

INSERT INTO `post_comment` (`comment_id`, `post_id`, `user_id`, `comment`, `created_at`) VALUES
(14, 16, 3, 'I LIKE THAT!', '2025-04-17 05:42:01');

-- --------------------------------------------------------

--
-- Table structure for table `post_like`
--

CREATE TABLE `post_like` (
  `like_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_like`
--

INSERT INTO `post_like` (`like_id`, `post_id`, `user_id`, `created_at`) VALUES
(11, 21, 3, '2025-04-17 05:41:47'),
(13, 16, 3, '2025-04-17 10:08:32'),
(14, 18, 3, '2025-04-17 10:08:38');

-- --------------------------------------------------------

--
-- Table structure for table `post_recipe`
--

CREATE TABLE `post_recipe` (
  `post_recipe_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_recipe`
--

INSERT INTO `post_recipe` (`post_recipe_id`, `post_id`, `recipe_id`) VALUES
(6, 16, 14),
(8, 18, 20),
(10, 21, 16);

-- --------------------------------------------------------

--
-- Table structure for table `recipe`
--

CREATE TABLE `recipe` (
  `recipe_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `recipe_title` varchar(100) NOT NULL,
  `recipe_desc` text NOT NULL,
  `cuisine_type` varchar(50) NOT NULL,
  `recipe_image` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `ingredient` text NOT NULL,
  `step` text NOT NULL,
  `difficulty` enum('Easy','Medium','Hard') NOT NULL,
  `status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
  `category_id` int(11) NOT NULL,
  `reject_reason` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipe`
--

INSERT INTO `recipe` (`recipe_id`, `user_id`, `recipe_title`, `recipe_desc`, `cuisine_type`, `recipe_image`, `created_at`, `ingredient`, `step`, `difficulty`, `status`, `category_id`, `reject_reason`) VALUES
(5, 1, 'Nasi Goreng Kampung', 'Spicy Malaysian fried rice.', 'Malay', 'nasi_goreng.jpg', '2025-04-15 12:11:23', 'Rice, anchovies, chili, garlic', '1. Fry anchovies\n2. Add rice\n3. Stir-fry with chili', 'Easy', 'approved', 1, NULL),
(6, 1, 'Chocolate Lava Cake', 'Warm chocolate cake with molten center.', 'Western', 'lava_cake.jpeg', '2025-04-15 12:11:23', 'Chocolate, flour, eggs, sugar, butter', '1. Mix batter\n2. Bake in ramekins\n3. Serve warm', 'Medium', 'approved', 2, NULL),
(7, 1, 'Tom Yum Soup', 'Hot and sour Thai soup.', 'Thai', 'tom_yum.jpg', '2025-04-15 12:11:23', 'Prawns, lemongrass, chili, lime, mushrooms', '1. Boil broth\n2. Add herbs\n3. Add seafood and serve', 'Hard', 'approved', 3, NULL),
(11, 1, 'ayam', 'ayam', 'Malay', 'recipe_67fe0371b773e6.11056827.png', '2025-04-15 14:57:53', 'ayammm', 'ayaand', 'Easy', 'pending', 1, NULL),
(12, 1, 'Lamb Korma curry', 'family friendly curry', 'Indian', 'recipe_67fe6a348f0cc6.58640166.jpg', '2025-04-15 22:16:20', 'Kashmiri chilli powder\r\nGaram masala\r\nTurmeric powder\r\nGinger powder ', 'Reduce chicken stock/broth by 1 cup\r\nIncrease coconut cream and cream to 2/3 cup each, and increase salt by 1/4 tsp.\r\nPuree cashews with 1/3 cup chicken stock instead of water\r\nStart on stove or sauté function of instant pot/slow cooker.\r\nMelt all the ghee OR 1 tbsp plain oil on high heat then brown the surface of the lamb in batches (but still raw inside). Remove. (If you used oil, add butter now). \r\nCook down the onion puree per recipe then follow recipe as written (returning browned lamb into pot) up to step 6.\r\nAdd cashew puree and coconut cream (but not regular cream), bring to simmer. Transfer everything into slow cooker/IP (scrape out pot well!). ', 'Medium', 'pending', 1, NULL),
(13, 1, 'Spaghetti Carbonara', 'Creamy pasta with eggs, cheese, and pancetta.', 'Western', 'carbonara.jpeg', '2025-04-16 03:21:48', 'Spaghetti\nEggs\nParmesan cheese\nPancetta\nBlack pepper', 'Cook pasta\nFry pancetta\nMix eggs and cheese\nCombine all and serve', 'Medium', 'approved', 1, NULL),
(14, 1, 'Chicken Biryani', 'Fragrant Indian rice dish layered with marinated chicken.', 'Indian', 'biryani.jpg', '2025-04-16 03:21:48', 'Basmati rice\nChicken\nSpices\nYogurt\nOnion', 'Marinate chicken\nCook rice and chicken separately\nLayer and steam', 'Hard', 'approved', 1, NULL),
(15, 1, 'Tom Yum Goong', 'Spicy and sour Thai soup with prawns.', 'Thai', 'tomyum.jpeg', '2025-04-16 03:21:48', 'Prawns\nLemongrass\nGalangal\nLime juice\nChili paste', 'Boil herbs\nAdd prawns and mushrooms\nSeason and serve', 'Medium', 'approved', 2, NULL),
(16, 1, 'Caesar Salad', 'Classic salad with crunchy croutons and creamy dressing.', 'Western', 'caesar.jpg', '2025-04-16 03:21:48', 'Romaine lettuce\nCroutons\nParmesan\nCaesar dressing', 'Toss lettuce with dressing\nTop with croutons and cheese', 'Easy', 'approved', 3, NULL),
(17, 1, 'Rendang Daging', 'Slow-cooked beef in aromatic coconut curry.', 'Malay', 'rendang.jpg', '2025-04-16 03:21:48', 'Beef\nCoconut milk\nLemongrass\nChili\nSpices', 'Blend spice paste\nCook beef slowly in coconut milk', 'Hard', 'approved', 1, NULL),
(18, 1, 'Hot and Sour Soup', 'Savory Chinese soup with tofu and mushrooms.', 'Chinese', 'hotsour.jpg', '2025-04-16 03:21:48', 'Tofu\nMushroom\nVinegar\nChili\nEgg', 'Boil broth\nAdd vegetables and seasonings\nThicken and serve', 'Medium', 'approved', 2, NULL),
(19, 1, 'Roti Canai', 'Flaky and crispy Malaysian flatbread.', 'Indian/Malay', 'roti.jpg', '2025-04-16 03:21:48', 'Flour\nWater\nGhee\nSalt', 'Knead dough\nRest and stretch\nFry until golden', 'Medium', 'approved', 4, NULL),
(20, 1, 'Green Curry Chicken', 'Thai curry with green paste and coconut milk.', 'Thai', 'greencurry.jpg', '2025-04-16 03:21:48', 'Chicken\nGreen curry paste\nCoconut milk\nThai basil', 'Sauté curry paste\nAdd chicken and simmer with coconut milk', 'Medium', 'approved', 1, NULL),
(21, 1, 'Egg Fried Rice', 'Simple and delicious Chinese fried rice.', 'Chinese', 'friedrice.jpg', '2025-04-16 03:21:48', 'Cooked rice\nEgg\nSoy sauce\nGreen onion', 'Scramble egg\nStir-fry rice with seasoning', 'Easy', 'approved', 1, NULL),
(22, 1, 'Mango Sticky Rice', 'Thai dessert with sweet rice and ripe mango.', 'Thai', 'mangorice.jpg', '2025-04-16 03:21:48', 'Glutinous rice\nCoconut milk\nMango\nSugar', 'Steam rice\nMix with sweet coconut milk\nServe with mango slices', 'Easy', 'approved', 5, NULL),
(26, 13, '', '', '', 'shrimp_1744796665.jpg', '2025-04-16 17:44:25', '', '', '', 'pending', 0, NULL),
(27, 13, 'sadas', 'sda', 'Indian', 'sadas_1744798605.jpg', '2025-04-16 18:16:45', 'asd', 'sad', 'Easy', 'approved', 1, NULL),
(28, 13, 'gthhngfn', 'sf', 'Thai', 'gthhngfn_1744798638.jpg', '2025-04-16 18:17:18', 'dfd', 'sdfg', 'Hard', 'rejected', 2, 'no appropriate steps given.'),
(29, 13, 'ikuikdgh', 'dfsd', 'Malay', 'ikuikdgh_1744798658.jpg', '2025-04-16 18:17:38', 'fsdfs', 'dfsduedrgfsgf\r\nfhsdf', 'Medium', 'approved', 2, NULL),
(31, 13, 'roti telur', 'asdasd', 'Malay', 'roti_telur_1744800856.jpeg', '2025-04-16 18:54:16', 'asdasd', 'fsdfsdfsdf', 'Easy', 'approved', 1, NULL),
(32, 13, 'roti planta', 'dfdsf', 'Malay', 'roti_planta_1744800879.jpg', '2025-04-16 18:54:39', 'dfdsfs', 'ghntujygbhgfh', 'Easy', 'approved', 1, NULL),
(33, 13, 'Baked Chicken', 'ffsdfsf', 'Thai', 'baked_chicken_1744801316.jpg', '2025-04-16 19:01:56', 'fsdfsd', 'dfsdfds', 'Medium', 'rejected', 1, 'incorrect cuisine type.'),
(34, 13, 'rendang chicken with honey', 'ghgjmghvmhnbv', 'Malay', 'rendang_chicken_with_honey_1744801360.jpg', '2025-04-16 19:02:40', 'asdasd', 'ndfghdxfbh', 'Hard', 'rejected', 1, 'irrelevant image.'),
(37, 3, 'sdasd', 'dqwda', 'France', 'sdasd_1744869348.jpg', '2025-04-17 13:55:48', 'dasda', 'awda', 'Medium', 'approved', 1, NULL),
(38, 3, 'Avocado Toast', 'daily breakfast choice.', 'Western', 'avocado_toast_1744869752.jpg', '2025-04-17 14:02:32', 'Avocado, salt, sugar, toast', '1. Heat the toast.\r\n2. Put some salt.\r\n3. Put some sugar and baaked for 2 minutes.', 'Hard', 'approved', 1, NULL),
(39, 15, 'Poach Egg', 'BEST Poach egg ever. You can\'t miss this!', 'Western', 'poach_egg_1744870391.jpg', '2025-04-17 14:13:11', 'Egg\r\nSalt', '1. Boil some water.\r\n2. Put in the egg slowly.\r\n3. Cook for 1 minute.\r\n4. Close the lid.', 'Medium', 'approved', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recipe_category`
--

CREATE TABLE `recipe_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipe_category`
--

INSERT INTO `recipe_category` (`category_id`, `category_name`) VALUES
(2, 'Dessert'),
(1, 'Main Dish'),
(3, 'Soup');

-- --------------------------------------------------------

--
-- Table structure for table `recipe_comment`
--

CREATE TABLE `recipe_comment` (
  `comment_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `recipe_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipe_comment`
--

INSERT INTO `recipe_comment` (`comment_id`, `comment`, `created_at`, `recipe_id`, `user_id`) VALUES
(9, 'Bagus sekaliiiiiiiiiiiiii', '2025-04-17 05:26:45', 32, 14),
(10, 'Mamak god', '2025-04-17 05:27:12', 31, 14),
(11, 'Agree', '2025-04-17 05:42:45', 31, 3);

-- --------------------------------------------------------

--
-- Table structure for table `recipe_rating`
--

CREATE TABLE `recipe_rating` (
  `rating_id` int(11) NOT NULL,
  `rating` decimal(2,1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `recipe_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipe_rating`
--

INSERT INTO `recipe_rating` (`rating_id`, `rating`, `created_at`, `recipe_id`, `user_id`) VALUES
(9, 5.0, '2025-04-17 05:26:25', 32, 14),
(10, 5.0, '2025-04-17 05:27:01', 31, 14),
(11, 3.0, '2025-04-17 05:42:20', 32, 3),
(12, 4.0, '2025-04-17 05:42:29', 31, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `phone_num` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `name`, `age`, `phone_num`, `email`, `password`, `role`) VALUES
(3, 'admin', 'admin', 99, '12345678899', 'admin@example.com', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(4, 'admin2', 'admin2', 99, '11111111111', 'admin2@example.com', 'c84258e9c39059a89ab77d846ddab909', 'admin'),
(6, 'shaoyuan', 'shaoyaun', 22, '0189648225', 'shaoyuan@1utar.my', '621c32d53194fdf1cb0e11c0e02a1c12', 'user'),
(8, 'yoon', 'yoonjh', 30, '0123456789', 'yoon@gmail.com', '640798fefb58bc929dfd0b8c63685db8', 'user'),
(9, 'haluuu', 'Haluuu', 20, '0123456777', 'haluuu@gmail.com', '005eb282a59b71ecf159bc69232b384b', 'user'),
(10, 'bye', 'bye', 10, '0123456888', 'bye@gmail.com', '31d5eaea97e985946d4e2e289ed40684', 'user'),
(11, 'walau', 'walau', 20, '0123456999', 'walau@gmail.com', 'e96c7f74be04bf1f2f2ed18bfe6927f9', 'user'),
(12, 'heyyo', 'heyyo', 20, '0123456666', 'heyyo@gmail.com', '34e5c36adcbfa6afca00251155d2e79b', 'user'),
(14, 'Sain', 'Sain', 12, '0123455555', '123@gmail.com', '6c832bb4b7bdfd95b9cc34924ac73d06', 'user'),
(15, 'yu1', 'yu1', 22, '0122389233', 'yu1@gmail.com', '5466d561f19efae18aa00192ea08d513', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `competition_recipe`
--
ALTER TABLE `competition_recipe`
  ADD PRIMARY KEY (`compRecipe_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `competition_votes`
--
ALTER TABLE `competition_votes`
  ADD PRIMARY KEY (`vote_id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`compRecipe_id`,`vote_date`),
  ADD KEY `competition_votes_ibfk_2` (`compRecipe_id`);

--
-- Indexes for table `custom_recipe`
--
ALTER TABLE `custom_recipe`
  ADD PRIMARY KEY (`cusRecipe_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `meal_entry`
--
ALTER TABLE `meal_entry`
  ADD PRIMARY KEY (`mealEntry_id`),
  ADD KEY `cusRecipe_id` (`cusRecipe_id`),
  ADD KEY `mealPlan_id` (`mealPlan_id`);

--
-- Indexes for table `meal_plan`
--
ALTER TABLE `meal_plan`
  ADD PRIMARY KEY (`mealPlan_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `post_ibfk_1` (`user_id`);

--
-- Indexes for table `post_comment`
--
ALTER TABLE `post_comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `post_comment_ibfk_1` (`post_id`),
  ADD KEY `post_comment_ibfk_2` (`user_id`);

--
-- Indexes for table `post_like`
--
ALTER TABLE `post_like`
  ADD PRIMARY KEY (`like_id`),
  ADD UNIQUE KEY `unique_like` (`post_id`,`user_id`),
  ADD KEY `post_like_ibfk_2` (`user_id`);

--
-- Indexes for table `post_recipe`
--
ALTER TABLE `post_recipe`
  ADD PRIMARY KEY (`post_recipe_id`),
  ADD KEY `post_recipe_ibfk_1` (`post_id`),
  ADD KEY `post_recipe_ibfk_2` (`recipe_id`);

--
-- Indexes for table `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`recipe_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `recipe_category`
--
ALTER TABLE `recipe_category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `recipe_comment`
--
ALTER TABLE `recipe_comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `recipe_id` (`recipe_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `recipe_rating`
--
ALTER TABLE `recipe_rating`
  ADD PRIMARY KEY (`rating_id`),
  ADD UNIQUE KEY `recipe_id` (`recipe_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `competition_recipe`
--
ALTER TABLE `competition_recipe`
  MODIFY `compRecipe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `competition_votes`
--
ALTER TABLE `competition_votes`
  MODIFY `vote_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `custom_recipe`
--
ALTER TABLE `custom_recipe`
  MODIFY `cusRecipe_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `meal_entry`
--
ALTER TABLE `meal_entry`
  MODIFY `mealEntry_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `meal_plan`
--
ALTER TABLE `meal_plan`
  MODIFY `mealPlan_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `post_comment`
--
ALTER TABLE `post_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `post_like`
--
ALTER TABLE `post_like`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `post_recipe`
--
ALTER TABLE `post_recipe`
  MODIFY `post_recipe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `recipe`
--
ALTER TABLE `recipe`
  MODIFY `recipe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `recipe_category`
--
ALTER TABLE `recipe_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `recipe_comment`
--
ALTER TABLE `recipe_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `recipe_rating`
--
ALTER TABLE `recipe_rating`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `competition_recipe`
--
ALTER TABLE `competition_recipe`
  ADD CONSTRAINT `competition_recipe_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `competition_votes`
--
ALTER TABLE `competition_votes`
  ADD CONSTRAINT `competition_votes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `competition_votes_ibfk_2` FOREIGN KEY (`compRecipe_id`) REFERENCES `competition_recipe` (`compRecipe_id`) ON DELETE CASCADE;

--
-- Constraints for table `custom_recipe`
--
ALTER TABLE `custom_recipe`
  ADD CONSTRAINT `custom_recipe_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `meal_entry`
--
ALTER TABLE `meal_entry`
  ADD CONSTRAINT `meal_entry_ibfk_1` FOREIGN KEY (`cusRecipe_id`) REFERENCES `custom_recipe` (`cusRecipe_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `meal_entry_ibfk_2` FOREIGN KEY (`mealPlan_id`) REFERENCES `meal_plan` (`mealPlan_id`) ON DELETE CASCADE;

--
-- Constraints for table `meal_plan`
--
ALTER TABLE `meal_plan`
  ADD CONSTRAINT `meal_plan_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_comment`
--
ALTER TABLE `post_comment`
  ADD CONSTRAINT `post_comment_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_like`
--
ALTER TABLE `post_like`
  ADD CONSTRAINT `post_like_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_like_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_recipe`
--
ALTER TABLE `post_recipe`
  ADD CONSTRAINT `post_recipe_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_recipe_ibfk_2` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `recipe_comment`
--
ALTER TABLE `recipe_comment`
  ADD CONSTRAINT `recipe_comment_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `recipe_comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `recipe_rating`
--
ALTER TABLE `recipe_rating`
  ADD CONSTRAINT `recipe_rating_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `recipe_rating_ibfk_3` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
