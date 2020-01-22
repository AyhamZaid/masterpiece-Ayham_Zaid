-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2020 at 07:57 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mobile', 1, '2019-12-23 15:29:18', '2019-12-23 18:20:39'),
(3, 'Laptop', 1, '2019-12-23 18:21:19', '2019-12-23 18:21:19'),
(4, 'Gadgets', 1, '2019-12-23 18:21:33', '2020-01-11 17:08:32'),
(5, 'Games', 1, '2019-12-28 14:28:12', '2019-12-28 14:28:12'),
(6, 'Cars', 1, '2019-12-28 14:28:33', '2020-01-11 17:07:49'),
(7, 'Programming', 0, '2019-12-28 14:28:49', '2020-01-11 17:09:09');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `comment`, `post_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Ayham', 'Hello world nice day for all', 3, 0, '2019-12-23 22:00:00', '2019-12-23 22:00:00'),
(2, 'Aws', 'Hello world nice day for all', 2, 1, '2019-12-23 22:00:00', '2019-12-24 17:44:41'),
(3, 'admin', 'nice work', 2, 1, '2019-12-24 17:52:28', '2019-12-24 17:57:12'),
(4, 'Ayham', 'good job go a head', 17, 1, '2020-01-04 13:28:41', '2020-01-04 13:29:08'),
(5, 'admin', 'THanks you', 17, 1, '2020-01-04 13:29:41', '2020-01-04 13:29:45'),
(6, 'admin', '<p>hello</p>', 17, 0, '2020-01-04 13:33:35', '2020-01-04 13:33:35'),
(7, 'admin', '<p>dvsvsvsvd</p>', 17, 0, '2020-01-04 13:34:27', '2020-01-04 13:34:27'),
(8, 'Ayham zaid', 'I love This Laptops All of Them', 19, 1, '2020-01-18 13:14:28', '2020-01-18 13:15:40');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_12_19_205311_entrust_setup_tables', 2),
(4, '2019_12_23_152259_create_categories_table', 2),
(5, '2019_12_23_205313_create_posts_table', 3),
(6, '2019_12_24_190243_create_comments_table', 4),
(7, '2019_12_25_100755_create_settings_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(9, 'Permission Add', 'Permission Add', 'Permission Add', '2019-12-22 18:25:49', '2019-12-22 18:25:49'),
(10, 'Permission List', 'Permission List', 'Permission List', '2019-12-22 18:26:15', '2019-12-22 18:26:15'),
(11, 'Permission Update', 'Permission Update', 'Permission Update', '2019-12-22 18:26:33', '2019-12-22 18:26:33'),
(12, 'Permission Delete', 'Permission Delete', 'Permission Delete', '2019-12-22 18:26:49', '2019-12-22 18:26:49'),
(13, 'Role Add', 'Role Add', 'Role Add', '2019-12-22 18:29:56', '2019-12-22 18:29:56'),
(14, 'Role List', 'Role List', 'Role List', '2019-12-22 18:30:15', '2019-12-22 18:30:15'),
(15, 'Role Update', 'Role Update', 'Role Update', '2019-12-22 18:30:34', '2019-12-22 18:30:34'),
(16, 'Role Delete', 'Role Delete', 'Role Delete', '2019-12-22 18:30:49', '2019-12-22 18:30:49'),
(17, 'Category Add', 'Category Add', 'Category Add', '2019-12-22 18:31:03', '2019-12-22 18:31:03'),
(19, 'Category List', 'Category List', 'Category List', '2019-12-22 18:32:07', '2019-12-22 18:32:07'),
(20, 'Category Update', 'Category Update', 'Category Update', '2019-12-22 18:32:24', '2019-12-22 18:32:24'),
(21, 'Category Delete', 'Category Delete', 'Category Delete', '2019-12-22 18:32:53', '2019-12-22 18:32:53'),
(22, 'Post Add', 'Post Add', 'Post Add', '2019-12-22 18:34:57', '2019-12-22 18:34:57'),
(23, 'Post List', 'Post List', 'Post List', '2019-12-22 18:35:14', '2019-12-22 18:35:14'),
(24, 'Post Update', 'Post Update', 'Post Update', '2019-12-22 18:35:30', '2019-12-22 18:35:30'),
(25, 'Post Delete', 'Post Delete', 'Post Delete', '2019-12-22 18:35:46', '2019-12-22 18:35:46'),
(26, 'Comment View', 'Comment View', 'Comment View', '2019-12-22 18:36:01', '2019-12-22 18:36:01'),
(27, 'Comment Reply', 'Comment Reply', 'Comment Reply', '2019-12-22 18:36:21', '2019-12-22 18:36:21'),
(28, 'Comment Approval', 'Comment Approval', 'Comment Approval', '2019-12-22 18:36:37', '2019-12-22 18:36:37'),
(29, 'System Settings', 'System Settings', 'System Settings', '2019-12-22 18:36:53', '2019-12-22 18:36:53'),
(30, 'All', 'All', 'All', '2019-12-22 18:37:07', '2019-12-22 18:37:07'),
(31, 'Author List', 'Author List', 'Author List', '2019-12-22 18:37:35', '2019-12-22 18:37:35'),
(32, 'Author Add', 'Author Add', 'Author Add', '2019-12-22 18:37:50', '2019-12-22 18:37:50'),
(33, 'Author Update', 'Author Update', 'Author Update', '2019-12-22 18:38:05', '2019-12-22 18:38:05'),
(34, 'Author Delete', 'Author Delete', 'Author Delete', '2019-12-22 18:38:21', '2019-12-22 18:38:21'),
(35, 'Permission', 'Permission', 'Permission', '2019-12-23 13:17:39', '2019-12-23 13:17:39');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(22, 17),
(23, 17),
(24, 17),
(25, 18),
(26, 17),
(27, 17),
(28, 18),
(30, 16),
(32, 19),
(35, 17);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `main_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `list_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_count` int(11) NOT NULL,
  `hot_news` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `short_description`, `description`, `slug`, `category_id`, `created_by`, `main_image`, `thumb_image`, `list_image`, `view_count`, `hot_news`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Motorola Razr (2019) Fold-able Smartphone', 'Motorola Razr (2019) Foldable Smartphone Release Date Delayed Due to Supply Issues\r\nMotorola Razr (2019) pre-orders were supposed to start in December, while shipments were to start in January.', '<p><strong>Motorola is delaying the launch of the foldable Razr smartphone in North America, saying demand for the $1,500 device has outstripped its supply predictions.</strong></p>\r\n\r\n<p><strong>The handset, announced in November, was supposed to become available for pre-order in December and begin shipping to customers in January. &quot;Motorola has decided to adjust Razr&#39;s presale and launch timing to better meet consumer demand,&quot; the Lenovo Group Ltd. unit said Friday in a statement. &quot;We are working to determine the appropriate quantity and schedule to ensure that more consumers have access to Razr at launch.&quot;</strong></p>\r\n\r\n<p><strong>The company declined to say when the phone would go on sale, but said it does not anticipate a &quot;significant shift&quot; from the original launch timeline. In an interview with Bloomberg News earlier this year, Motorola President Sergio Buniac said he hoped for &quot;a little bit more&quot; demand than supply.</strong></p>\r\n\r\n<p><strong><a href=\"https://gadgets.ndtv.com/mobiles/motorola-phones\" target=\"_self\">Motorola&nbsp;</a>did not blame technical issues for its delay. Other companies, such as Samsung Electronics Co., have struggled to launch foldable devices on time due to issues with screens failing. When Motorola announced the device, design chief Ruben Castano said &quot;We feel like we&#39;ve really developed a robust solution.&quot;</strong></p>\r\n\r\n<p><strong>The foldable&nbsp;<a href=\"https://gadgets.ndtv.com/motorola-razr-2019-price-in-india-91282\" target=\"_self\">Razr&nbsp;</a>looks similar to the original model from the early 2000s, but runs Google&#39;s Android operating system and features touchscreens inside and out. Motorola previously said the phone would also go on sale in Europe, Latin America, Asia, and Australia, but it did not share new launch information for those regions on Friday.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://gadgets.ndtv.com/motorola-razr-2019-price-in-india-91282\"><img alt=\"Motorola Razr (2019)\" src=\"https://i.gadgets360cdn.com/products/small/motorola-razr-2019-db-240x180-1573708469.jpg?downsize=96:*&amp;output-quality=70&amp;output-format=jpg\" style=\"float:left; height:183px; width:90px\" /></a></p>\r\n\r\n<h3><a href=\"https://gadgets.ndtv.com/motorola-razr-2019-price-in-india-91282\">Motorola Razr (2019)</a></h3>', 'motorola-razr-2019-fold-able-smartphone', 1, 1, 'post_main_1.webp', 'post_thumb_1.webp', 'post_list_1.webp', 241, 1, 1, '2019-12-24 13:57:17', '2020-01-18 12:03:29'),
(2, 'Nvidia killer', 'AMD confirms ‘Nvidia killer’ graphics card will be out in 2020', '<p><strong>AMD&rsquo;s chief executive has confirmed that a high-end&nbsp;<a href=\"https://www.techradar.com/news/amd-navi\">Navi graphics card</a>&nbsp;will be released this year.</strong></p>\r\n\r\n<p><strong>In a video interview entitled &lsquo;The Bring Up&rsquo; posted on YouTube by AMD (see below), Lisa Su noted that people were wondering about Big Navi &ndash; said high-end GPU, which has previously been referred to as the &lsquo;<a href=\"https://www.techradar.com/news/amd-navi-23-could-be-an-nvidia-killer-graphics-card-that-launches-in-2020\">Nvidia killer</a>&rsquo; in terms of how it will take on the top-end RTX cards.</strong></p>\r\n\r\n<p><strong>The CEO then said: &ldquo;I can say you&rsquo;re going to see Big Navi in 2020.&rdquo;</strong></p>\r\n\r\n<ul>\r\n	<li><strong><a href=\"https://www.techradar.com/news/computing-components/graphics-cards/amd-vs-nvidia-who-makes-the-best-graphics-cards-699480\">AMD vs Nvidia</a>: which should be your next graphics card?</strong></li>\r\n	<li><strong>Check out our&nbsp;<a href=\"https://www.techradar.com/news/amd-radeon-rx-5700-vs-rx-5700-xt-whats-the-best-amd-gpu-for-you\">Radeon RX 5700 vs RX 5700 XT</a>&nbsp;shoot-out</strong></li>\r\n	<li><strong>These are all the&nbsp;<a href=\"https://www.techradar.com/news/computing-components/graphics-cards/best-graphics-cards-1291458\">best graphics cards</a>&nbsp;of 2020</strong></li>\r\n</ul>\r\n\r\n<p><strong>This is the first concrete confirmation we&rsquo;ve had that AMD will definitely be unleashing its big graphics firepower this year, although rumors have always pointed to this, and indeed comments that Su made in a recent roundtable Q&amp;A session at CES 2020.</strong></p>\r\n\r\n<p><strong>At CES, the&nbsp;<a href=\"https://www.techradar.com/news/amd-confirms-ryzen-4000-cpus-will-be-out-in-2020-and-probably-that-nvidia-killer-gpu-too\">CEO stressed how important a top-end GPU was to AMD</a>, and said that &ldquo;you should expect that we will have a high-end Navi, although I don&rsquo;t usually comment on unannounced products&rdquo;.</strong></p>\r\n\r\n<p><strong>The hint was certainly that this GPU would arrive in 2020, but she didn&rsquo;t actually say that. So at least now we have a confirmation, even if that really isn&rsquo;t a surprise to anyone who&rsquo;s been following AMD&rsquo;s rumored progress in the graphics card arena lately.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/6gTrhD81jkk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\r\n\r\n<h2><strong>Battle of the flagships</strong></h2>\r\n\r\n<p><strong>There has been no shortage of speculation around all this, including that the high-end graphics card could be&nbsp;<a href=\"https://www.techradar.com/news/amds-high-end-navi-gpu-could-be-30-faster-than-nvidias-rtx-2080-ti-rumor-hints\">30% faster than Nvidia&rsquo;s RTX 2080 Ti</a>&nbsp;(if the unknown GPU which is the subject of that leak is indeed Big Navi, and that&rsquo;s a fairly sizeable if).</strong></p>\r\n\r\n<p><strong>Of course, AMD needs to move quickly enough with the release to make sure it isn&rsquo;t competing against the RTX 3080 Ti (which&nbsp;<a href=\"https://www.techradar.com/news/nvidias-next-gen-ampere-gpus-promise-jaw-dropping-performance-boost-over-turing\">might be up to 50% faster</a>&nbsp;than its Turing predecessor, so the rumor mill reckons &ndash; although that might be just with ray tracing).</strong></p>\r\n\r\n<p><strong>Nvidia&rsquo;s next-gen Ampere GPUs are expected to launch in the latter half of 2020, in case you were wondering.</strong></p>\r\n\r\n<p><strong>Another potential sign that we might see the high-end Navi graphics cards sooner rather than later is that an&nbsp;<a href=\"https://www.techradar.com/news/amd-radeon-rx-5950xt-spotted-again-is-the-nvidia-killer-coming-sooner-than-we-think\">EEC filing has just been made for the Radeon RX 5950XT</a>. And a GPU with the same name has been filed previously (back in June 2019), indicating that the 5950XT could be the flagship model for 2020. As ever, we need to take such speculation with a good degree of caution, though.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'nvidia-killer', 3, 25, 'post_main_2.jpg', 'post_thumb_2.jpg', 'post_list_2.jpg', 328, 1, 1, '2019-12-24 14:09:39', '2020-01-18 11:50:58'),
(3, 'New Huawei P40 images', 'New Huawei P40 images show off Samsung Galaxy S20 challenger\r\nThese Huawei P40 renders show a triple rear and dual front camera setup to take on the Samsung Galaxy S11', '<p><strong><a href=\"https://www.t3.com/us/news/huawei-p40-release-date-price-specs-news\">Huawei P40</a>&nbsp;is due to be announced in March this year. The Chinese company&#39;s next range of flagship phones (the Huawei P40 Lite and the higher-powered Huawei P40 Pro) are set to directly compete against the&nbsp;<a href=\"https://www.t3.com/us/features/samsung-galaxy-s11-news-leaks-rumours-release-date-price-specs\">Samsung Galaxy S11</a>&nbsp;(or S20) range in a battle to see who&#39;ll wear the Android crown.&nbsp;</strong></p>\r\n\r\n<p><strong>We&#39;ve heard plenty about the new range of Samsung Galaxies, but comparatively, very little has been revealed around the Huawei devices (other than the P40 Lite, which is all but confirmed to be a&nbsp;<a href=\"https://www.t3.com/us/news/huawei-p40-lite-will-actually-not-be-a-p40-phone-heres-why\">rebranded Huawei Nova 6 SE</a>). However, an insider has created a series of renders based on leaked information, which gives us a visual representation of how the phone is likely to look.&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li><strong><a href=\"https://www.t3.com/us/features/best-android-phones\">Best Android Phones</a></strong></li>\r\n	<li><strong><a href=\"https://www.t3.com/us/news/best-smartphone-deals\">Best Phone Deals</a></strong></li>\r\n</ul>\r\n\r\n<p><strong>As the&nbsp;<a href=\"https://www.t3.com/us/news/new-huawei-p40-and-p40-pro-images-could-blow-samsung-galaxy-s11-away\">previous renders</a>&nbsp;were very dark, leakers&nbsp;<a href=\"https://www.91mobiles.com/\" target=\"_blank\">91Mobiles</a>&nbsp;have tried again with the images above. The new phone is shown to contain a similar rectangular module to the Samsung Galaxy S20 Plus&#39;&nbsp;<a href=\"https://www.t3.com/us/news/samsung-galaxy-s11s20-plus-video-leaks-showing-phone-in-real-life\">rumoured camera setup</a>.&nbsp;</strong></p>\r\n\r\n<p><strong>However, the P40 contains one less camera here, showing what is said by outlet&nbsp;<a href=\"https://www.gsmarena.com/new_huawei_p40_renders_show_a_triple_rear_and_dual_front_cameras-news-41043.php\" target=\"_blank\">GSMArena</a>&nbsp;to be a time-of-flight sensor, main and ultra-wide camera lens. Perhaps the P40 Pro, the range&#39;s top-end model, will be sporting the additional camera to rival the S20 Plus.&nbsp;</strong></p>\r\n\r\n<p><strong>The selfie setup is also different, with the Huawei P40 sporting dual punch holes in the front of the camera on a 6.1&quot; screen. Huawei seems to have adopted this design in part from the&nbsp;<a href=\"https://www.t3.com/us/reviews/samsung-galaxy-s10-plus-review\">Samsung Galaxy S10 Plus</a>, which also packed two separate selfie cameras, one with a 10MP sensor and one with an 8MP depth-specific sensor.&nbsp;</strong></p>\r\n\r\n<p><strong>There&#39;s no annotation to describe what kind of specs the Huawei cameras will have, nor does 91Mobiles reveal the information that lead them to include a second camera in this render. There&#39;s also no word (yet) on whether the standard P40 will come with 5G capabilities.&nbsp;</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://cdn.mos.cms.futurecdn.net/qZcW5A4F4bfMPfaW3DmYA7-1920-80.jpg\" style=\"height:378px; width:671px\" /></strong></p>\r\n\r\n<p>&nbsp;</p>', 'new-huawei-p40-images', 1, 26, 'post_main_3.jpg', 'post_thumb_3.jpg', 'post_list_3.jpg', 50006, 0, 1, '2019-12-24 14:13:12', '2020-01-22 16:41:55'),
(6, 'Dell XPS 15 (2019) review', 'The Dell XPS 15 (2019) is one of the best laptops you can buy. A stunning 4K OLED display and a Intel Core i9 make it a great tool for content creators on the move.', '<h2><strong>HIGHLIGHTS</strong></h2>\r\n\r\n<ul>\r\n	<li><strong>The Dell XPS 15 2019 with all the bells and whistles costs Rs 2.2 lakhs.</strong></li>\r\n	<li><strong>The top variant comes with a 15.6-inch 4K OLED display.</strong></li>\r\n	<li><strong>The 2019 model only comes with 9th Gen Intel Core i9 processors.</strong></li>\r\n</ul>\r\n\r\n<p><strong>&nbsp;</strong></p>\r\n\r\n<p><strong>A few&nbsp;years ago, if you had asked which is the best premium lightweight laptop you can buy, we would have pointed at that year&rsquo;s Apple MacBook Pro model. However, in the last couple of years, the Windows universe has improved by leaps and bounds. Windows 10 has itself gotten more polish than ever and laptops makers have upped their game when it comes to the hardware. Dell has been a forerunner in the premium segment with its XPS series and it juts showcased the updated lineup for 2020 at the CES 2020.</strong></p>\r\n\r\n<p><strong>However, the new models with their beautifully crafted builds and tiny bezel displays will take a few months to make it to our sores. Until then, Dell has on offer its 2019 refresh for the XPS series if you want to buy a new laptop now. The XPS 13 models are good for those looking for a compact new laptop but the XPS 15 is where the best of everything comes alive. The XPS 15 gets more firepower and a selection of beautiful displays to choose from. If you are a content creator, it can&rsquo;t get any better than the XPS 15 on paper.</strong></p>\r\n\r\n<p><strong>Is it really as good as it sounds? To find out, I picked up the top-notch model of the Dell XPS 15, complete with 4K OLED display. Yes, the one that costs Rs 2.2 lakhs.</strong></p>\r\n\r\n<h2><strong>Design: Who says laptops are undesirable</strong></h2>\r\n\r\n<p><strong>Dell&rsquo;s XPS series laptops always try to stay true to an industrial design that&rsquo;s easy on the eyes and light in the hands. The 2019 refresh doesn&rsquo;t change from that massively and retains most of the elements that make an XPS an XPS laptop. You still get the same thin profile that creates an illusion of two silver plates floating at a gap from each other on the desk. The XPS 15 has a metal lid with a silver matte finish and Dells logo in the center. The matte finish makes the laptop look classy and on an office desk, it helps the laptop blend in well with the surroundings. The lid thankfully keeps smudges at bay.<img alt=\"\" src=\"https://akm-img-a-in.tosshub.com/indiatoday/images/bodyeditor/202001/Dell_XPS_15_2019__7_-x675.jpg?9fEes4MRsjemeyepemXocPww6HQ3qZZe\" style=\"height:281px; width:500px\" /></strong></p>\r\n\r\n<p><strong>The blackened sides help hide the bulk of the XPS 15 as well as undesirable exposed ports. Talking fo ports, you get a decent choice of connectivity options. There&rsquo;s a Thunderbolt 3 with DisplayPort, two USB 3.1 Gen 1 ports, an HDMI 2.0 port, SD card reader (SD, SDHC, SDXC) and a 3.5mm combo jack. There&rsquo;s a proprietary charging port as well.</strong></p>\r\n\r\n<p><strong>Open the lid and you get this nicely finished dark-themed interior. The deck has this nice looking carbon-fibre finish and for whom it matters, it is actual carbon fiber to offer strength while maintaining the lightweight. While it looks great and has a soft-touch finish, it attracts smudges unlike anything and hence, you have to keep a cloth to keep wiping it. The keyboard keys are matte plastic while the touchpad has a smooth texture that&rsquo;s easy on the fingers. The display has an all-glass finish with narrow bezels on the outer sides.</strong></p>\r\n\r\n<p><strong>Oh, the power button has a fingerprint sensor embedded in it to make unlocking your laptop easier. The best part is that works quite well. Old XPS users will be happy to know that the webcam goes back to the top bezel and now uses a macro camera.</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://akm-img-a-in.tosshub.com/indiatoday/images/bodyeditor/202001/Dell_XPS_15_2019__4_-x675.jpg?ncQXUzWqPSeo2NkWdhoK2hjvr5gjUIwo\" style=\"height:281px; width:500px\" /></strong></p>\r\n\r\n<p><strong>The XPS 15 is meant for content creators and Dell has ensured that the computing performance doesn&rsquo;t suffer despite carrying the slim profile. On my unit, I had a 9th Gen Intel Core i9-9990K processor clocked at 2.4GHz that&rsquo;s coupled with 32GB DDR4 RAM and 1TB PCIe SSD storage. To help with video and photo editing, Dell has thrown in an Nvidia GTX 1650 graphics card for good measure.</strong></p>', 'dell-xps-15-2019-review', 3, 1, 'post_main_6.jpeg', 'post_thumb_6.jpeg', 'post_list_6.jpeg', 237, 0, 1, '2019-12-24 16:52:17', '2020-01-18 11:46:40'),
(7, 'The biggest PC games releasing in the next 3 months', 'The new games we\'ll be playing and talking about throughout the rest of January, February, and March.', '<p>Except when a bunch of games are pushed from the end of one year to the beginning of the next, the winter release calendar can be a little light. But the slower pace gives us time to catch up on&nbsp;<a href=\"https://www.pcgamer.com/game-of-the-year-awards-2019/\">last year&#39;s best games</a>, and it&#39;s not as if it&#39;s a complete doledrum: Pok&eacute;mon-like MMO Temtem looks like a strong timekiller for cold winter nights, and Warcraft 3: Reforged will keep the nostalgic feelings simmering. There are a couple long-awaited games coming, too: Ori and the Will of the Wisps and Mount &amp; Blade 2.</p>\r\n\r\n<p>Plan your winter entertainment with the calendar below, which features the PC releases we&#39;re most looking forward to in January, February, and March, plus a glimpse at what April will look like (it&#39;ll be&nbsp;<a href=\"https://www.pcgamer.com/cyberpunk-2077-is-delayed/\">Cyberpunk 2077-free</a>, I&#39;m afraid, but that means we can take our time playing Resident Evil 3 Remake without a giant RPG competing for attention). For more, see our guide to all of the&nbsp;<a href=\"https://www.pcgamer.com/new-games-2020/\">new games of 2020</a>.</p>\r\n\r\n<h2>January</h2>\r\n\r\n<p><strong>Dragon Ball Z: Kakarot</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Bf85wwJuFBE\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\r\n<p><strong>Release date:</strong>&nbsp;Out now<br />\r\n<strong>What is it?</strong>&nbsp;An action RPG retelling of the Dragon Ball Z saga, with side quests, fishing, and destructible battlefields to recreate the series&#39; reckless battles&mdash;though I doubt they&#39;ll take as long as they did in the show.<br />\r\n<strong>Links:</strong>&nbsp;<a href=\"https://store.steampowered.com/app/851850/DRAGON_BALL_Z_KAKAROT/\" target=\"_blank\">Steam</a>,&nbsp;<a href=\"https://www.humblebundle.com/store/promo/dragon-ball-z-kakarot/?hmb_source=store_home\" target=\"_blank\">Humble</a></p>\r\n\r\n<p><strong>Temtem</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/pNHbeZiWuIc\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\r\n<p><strong>Release date:</strong>&nbsp;January 21 (Early Access)<br />\r\n<strong>What is it?</strong>&nbsp;It&#39;s a Pok&eacute;mon MMO on PC, basically. Temtem (which are also the name of the world&#39;s creatures) can be caught, traded, bred, and thrust into battle as part of the solo or co-op story quests (the villain is Team Rocket analog Clan Belsoto) and against other players.<br />\r\n<strong>Links</strong>:&nbsp;<a href=\"https://store.steampowered.com/app/745920/Temtem/\" target=\"_blank\">Steam</a>,&nbsp;<a href=\"https://www.humblebundle.com/g/temtem\" target=\"_blank\">Humble</a></p>\r\n\r\n<p><strong>The Walking Dead: Saints and Sinners</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Sw9b_fiyUzg\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\r\n<p><strong>Release date:</strong>&nbsp;January 23<br />\r\n<strong>What is it?&nbsp;</strong>A VR-only survival game in which you work with or against NPC survivors and factions to save a zombie-infested, partially flooded New Orleans. The developer promises &quot;gut-wrenching&quot; choices. We&#39;ll see how it stacks up to other videogame attempts at The Walking Dead&#39;s &#39;but who are the real monsters here&#39; themes.<br />\r\n<strong>Link:&nbsp;</strong><a href=\"https://store.steampowered.com/app/916840/The_Walking_Dead_Saints__Sinners/\" target=\"_blank\">Steam</a>,&nbsp;<a href=\"https://www.humblebundle.com/store/the-walking-dead-saints-sinners?hmb_source=search_bar\" target=\"_blank\">Humble</a></p>\r\n\r\n<p><strong>Journey to the Savage Planet</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/jHa6G-skppk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\r\n<p><strong>Release date:</strong>&nbsp;January 28<br />\r\n<strong>What is it?</strong>&nbsp;Journey to the Savage Planet looks No Man&#39;s Sky-ish, but takes place on one uncharted planet and is more adventure than survival, with support for two player co-op. Chris&nbsp;<a href=\"https://www.pcgamer.com/journey-to-the-savage-planet-gameplay/\">got a chance to play it last year</a>, and ate a giant uvula out of a giant skull, if you want a sense of the tone.<br />\r\n<strong>Link:&nbsp;</strong><a href=\"https://www.epicgames.com/store/en-US/product/journey-to-the-savage-planet/home\" target=\"_blank\">Epic Store</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'the-biggest-pc-games-releasing-in-the-next-3-months', 5, 1, 'post_main_7.jpg', 'post_thumb_7.jpg', 'post_list_7.jpg', 705, 0, 1, '2019-12-29 12:03:17', '2020-01-18 12:46:12'),
(8, 'Tesla Cybertruck Armor Glass In A New Test', 'A video showing a Volkswagen Golf holding up to a massive steel ball thrown at it several times as well as repeated blows by a hammer was recently spotted online via InsideEVs. The glass of the vehicle only broke when a sledgehammer was used to strike it. What makes the video more interesting is the fact that it outperforms that Tesla Cybertruck, particularly when a protective film was added to its glass, making it almost indestructible, reports InsideEVs.', '<h3>KEY POINTS</h3>\r\n\r\n<ul>\r\n	<li>Tesla Cybertruck Armor Glass was shattered when a steel ball was thrown at it during its official unveiling</li>\r\n	<li>A new video shows that VW Golf beats the glass of Tesla Cybertruck</li>\r\n	<li>The video shows how the VW Golf&#39;s glass becomes almost indestructible when a protective film was applied to it</li>\r\n</ul>\r\n\r\n<p>The video was from a YouTube user named&nbsp;<a href=\"https://cms.ibtimes.com/patent-reveals-rivians-plan-providing-r1t-driverless-transportation-tech-2889970\" target=\"_blank\">CarHax</a>, who teased that Tesla CEO Elon Musk would be jealous of his vehicle&rsquo;s window. The video is available on his YouTube channel titled &ldquo;How hard is a normal window compared to Tesla Cybertruck window.&rdquo; The YouTuber also says:</p>\r\n\r\n<blockquote>\r\n<p>How hard are the side windows on a normal car compare to Tesla Cybertruck windows?&nbsp;</p>\r\n\r\n<p>I found out that the side windows are very hard to break.</p>\r\n\r\n<p>After I broke the normal window I decided to make the new window indestructible adding one the exterior a 4mil safety film and on the interior a 1.5mil Film.</p>\r\n</blockquote>\r\n\r\n<p>Based on the video shared by the YouTuber, anyone can see that a large and heavy-looking steel ball is thrown at the side glass of the VW Golf repeatedly. With every throw, there is increased speed and force. Seeing that the glass would not break with the steel ball, the YouTuber changes to a large hammer. He lands several strikes on the glass with increased intensity in every blow, but the glass would not give in.</p>\r\n\r\n<p><img alt=\"\" src=\"https://s1.ibtimes.com/sites/www.ibtimes.com/files/styles/embed/public/2019/11/22/tesla-ceo-elon-musk-unveils-the-all-electric.jpg\" style=\"height:351px; width:624px\" /></p>\r\n\r\n<p>The owner of the video decides to change the hammer to a sledgehammer, at this point, the glass of the VW Golf shatters. Surprisingly, the&nbsp;<a href=\"https://cms.ibtimes.com/evgo-will-soon-accommodate-tesla-vehicles-san-francisco-2889264\" target=\"_blank\">YouTuber</a>&nbsp;adds protective films to the vehicle&rsquo;s glass and installs it on the same vehicle. At this point, the glass was close to indestructible that a sledgehammer blow could not break it.&nbsp;</p>\r\n\r\n<p>In the video, the YouTube user is seen getting knocked and almost took a tumble when he strikes the glass by a sledgehammer again. The blow must be very strong since the door and glass flex could be seen affected by the repeated blow. The door seals also absorb the shock, and the vehicle can be seen moving a little bit when it received a hard blow.</p>\r\n\r\n<p>&nbsp;</p>\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/TWzUh53H_VU\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'tesla-cybertruck-armor-glass-in-a-new-test', 6, 25, 'post_main_8.jpg', 'post_thumb_8.jpg', 'post_list_8.jpg', 1234, 0, 1, '2019-12-29 12:05:54', '2020-01-18 12:55:16'),
(9, 'Samsung Wireless Charger Duo Pad', 'Amazon offers a massive discount on the Samsung Wireless Charger Duo Pad', '<p><strong>Amazon offers a massive discount on the Samsung Wireless Charger Duo Pad, the accessory that allows you to charge up two smartphones at the same time. In fact, the wireless charger is sold by Samsung itself, although the order will be fulfilled through Amazon.<br />\r\n<br />\r\nSamsung Wireless Charger Duo Pad usually sells for $100, but Amazon has it discounted by 40% for a limited time. There&#39;s one thing that you need to pay attention though, as the black color is the cheapest at the moment. If you choose to buy the white version, you&#39;ll only receive a 20% discount.<br />\r\n<br />\r\nThanks to the Fast Charge 2.0 technology, the accessory will charge these compatible Samsung smartphones faster than others:&nbsp;<a href=\"https://www.phonearena.com/phones/Samsung-Galaxy-S9_id10716\" target=\"_blank\">Galaxy S9</a>,&nbsp;<a href=\"https://www.phonearena.com/phones/Samsung-Galaxy-S9+_id10717\" target=\"_blank\">Galaxy S9+</a>,&nbsp;<a href=\"https://www.phonearena.com/phones/Samsung-Galaxy-Note-9_id10857\" target=\"_blank\">Note 9</a>,&nbsp;<a href=\"https://www.phonearena.com/phones/Samsung-Galaxy-S10_id10959\" target=\"_blank\">Galaxy S10</a>, S10+, and S10e. Since the charger is Qi certified, it&#39;s compatible with any device that supports the technology and can charge on it, including the Samsung&nbsp;<a href=\"https://www.amazon.com/s?k=Samsung+Galaxy+S8&amp;rh=n%3A2335752011%2Cp_n_availability%3A-1%2Cp_n_condition-type%3ANew&amp;tag=phone1e1d-20&amp;linkCode=osi\" target=\"_blank\">Galaxy S8</a>,&nbsp;<a href=\"https://www.phonearena.com/phones/Samsung-Galaxy-Note-8_id10478\" target=\"_blank\">Samsung Galaxy Note 8</a>, Apple&nbsp;<a href=\"https://www.amazon.com/s?k=Apple+iPhone+8&amp;rh=n%3A2335752011%2Cp_n_availability%3A-1%2Cp_n_condition-type%3ANew&amp;tag=phone1e1d-20&amp;linkCode=osi\" target=\"_blank\">iPhone 8</a>, and&nbsp;<a href=\"https://www.phonearena.com/phones/Apple-iPhone-X_id10414\" target=\"_blank\">Apple iPhone X</a>.<br />\r\n<br />\r\nBesides any Qi-compatible smartphone, you&#39;ll be able to charge up any smartwatch that supports the technology at the same time. If you&#39;re determined to buy the Samsung Wireless Charger Duo Pad while it&#39;s on sale on Amazon, you&#39;ll want to know that the US version comes with one-year product warranty.</strong></p>', 'samsung-wireless-charger-duo-pad', 1, 1, 'post_main_9.jpg', 'post_thumb_9.jpg', 'post_list_9.jpg', 876, 0, 1, '2019-12-29 12:23:43', '2020-01-18 11:29:59'),
(10, 'Cheapest Laptop in The World', 'We found the cheapest 16GB RAM laptop with a 1TB SSD', '<p>Cheap laptops often come short on system memory and internal storage - which often backfires in providing a good user experience.</p>\r\n\r\n<p>We cringed at the world&rsquo;s cheapest laptop,&nbsp;<a href=\"https://www.techradar.com/news/this-is-the-worlds-cheapest-laptop-but-you-probably-shouldnt-buy-it\" target=\"_blank\">Thomson X5 Neo 10</a>, with its 2GB of system memory and 32GB onboard storage. That&#39;s hardly enough to run Windows 10, let alone Windows 7.</p>\r\n\r\n<p>But not all cheap laptops are the same. The&nbsp;<a href=\"https://www.gearbest.com/ultrabooks/pp_3002112258396090.html\" target=\"_blank\">Lhmzniy A9</a>, although a mouthful of a name, costs just $375 at Gearbest using the code W40C422F929EB001 at checkout.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>These are the&nbsp;<a href=\"https://www.techradar.com/news/best-business-laptops\" target=\"_blank\">best business laptops</a>&nbsp;on the market</li>\r\n	<li>Check out our list of the&nbsp;<a href=\"https://www.techradar.com/news/best-rugged-laptops\" target=\"_blank\">best rugged laptops</a></li>\r\n	<li>We curated the&nbsp;<a href=\"https://www.techradar.com/news/best-business-tablets\" target=\"_blank\">best business tablets</a>&nbsp;right now</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.mos.cms.futurecdn.net/JdBpt7zyga9ikPiGHE5ZFQ-320-80.jpg\" style=\"float:left; height:120px; width:120px\" /></p>\r\n\r\n<p><strong>Lhmzniy A9 laptop with 16GB RAM and 1TB SSD -&nbsp;</strong><a href=\"https://www.gearbest.com/ultrabooks/pp_3002112258396090.html\" target=\"_blank\"><strong>$375 at Gearbest</strong></a></p>\r\n\r\n<p>At last - a vendor that saw sense in combining a decent CPU with plenty of storage and a fast solid state drive. The A9 has as much memory and storage capacity as a flagship laptop and even if the processor is on the weaker side, it should be powerful enough for most tasks.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>It comes with 16GB of RAM and a massive 1TB solid state drive (M.2 SATA), equalling the top spec on the&nbsp;<a href=\"https://www.techradar.com/reviews/microsoft-surface-laptop-3-15-inch\" target=\"_blank\">Microsoft Surface Laptop 3</a>.</p>\r\n\r\n<p>However there is no Core i7 processor here, as the A9 contains an Intel Celeron 3867U CPU, albeit one of the faster ones launched in 2019, which can be 80% faster than an Intel Core i3 (from 2010 and on the Passmark test).&nbsp;</p>\r\n\r\n<p>Other than that though, there aren&#39;t many corners cut. We were surprised to find that it has an all-metal magnesium aluminium chassis with a 14.1-inch full HD display (TN, not IPS sadly) and super narrow bezels. Connectivity wise, the only disappointment is the lack of Type-C connectors.</p>\r\n\r\n<p>There&#39;s also two USB 3.0 ports, one mini HDMI, one audio connector, one card reader and one proprietary power port. The spec sheet contains three additional features that are usually found on more expensive laptops; a backlit keyboard, two batteries and a privacy cover for the webcam.</p>\r\n\r\n<ul>\r\n	<li>16GB of memory used to be restricted to&nbsp;<a href=\"https://www.techradar.com/news/best-mobile-workstations\" target=\"_blank\">mobile workstations</a>&nbsp;in the olden days - see how far we&#39;ve come</li>\r\n</ul>\r\n\r\n<h2>&nbsp;</h2>', 'cheapest-laptop-in-the-world', 3, 1, 'post_main_10.jpg', 'post_thumb_10.jpg', 'post_list_10.jpg', 23146, 0, 1, '2019-12-29 12:26:38', '2020-01-21 15:47:41'),
(11, 'This Acer Predator laptop', 'This Acer Predator laptop with an RTX 2060 is down to $1,400 right now\r\nIf you\'re looking to get a new gaming laptop for the new year, this deal might be of interest to you. One of Acer\'s high-end Predator laptops is down to $1,400 on the Microsoft Store, a discount of $260 from the original MSRP.', '<p><strong>If you&#39;re looking to get a new&nbsp;<a href=\"https://www.pcgamer.com/best-gaming-laptop/\">gaming laptop</a>&nbsp;for the new year, this deal might be of interest to you. One of Acer&#39;s high-end Predator laptops is down to $1,400 on the Microsoft Store, a discount of $260 from the original MSRP.</strong></p>\r\n\r\n<p><strong>This laptop has a 15.6-inch 1080p 144Hz screen, an Intel Core i7-9750H processor, 16GB of 2666 MHz RAM, a large 512GB SSD, and an Nvidia GeForce RTX 2060 graphics card. It has plenty of connectivity options, including Thunderbolt 3, HDMI 2.0, mini DisplayPort, an Ethernet LAN connector, and a headphone/microphone combo jack.</strong></p>\r\n\r\n<p><strong>The main downside is that the RTX 2060 graphics card in this laptop is&nbsp;<a href=\"https://www.acer.com/ac/en/US/content/predator-model/NH.Q50AA.004\">the Max-Q variant</a>, so gaming performance won&#39;t be as great as it would be with the full 2060. Still, you get ray-tracing support and a 144Hz display in a package under $1,500. We reviewed the RTX 2080 version&nbsp;<a href=\"https://www.pcgamer.com/acer-predator-triton-500-review/\">last year</a>, and we came away impressed with the thin design and decent keyboard.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE3NTx7?ver=0ba7&amp;q=90&amp;m=6&amp;h=270&amp;w=270&amp;b=%23FFFFFFFF&amp;f=jpg&amp;o=f&amp;aim=true\" style=\"float:left; height:170px; width:170px\" /></p>\r\n\r\n<p><a href=\"https://www.microsoft.com/en-us/p/acer-predator-triton-500-pt515-51-75bh-gaming-laptop/8s9ztzsqb47v?activetab=pivot:overviewtab\"><strong>Acer Predator Triton 500 | $1,399.99 (save $260)</strong></a><br />\r\nThis high-end laptop should be able to handle just about any game you throw at it, and competitive games can take full advantage of the 144Hz display. The choice of a Max-Q graphics card is a bit disappointing, though.</p>', 'this-acer-predator-laptop', 3, 1, 'post_main_11.jpg', 'post_thumb_11.jpg', 'post_list_11.jpg', 993, 0, 1, '2019-12-29 12:28:21', '2020-01-18 11:56:41'),
(13, 'THIS is how powerful the Samsung', 'THIS is how powerful the Samsung Galaxy S11/Galaxy S20 is set to be\r\nNew specs from the upcoming flagship Samsung suggest the phone will be packing the latest powerful chipset', '<p><strong>According to Geekbench, first spotted by&nbsp;<a href=\"https://www.gsmarena.com/samsung_galaxy_s20_5g_visits_geekbench_with_12gb_ram_and_snapdragon_865-news-41063.php\" target=\"_blank\">GSMArena</a>, Samsung&#39;s latest will use the Qualcomm Snapdragon 865 chipset. Previously hinted at in an announcement by Qualcomm, the latest Snapdragon chip is&nbsp;<a href=\"https://www.t3.com/au/news/samsung-galaxy-s11-will-be-even-faster-than-the-iphone-11-pro\">set to be 25% faster than the previous model</a>, which had been used in the&nbsp;<a href=\"https://www.t3.com/au/reviews/samsung-galaxy-s10-review\">Samsung Galaxy S10</a>.</strong></p>\r\n\r\n<p><strong>It&#39;s due to make processing difficult tasks such as&nbsp;<a href=\"https://www.t3.com/au/news/latest-samsung-galaxy-s11-leak-hints-at-amazing-iphone-11-pro-beating-camera-with-8k-video\">8K video</a>&nbsp;quick and easy, and is designed with 5G in mind for Samsung&#39;s inevitable 5G versions of its flagship. If, of course, it doesn&#39;t come as standard anyway. The specs also include 12GB RAM, which was previously reported in another unconfirmed rumour, and is operating Android 10.&nbsp;</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://cdn.mos.cms.futurecdn.net/083956535ccee747f9803d4e3379968a-1920-80.jpg\" style=\"height:351px; width:624px\" /></strong></p>\r\n\r\n<p><strong>The spec sheet was only for the standard Samsung Galaxy S11/S20 and not for its rumoured bigger siblings, which the internet is calling the S20 Plus and S20 Ultra.&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>We&#39;re still not sure what the specifications for those will be, but as the Snapdragon 865 is 5G ready, both phones are likely to include the same chip in their design, despite the inevitable variations in battery life, screen size and choice of 4G or 5G networks.&nbsp;</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://cdn.mos.cms.futurecdn.net/pViGuqRVRtmFSLLdzeLfPQ-1920-80.jpg\" style=\"height:351px; width:624px\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Geekbench usually give phones a pair of scores, called &quot;single core&quot; and &quot;multi-core&quot; scores to easily compare how powerful those phones are side-by-side. However, GSMArena claims that no such scores have been released, with the current scores sitting above the specs in the image above coming from a pre-production unit.&nbsp;</strong></p>\r\n\r\n<p><strong>It&#39;ll be interesting to see where Samsung Galaxy S11/S20, and its new chipset, stack up against rivals like the&nbsp;<a href=\"https://www.t3.com/au/reviews/apple-iphone-11-pro-review\">iPhone 11 Pro</a>. Watch this space.</strong></p>', 'this-is-how-powerful-the-samsung', 1, 1, 'post_main_13.jpg', 'post_thumb_13.jpg', 'post_list_13.jpg', 343, 0, 1, '2019-12-30 13:56:50', '2020-01-18 11:24:15'),
(14, 'Huawei says it’s selling 100,000', 'Huawei says it’s selling 100,000 foldable phones a month\r\nHuawei says its foldable Mate X phone is selling at a clip of 100,000 per month since it launched in China in November, according to Android Central. The Mate X, which is only for sale in China, sells for 16,999 yuan, or about $2,400.', '<p>Huawei says its foldable Mate X phone is selling at a clip of 100,000 per month since it launched in China in November,&nbsp;<a href=\"https://www.androidcentral.com/heres-how-many-foldable-phones-huawei-has-sold-so-far\">according to&nbsp;<em>Android Central</em></a>. The Mate X, which is only for sale in&nbsp;<a href=\"https://www.theverge.com/circuitbreaker/2019/10/23/20928258/huawei-mate-x-release-date-price-china\">China, sells for 16,999 yuan, or about $2,400</a>.</p>\r\n\r\n<p>That&rsquo;s just shy of the sales estimates for rival Samsung&rsquo;s Galaxy Fold, although it&rsquo;s not totally clear exactly how shy. Samsung executive Young Sohn&nbsp;<a href=\"https://www.theverge.com/2019/12/12/21019002/samsung-galaxy-fold-smartphone-foldable-phone-sales-one-million-sold\">incorrectly</a>&nbsp;claimed the Galaxy Fold had sold 1 million units, but&nbsp;<a href=\"https://www.theverge.com/2019/9/23/20878785/samsung-galaxy-fold-us-price-release-date-new-fixed-att-best-buy\">later updated that figure at CES 2020</a>&nbsp;to &ldquo;400,000 to 500,000&rdquo; since its September&nbsp;<a href=\"https://www.theverge.com/2019/9/23/20878785/samsung-galaxy-fold-us-price-release-date-new-fixed-att-best-buy\">launch</a>.</p>\r\n\r\n<p>Huawei and rival Samsung were the two front-runners in the race to bring a foldable phone to market first in 2019.&nbsp;<a href=\"https://www.theverge.com/2020/1/3/21047745/ces-2019-best-tech-gadgets-lg-rollable-samsung-the-wall-retrospective-what-happened\">At CES 2019, foldable prototypes</a>&nbsp;were plentiful. But Samsung beat most top competitors when the Galaxy Fold released, then rereleased after a bumpy launch. Microsoft&rsquo;s foldable Duo and Motorola&rsquo;s foldable Razr are due out later this year.</p>\r\n\r\n<p>Unveiled at Mobile World Congress 2019, Huawei&rsquo;s Mate X was originally scheduled to launch in July of that year. The company pushed the launch to November in order to&nbsp;<a href=\"https://www.wsj.com/articles/huawei-postpones-launch-of-mate-x-foldable-phone-11560502468\">refine and improve its foldable screen</a>, after Samsung delayed the&nbsp;<a href=\"https://www.theverge.com/2019/4/22/18511170/samsung-galaxy-fold-delay-indefinitely-statement-screen-display-broken-issues\">launch of its Galaxy Fold</a>&nbsp;following production problems.</p>\r\n\r\n<p>Huawei has not officially announced a launch date for the Mate X outside of China, but previously said it would debut in Europe in the first quarter of this year. Half of the Mate X screen flips around back, so that when it is folded closed, it has a screen on both sides. The second iteration of the&nbsp;<a href=\"https://www.frandroid.com/marques/huawei/652079_un-huawei-mate-x-ameliore-sera-presente-au-mwc-2020\">Mate X is expected to be unveiled</a>&nbsp;at MWC 2020 next month.</p>\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/PwiC5NYagm0\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\r\n\r\n<p>At this year&rsquo;s CES, the foldable trend expanded beyond phones to laptops.&nbsp;<em>The Verge</em>&rsquo;s editors named the&nbsp;<a href=\"https://www.theverge.com/2020/1/10/21058850/ces-2020-verge-awards-best-laptop-tv-tech-pc-concept-gadget\">Lenovo ThinkPad X1 Fold its best in show for CES 2020</a>, with expectations that there will be more foldable laptops in the coming months.</p>', 'huawei-says-its-selling-100000', 1, 1, 'post_main_14.webp', 'post_thumb_14.webp', 'post_list_14.webp', 3424, 0, 1, '2019-12-30 14:07:02', '2020-01-21 15:47:11'),
(15, 'Make Your Phone Work Better', 'The Next Five Things That Will Make Your Phone Work Better\r\nTalk that the smartphone has peaked gives a sense that our co-dependent pocket pals have reached some pinnacle of evolution. Nonsense. There is a lot more to come, especially if you’re hoping for improvements in design, interface and privacy. We’re not talking about 5G and folding displays. At the CES conference in Las Vegas this year, some of the most potentially disruptive inventions were tiny components from companies you’ve never heard of.', '<p><strong>1. Invisible Buttons</strong></p>\r\n\r\n<p>The arrival of 5G, the next-generation wireless networks, requires phones to have more antennas. Because metal in the phone&rsquo;s body can block antenna signals, phone makers are rethinking their designs, wrapping the whole phone in plastic or glass, and ditching mechanical buttons. However, some people panic when you take away their buttons&mdash;we&rsquo;ve heard from many people who are holding on to old iPhones&nbsp;<a href=\"https://www.wsj.com/articles/an-iphone-11-review-for-owners-of-aging-iphones-11568714402?mod=article_inline\">because they still have a home button</a>.</p>\r\n\r\n<p>In lieu of making the back of a phone as touch-sensitive as the front, which would be expensive and a power drain, designers could add virtual buttons, such as ones developed by a startup called UltraSense Systems. These tiny little chips, which use ultrasound to detect your finger, lie just beneath the phone&rsquo;s surface. One placed on the back might be a camera button, with multiple functions: a quick tap for a selfie, a double-tap to switch to video and maybe a long hold to open your photo library.</p>\r\n\r\n<p>Gamers might want a phone with invisible buttons all around the edges, hidden controls that only respond when you launch a game.</p>\r\n\r\n<p>The trouble with invisible buttons is you might forget where they are. Daniel Goehl, UltraSense&rsquo;s chief business officer, says a designer could add a little divot where your finger should go. Another option is haptic feedback&mdash;a gentle vibration or clicks&mdash;to signal to your finger that it has found the sweet spot.</p>\r\n\r\n<p><strong>2. Electric Feel</strong></p>\r\n\r\n<p>Phones already give us such feedback&mdash;newer iPhones shake if Face ID fails, for instance&mdash;but our fingers generally follow our eyes around a touch screen. With the right haptic responses, they can do more.</p>\r\n\r\n<p>French startup Hap2U developed a prototype smartphone with a haptic display. It&rsquo;s meant to restore some of the physical sensations that were lost when we abandoned physical keyboards for a sheer glass. (RIP BlackBerry. Hello, iPhone!) Instead of shaking the whole phone, electronics under the screen pinpoint spots to generate friction, so that your fingertip detects a physical change.</p>\r\n\r\n<p><strong>3. Better Biometrics</strong></p>\r\n\r\n<p>Since the iPhone X came out,&nbsp;<a href=\"https://quotes.wsj.com/AAPL\">Apple</a>&nbsp;has led the way with facial recognition, unlocking the phone with only your face. But there are times when a fingerprint is preferable. Last year,&nbsp;<a href=\"https://quotes.wsj.com/SSNHZ\">Samsung</a>&nbsp;embedded a fingerprint sensor inside the bottom half of the display on the Galaxy S10. You get the benefit of a fingerprint scanner without losing screen real estate, except sometimes you don&rsquo;t know where you&rsquo;re supposed to put your finger.</p>', 'make-your-phone-work-better', 1, 1, 'post_main_15.jpg', 'post_thumb_15.jpg', 'post_list_15.jpg', 342, 0, 1, '2019-12-30 14:07:47', '2020-01-21 15:54:56'),
(16, 'Asus ROG Phone 2', 'Asus ROG Phone 2, Black Shark 2, Nubia Red Magic 3S: Here are gaming phones of 2019\r\nThe rise of PUBG Mobile in the market has meant that gaming is gaining in popularity, and manufacturers knew this was an untapped market. Here are the best gaming phones of 2019.', '<p>The year 2019 saw the appearance of more gaming-centric smartphones in India. The rise of&nbsp;<a href=\"https://indianexpress.com/about/pubg/\">PUBG</a>&nbsp;Mobile in the market has meant that gaming is gaining in popularity, and manufacturers knew this was an untapped market. These so called gaming smartphones have displays with higher refresh rates, superior processors and designs that resonate with gamers, which puts them in a new league altogether.</p>\r\n\r\n<p>Mobile games are one of the main contributors to the steep growth rate of smartphones globally. In terms of numbers, the mobile gaming industry is currently worth $68.5 billion, which is around 45 percent of the whole gaming industry according to statistics by NewZoo. By 2022, the industry is estimated to generate the largest proportion of total gaming revenue globally outpacing PCs and consoles altogether.</p>\r\n\r\n<p>What makes gaming smartphones different from normal smartphones are features like pressure-sensitive buttons, physical fans, cooling systems and more. The primary area of differentiation is their display, which typically sports a higher refresh rate, low latency, and a higher touch response rate. All of this is geared to make playing games, such as first-person shooter games (FPS), an overall smoother experience. Plus these hardware optimizations give serious gamers an upper hand over other players.</p>\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/rdyo6lOnmU0\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\r\n<p>&nbsp;\r\n<p>Another big difference is the inclusion of customizable pressure-sensitive buttons, which allow gamers to have the feel of a gaming console controller. These phones also come with specific game modes, which divert all of the system resources to a game to improve performance and reduce latency. Gaming smartphones are also compatible with a host of accessories like additional displays, cooling fans, docks, and more. These help in improving the performance and takes the gaming experience to the next level. However, these also increase the cost of investment.</p>\r\n</p>\r\n\r\n<p>Still, gaming smartphones are a niche market in India.&nbsp; We take a look at the three gaming phones that were launched in India in 2019 and which were the best in our view.</p>', 'asus-rog-phone-2', 1, 1, 'post_main_16.jpg', 'post_thumb_16.jpg', 'post_list_16.jpg', 342, 0, 1, '2019-12-30 14:08:53', '2020-01-17 14:19:49');
INSERT INTO `posts` (`id`, `title`, `short_description`, `description`, `slug`, `category_id`, `created_by`, `main_image`, `thumb_image`, `list_image`, `view_count`, `hot_news`, `status`, `created_at`, `updated_at`) VALUES
(17, 'New I phone 11', 'Apple\'s new \"Pro\" iPhones for those who want the best smartphone features.', '<p>Apple on September 10 unveiled its newest flagship iPhones, the iPhone 11 Pro and the iPhone 11 Pro Max, which are being sold alongside the iPhone 11. Apple says that the&nbsp;<strong>5.8-inch and 6.5-inch</strong>&nbsp;iPhone 11 Pro and iPhone 11 Pro Max have a new &quot;Pro&quot; moniker because the two devices are designed for users who want the very best smartphone that&#39;s available.</p>\r\n\r\n<p>Both new iPhones feature&nbsp;<strong>Super Retina XDR OLED displays</strong>, with the 5.8-inch iPhone 11 Pro offering a&nbsp;<strong>2426 x 1125 resolution</strong>&nbsp;and the 6.5-inch iPhone offering a&nbsp;<strong>2688 x 1242 resolution</strong>.</p>\r\n\r\n<p>The new phones feature&nbsp;<strong>HDR support</strong>, a 2,000,000:1 contrast ratio, and 800 nits max brightness (1200 for HDR).&nbsp;<strong>True Tone</strong>&nbsp;is included for matching the white balance of the display to the ambient lighting in the room to make it easier on the eyes, as is&nbsp;<strong>wide color</strong>&nbsp;for more vivid, true-to-life colors.</p>\r\n\r\n<p><strong>3D Touch</strong>&nbsp;has been eliminated in the iPhone 11 Pro and Pro Max, with Apple instead outfitting the new devices with a similar&nbsp;<strong>Haptic Touch</strong>&nbsp;feature. Haptic Touch is supported across iOS 13, but it lacks the pressure sensitivity of 3D Touch.</p>\r\n\r\n<p>Design wise, the iPhone 11 Pro and iPhone 11 Pro Max look similar to the iPhone XS and XS Max, but come in&nbsp;<strong>textured matte finishes</strong>&nbsp;available in&nbsp;<strong>Gold, Space Gray, Silver</strong>, and a never-before-used Apple color:&nbsp;<strong>Midnight Green</strong>.</p>\r\n\r\n<p>Though the new phones don&#39;t look much different, Apple says they&#39;re made from&nbsp;<strong>the toughest glass ever in a smartphone</strong>&nbsp;and offer&nbsp;<strong>improved water resistance (IP68)</strong>, boosting overall durability.&nbsp;<strong>Spatial audio</strong>&nbsp;support offers a more immersive sound experience, and&nbsp;<strong>Dolby Atmos is supported</strong>.</p>\r\n\r\n<p>The biggest difference between the iPhone 11 Pro and Pro Max and the previous-generation iPhones is&nbsp;<strong>the triple-lens camera setup</strong>. Apple&#39;s new iPhones feature triple&nbsp;<strong>12-megapixel ultra wide angle, wide angle, and telephoto cameras</strong>.</p>\r\n\r\n<p>The new ultra wide camera features&nbsp;<strong>a 120 degree field of view</strong>, allowing for better landscape shots and tight shots that are able to capture more without having to adjust the position of the iPhone. The&nbsp;<strong>telephoto lens has a larger f/2.0 aperture</strong>&nbsp;that allows it to&nbsp;<strong>capture 40 percent more light</strong>&nbsp;compared to the iPhone XS.</p>\r\n\r\n<p>With the addition of an ultra wide angle camera, the iPhones support&nbsp;<strong>2x optical zoom in, 2x optical zoom out, and digital zoom up to 10x</strong>. Dual optical image stabilization is available for the wide angle and telephoto lenses, the True Tone flash is brighter, and the cameras offer&nbsp;<strong>next-generation smart HDR</strong>&nbsp;to intelligently recognize subjects in frame and relight them for more natural-looking photos that have more detail.</p>\r\n\r\n<p>The&nbsp;<strong>camera interface</strong>&nbsp;on the iPhone 11 Pro and Pro Max has been overhauled with a more immersive experience that lets you&nbsp;<strong>see and capture the area outside of the frame</strong>&nbsp;using the ultra wide-angle camera if desired.</p>', 'new-i-phone-11', 1, 25, 'post_main_17.jpg', 'post_thumb_17.jpg', 'post_list_17.jpg', 3543, 1, 1, '2020-01-04 11:52:26', '2020-01-18 13:13:14'),
(18, 'iPhone X vs iPhone XR vs iPhone 11', 'You can get any of the iPhone X series phones at prices lower than most flagship Android phones but which one makes the most sense in 2020? Let’s dive in.', '<p>It was in 2017 when Apple took the world by storm with the iPhone X. At the time, the iPhone X brought the fancy future of technology to the present world with features that were never seen before on the regular phone. The narrow-bezel display and the infamous notch changed the design of smartphones for years to come. Since then, Apple released three-generational upgrades to the iPhone X and in 2020, you can get an iPhone X series phone for as low as Rs 40,000 is online sales.</p>\r\n\r\n<p>The original iPhone X is two years old now and gets massive discounts, making it cheaper than several new Android phones. The slightly newer iPhone XR that also took the world by storm in 2018 and most of 2019, sells for prices mostly under Rs 50,000. Lastly, this year&rsquo;s affordable iPhone 11 offers the latest of what Apple has to offer at a price that&rsquo;s lower than the launch price of both the iPhone XR and iPhone X from a few years ago.</p>\r\n\r\n<p>Hence, if you want to buy an iPhone, you have a lot of options to choose from. But which one should you spend your money on?</p>\r\n\r\n<p><strong>Is the iPhone X the ultimate deal under Rs 50,000?</strong></p>\r\n\r\n<p>The iPhone X was revolutionary when it launched back in 2017, especially with its FaceID system and a narrow-bezel OLED display. The iPhone X changed iOS in a major way and it sort of modernized the iPhone when compared to the iPhone 8 and older models. However, in 2020, the iPhone X is not a sensible choice.</p>\r\n\r\n<p>Compared to the iPhone XR and iPhone 11, the iPhone X offers an OLED display that looks way better and sharper. However, the benefits stop there. The iPhone X is two years old and that means you will only get four more years of software support. The performance is still great but an iPhone XR will perform better any given day. Battery life is sub-par on the iPhone X and one can barely make it to the end of the day. The cameras are also decent but they are nowhere as good as new cameras we have these days.</p>\r\n\r\n<p>Hence, iPhone X is 2020 isn&rsquo;t a good deal.</p>\r\n\r\n<p><strong>So that means the iPhone XR is the best?</strong></p>\r\n\r\n<p>The iPhone XR was appealing when it launched in 2018 and in its one year, it has only become super appealing. The iPhone XR now sells for as low as Rs 42,000 at times and if you want the best value for money iPhone, this is easily the phone. However, despite its low price, it&rsquo;s not a good deal to buy the iPhone XR in 2020. Shocked?</p>', 'iphone-x-vs-iphone-xr-vs-iphone-11', 1, 25, 'post_main_18.webp', 'post_thumb_18.webp', 'post_list_18.webp', 325, 0, 1, '2020-01-04 11:55:41', '2020-01-22 16:38:43'),
(19, 'Today’s best gaming laptop deals', 'Today’s best gaming laptop deals: Razer Blades, MSI Stealth, and HP Omen', '<p><strong>In addition to the&nbsp;<a href=\"https://www.theverge.com/good-deals/2020/1/8/21056651/daily-tech-deals-apple-dell-macbook-pro-ipad-air-mophie-xps-15\">iPad Air and MacBook Pro deals</a>&nbsp;going on today, there are also a number of deals on gaming laptops available. Here are some of the offers we&rsquo;ve rounded up.</strong></p>\r\n\r\n<p><strong>The Lenovo Legion Y540 gaming laptop is&nbsp;<a href=\"https://fave.co/2ZPCpJg\">$300 off at B&amp;H Photo</a>. It&rsquo;s now on sale for $1,299.&nbsp;This laptop is 15 inches, has a dedicated Nvidia GeForce RTX 2060 graphics card, and a six-core Intel Core i7 processor. It comes with 16GB of RAM and 1TB SSD. If you don&rsquo;t need as much storage space, you can get the configuration with 8GB of RAM and 256GB SSD&nbsp;<a href=\"https://click.linksynergy.com/deeplink?id=nOD/rLJHOac&amp;mid=24542&amp;u1=gooddeals|xid:fr1579355641589ajg&amp;murl=https%3A%2F%2Fwww.microsoft.com%2Fen-us%2Fp%2Flenovo-legion-y540-81sy0008us-gaming-pc%2F91p7gx86tgp9%3Factivetab%3Dpivot%253aoverviewtab\">for $899</a>&nbsp;(originally $1,079) from the Microsoft Store. A similar model with a GeForce GTX 1650 graphics card&nbsp;<a href=\"https://amzn.to/2FtopsW\">is $959.22</a>&nbsp;(initially $1,499) on Amazon.</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://cdn.vox-cdn.com/thumbor/c5r8YWTB9eVrEIIWfdS3oi6vqII=/0x0:2040x1360/1120x0/filters:focal(0x0:2040x1360):format(webp):no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/11564887/akrales_180618_2661_0007.jpg\" style=\"height:414px; width:620px\" /></strong></p>\r\n\r\n<p>Several Razer gaming laptops are on sale on the Microsoft Store, including:</p>\r\n\r\n<ul>\r\n	<li>The Razer Blade Pro 17 (17 inches, Intel Core i7, 16GB RAM, 512GB SSD, Nvidia GeForce RTX 2060)&nbsp;<a href=\"https://click.linksynergy.com/deeplink?id=nOD/rLJHOac&amp;mid=24542&amp;u1=gooddeals|xid:fr1579355641589ddf&amp;murl=https%3A%2F%2Fwww.microsoft.com%2Fen-us%2Fp%2Frazer-blade-pro-17-gaming-laptop-2019-intel-core-i7-9750h-6-core-geforce-rtx-2060%2F92KMLF8VXMBM%3Factivetab%3Dpivot%253aoverviewtab\">for $2,299.99</a>&nbsp;(originally $2,499.99)</li>\r\n	<li>The Razer Blade Pro 17 (17 inches, Intel Core i7, 16GB RAM, 512GB SSD, Nvidia GeForce RTX 2070)&nbsp;<a href=\"https://click.linksynergy.com/deeplink?id=nOD/rLJHOac&amp;mid=24542&amp;u1=gooddeals|xid:fr1579355641589ccg&amp;murl=https%3A%2F%2Fwww.microsoft.com%2Fen-us%2Fp%2Frazer-blade-pro-17-gaming-laptop%2F8PTC80FT3JLF%3Factivetab%3Dpivot%253aoverviewtab\">for $2,599.99</a>&nbsp;(originally $2,799.99) at the Microsoft Store</li>\r\n	<li>The Razer Blade 15 (Intel Core, 16GB RAM, 512GB SSD, Nvidia GeForce RTX 2060) for $1,799.99 (originally $1,999.99)&nbsp;<a href=\"https://amzn.to/36wpBHX\">at Amazon</a>&nbsp;<a href=\"https://bestbuy.7tiv.net/c/482924/614286/10014?u=https%3A%2F%2Fwww.bestbuy.com%2Fsite%2Frazer-blade-15-6-gaming-laptop-intel-core-i7-16gb-memory-nvidia-geforce-rtx-2060-512gb-solid-state-drive-black%2F6349357.p%3FskuId%3D6349357&amp;sharedid=gooddeals&amp;subId1=xid:fr1579355641589cag\">and Best Buy</a></li>\r\n	<li>The Razer Blade 15 Advanced (15 inches, Intel Core i7, 16GB RAM, 256GB SSD, Nvidia GeForce RTX 2070) for $1,899.99<strong>&nbsp;</strong>(originally $2,399.99)&nbsp;<a href=\"https://fave.co/35DnfFQ\">at B&amp;H Photo</a></li>\r\n	<li>The Razer Blade 15 Advanced (15 inches, Intel Core i7, 16GB of RAM, 512GB SSD, Nvidia GeForce RTX 2070)&nbsp;<a href=\"https://click.linksynergy.com/deeplink?id=nOD/rLJHOac&amp;mid=24542&amp;u1=gooddeals|xid:fr1579355641589hjd&amp;murl=https%3A%2F%2Fwww.microsoft.com%2Fen-us%2Fp%2Frazer-blade-15-gaming-laptop%2F9064H7VRMHQ1%2FDDH3%3Factivetab%3Dpivot%253aoverviewtab\">for $2,399.99</a>&nbsp;(originally $2,599.99) at the Microsoft Store. There&rsquo;s another model with the same specs and price is available&nbsp;<a href=\"https://bestbuy.7tiv.net/c/482924/614286/10014?u=https%3A%2F%2Fwww.bestbuy.com%2Fsite%2Frazer-blade-15-6-gaming-laptop-intel-core-i7-16gb-memory-nvidia-geforce-rtx-2070-max-q-512gb-solid-state-drive-mercury-white%2F6349380.p%3FskuId%3D6349380&amp;sharedid=gooddeals&amp;subId1=xid:fr1579355641589cfd\">at Best Buy</a>. There&rsquo;s also another model with the same specs available&nbsp;<a href=\"https://bestbuy.7tiv.net/c/482924/614286/10014?u=https%3A%2F%2Fwww.bestbuy.com%2Fsite%2Frazer-blade-15-6-laptop-intel-core-i7-16gb-memory-nvidia-geforce-rtx-2070-max-q-512gb-ssd-mercury-white%2F6381857.p%3FskuId%3D6381857&amp;sharedid=gooddeals&amp;subId1=xid:fr1579355641589bae\">at Best Buy</a>&nbsp;for $2,199.99 (originally $2,399.99).</li>\r\n	<li>The Razer Blade 15 Advanced (15 inches, Intel Core i7, 16GB of RAM, 512GB SSD, Nvidia GeForce RTX 2080)&nbsp;<a href=\"https://click.linksynergy.com/deeplink?id=nOD/rLJHOac&amp;mid=24542&amp;u1=gooddeals|xid:fr1579355641589cab&amp;murl=https%3A%2F%2Fwww.microsoft.com%2Fen-us%2Fp%2Frazer-blade-15-gaming-laptop%2F9064H7VRMHQ1%2F5SK6%3Factivetab%3Dpivot%253aoverviewtab\">for $2,499.99</a>&nbsp;(originally $2,999.99) at the Microsoft Store</li>\r\n</ul>\r\n\r\n<p>The Dell Alienware M15 gaming laptop (15 inches, Intel Core i7, 16GB RAM, 512GB SSD, Nvidia GeForce GTX 1660 Ti) is down from its list price of $1,799.99&nbsp;<a href=\"https://click.linksynergy.com/deeplink?id=nOD/rLJHOac&amp;mid=24542&amp;u1=gooddeals|xid:fr1579355641589gci&amp;murl=https%3A%2F%2Fwww.microsoft.com%2Fen-us%2Fp%2Fdell-alienware-m15-gaming-laptop%2F8npd1r59pm2t%3Factivetab%3Dpivot%253aoverviewtab\">to $1,499</a>&nbsp;at the Microsoft Store.</p>\r\n\r\n<p>The HP Omen (16GB of RAM, 512GB SSD) gaming laptop is on sale&nbsp;<a href=\"https://click.linksynergy.com/deeplink?id=nOD/rLJHOac&amp;mid=24542&amp;u1=gooddeals|xid:fr1579355641589cgd&amp;murl=https%3A%2F%2Fwww.microsoft.com%2Fen-us%2Fp%2Fhp-omen-x-2s-15-dg0010nr-laptop%2F8pqt8wggwb6f%3Factivetab%3Dpivot%253aoverviewtab\">for $1,899</a>. Its original price was $2,199.99. It&rsquo;s 15 inches, and it has an Nvidia GeForce RTX 2070 graphics card and an Intel Core i7 processor.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.vox-cdn.com/thumbor/BKOONc1suGal5kRSoNpl91Vg9MM=/0x0:2040x1360/1120x0/filters:focal(0x0:2040x1360):format(webp):no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/15303357/akrales_190204_3211_0008.jpg\" style=\"height:414px; width:620px\" /></p>\r\n\r\n<p>You can also save $200 on the MSI GS75 Stealth (Intel Core i7, 32GB RAM, 1TB SSD) gaming laptop. It&rsquo;s currently on sale&nbsp;<a href=\"https://click.linksynergy.com/deeplink?id=nOD/rLJHOac&amp;mid=24542&amp;u1=gooddeals|xid:fr1579355641589ejd&amp;murl=https%3A%2F%2Fwww.microsoft.com%2Fen-us%2Fp%2Fmsi-gs75-stealth-gaming-laptop%2F8r9h5pxrxfxc\">for $1,899</a>&nbsp;at the Microsoft Store. This model has a 17-inch screen and comes with an Nvidia GeForce GTX 1660 Ti graphics card.</p>', 'todays-best-gaming-laptop-deals', 3, 1, 'post_main_19.webp', 'post_thumb_19.webp', 'post_list_19.webp', 312, 0, 1, '2020-01-18 11:56:31', '2020-01-18 13:15:45'),
(20, 'Apple Fixes Location Privacy Issue', 'Apple Fixes Location Privacy Issue With iPhone 11 Chip in iOS Beta Update\r\niPhone maker earlier stated that the behaviour was due to the fact the Ultra-Wideband chip in the new iPhones isn\'t approved broadly around the world.', '<p><strong>The second beta version of Apple&#39;s iOS 13.3.1, released recently, now includes a toggle for disabling the Ultra-Wideband (UWB) chip in the device. This comes after privacy issue reports around the iPhone 11 and 11 Pro that they still tracked location data even when users had turned off location services.</strong></p>\r\n\r\n<p><strong>When that led to more questions and debates, the iPhone maker stated the behaviour was due to the fact the UWB chip in the new iPhones isn&#39;t approved broadly around the world, so the&nbsp;<a href=\"https://gadgets.ndtv.com/apple-iphone-11-price-in-india-91110\" target=\"_self\">iPhone 11</a>&nbsp;uses location services to check if UWB can be used or not, 9to5Mac&nbsp;<a href=\"https://ww.9to5mac.com/2020/01/17/apple-addresses-location-privacy-issue-with-iphone-11-chip-in-ios-beta/\" target=\"_blank\">reported</a>&nbsp;on Friday.</strong></p>\r\n\r\n<p><strong>&quot;We do not see any actual security implications,&quot; an&nbsp;<a href=\"https://gadgets.ndtv.com/mobiles/apple-phones\" target=\"_self\">Apple</a>&nbsp;engineer was earlier quoted as saying by Krebs On Security.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>&quot;It is expected behaviour that the Location Services icon appears in the status bar when Location Services is enabled. The icon appears for system services that do not have a switch in Settings.&quot;</strong></p>\r\n\r\n<p><strong>After giving an unsatisfactory answer, Apple had said in December that it would bring a dedicated toggle in location services to allow customers to completely turn off the feature.</strong></p>\r\n\r\n<p><strong>In other Apple news, Cupertino-based tech giant Apple is reportedly planning to launch its first-ever 5G iPad alongside the rumoured iPhone 12 in September.</strong></p>\r\n\r\n<p>&nbsp;</p>', 'apple-fixes-location-privacy-issue', 4, 1, 'post_main_20.webp', 'post_thumb_20.webp', 'post_list_20.webp', 234, 0, 1, '2020-01-18 12:08:04', '2020-01-18 12:08:19'),
(21, 'The hottest new gadgets of 2020 (so far)', 'Exactly one decade ago, 4G was the hot new thing, TVs were ugly, and everyone\'s cell phones slid open.', '<p>Just imagine what the next ten years will bring. If we really live up to our innovational potential, it&#39;ll be a slew of technologies that&#39;ll successfully yank our planet away from the precarious edge it is teetering upon. You know, the one where we&#39;re about to plunge into irreversible climate disaster. A dark reality! Let&#39;s reign in the doom and gloom for a second though and focus on the now.</p>\r\n\r\n<p>At the beginning of January, a huge consumer electronics trade show called&nbsp;<a href=\"https://esquireme.com/tags/ces\" target=\"_blank\">CES</a>&nbsp;is held in Las Vegas, where companies big and small reveal all the cool new stuff that they&#39;ve been working on. Much of this stuff is nowhere near being ready to actually sell to actual consumers, because it&#39;s too outlandish or futuristic or high-concept or all of the above. Still, it&#39;s fun to look at.</p>\r\n\r\n<p>Whereas much of the ready-for-market stuff comes across almost as boring in comparison, but in fact will make our lives more efficient in some neat way or another when it releases. These gadgets below, the most-notable of CES 2020 (according to us), veer into both territories&mdash;wacky and useful.</p>\r\n\r\n<p>Here&#39;s a taste of what this year and years after will have to offer.</p>\r\n\r\n<h3><strong>Mercedes-Benz VISION AVTR</strong></h3>\r\n\r\n<p><strong><img alt=\"\" src=\"https://www.esquireme.com/sites/default/files/images/2020/01/15/Best-Gadgets-of-2020-so-far-%282%29.jpg\" style=\"height:409px; width:400px\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>There is no way in hell this machine will be hitting asphalt in 2020. It might never hit asphalt. Nevertheless, it is both insane and earth-friendly, so therefore important. To create the AVTR, Mercedes-Benz teamed up with James Cameron and the Avatar team, hence the name, to brainstorm just how a vehicle can become one with its environment without actually being a plant&mdash;and merge with its driver without any prerequisite tail connecting.</p>\r\n\r\n<p>The answer is the advanced, conceptual technology of AVTR that Mercedes-Benz showcased at CES, ranging from autonomous driving (there&#39;s no steering wheel) and a wildly efficient electric battery to neurons that flow around the vehicle to sense passengers&#39; energy. Sure! And the description of this car-ish vehicle keeps getting wilder. It can roll sideways like a crab on rotating wheels. The back is covered with mini solar panels. It recognizes its driver&#39;s breathing patterns. It does everything but fly.</p>\r\n\r\n<p>We&#39;re going to have to reimagine how we imagine the future of transportation.</p>\r\n\r\n<h3><strong>Samsung Sero TV</strong></h3>\r\n\r\n<p><strong><img alt=\"\" src=\"https://www.esquireme.com/sites/default/files/images/2020/01/15/Best-Gadgets-of-2020-so-far-%283%29.jpg\" style=\"height:410px; width:400px\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>CES is always big on TV announcements, and especially worth noting is&nbsp;<a href=\"http://esquireme.com/tags/samsung\" target=\"_blank\">Samsung</a>&#39;s new Sero TV, because its defining feature goes beyond LED and 4K and what have you. It seems so obvious: a TV that transitions from the horizontal plane to the, gasp, vertical plane. That&#39;s what Samsung is doing with The Sero, which means &quot;vertical&quot; in Korean.</p>\r\n\r\n<p>This QLED TV, already available in South Korea and going global this year, flips so that longways it resembles a 43-inch phone screen. That means it&#39;s ideal for mirroring an Instagram or TikTok feed from your Galaxy phone, should you have one. What a trick. And here you hoped you&rsquo;d be looking at your phone screen less in 2020.</p>\r\n\r\n<h3><strong>LG Signature OLED TV R</strong></h3>\r\n\r\n<p><strong><img alt=\"\" src=\"https://www.esquireme.com/sites/default/files/images/2020/01/15/Best-Gadgets-of-2020-so-far-%284%29.jpg\" style=\"height:410px; width:400px\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>One of LG&#39;s 2020 TVs transitions from horizontal to non-existent by rolling down into its base when it&#39;s not needed. LG debuted this OLED 4K HDR smart television at CES last year, and this year confirmed that the thing will go on sale in the U.S. sometime in 2020. And all you need is a rumored $60,000, according to CNET.</p>\r\n\r\n<p>Yep, $60,000 for a 65-inch TV that blocks and then unblocks a view, epitomizing the phrase &quot;less screen time&quot; but still leaving you with a not-insignificant base to contend with. At least that screen is roll-tested to ensure the best quality (i.e. no breakage or dents) for years. Either way, when one CES TV flips and another disappears altogether, we know tech companies are getting funky with how we watch television.</p>\r\n\r\n<h3><strong>Alienware Concept UFO</strong></h3>\r\n\r\n<p><strong><img alt=\"\" src=\"https://www.esquireme.com/sites/default/files/images/2020/01/15/Best-Gadgets-of-2020-so-far-%285%29.jpg\" style=\"height:410px; width:400px\" /></strong></p>\r\n\r\n<p>The selling point for this gaming gadget is simple: It&#39;s the Nintendo Switch of PC gaming, with detachable cons, a &quot;bridge&quot; to connect those two detached cons to make one big controller, an eight-inch display, and a kickstand to prop up the screen.</p>\r\n\r\n<p>But most significantly, Alienware compares its power to that of a PC gaming device to support games that the Switch won&#39;t. Unfortunately though, it&#39;s just a concept with no concrete plans for production or rollout, so you&#39;re stuck with the Switch library or your phone for the time being.</p>', 'the-hottest-new-gadgets-of-2020-so-far', 4, 1, 'post_main_21.jpg', 'post_thumb_21.jpg', 'post_list_21.jpg', 654, 0, 1, '2020-01-18 12:17:08', '2020-01-18 12:22:58'),
(22, 'Starlink: SpaceX\'s satellite internet project', 'A train of SpaceX Starlink satellites are visible in the night sky in this still from a video captured by satellite tracker Marco Langbroek in Leiden, the Netherlands on May 24, 2019, just one day after SpaceX launched 60 of the Starlink internet communications satellites into orbit.', '<p>Starlink is the name of a&nbsp;<a href=\"https://www.space.com/24839-satellites.html\">satellite</a>&nbsp;network that the private spaceflight company&nbsp;<a href=\"https://www.space.com/18853-spacex.html\">SpaceX</a>&nbsp;is developing to provide low-cost internet to remote locations. While SpaceX eventually hopes to have as many as 12,000 satellites in this so-called megaconstellation, the size and scale of the project have flustered astronomers and amateur skywatchers, who fear that the bright, orbiting objects will interfere with observations of the&nbsp;<a href=\"https://www.space.com/52-the-expanding-universe-from-the-big-bang-to-today.html\">universe</a>.&nbsp;</p>\r\n\r\n<h2>The initial plan</h2>\r\n\r\n<p>SpaceX&#39;s satellite internet proposal&nbsp;<a href=\"https://www.space.com/28305-spacex-satellite-internet-seattle.html\">was announced</a>&nbsp;in January 2015. Though it wasn&#39;t given a name at the time, CEO&nbsp;<a href=\"https://www.space.com/18849-elon-musk.html\">Elon Musk</a>&nbsp;said that the company had filed documents with&nbsp;international regulators to place about 4,000 satellites in low&nbsp;<a href=\"https://www.space.com/54-earth-history-composition-and-atmosphere.html\">Earth</a>&nbsp;orbit.</p>\r\n\r\n<p>&quot;We&#39;re really talking about something which is, in the long term, like rebuilding the internet in space,&quot; Musk said during a speech in Seattle when revealing the project.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>https://www.space.com/spacex-starlink-satellites.html?jwsource=cl</p>', 'starlink-spacexs-satellite-internet-project', 4, 1, 'post_main_22.jpg', 'post_thumb_22.jpg', 'post_list_22.jpg', 543, 0, 1, '2020-01-18 12:22:52', '2020-01-18 12:22:52'),
(23, 'Sekiro: Shadows  Game of the Year 2019', 'Now that it\'s 2020 and we\'re all getting into accidents with our flying cars and dating holograms, 2019 seems very distant, but let\'s not forget the year entirely—it had some great games, and over the holiday Steam revealed which of those games did well in the fourth Steam Awards.', '<p><strong>Last year, Steam users were able to vote for their favourites in eight broad categories, ranging from Game of the Year to Best Game You Suck At, and while there are familiar faces, there are still a few surprises among the results. &nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>DayZ, which finally launched in 2018 after a long stint in Early Access, got the Better With Friends award, despite plenty of unfavourable reviews, while GTA 5, which is now almost five years old, walked away with the Labor of Love award for Rockstar&#39;s continued support of GTA Online.&nbsp;</strong></p>\r\n\r\n<p><strong>It was Sekiro: Shadows Die Twice that ended up getting the most votes for Game of the Year. Of the nominees, I think the best game ultimately won, though 2019 had no dearth of games deserving of the title. VR Game of the Year, meanwhile, went to Beat Saber, no doubt because you can now play&nbsp;<a href=\"https://www.pcgamer.com/you-can-play-toss-a-coin-to-your-witcher-in-beat-saber-now/\" target=\"_blank\">Toss a Coin to Your Witcher</a>&nbsp;on it.&nbsp;</strong></p>\r\n\r\n<p><strong>We also revealed&nbsp;<a href=\"https://www.pcgamer.com/game-of-the-year-2019-disco-elysium/\" target=\"_blank\">PC Gamer&#39;s Game of the Year</a>&nbsp;a couple of days ago, judging the phenomenal Disco Elysium to be the best (and one of the weirdest) games of 2019. Now that the year is over, you can read all of our&nbsp;<a href=\"https://www.pcgamer.com/game-of-the-year-awards-2019/\" target=\"_blank\">Game of the Year Awards</a>&nbsp;coverage and see what the rest of our favourites were.</strong></p>', 'sekiro-shadows-game-of-the-year-2019', 5, 1, 'post_main_23.jpg', 'post_thumb_23.jpg', 'post_list_23.jpg', 324, 0, 1, '2020-01-18 12:40:07', '2020-01-18 12:40:27'),
(24, 'God of War Studio Teases New Game', 'Ever since the ending of God of War left players with such an intense cliff hanger, fans have been waiting patiently for the return of Kratos and Atreus. Now, it seems that the next installment in the God of War franchise might be closer than fans may have initially anticipated, as a narrative animator at SIE Santa Monica Studios has teased development of the next entry.', '<p><strong>Ever since the ending of&nbsp;<em>God of War&nbsp;</em>left players with such an intense cliff hanger, fans have been waiting patiently for the return of Kratos and Atreus. Now, it seems that the next installment in the&nbsp;<a href=\"https://gamerant.com/tag/god-of-war/\"><em>God of War</em></a>&nbsp;franchise might be closer than fans may have initially anticipated, as a narrative animator at SIE Santa Monica Studios has teased development of the next entry.</strong></p>\r\n\r\n<p><strong><em>God of War&nbsp;</em>is the latest installment in the award-winning Sony franchise, which&nbsp;has gained universal acclaim both critically and commercially since its release. It also won Game of the Year at the Game Awards 2018, with this game being hailed as&nbsp;<a href=\"https://gamerant.com/god-of-war-review/\" target=\"_blank\">the PS4&#39;s crowing achievement</a>&nbsp;and a mainstay for any person that owns one.</strong></p>\r\n\r\n<p><strong>It seems like SIE Santa Monica Studios may have finally begun production on a new&nbsp;<em>God of War&nbsp;</em>entry based on a Tweet from one of their narrative animators. In the Tweet, narrative animator Kim Newman, included a picture of her in a motion capture suit and mentioned SIE Santa Monica Studios. There have always been rumors and purported news that the&nbsp;<a href=\"https://www.thegamer.com/god-of-war-5-things-fans-want-dont-want/\" target=\"_blank\">second&nbsp;<em>God of War&nbsp;</em>was in development</a>, but now it appears that this photo could be more solid proof, given Newman&#39;s involvement with the first game.</strong></p>\r\n\r\n<p><strong>Having said that, nothing has been confirmed or denied by SIE Santa Monica Studios or Cory Barlog, the lead director of&nbsp;<em>God of War</em>. The picture of Newman in the MoCap suit also doesn&#39;t mean that the motion capture work she&#39;s doing is necessarily for a new&nbsp;<em>God of War&nbsp;</em>game. Not to mention that&nbsp;<a href=\"https://gamerant.com/god-of-war-director-cory-barlog-sci-fi-game/\" target=\"_blank\">cryptic Tweet that Cory Barlog sent out</a>&nbsp;back in November teasing some kind of new game, so&nbsp;there&#39;s no telling&nbsp;if the work that Kim Newman is doing in the photo is for that game and not&nbsp;<em>God of War.</em></strong></p>\r\n\r\n<p><strong>To be perfectly honest, fans would love to see a new installment, and there&#39;s already so many places a new&nbsp;<em>God of War&nbsp;</em>game could take players in terms of its story and world.&nbsp;<a href=\"https://gamerant.com/god-of-war-five-atreus/\" target=\"_blank\">Not to mention the unending potential for&nbsp;Kratos&#39; son&nbsp;Atreus</a>, whose surface has barely been scratched in terms of character development.</strong></p>', 'god-of-war-studio-teases-new-game', 5, 1, 'post_main_24.jpg', 'post_thumb_24.jpg', 'post_list_24.jpg', 343, 0, 1, '2020-01-18 12:42:42', '2020-01-18 12:42:42'),
(26, 'Marvel\'s Avengers', '\'Marvel\'s Avengers\' game is delayed until September 4th', '<p><strong><em>Final Fantasy VII Remake</em>&nbsp;isn&#39;t the only&nbsp;<a href=\"https://www.engadget.com/2020/01/14/square-enix-final-fantasy-vii-remake-delay/\">Square Enix game facing delays</a>. Crystal Dynamics has&nbsp;<a href=\"https://twitter.com/PlayAvengers/status/1217096513337217024\">pushed</a>&nbsp;the release of&nbsp;<a href=\"https://www.engadget.com/2019/08/20/marvels-avengers-hands-on-gameplay-gamescom-2019/\"><em>Marvel&#39;s Avengers</em></a>&nbsp;from May 15th to September 4th. The extra months will allow more time for &quot;fine tuning and polishing the game so that it&#39;s actually fun to play,&quot; studio heads Scot Amos and Ron Rosenberg said in a notice both on Crystal Dynamics&#39; site (which, ominously, went down as we wrote this) and on Twitter. If you have&nbsp;<a href=\"https://www.engadget.com/2019/06/13/marvels-avengers-gameplay-demo-e3-2018-editorial/\">worries about the game</a>, you&nbsp;<em>might</em>&nbsp;get to rest a little easier.</strong></p>\r\n\r\n<p><strong>However much the delay helps, it&#39;s ill-timed. The&nbsp;<em>Black Widow</em>&nbsp;movie is set to premiere in major markets on May 1st -- this would&#39;ve been an ideal tie-in. September isn&#39;t too late to remind people of the movie (we wouldn&#39;t be surprised if it was reaching digital services this fall), but it&#39;s clearly past summer blockbuster season. Let&#39;s just hope the finished product is worth playing and not just an attempt to cash in on years of superhero fervor.</strong></p>', 'marvels-avengers', 5, 1, 'post_main_26.jpg', 'post_thumb_26.jpg', 'post_list_26.jpg', 433, 0, 1, '2020-01-18 12:45:46', '2020-01-18 12:45:46'),
(27, 'First-person shooter', 'First-person shooter \'Kingpin: Life of Crime\' is getting a remaster\r\nKingpin: Reloaded\' is coming to the PC, PS4, Xbox One and Nintendo Switch', '<p><em>Kingpin: Life of Crime</em>, a first-person shooter from 1999, is getting a remaster. If you never imagined this happening -- &quot;I&#39;ll take games I never thought would be remastered for $100, Alex&quot; -- we feel you. The title didn&#39;t enjoy as much popularity as it could have when it was first launched, since it was released shortly after the Columbine High School massacre and various retailers opted not to sell it. Video game developer&nbsp;<a href=\"https://www.engadget.com/2014/10/23/3d-realms-anthology/\">3D Realms</a>, which is working on the remaster, has&nbsp;<a href=\"https://twitter.com/3DRealms/status/1218193203431604229\">announced</a>&nbsp;the news on Twitter for PAX South 2020.</p>\r\n\r\n<p>The upcoming version of the game is entitled&nbsp;<em>Kingpin: Reloaded.&nbsp;</em>It adds 4K and ultrawide support to the game, and you can play it in either &quot;classic&quot; or &quot;enhanced&quot; mode. As you can guess, the latter comes with improved graphics, though it looks like 3D Realms didn&#39;t change the game&#39;s character models -- their extra beefy physiques remain. In addition, the developer says it rebalanced the gameplay.</p>\r\n\r\n<p><img alt=\"\" src=\"https://o.aolcdn.com/images/dims?resize=2000%2C2000%2Cshrink&amp;image_uri=https%3A%2F%2Fs.yimg.com%2Fos%2Fcreatr-uploaded-images%2F2020-01%2Fa8cdb680-398c-11ea-b5f1-e5040e9a2da3&amp;client=a1acac3e1b3290917d92&amp;signature=19e27724a77ae2caebf27575034e3133553fbdab\" style=\"height:338px; width:600px\" /></p>\r\n\r\n<p>3D Realms doesn&#39;t have an exact release date yet. However, it plans to launch the game later this year for the PC, PS4, Xbox One and Nintendo Switch.</p>\r\n\r\n<p>&nbsp;</p>\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/bIZncEjZoig\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'first-person-shooter', 5, 1, 'post_main_27.jpg', 'post_thumb_27.jpg', 'post_list_27.jpg', 3434, 0, 1, '2020-01-18 12:49:42', '2020-01-18 12:49:43');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(16, 'Master Admin', 'Master Admin', 'Master Admin', '2019-12-22 18:38:42', '2019-12-22 18:38:42'),
(17, 'Blogger', 'Blogger', 'Blogger', '2019-12-22 18:40:38', '2019-12-22 18:40:38'),
(18, 'Editor', 'Editor', 'Editor', '2019-12-22 18:42:58', '2019-12-22 18:42:58'),
(19, 'New Role', 'New Role', 'New Role', '2019-12-23 13:36:48', '2019-12-23 13:36:48');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 16),
(25, 17),
(26, 18),
(27, 19),
(28, 17);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'system_name', 'Tech News', NULL, '2019-12-25 10:52:15'),
(2, 'favicon', 'favicon.png', NULL, '2020-01-11 15:15:24'),
(3, 'front_logo', 'front_logo.png', NULL, '2019-12-28 09:47:41'),
(4, 'admin_logo', 'admin_logo.png', NULL, '2019-12-28 09:42:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '2019-12-18 22:00:00', '$2y$10$S.KYZN.RmOC2S2eYdVlBbuHHtCjZTKa4X3lhozflpUPFGANyd7LGq', 1, 'M64VkWl7VpivfqGPqPKRtoOJ2ec6Wz0GENBsHntwQBV8jwhMMW98nsNUBs9C', '2019-12-18 22:00:00', '2019-12-18 22:00:00'),
(25, 'Ayham', 'Ayham@gmail.com', NULL, '$2y$10$I6dHubq8eEncA7Ts8yI.sOXsz85iOxE70h4KX5wqbM0b8vx6CmvVi', 2, NULL, '2019-12-22 18:57:24', '2019-12-22 18:57:24'),
(26, 'Aws', 'Aws@gmail.com', NULL, '$2y$10$JgNajgW/lNyTXwmk88ddVe63WFzTXcHDnpLq.reWUeff2VkkXfJ4C', 2, NULL, '2019-12-22 18:58:21', '2019-12-22 18:58:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`) USING BTREE,
  ADD KEY `user_id_role_id_foreign` (`role_id`) USING BTREE;

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
