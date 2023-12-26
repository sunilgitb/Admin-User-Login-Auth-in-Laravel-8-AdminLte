-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307:3307
-- Generation Time: Jul 06, 2023 at 08:38 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `multi-auth`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$ZtDBiWvDnwPxLmneS9LwVe6b/pB8/jp5SftJmPotznoymU.QFY9oa', 'ue6OhbtWFeoBQxP9RvWqcvUVNWgK2B9hwToFcYDZDNjlXePS2ZZR6k2kjohL', NULL, NULL),
(2, 'Editor', 'editor@editor.com', NULL, '$2y$10$e2C1bsvjObsOQajsSSByPuO4CD9X1gQ.rCApQ7QSFE6CQtI3I4C7m', NULL, NULL, NULL),
(3, 'Author', 'author@author.com', NULL, '$2y$10$SBiCfUeoN1HTX5jB8/sj9e160LctR66vD2cMiUodOaWeJrOTTkNRC', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_11_101603_create_admins_table', 1),
(6, '2021_09_28_150557_create_roles_table', 1),
(7, '2021_09_28_150603_create_permissions_table', 1),
(8, '2021_09_28_150804_create_users_permission_table', 1),
(9, '2021_09_28_150837_create_users_roles_table', 1),
(10, '2021_09_28_151026_create_roles_permissions_table', 1),
(11, '2021_10_12_151812_create_posts_table', 1),
(12, '2023_07_06_134056_add_phone_to_users', 2),
(13, '2023_07_06_161552_create_products_table', 3),
(14, '2023_07_06_172113_add_id_to_products', 4);

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Add Post', 'add-post', NULL, NULL),
(2, 'Delete Post', 'delete-post', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 'Pariatur qui tempore sunt', 'Quasi a facilis doloremque nihil maxime eius. Architecto cumque consectetur rerum consectetur omnis consequatur doloribus.\n\nVoluptatem autem ipsa voluptas iusto molestiae amet amet. Et consequatur facere facilis a. Voluptatum corporis rerum possimus aperiam.\n\nOmnis non excepturi beatae facere quia consequatur occaecati. Aut sit cumque possimus illo et ab cupiditate sunt. Consectetur natus error ipsa ex at blanditiis.\n\nDelectus impedit doloribus quo laboriosam velit dolorem rerum. Ea nam quo provident. Consequatur corrupti quis ut qui. Molestiae eos exercitationem cumque non ut et beatae.\n\nRepudiandae minima ea culpa non quas est quae. Illum ipsa culpa occaecati quis facere vitae. Non nesciunt vitae reiciendis natus.\n\nEt iste debitis ea quod. Blanditiis occaecati eaque accusamus sunt natus dignissimos. Sit minima corporis eveniet nemo dolores. Molestiae doloremque et architecto vero modi nam iste in.\n\nOptio deleniti esse possimus error pariatur totam. Ipsum sit cum dolores aperiam dicta.', 1, '2023-07-06 01:49:12', '2023-07-06 01:49:12'),
(2, 'Unde dolor et unde omnis', 'Dicta tempora consequatur et quo. In et ab explicabo ad voluptatem similique. Aperiam aliquam molestiae id ipsum qui vero eius.\n\nDolorem iste nisi voluptatum amet velit quis fugit. Excepturi laborum ea odio nihil magni cumque officia. Cumque totam tempore sint velit.\n\nUt maiores odit illum eum consequuntur asperiores. Est sed culpa in minus officiis explicabo voluptatem ut. Qui esse quaerat consequatur qui et.\n\nSint voluptas consequatur natus consequuntur quo id. In quaerat dolores ad omnis repudiandae occaecati. Ullam a delectus voluptate tenetur nihil. Similique omnis aut eius ut quaerat quasi ducimus quisquam.\n\nNostrum iste quis voluptatibus ut. Mollitia aliquid tempore quo eveniet exercitationem blanditiis autem veritatis. Saepe est nihil velit culpa.', 3, '2023-07-06 01:49:13', '2023-07-06 01:49:13'),
(3, 'Illum aut ipsa dolore vel', 'Rerum aperiam cumque eum voluptate. Qui dolores aspernatur accusantium cupiditate voluptas. Earum autem veritatis temporibus cumque.\n\nVoluptatem dolorum corrupti libero magnam sequi. Id numquam assumenda nesciunt atque voluptate. Ipsam assumenda eveniet amet provident quisquam magni. Quibusdam quaerat neque corporis ut. Mollitia dolore incidunt voluptas hic.\n\nDolor cum natus ipsa totam. Voluptates officia qui sit architecto aspernatur. Qui vitae dolor alias temporibus totam ipsam.\n\nUt itaque corrupti vero et ipsum. Animi nihil et facere esse consectetur dolores. Rerum autem iusto excepturi aliquid beatae ut non. Aliquam cumque autem qui. Voluptatem corporis aspernatur autem voluptas.\n\nDolor voluptatem libero facilis dolores. Quo animi accusantium corrupti veniam eos aut sapiente voluptatem. Fugit ut voluptatem eligendi impedit.\n\nSimilique ut amet quo sunt. Qui corrupti sit deleniti rerum libero praesentium maxime. Doloremque delectus eos est.\n\nHarum dicta sapiente perspiciatis occaecati sunt veritatis expedita. Neque blanditiis consectetur nihil excepturi nihil ea quia. Ut et autem ducimus.', 3, '2023-07-06 01:49:13', '2023-07-06 01:49:13'),
(4, 'Ab consequatur quos dolor ad', 'Est laborum non qui dolores quae. Est nostrum cupiditate voluptates sit suscipit adipisci necessitatibus recusandae. Consequatur aut ut et ducimus. Accusantium iure expedita consequuntur omnis rerum qui.\n\nNon eius possimus omnis soluta. Quis occaecati magnam cupiditate magnam architecto voluptatem fugit aliquam.\n\nRem fugit voluptatem illum et aperiam ut facere. Qui omnis optio consequatur consequatur laudantium tempora. Ut omnis consectetur dolorem officia.\n\nRepellat vero voluptatem adipisci aliquid esse est. Dolor in est velit animi magni cumque. Exercitationem voluptatem fuga ratione rem quos. Corrupti pariatur doloribus ea accusantium recusandae omnis et voluptatibus.\n\nQuia dignissimos consequuntur consequuntur iure minus autem. Voluptatem necessitatibus assumenda facere in ratione esse fuga est. Et exercitationem soluta enim corrupti asperiores. Officiis dolor quia est quod consequatur molestiae. Cum totam aut architecto ratione non expedita magni.', 3, '2023-07-06 01:49:14', '2023-07-06 01:49:14'),
(5, 'Nihil aliquid distinctio et', 'Deleniti nesciunt fugit atque. Ad dolore voluptate occaecati nemo impedit quis iusto. Id voluptatem ut provident.\n\nDistinctio qui et expedita. Non hic optio aliquam quae non accusamus laborum. Distinctio delectus quis magni itaque.\n\nSint quia alias beatae ipsa laborum. Et doloribus placeat debitis. Tempora aspernatur incidunt consequatur est incidunt omnis.\n\nAutem fugit esse illum est quia aliquid. Tempora eligendi blanditiis et. Velit optio non eos quae cupiditate. Rerum a est optio accusantium.\n\nAut delectus quod est harum qui officiis veritatis. Vel sunt id quo cupiditate consequatur. Qui ipsam nihil quia ea iure sed delectus et. Sit quia voluptatem sed qui tempora quia mollitia nisi.\n\nEx consequatur sit perferendis eum dolor. Commodi eos temporibus saepe suscipit excepturi nostrum ipsum exercitationem. Officiis animi ea possimus vitae quasi.\n\nDolorem fugit ipsum exercitationem ad asperiores et dolorem. Nostrum accusantium laudantium est autem veritatis illum. Deleniti ullam quaerat assumenda voluptates exercitationem ipsum.', 3, '2023-07-06 01:49:14', '2023-07-06 01:49:14'),
(6, 'Accusantium animi fugiat qui', 'Numquam doloribus ducimus ut est recusandae maiores consequatur veritatis. Accusamus dolorem dolore modi saepe porro odio. Repellendus ut nihil odio natus repellat expedita. Et consequuntur sed eligendi consequatur voluptate ab blanditiis sapiente.\n\nIpsam sint maxime illum odit sed dignissimos. Id beatae ut ratione iure sapiente. Molestiae ab et odio et.\n\nVel temporibus voluptatem qui vero non omnis sint. Maiores laboriosam harum ipsam consectetur distinctio fuga. Exercitationem maiores et quidem qui est.\n\nSit nesciunt temporibus enim ut. Est dicta voluptas optio quia iusto. Ducimus sint quasi reprehenderit harum et omnis.\n\nIure vel quam assumenda laudantium. Ut nihil temporibus rem maxime odio sunt voluptate quae.', 3, '2023-07-06 01:49:14', '2023-07-06 01:49:14'),
(7, 'Rerum nisi omnis ut quo', 'Dolorem minima a possimus temporibus. Et quis temporibus mollitia mollitia recusandae non ut. Rerum ipsam reiciendis dolores temporibus id quos quia laborum.\n\nQuisquam voluptatum rem aut explicabo voluptatem libero. Ipsa asperiores ipsam cum qui eveniet ut.\n\nDolor unde voluptas iste. Molestiae ullam repellat non nihil sed et mollitia officiis. Ipsam tenetur minus nulla laudantium vero est.\n\nPlaceat reprehenderit omnis enim ut ut et. Ut cumque et id magnam omnis nostrum numquam. Nulla dolores rerum iure hic molestiae.\n\nAb porro quia non laborum laudantium voluptate. Fugiat ea praesentium reiciendis eligendi dolore. Quis ratione consequatur laudantium et ut et. Sed laudantium in magni non excepturi qui sit.', 1, '2023-07-06 01:49:15', '2023-07-06 01:49:15'),
(8, 'Vel non in labore', 'Itaque tempora dolores sit doloremque et. Amet excepturi aut repudiandae perferendis illum aut ratione. Ipsum nulla iure voluptatem optio dolore provident error. Quia fugiat quae hic eveniet veniam vitae cupiditate.\n\nAb et sit iusto omnis suscipit dolor distinctio. Id maxime numquam in iste suscipit necessitatibus et rerum. Quis omnis molestias recusandae id et sit expedita.\n\nMinima quas saepe vel vitae est voluptas qui. Eius ea omnis dolorum illo non. Nemo commodi provident dolores distinctio odit.\n\nConsequuntur et dolorem ducimus ducimus minus. Accusantium a rerum architecto ducimus est qui cum. Nisi dolor laudantium omnis.\n\nConsequatur suscipit natus eos aut. In consequatur possimus inventore est illo doloribus. Autem quo consequuntur necessitatibus et.\n\nVoluptas nobis saepe aliquid autem ut voluptas impedit. Et inventore provident voluptatem quisquam dolorem dicta. Non iure alias autem beatae eos. Dolor id laborum qui libero provident est consequuntur.\n\nHic veniam consectetur ex quia voluptas sint. Explicabo aut quis quasi. Hic sit vel deserunt hic nemo. Quam placeat laboriosam molestiae impedit praesentium sed omnis exercitationem.', 2, '2023-07-06 01:49:15', '2023-07-06 01:49:15'),
(9, 'Adipisci aut et optio earum', 'Perspiciatis dignissimos eos aut qui beatae numquam. In voluptas voluptatem modi dolorum quibusdam.\n\nSaepe debitis et natus. Necessitatibus officiis et et qui quo incidunt. Et odit qui fugiat quia non vel.\n\nNecessitatibus dolores mollitia qui. Architecto ipsam blanditiis nulla ratione. Sed qui temporibus quidem est quia aliquam cupiditate.\n\nEst recusandae sit aut aut. Est et velit laudantium aut veniam. Enim reprehenderit quia culpa ea officia.\n\nNon maiores illo natus nulla. Labore praesentium voluptatem vero qui deserunt fugiat. Aut in inventore consequatur aperiam reiciendis. Laborum expedita et sed laboriosam.\n\nEst consequatur facilis alias neque asperiores. Est saepe omnis fugit qui. Eos facilis minima harum laudantium itaque.\n\nOdio maxime libero et quam esse sit quasi. Dolorum reprehenderit rerum blanditiis qui. Aperiam amet sed quae. Qui cumque aut enim voluptatem vel qui voluptatum et. Placeat aliquam ipsa et aperiam.', 3, '2023-07-06 01:49:15', '2023-07-06 01:49:15'),
(10, 'Illo non maxime odio minima', 'Iure magnam qui dolorem eos nostrum. Esse optio magnam delectus vel ut aut. Cupiditate voluptas aliquid cumque cumque optio. Quisquam at doloremque officiis. Officiis beatae et natus vero modi sed.\n\nIn enim adipisci sit quia dolores voluptatum. Eligendi sit quis harum tempora quidem. Esse nihil fugiat odit. Eum eum esse aspernatur est et aliquam.\n\nConsectetur non consectetur quo doloremque. Magni perspiciatis a cupiditate quibusdam. Saepe in molestias dicta possimus similique. Inventore accusamus quo soluta nisi quo deserunt maiores.\n\nEt quia qui iste qui dignissimos. Tenetur molestias rerum sint accusantium. Omnis quidem a sit molestiae dolor quia maxime.\n\nSimilique neque nihil velit totam sit. Dolor quos consequatur aliquid ut quis consectetur qui. Fugiat enim hic consequuntur corrupti non commodi autem nesciunt.\n\nCommodi quo ipsam nisi dicta iure itaque. Aspernatur autem sapiente provident. Voluptatem et maxime totam sed. Qui repellendus iusto omnis aliquid.\n\nVitae culpa aperiam dolores architecto saepe. Minus hic quibusdam accusamus pariatur autem ut. Magni molestiae voluptatem rerum aut. Aperiam consequuntur aliquam eligendi consequatur.', 2, '2023-07-06 01:49:15', '2023-07-06 01:49:15'),
(11, 'Est sed aut sapiente', 'Laborum a asperiores maiores qui praesentium voluptas. Nesciunt expedita qui dolorem et mollitia sit est libero.\n\nVoluptas pariatur quia ullam sit similique. Et maiores ipsum harum similique numquam. Ea nesciunt quia facilis consequatur quo a quia quis. Quas officia velit aut possimus rerum voluptate rerum voluptas.\n\nReprehenderit vitae velit ad quia eum possimus. Excepturi ut aut voluptas dolorum esse voluptas sit. Est eos occaecati voluptates enim perspiciatis quasi et amet. Quod eveniet est sapiente accusantium.\n\nFacere blanditiis similique soluta aut sint. Expedita odio tempora nesciunt saepe nihil repudiandae. Quibusdam qui eligendi rem et adipisci voluptatem.\n\nSapiente voluptatem voluptas eaque harum aut. Sed quia qui quam earum nostrum. Eligendi corporis quam corrupti tenetur quia atque.\n\nAccusantium quas laborum deleniti aut. Mollitia non autem non temporibus repudiandae iure. Dicta labore voluptas esse quisquam.', 3, '2023-07-06 01:49:16', '2023-07-06 01:49:16'),
(12, 'Quos vel id vero eos', 'Nulla fuga mollitia fugit dolor quos. Incidunt rem totam aut quidem accusantium esse et. Id consequuntur explicabo qui dolor facere.\n\nNon architecto maiores dolorem odio sunt error commodi. Voluptates ut asperiores nostrum iste. Et pariatur dolores mollitia non nobis. Amet ipsum voluptas qui perferendis.\n\nAliquid alias est tenetur ut eaque. Commodi aut tenetur voluptatum dolorem. Rerum blanditiis ipsa quia ex rerum commodi et amet.\n\nOdit corrupti ut laudantium doloribus dicta. Qui molestias dolor occaecati. Reiciendis qui dolor sed ut ut.\n\nVelit non molestiae eos velit porro occaecati natus quod. Ipsam atque ea deserunt illum alias nihil asperiores. Dolorem nobis repellendus vero aut recusandae cumque fugiat. Aut vero enim ut consequatur voluptatem deserunt explicabo facere. Explicabo velit aut nesciunt.', 3, '2023-07-06 01:49:16', '2023-07-06 01:49:16'),
(13, 'Adipisci quam id accusantium', 'Modi sint unde non tenetur. Quibusdam laborum ut nobis expedita modi at voluptas. Ut fuga quam velit quod dolor illum. Repudiandae dolorem suscipit eius voluptate quo.\n\nAspernatur et rerum amet culpa. Et culpa facilis distinctio a facere doloribus quod. Beatae quas id dolorem sint enim sint.\n\nNumquam ad id sint ut quaerat in. Similique consequatur cum aut laboriosam ut. Veniam cumque ut perspiciatis eos atque qui consectetur quia. In perferendis deleniti fugiat commodi et.\n\nEius et facere ipsum consequuntur. Eligendi dolore quasi provident id possimus quis earum.\n\nNobis est quaerat tenetur facere nihil est optio. Eum ab adipisci nostrum dolor. Hic occaecati aspernatur quia soluta eveniet nisi. Quia quaerat non ut vitae.\n\nFugit nihil provident vitae tempore perspiciatis quas. Qui quis voluptatem maxime officia. Qui sint fuga dolorem voluptatem officiis. Maiores ut ea facilis sed vero saepe.\n\nDelectus repellendus nihil impedit possimus non aliquam. Eum voluptatum rerum aut sed ea laudantium eum. Perspiciatis consequatur omnis soluta incidunt. Eligendi accusamus reiciendis vero impedit.', 3, '2023-07-06 01:49:16', '2023-07-06 01:49:16'),
(14, 'Et fugit fuga sit porro', 'Consequatur iusto quam sed nisi autem. Quaerat quo non quia. Deleniti quis molestias consequuntur labore eos est et. Eaque explicabo sit maxime.\n\nDeserunt omnis voluptatem at labore saepe aut. Itaque quaerat nostrum pariatur amet tempora corporis fugit et. Officiis eos velit et molestiae eum esse autem.\n\nNostrum commodi sed voluptates eveniet consequatur. Atque tempora quod sed repellat dolor ullam. Ab ipsum consequatur harum officiis.\n\nVoluptatum natus ea voluptatem distinctio. Et consectetur reiciendis sint enim eligendi necessitatibus nisi. Rerum voluptatem voluptas adipisci voluptates illo labore optio. Quas ut ea dolorem maxime.\n\nAut quisquam minima aliquid veritatis corporis molestias. Quia nemo quos quam doloribus. Aut earum fugit velit animi sit nostrum.\n\nLaudantium aut laborum qui quae vitae et numquam. Eum ea quia cum autem ratione. Quibusdam quo delectus consequatur corporis asperiores quo. Quae nam illo temporibus facilis ipsa quod.\n\nLabore necessitatibus corporis animi laborum ut. In autem reiciendis quo neque animi. Aut ab tenetur dicta repellat nam nulla qui. Delectus ea nulla quia dolor sunt.', 3, '2023-07-06 01:49:16', '2023-07-06 01:49:16'),
(15, 'Odit ut dolor sed delectus', 'Sequi et quae et voluptas veniam culpa rerum quam. Fuga iure nisi aut quia aliquid possimus.\n\nTempora nesciunt atque qui assumenda saepe repudiandae tempora. Quo voluptatibus dolores est nesciunt optio quia quidem. Qui corporis enim nihil nam.\n\nNam voluptatum alias consequatur vel. Necessitatibus maxime non et fugiat possimus pariatur maxime. Tempora veritatis in cum expedita aliquam. Nemo et aut beatae non fugit ea ipsum culpa. Occaecati et perspiciatis voluptates est.\n\nCorporis perspiciatis sunt exercitationem non iste. Ut ut sint dolorum non aliquid iste. Nulla quae quia perspiciatis. Dolorem aut quod ipsam quam et suscipit.\n\nMolestiae enim omnis sed quod quia recusandae nobis. Maxime dolorum eligendi eum ipsum ex. Et a sunt eaque illo blanditiis et est.\n\nNihil atque consequatur aut et rerum dignissimos. Ea dolor impedit non qui. Et exercitationem perspiciatis adipisci dicta quasi qui. Optio id voluptatem modi voluptatum. Aut aut amet dolorem corporis quisquam sint omnis.', 1, '2023-07-06 01:49:16', '2023-07-06 01:49:16'),
(16, 'A minima in vitae velit', 'Quod et asperiores repudiandae et ab sunt eum. Perspiciatis commodi a nam consequuntur. Dolores nihil odio culpa aut aut.\n\nUllam perspiciatis nulla minus enim fuga. Vel accusamus distinctio ab qui sunt dolorem. Aperiam et laudantium laborum cupiditate. Ut vero maxime illo dolor voluptatum qui.\n\nNon iusto sed enim magni rerum in. Vitae molestiae voluptates est quod quo nihil in. Vel adipisci architecto quia dolor temporibus fuga in.\n\nAtque quis qui dolor dolor et dicta magni. A placeat modi aut neque maiores culpa. Iusto fuga sit doloribus culpa ut vel amet. Quia quia sed odio alias deserunt totam officiis.\n\nVel in neque ut rerum. Asperiores a et quibusdam ut dolore. Praesentium ut eos eveniet maxime omnis tenetur ullam quisquam. Voluptates et omnis quisquam earum id.', 2, '2023-07-06 01:49:17', '2023-07-06 01:49:17'),
(17, 'Sequi qui sit omnis ea', 'Non ut aut sit omnis nisi consequuntur perspiciatis. Nesciunt modi debitis earum doloremque illum adipisci. Sit exercitationem sunt facilis quidem sit. Est quae et repellendus nisi eum.\n\nEt aperiam cupiditate facilis. Quos dolores et ea qui dolorem. Et nihil ratione consequuntur adipisci.\n\nAut sed modi velit officiis. Eligendi eum quisquam iste libero est in ad. Ad eaque pariatur nihil non.\n\nId aut odio amet quibusdam vel soluta est. Facilis magni et quisquam fugit eos eius. Quo rerum nihil ut voluptatem voluptate.\n\nLaborum nemo quae reprehenderit fugiat sunt. Laborum voluptate et molestiae. Deleniti non placeat deleniti.\n\nDolores et voluptas architecto porro eligendi est. Id ut cum repellat qui vel. Aut dolore tenetur vel ut possimus consectetur.', 1, '2023-07-06 01:49:17', '2023-07-06 01:49:17'),
(18, 'Impedit qui dolor nulla', 'Iure nostrum officia voluptatem occaecati nostrum inventore. Iure odio architecto velit fuga perferendis aut ut. Delectus ducimus ut provident laboriosam. Et hic non a eius sit qui.\n\nUt id ratione laudantium ullam nulla non. Numquam quos nihil voluptate et culpa vel voluptatem. Laudantium debitis voluptate perspiciatis reiciendis voluptatem. Rerum iste enim eius. Est sed alias veritatis totam.\n\nEst perspiciatis architecto reiciendis mollitia minima qui. Enim id minus vel itaque a aut.\n\nDistinctio eos rerum est debitis et minus. Iste soluta nam nesciunt quo. Incidunt odio dolores quibusdam cupiditate. Tempore aliquid sint autem voluptate debitis.\n\nConsequatur numquam dignissimos nam optio voluptatem minima dolor quibusdam. Eius dolore velit perspiciatis quam qui enim. Perferendis modi blanditiis nisi et suscipit reiciendis et. Labore esse consectetur incidunt natus deleniti ut rerum.\n\nSed et possimus id cum sed. Illum veritatis rem eum aut amet consequatur quod. Sed nam aut sed facere autem qui qui. Occaecati fugiat quasi nemo tempora excepturi enim.\n\nQui qui quae voluptatem rerum dolorum porro deserunt. Voluptatibus placeat aperiam enim veritatis autem. Et quidem ea adipisci sed tempore ut veniam. Quasi unde impedit temporibus qui eum quia saepe et.', 1, '2023-07-06 01:49:17', '2023-07-06 01:49:17'),
(19, 'Tempore et ea ipsa', 'Architecto animi officiis quis iure ea velit sequi inventore. Qui explicabo et eius dolore repudiandae deleniti ut. Sit voluptatem sit numquam sequi. Dolorem dolor voluptatem mollitia ut.\n\nExplicabo iste nemo dignissimos enim maxime. Eos rem vel dolor dolores cupiditate. Aspernatur doloremque quidem aut molestiae ea enim a vel. Et delectus laudantium magnam voluptates accusamus. Molestias delectus corporis sed cumque quam.\n\nNumquam optio amet reiciendis a unde. Cupiditate et suscipit et blanditiis quae porro. Porro sed fugiat qui nam illo velit.\n\nAliquid consequatur nihil et repellat ipsam exercitationem. Aut vel id dolores ut officia in sapiente. Ipsa qui sunt omnis et accusantium corrupti. Quia autem repellat id qui eos voluptas.\n\nVoluptates et doloribus occaecati sed. Aspernatur iure sit illo ut. Rerum hic eos asperiores consequatur deserunt occaecati soluta. Aut deleniti autem tenetur qui rerum nam explicabo. Asperiores rerum consequuntur aut.\n\nEst officia neque et molestias dignissimos qui dolorum velit. Quasi earum illum omnis consequatur non.\n\nSaepe autem doloribus molestias illum natus nemo. Laboriosam eligendi assumenda possimus voluptas in voluptas incidunt totam. Eos corrupti harum consectetur doloribus et itaque quidem. Modi suscipit aut vitae in ut nobis est qui.', 3, '2023-07-06 01:49:17', '2023-07-06 01:49:17'),
(20, 'Vel dolore eum qui omnis', 'Voluptate nostrum nemo eligendi quis tempore ex aut. Consequatur nisi quos non rem ut. Hic et libero ea rerum praesentium velit.\n\nPossimus non qui autem odit dicta ut sit et. Ipsa voluptatem rem qui facere amet quia porro voluptatem. At est error exercitationem alias qui.\n\nBeatae veniam alias magnam doloribus at. Laborum voluptatem sapiente alias aut et culpa. Esse et excepturi aut dolorum eveniet sunt deleniti.\n\nRepudiandae ullam consectetur reprehenderit dolor dolor fugiat. Eligendi ipsam voluptatum autem quo quam fuga earum. Ducimus excepturi laborum tenetur nesciunt vero dolores asperiores omnis.\n\nVoluptatem exercitationem quas a dolor. Blanditiis atque autem aut impedit nihil eaque totam. Praesentium eum ea rerum eaque sunt enim aut quaerat. Voluptatum veritatis cumque esse voluptatem culpa occaecati.\n\nEum tempora ex ullam saepe provident sed. Quasi et ab iste aspernatur odit.\n\nSint quia aut et similique. Modi dolorum reiciendis aspernatur ipsam. Reprehenderit saepe qui quam nobis magnam tempore voluptate. Est soluta quidem voluptas.', 3, '2023-07-06 01:49:18', '2023-07-06 01:49:18'),
(21, 'Numquam autem non et', 'Sed atque dolores fuga quis perferendis. Est iste atque pariatur debitis sed omnis. Amet alias nam ut voluptas consequuntur porro quam.\n\nSit mollitia fuga maiores odio temporibus asperiores doloribus. Voluptas illum aut quam quia ut rerum quis. Necessitatibus quos ut alias reiciendis ipsum. Eveniet eius aliquid nihil reprehenderit aliquid dignissimos.\n\nDolor dolorem quam provident alias et. Dolor tempore et deleniti reprehenderit velit iure vero.\n\nEt tempora eum qui et consequatur voluptate. Est saepe et numquam aliquam quasi esse aperiam nobis. Placeat id sit laudantium earum voluptatem. Quia repellendus error facere magnam.\n\nAsperiores est ea sed sed autem reprehenderit. Rerum debitis non et voluptatum qui voluptate. Praesentium quidem animi voluptas autem adipisci.\n\nNeque pariatur nemo id et magnam aut. Adipisci aut in sed facilis id deleniti. Expedita eum possimus aut. Quia accusantium qui eum et eaque. Sit ipsam molestiae id veniam.', 1, '2023-07-06 01:49:18', '2023-07-06 01:49:18'),
(22, 'Minus dicta et earum autem', 'Rerum cupiditate est sed voluptas qui. Nobis fugit optio est laboriosam. Laboriosam et consequatur fugit corrupti ut enim tenetur.\n\nVoluptatem tempora illum et quia officia facere. Nostrum atque qui ipsa voluptas et. Officia est voluptas voluptatibus. Voluptatem commodi non suscipit. Accusantium aut voluptatem est et.\n\nEa enim earum magnam et quos occaecati animi. Ad atque qui molestias sunt itaque dolorum provident. Vel qui consectetur amet.\n\nVero et dolore modi. At animi et molestiae expedita. Modi sit repellendus quisquam optio delectus. Voluptas libero dolor eveniet saepe placeat veniam qui.\n\nOccaecati et tempora quo debitis ex magni. Assumenda qui dicta ad nam sed est. Harum saepe qui et omnis quidem animi.\n\nDolore cupiditate dicta necessitatibus et. Voluptatem facere minus eius accusantium omnis sed omnis.', 2, '2023-07-06 01:49:18', '2023-07-06 01:49:18'),
(23, 'Quis at laboriosam illum', 'Nostrum totam maxime distinctio saepe inventore eum. Sed itaque voluptatem aut assumenda. Rerum officia eum minima sint dolor facilis alias. Unde est aliquid est vero.\n\nDucimus nihil corporis ullam sapiente quo. Deserunt aut accusamus omnis voluptas quos. Et quo repellendus animi sunt autem est voluptatibus.\n\nBlanditiis suscipit incidunt necessitatibus eius rerum voluptatem eos beatae. Architecto aut est consectetur ut distinctio. In fuga similique voluptatum hic eaque.\n\nError velit asperiores dolorem qui. At rem ut impedit qui. Sapiente nobis non sed cupiditate veritatis officia. Non culpa dicta sit omnis tempore dolore ea architecto.\n\nVoluptas maiores ut a laborum eos eos ducimus. Aliquam tempore adipisci repellendus molestiae. Repellendus iure rerum corporis soluta reprehenderit magni. Sequi tempore sit inventore consectetur nam.\n\nLibero quidem placeat qui ea incidunt. Labore ea beatae voluptate. Et illum veniam cum blanditiis aut dignissimos molestias. Error est similique iusto enim et nulla.', 2, '2023-07-06 01:49:18', '2023-07-06 01:49:18'),
(24, 'Molestias quas sapiente quia', 'Incidunt corporis quia voluptatum quis. Tempore ut fugiat dolor quos cupiditate quam. Voluptatem ipsa et excepturi sint sit. Aut et aut esse libero nobis illum voluptas.\n\nQui dolorum magnam placeat eum facere. Qui ut molestias reiciendis dolorum eius quia. Exercitationem voluptate et recusandae est.\n\nSequi deserunt magni veniam. Quos nostrum minima repudiandae a eum qui nobis nisi. Temporibus sint ut eaque vitae ut est. Velit soluta earum odit qui nostrum.\n\nNam quibusdam accusantium quae ex ad. Maiores ab et quam molestias provident fuga. Nesciunt dolorem a aut est cupiditate reprehenderit quia vero. Culpa rerum autem aut.\n\nQui nobis eaque consequuntur ducimus quo. Debitis nisi voluptatem quia sunt ut. Iste nihil neque nulla impedit odio. Dolorum nisi dicta et vero et nobis.\n\nVel nisi quam qui non nesciunt mollitia eaque. Impedit eveniet tempore veritatis nostrum sed voluptatem. Maxime facere nesciunt eum assumenda.\n\nUt voluptatem expedita rerum quo. Quos maxime quaerat exercitationem dignissimos ut iste. Labore consequatur et repellendus.', 1, '2023-07-06 01:49:18', '2023-07-06 01:49:18'),
(25, 'Possimus et sunt quo', 'Possimus pariatur aut quia nisi cupiditate dolore debitis itaque. Nihil fugiat in nobis et maiores minus. Assumenda et blanditiis quaerat odio ullam.\n\nMagnam sint asperiores ex rem. Vel esse ut mollitia sit. Maiores distinctio hic omnis pariatur laudantium voluptatem molestias. Repudiandae omnis voluptatem eum quidem et voluptas voluptas.\n\nEligendi error inventore et deleniti aliquam. Enim molestiae vel dolorem fuga facilis. Dolore eum nobis aperiam laborum harum.\n\nNulla perspiciatis cupiditate quaerat eos. Dolor qui harum impedit voluptatum et dolores. Minus autem tempora placeat.\n\nEa harum soluta ipsa. Molestiae qui ducimus delectus. Ratione dolore eligendi maiores ducimus. Minus optio sint eaque aut voluptatem veritatis impedit.\n\nEum et qui reprehenderit consequuntur non pariatur. Ipsum expedita vero in eos. Ipsa perferendis quos voluptatem recusandae dolor. Veritatis quod recusandae tempora corporis dignissimos.\n\nAb rem et odit magnam quam beatae. Ipsum molestiae quia voluptas ut dolores. Minima inventore molestiae nihil autem praesentium animi non. Ratione quia laboriosam aperiam optio cum molestiae.', 1, '2023-07-06 01:49:19', '2023-07-06 01:49:19'),
(26, 'Ducimus nihil quia enim sint', 'Et commodi quo possimus unde aperiam. Quis itaque quae minus odit ad eligendi eaque reiciendis. Sed cupiditate est sapiente consequuntur.\n\nQuis libero blanditiis animi sint qui. Ipsa sed distinctio quo accusamus ipsam nulla est. Eum corrupti dolorum autem dolor rerum sed. Neque odit est hic accusamus sed.\n\nEt pariatur error est ipsa. Enim et repellendus maxime. Nam sit aut quae. Repellat quos ut deleniti alias autem voluptas laborum.\n\nQuas veritatis mollitia numquam voluptatem id reiciendis. Iusto id eius omnis qui est mollitia nesciunt. Nulla nam nam est ipsa dicta eligendi. Omnis nisi nostrum velit adipisci fugiat.\n\nAssumenda sapiente numquam eum beatae. Qui odio maiores reprehenderit nobis est facilis suscipit. Ea qui veritatis sequi quisquam.', 3, '2023-07-06 01:49:19', '2023-07-06 01:49:19'),
(27, 'Deleniti et in sed', 'Qui iusto occaecati ut dicta dolores sit. Quia ratione eos cupiditate cupiditate. Odit quas veritatis aut veniam.\n\nCommodi praesentium vitae repellat enim delectus. Debitis provident eos quo ut earum. Ratione aliquid nihil sint recusandae et quisquam.\n\nIncidunt voluptas dignissimos est dignissimos. Voluptatem officiis quidem non harum explicabo similique rerum. Sunt aut incidunt voluptatibus sed quam dolore. Iusto esse ea ipsam a veritatis ut.\n\nIn fuga odio minus autem autem et. Qui totam doloremque ducimus necessitatibus laborum. Eaque voluptas quaerat est quas ea sed modi.\n\nSit quibusdam iusto qui voluptatem laborum. Alias cupiditate vel corporis voluptatum. Nemo inventore non aut in earum. Nam a id quia at blanditiis.\n\nRerum sunt ipsum et quis at deserunt. Dolorum aperiam repudiandae doloribus adipisci corporis consequatur qui. Atque facere dolor et sunt neque.', 1, '2023-07-06 01:49:19', '2023-07-06 01:49:19'),
(28, 'Vel autem aut dolore rerum', 'Voluptatem nesciunt velit sed id voluptatum tenetur. Ipsa perspiciatis et unde illum id cumque. Sequi quo qui rerum nisi qui ut aliquid. Illum cum dolore quo atque distinctio assumenda ut. Dolorem esse ducimus est aspernatur.\n\nDolor fugit cupiditate tenetur iste est. Assumenda praesentium aut quasi iure voluptatem ea. Necessitatibus rerum quia vitae assumenda. Et dolorem quod quae ipsum quam.\n\nSunt qui quod corrupti. Corrupti occaecati ut pariatur vel corrupti. Nemo sapiente impedit ut placeat magni ducimus amet. Dolore dicta voluptatem possimus soluta.\n\nSed ab ab quae ea non est. Aut beatae laborum delectus iure ut. Laudantium molestiae impedit et qui et dolore commodi.\n\nEt repudiandae ut molestiae neque. Quo saepe voluptatem voluptatem.\n\nAt consequuntur enim ab ipsam ullam praesentium commodi. Voluptatem debitis ut ad qui aut maiores. Non nesciunt impedit quibusdam quas id nam hic.', 2, '2023-07-06 01:49:19', '2023-07-06 01:49:19'),
(29, 'Rerum dolorem similique nisi', 'Unde ut ad accusantium dolor occaecati. Aspernatur sunt nisi voluptas.\n\nAccusamus necessitatibus tempora vel aut ullam non. Ipsam veritatis vero soluta atque ea saepe. A possimus esse eos quas ullam. Non architecto odit quibusdam sit aut ad molestiae. Ea molestias qui accusantium magnam dolorum qui voluptates.\n\nVoluptates impedit modi voluptatem veritatis non. Nam occaecati ex ea minima. Expedita nulla voluptatibus provident. Molestiae sint molestiae aut doloremque eum nihil saepe incidunt.\n\nVoluptas culpa rerum tenetur sunt repudiandae. Placeat tenetur et mollitia placeat sunt est. Provident odit ratione labore exercitationem.\n\nImpedit itaque ad enim beatae incidunt explicabo atque. Quo maiores voluptatem totam molestias quis. Accusantium eos ad delectus.\n\nQui provident et autem et. Labore beatae est porro accusamus voluptatum vitae facilis architecto. Aut quaerat nihil deleniti aut iste voluptas. Est ut nihil sint voluptatem recusandae nemo corporis.', 3, '2023-07-06 01:49:20', '2023-07-06 01:49:20'),
(30, 'Et rem delectus quod', 'Soluta illo ullam non ea asperiores. Aut quia quia voluptatem quis ut et. Culpa ipsum earum sunt et beatae voluptas. Saepe odio itaque eum excepturi temporibus et.\n\nNumquam earum quo sunt suscipit vel expedita iure. Harum voluptates velit vel consequatur tempora. Perspiciatis laudantium nemo dolorum totam sunt.\n\nUnde amet illo culpa fugiat. Quia laudantium similique deleniti recusandae qui dolorem mollitia. Excepturi aut optio dolores nihil architecto sequi repudiandae.\n\nPraesentium ipsam laborum id ipsam eum. Sed amet tempora sed magni. Ea est harum esse expedita amet ad soluta. Quis libero sunt aut ullam architecto.\n\nRerum voluptates aut doloribus facilis. Similique qui rerum quidem vero. Et aut provident voluptas ratione nobis velit quaerat. Ullam est ab exercitationem soluta libero id est. Ducimus temporibus praesentium esse sit.\n\nQuo omnis sunt quod autem est maiores. Qui quibusdam natus fuga ullam eos. Aut maiores in earum ut harum eum quos.', 1, '2023-07-06 01:49:20', '2023-07-06 01:49:20'),
(31, 'Eaque sint quia nemo non', 'Libero debitis voluptatem et dolore voluptas reprehenderit voluptatum iusto. Voluptatem eaque sed provident accusamus iste nihil. Delectus inventore laborum tempore quaerat ipsa sed sint blanditiis.\n\nCum voluptas unde voluptate molestiae distinctio. Assumenda consequatur beatae reiciendis ullam labore sequi. Eos est soluta et rerum qui. Ut eos cupiditate doloremque cupiditate ut. Quaerat veritatis excepturi illo eos a itaque.\n\nAb magni earum deserunt quibusdam eum. Laborum molestiae nihil reiciendis soluta ut. Rerum modi sit qui et qui. Et enim rem et ipsum dolorum voluptas.\n\nTempore dolor esse tempore totam veritatis ipsam. Nihil sint dolore nihil ab.\n\nAb iure rerum quos aut in. Quis eum ut consequatur. Asperiores ipsam in assumenda est officiis minus. Tempore ea dolore et in sit.\n\nAperiam enim molestiae asperiores aspernatur autem et ab. Perferendis vel tempora aut. Laudantium expedita expedita rerum commodi cum aut. Neque alias dolorem laborum ad aut error.', 2, '2023-07-06 01:49:20', '2023-07-06 01:49:20'),
(32, 'Cumque dolorum odit est enim', 'Tempora quo natus et a et magni. Officiis repellat et sit dignissimos commodi aperiam dolores corrupti. Accusamus autem autem maiores qui. Et mollitia cum sapiente omnis aspernatur est.\n\nTotam culpa sapiente est. Et et omnis amet quia blanditiis nihil aut. Voluptas qui ea est est ab nobis minus officia.\n\nMinima voluptatem labore est. Eos velit quibusdam placeat blanditiis nostrum consectetur ipsa. Eum quis cumque molestiae officia. Aliquam omnis voluptas facilis quo non deserunt.\n\nNon accusamus magni dolorem nulla fuga. Similique ut sed in delectus possimus molestiae dolor. Vel doloribus reprehenderit aperiam molestiae amet ut vitae.\n\nEt consequatur fugiat sed ut doloremque non dolore. Et rem id in iste dolor quaerat. Id consequatur quos facere rerum aliquam.', 3, '2023-07-06 01:49:20', '2023-07-06 01:49:20'),
(33, 'Eum officiis dolores eos et', 'Ullam et consequatur recusandae voluptatibus aut dolores. Repudiandae quas ratione id omnis. Rerum veniam excepturi quis pariatur similique. Cum voluptas numquam sed minus illo delectus.\n\nUt et quo corporis consequatur qui. Et aut odio voluptatem placeat. Inventore iure sed culpa voluptatem et.\n\nMagni natus culpa dolorum deserunt explicabo ipsa repudiandae. Rem nisi explicabo debitis omnis cum officiis est quia. Dolores eligendi voluptatum est facilis fuga autem nam.\n\nNihil est ipsam dolores tempora est a. Modi soluta ut distinctio voluptatem consequatur ex et. Deleniti deleniti labore sunt asperiores voluptates qui. Omnis numquam deserunt ea et porro deleniti sequi quia. Id error eius voluptas.\n\nQui ab qui perspiciatis unde libero aut. Non voluptates esse molestiae ut. Et totam est voluptas consequatur eius non.\n\nUt et molestias possimus consequatur in occaecati. Voluptatem voluptatem et necessitatibus sint doloremque corrupti corrupti enim. Dolor perferendis voluptas maiores sed vel excepturi amet.\n\nIllo sunt nihil at ab qui cum sed. Ut quis quo dolor quae. Vel non inventore explicabo dolorem enim et minima qui. Atque tempora molestias ut harum.', 1, '2023-07-06 01:49:21', '2023-07-06 01:49:21'),
(34, 'Omnis aut velit natus beatae', 'Vel eaque omnis et ipsum et. Quam voluptas omnis omnis sed aut sunt deserunt. Reiciendis nobis consectetur odio.\n\nMaxime ut ea at ipsa non possimus eveniet. Qui repudiandae sit molestiae magnam sit quidem. Repellendus doloremque qui officia id placeat aut.\n\nId ullam neque sed quaerat saepe. Quibusdam est repellendus aliquid. Ut laudantium id ullam rem dignissimos. Voluptatem enim quod ipsam id quia consequatur.\n\nBeatae quia id autem nostrum. Eaque quasi id omnis a voluptas adipisci. Doloremque illo hic nobis voluptatem inventore exercitationem nihil.\n\nHarum repellat quas recusandae sunt deserunt alias repudiandae at. Esse veritatis id unde dolores cum. Cupiditate porro perferendis est quo.', 3, '2023-07-06 01:49:21', '2023-07-06 01:49:21'),
(35, 'Culpa sequi veniam et in', 'Accusantium fugiat recusandae at non. Nulla delectus omnis impedit ipsam eligendi quidem.\n\nLaborum suscipit numquam labore enim officia. Provident aut illum quia iusto praesentium. Accusantium aut incidunt explicabo totam officiis voluptatum. Dolores atque quae atque nam.\n\nBeatae eos et omnis totam. Veniam consequatur veniam fuga sed. Debitis maiores asperiores ut repellat.\n\nFugit aliquid qui illum rem unde magni maiores quis. Velit sunt facere maiores deserunt magni. Odio perspiciatis debitis sed et.\n\nAb nesciunt dolorum ipsa temporibus aperiam. Nam qui mollitia ex animi adipisci sint explicabo. Deleniti minima at earum temporibus.', 1, '2023-07-06 01:49:22', '2023-07-06 01:49:22'),
(36, 'In dolores blanditiis qui', 'Et beatae recusandae illo est. Facilis qui cupiditate soluta minus deleniti sequi. Voluptatem quod molestias error iure est.\n\nQuae dignissimos dicta quaerat ut provident nihil. In quam consequuntur totam asperiores debitis. Quasi recusandae adipisci voluptate iste enim. Tempore qui ipsum quis reiciendis laborum rem atque autem.\n\nEst sed magnam quasi. Velit ut magnam sint consectetur. Voluptatem animi totam animi recusandae maxime eum accusantium.\n\nEt beatae quas labore neque. Corrupti voluptatem dolores magni odio provident error. Voluptas placeat qui consequatur ad. Blanditiis corporis repellat veritatis saepe quis.\n\nRepellendus quae ratione voluptatibus repudiandae at. Molestiae maiores et delectus ea itaque non esse. Tenetur repellendus voluptate ea neque vel.', 2, '2023-07-06 01:49:22', '2023-07-06 01:49:22'),
(37, 'Et aut quia sit ea atque', 'Veniam odit est esse velit at tempora. Aut tenetur minima perspiciatis consectetur rerum.\n\nQuisquam consequatur tempore sed est est voluptatem. Qui cupiditate possimus fuga nostrum. Doloribus eveniet esse error et aspernatur. Atque consequatur numquam unde nam ut.\n\nQuia doloremque aut non. Quam pariatur vero aspernatur sit nisi. Similique voluptatem velit nulla sunt error. Doloribus consequatur quia voluptate necessitatibus voluptatum recusandae.\n\nDucimus facere ea exercitationem consequuntur laudantium sequi vel. Esse fugit quia qui vel optio aut ut. Fugiat est dolores minus facere iure.\n\nQuis ut fuga mollitia itaque. Itaque omnis accusantium ipsam perferendis. Saepe voluptate magni rerum velit vero assumenda quas. Similique nihil quia quia aperiam iure ab.', 3, '2023-07-06 01:49:23', '2023-07-06 01:49:23'),
(38, 'Sint nemo est velit delectus', 'Voluptatum unde velit qui deserunt iusto. Aut alias nobis quo quia unde repellat consequatur. Sed eligendi animi rem id deleniti. Porro quia et voluptas.\n\nVero nihil nobis omnis hic ut provident ad quia. Fugiat aut est est et eaque ipsum. Quia sequi enim iusto adipisci voluptas quod accusantium nemo.\n\nEst in est voluptas qui impedit iusto. Nulla ut laboriosam quibusdam. Magni at quasi natus molestiae soluta molestias ut. Iste incidunt libero autem voluptate sit.\n\nAutem incidunt omnis et doloribus alias. Velit dignissimos nam voluptates iusto error quis omnis. Eligendi eum qui error libero.\n\nIllo at praesentium numquam ab. Omnis illum omnis qui ipsa eaque. Facilis ut earum est sit nam. Facere dolorum accusantium ratione dolore.\n\nIpsa dolorem minus cumque aut qui adipisci. Ea deserunt sequi expedita quia. Facilis totam ut dolorem veritatis perferendis commodi molestiae.\n\nFugit facere mollitia fuga voluptas harum repellat. Blanditiis unde praesentium recusandae iste sed in. Saepe quia repellendus voluptatibus. Incidunt sunt assumenda nulla pariatur quia nihil velit.', 3, '2023-07-06 01:49:23', '2023-07-06 01:49:23'),
(39, 'Ipsum et itaque quis ea', 'Et qui assumenda harum consectetur non. Illum iusto est optio vel esse. Est ullam voluptate ipsa quo omnis officiis.\n\nQuod qui repudiandae vel cum non id. Neque sit qui consequatur natus sed ut consequatur. Unde asperiores eveniet sint eaque est. Qui quisquam nemo quia praesentium aut. Consequuntur accusantium error aut est ad magni.\n\nAut quam ut sint accusamus rerum voluptatem. Sed sunt hic dolorum eius quia nobis in. Provident eos ad voluptatum natus.\n\nNostrum voluptas quia rerum at officiis modi accusantium voluptate. Incidunt ut quis saepe iusto. Voluptate incidunt id vitae.\n\nFuga iure et molestiae est facere exercitationem et. Sit porro blanditiis molestiae deserunt quia. Ab dignissimos eos unde ut repellendus.', 1, '2023-07-06 01:49:23', '2023-07-06 01:49:23'),
(40, 'Ut at dolores doloribus fuga', 'Dolorem totam nesciunt nihil illum voluptatem sit aut. Vel et voluptas est velit. Et repellendus dolore culpa placeat voluptas consequatur et.\n\nRerum non vitae culpa. Nobis est eos earum veniam libero minima. Vel excepturi ratione voluptate sed aliquid ut quo.\n\nNon soluta occaecati et dolor. Vel soluta aspernatur eum nemo deserunt fuga. Et eveniet voluptatem soluta optio accusamus et rerum quo. Voluptatibus aut blanditiis odio quod perspiciatis repellat officia. Doloremque explicabo ab labore quis omnis dignissimos aspernatur.\n\nQuos asperiores ullam similique reprehenderit nihil alias distinctio et. Ad quasi similique ut consequuntur omnis blanditiis unde. Tenetur consequuntur et aut in modi suscipit sit.\n\nAut laboriosam nihil non fugit sapiente. Doloribus sed sed fugit aperiam itaque. Eum rerum voluptatem vero ad voluptatem modi.\n\nVel quo debitis officia nam. Quis exercitationem officia soluta expedita ut. Ut laboriosam voluptatem itaque quia doloremque. Exercitationem porro commodi hic asperiores aut deserunt quam.\n\nDolorum rerum magni sapiente temporibus rerum corporis. Error est numquam magnam temporibus facilis. Ipsum incidunt deleniti deleniti dolor ipsa nihil at. Consequatur enim minus aperiam doloribus id hic.', 1, '2023-07-06 01:49:24', '2023-07-06 01:49:24'),
(41, 'Aspernatur vero tempora sed', 'Rerum hic nihil nostrum praesentium veniam quis hic. Placeat omnis quod aliquid incidunt nemo id. Ratione dolor debitis aut ipsa.\n\nSapiente laudantium assumenda cumque blanditiis est illum. Rerum nemo hic ut aut recusandae. Qui facere facere eveniet laboriosam accusantium. Repellendus debitis voluptas molestiae fugiat.\n\nMagni adipisci vero unde ullam dolores non. Alias ducimus fuga porro et provident officia veritatis perferendis. Quia fuga fugiat aut minima maiores sit.\n\nVel a nemo nihil. Mollitia autem fuga dolore repudiandae magnam et non. Voluptatem velit et ut quidem dignissimos esse officiis.\n\nEnim sequi ratione consequatur. Vel quo fugiat et ratione perspiciatis deleniti non suscipit. Quos exercitationem et ut in et voluptatum officia.\n\nOdio delectus distinctio aut voluptates. Incidunt delectus beatae consequatur unde harum.', 1, '2023-07-06 01:49:24', '2023-07-06 01:49:24'),
(42, 'Aut iusto adipisci eum amet', 'Unde ad voluptatem vel nobis aliquam velit facilis. Unde quia suscipit fuga voluptas voluptas quaerat occaecati. Tempore nesciunt ex cumque reprehenderit quo quo.\n\nVoluptatem libero cumque delectus sunt qui rem. Voluptatem dolorum nihil eum consequatur deserunt ut hic quis. Tenetur dicta nemo dolor iusto eaque rerum. Incidunt atque ipsam qui maiores dolor soluta est sunt.\n\nEa amet consequatur consequuntur aut aut. In cum doloribus omnis quia autem. Qui inventore nihil dolor autem aut.\n\nSit non nam sequi consequatur sit at. Dicta nesciunt et pariatur beatae et et. Nobis beatae omnis nemo aut fuga et vero modi. Ut quibusdam debitis ipsa necessitatibus.\n\nAut consequatur harum voluptates fuga minima officiis. Quidem autem eius nisi saepe et. Similique numquam eum qui dicta molestias odit. Quis velit sapiente esse.\n\nIllo est ex ipsa tempore. Neque ea est quia sint non. Maiores beatae deserunt non inventore id et ullam.', 1, '2023-07-06 01:49:24', '2023-07-06 01:49:24'),
(43, 'Itaque ad natus debitis nemo', 'Rerum autem impedit hic aperiam quibusdam est. Reprehenderit omnis optio dignissimos et aut quia vero. Et ad omnis nesciunt aut rerum ipsum rerum.\n\nOfficia commodi porro asperiores saepe asperiores dolorem. Et magnam a repellat voluptatem animi omnis. Molestiae neque repellat recusandae odio qui debitis. Aut qui autem pariatur quidem enim. Aperiam consequatur laboriosam modi autem ab.\n\nVoluptas eveniet odio veniam sed omnis. Aut ratione id et nam. Dicta et porro perspiciatis ipsam.\n\nAliquam eligendi rerum qui tenetur sit libero molestiae corporis. In odio nostrum itaque et beatae laudantium vitae. Nisi suscipit ut doloremque est quibusdam. Necessitatibus enim ut et aut.\n\nAmet delectus reprehenderit voluptate adipisci ipsam itaque. Illo aut illo nobis reiciendis. Qui voluptates ipsa quia laborum. Fugit adipisci sapiente aut et.\n\nTenetur rerum ipsa occaecati beatae excepturi voluptatum. Temporibus minus facilis provident labore minus sunt. Quis voluptatem sit sit atque non officia molestiae. Eaque eveniet quas amet eum. Aliquid cupiditate et eum vero deleniti ut fugit.', 3, '2023-07-06 01:49:25', '2023-07-06 01:49:25'),
(44, 'Ut ex et ducimus in quia', 'Dignissimos esse assumenda possimus distinctio iste corrupti enim. Dolorem nulla quasi repellendus reprehenderit. Aut deserunt dolorem omnis placeat aperiam iusto.\n\nQuia blanditiis rerum quod sunt dicta vitae vero accusantium. Facere officiis aut nihil. Est est eum enim quia. Earum illum qui maxime accusamus voluptates hic quasi.\n\nTenetur quaerat tenetur hic et hic nemo modi omnis. Tempora exercitationem occaecati ut quam. Ab magnam id ut non nihil doloremque tenetur. Atque quo nemo exercitationem recusandae architecto.\n\nVoluptatem occaecati esse nisi omnis similique aut. Laudantium itaque modi sint libero officiis. Et laudantium sed sit et voluptatibus quia. Ut nam esse autem impedit enim.\n\nIpsam voluptatem dolore dolores dolore qui non. Mollitia doloribus ad quis alias temporibus tempora repudiandae et. Sed ad atque quia dignissimos est. Aut quidem rerum id laboriosam amet. Qui architecto rerum repellendus.\n\nUt temporibus commodi asperiores quos quia deleniti. Exercitationem consequuntur praesentium veritatis consequuntur. Vel iste dolor dolorem. Delectus pariatur laborum eum aspernatur temporibus at omnis. Ullam aut cum pariatur quo.', 1, '2023-07-06 01:49:25', '2023-07-06 01:49:25'),
(45, 'Ab nesciunt porro fugiat est', 'Autem quisquam quas ullam quisquam dignissimos fugiat. Hic voluptas veniam aut est. Aut accusantium numquam earum.\n\nNemo facere ab unde perferendis quaerat quod. Velit officia quis corrupti dignissimos. Similique vitae exercitationem laboriosam eos sint dolore. Molestias optio sunt quia minus et dolor vel.\n\nRerum reiciendis quo quo aut. Autem nobis reprehenderit laborum incidunt dicta. Suscipit qui et qui suscipit est quia. Laboriosam sit minus tenetur ducimus.\n\nAutem omnis consectetur omnis cumque. Velit dolorum sed recusandae recusandae unde dolor voluptatem quibusdam. Numquam eaque sunt non et sapiente ab.\n\nAccusantium ipsum mollitia architecto et ea aut consequatur. Ratione est id consequatur sint dolor et reiciendis eum. Ut ut et magni et.', 1, '2023-07-06 01:49:26', '2023-07-06 01:49:26'),
(46, 'Ducimus totam incidunt totam', 'Voluptas quis temporibus molestias dignissimos hic ad. Quod expedita et odio non et eveniet accusantium eveniet. Non qui nulla fugit reprehenderit quisquam itaque omnis. Praesentium et in optio enim facere qui.\n\nQuaerat saepe corporis tempora eos ex sit mollitia. Qui provident sunt cum sit dolor quia.\n\nNulla blanditiis ut quas et aspernatur. In occaecati ad officia adipisci et fugiat sed minus. Consequatur illo eveniet velit aliquid laborum rerum.\n\nAtque voluptas excepturi vel quaerat. Ea modi et sint non. Ullam illum consequatur iste culpa. Aliquid culpa nihil cum rem impedit in.\n\nRerum quo voluptatem necessitatibus quis voluptate. Quia rerum nostrum in. Explicabo facilis officiis repudiandae qui.', 2, '2023-07-06 01:49:26', '2023-07-06 01:49:26'),
(47, 'Cum cumque in provident ut', 'Optio laborum itaque minus autem. Voluptatem quam autem temporibus. Eos voluptatem ab molestiae qui omnis. Mollitia id repudiandae consequatur iure ab.\n\nVoluptatibus numquam nam alias eos. Voluptatem repellendus occaecati illum excepturi non. Repudiandae quae consequatur perspiciatis facilis consectetur. Molestias blanditiis incidunt assumenda ex accusantium.\n\nNeque autem vel aut sed deleniti rerum. Ut dolorum provident quia voluptatem accusantium iste sunt. Assumenda quis aut beatae et dolorem est facere.\n\nNatus accusantium labore corporis omnis et. Aut quis sunt qui doloribus reprehenderit qui. Delectus quasi magni adipisci aliquid corrupti voluptate.\n\nIure facilis porro iste velit. Qui culpa similique ipsa omnis. Maxime culpa corporis explicabo sapiente quia. Quia nesciunt nulla et dolore. Facere consectetur et tempore iste enim eaque blanditiis.\n\nQuo aut ad et voluptatem qui excepturi. Laboriosam aut at quis aliquid laboriosam est totam. Temporibus dolores occaecati est quia qui aperiam aliquid. Qui facere est consequatur dolore amet maxime non.\n\nAdipisci id corporis omnis. Eaque voluptas rerum nesciunt voluptatum. Dolorem sapiente corrupti placeat consectetur. Temporibus minus perferendis omnis illo enim dolore in distinctio. Praesentium et blanditiis consequatur eius.', 3, '2023-07-06 01:49:26', '2023-07-06 01:49:26');
INSERT INTO `posts` (`id`, `title`, `description`, `admin_id`, `created_at`, `updated_at`) VALUES
(48, 'Molestias et odit et rerum', 'Quia et fugiat dolorem quasi quas. Earum aut placeat animi consequatur.\n\nQuo ut aliquam eligendi quis doloribus sequi deleniti officiis. Reiciendis magni saepe porro rerum. Rerum rerum exercitationem blanditiis atque. Eaque temporibus facilis iusto tenetur. Rem vel quis rerum architecto porro sit reprehenderit ut.\n\nMagni quia eius maxime omnis dolorem. Non reiciendis et reprehenderit necessitatibus consequuntur mollitia beatae.\n\nSuscipit ea esse officiis consequatur eum voluptatem. Dolor veniam consequatur ipsam quaerat molestiae atque voluptates non. Ea recusandae voluptatem perferendis aperiam esse quia quo laudantium. Velit dolores consequatur in accusamus aut qui repellat.\n\nEt esse autem voluptatem id aspernatur quas consequatur mollitia. Fugiat velit et vitae et minima commodi error minus. Ex quia ut explicabo.\n\nVoluptas veniam qui ut dolorum. Dolorem maiores ad impedit. Et numquam ducimus facilis sit vitae doloremque.', 1, '2023-07-06 01:49:26', '2023-07-06 01:49:26'),
(49, 'Qui atque provident quasi', 'Explicabo repudiandae dignissimos unde qui mollitia voluptatem. Natus sunt mollitia est eaque. Doloremque quae id sint aut qui et molestiae.\n\nQui rerum ut rem cum non sed. Et temporibus repellat corporis est.\n\nDolore corrupti dolore animi consequatur. Quisquam a perferendis quas minus quia. Quibusdam cum vel deserunt architecto.\n\nQuaerat molestiae et ipsa dolorum aspernatur aut delectus sint. Possimus non quae eos et eveniet. Dignissimos sit ut voluptatem exercitationem eum et laborum optio. Nulla omnis dolor quos minima sunt.\n\nSequi suscipit quas ea commodi neque in. Ab quis sunt dicta fugit. Eius ad sunt est voluptatum perferendis.\n\nProvident est sit aliquam. Est aliquid beatae voluptas. Et nihil molestiae veniam. Aut adipisci minima natus fugit tempora dolorem amet.\n\nReprehenderit corrupti vel nobis necessitatibus ut sed doloremque. Sit et itaque dignissimos qui. Rem molestiae omnis est voluptas.', 2, '2023-07-06 01:49:27', '2023-07-06 01:49:27'),
(50, 'Aperiam est et eum quis', 'Eligendi nostrum nam quos dolorum consectetur occaecati et. Ipsum quidem nulla omnis aut officiis dolores accusamus amet. Exercitationem vel velit aspernatur.\n\nSunt ut quam blanditiis minima culpa sed praesentium. Voluptas molestiae dolorem voluptates similique quo et animi. Odit reprehenderit quod cum quae at voluptas.\n\nAb architecto similique ipsa molestiae autem minima. Ipsam dolore qui aut. Odit explicabo nesciunt et voluptas voluptates. Cum ducimus sed maxime.\n\nLaborum cupiditate illo expedita ea nostrum eos id. Maiores sint est voluptate animi sed ipsum ipsum. Aut saepe sunt est est et. Cum ullam eos quia est quos aut. Cupiditate sed et ea alias molestiae quia non.\n\nEum autem beatae vel saepe nemo qui dolores. Aliquid animi optio provident et omnis omnis.', 1, '2023-07-06 01:49:27', '2023-07-06 01:49:27');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` decimal(8,2) NOT NULL,
 
)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `product_images` (
 `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  
)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`name`, `description`, `price`, `main_image`, `gallery_images`, `created_at`, `updated_at`, `id`) VALUES
('Test Desktop', 'This is test prodcuts', '55555.00', NULL, NULL, '2023-07-06 11:43:20', '2023-07-06 11:43:20', 1),
('Test Desktop', 'This is test prodcuts', '55555.00', NULL, NULL, '2023-07-06 11:46:01', '2023-07-06 11:46:01', 2),
('Test Desktop', 'This is test prodcuts', '55555.00', NULL, NULL, '2023-07-06 11:48:14', '2023-07-06 11:48:14', 3),
('Test Desktop', 'This is test prodcuts', '55555.00', 'pngtree-vector-gallery-icon-png-image_515223.jpg', '[]', '2023-07-06 11:52:01', '2023-07-06 11:52:01', 4),
('Test Mobile', 'This is test product for mobile', '5000.00', 'images.png', '[]', '2023-07-06 11:52:59', '2023-07-06 11:53:00', 5),
('Test Desktop', 'This is test description for desktop', '2000.00', 'pngtree-vector-gallery-icon-png-image_515223.jpg', '[\"7704.png_300.png\"]', '2023-07-06 12:17:28', '2023-07-06 12:17:28', 6),
('Test Mobile', 'This is test description for mobile', '5000.00', 'images.png', '[\"pngtree-vector-gallery-icon-png-image_515223.jpg\"]', '2023-07-06 12:19:28', '2023-07-06 12:19:29', 7),
('Test Product', 'This is test product', '5633.00', 'images.png', '[\"7704.png_300.png\"]', '2023-07-06 12:23:02', '2023-07-06 12:23:02', 8),
('Test Desktop', 'This is test product', '2000.00', 'pngtree-vector-gallery-icon-png-image_515223.jpg', '[\"images.png\"]', '2023-07-06 12:24:24', '2023-07-06 12:24:25', 9),
('Test Desktop', 'This is test product', '2000.00', '7704.png_300.png', '[\"images.png\"]', '2023-07-06 12:29:42', '2023-07-06 12:29:43', 10),
('Test Desktop', 'Test description for product', '2000.00', '7704.png_300.png', '[\"pngtree-vector-gallery-icon-png-image_515223.jpg\"]', '2023-07-06 12:35:43', '2023-07-06 12:35:44', 11),
('Test Desktop', 'Test descritption', '5000.00', '7704.png_300.png', '[\"images.png\"]', '2023-07-06 12:39:22', '2023-07-06 12:39:22', 12),
('Test Desktop', 'Test product', '2000.00', 'images.png', '[\"7704.png_300.png\",\"pngtree-vector-gallery-icon-png-image_515223.jpg\",\"images.png\"]', '2023-07-06 12:54:42', '2023-07-06 12:54:43', 13),
('Product Test', 'This is test product', '2000.00', 'images.png', '[\"7704.png_300.png\",\"pngtree-vector-gallery-icon-png-image_515223.jpg\",\"images.png\"]', '2023-07-06 12:56:52', '2023-07-06 12:56:53', 14),
('Test Desktop', 'Test description', '2000.00', '7704.png_300.png', '[\"7704.png_300.png\",\"pngtree-vector-gallery-icon-png-image_515223.jpg\",\"images.png\"]', '2023-07-06 13:04:49', '2023-07-06 13:04:50', 15);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', NULL, NULL),
(2, 'Editor', 'editor', NULL, NULL),
(3, 'Author', 'author', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles_permissions`
--

INSERT INTO `roles_permissions` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1);

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `phone`) VALUES
(1, 'User', 'user@user.com', NULL, '$2y$10$QqvFuHBUnTPC7s9VXgEJWOOh.ZVjCJrmxeqbTbu39alt8InzzWC4.', NULL, '2023-07-06 01:49:08', '2023-07-06 01:49:08', '852252555'),
(2, 'Test', 'test@gmail.com', NULL, '$2y$10$LNoGjJ0mh5nAW6YVMXga5uJOEsuYqg0nv4X2kJWbIwAd.EJm8BX8S', NULL, '2023-07-06 07:46:31', '2023-07-06 07:46:31', '6433636326'),
(3, 'Test 2', 'test2@gmail.com', NULL, '$2y$10$vUh3kUmi3qYMaW2rC2TNpOAEnGjMzlKBWhV58rXwRXOeaPTnBhn2O', NULL, '2023-07-06 08:12:40', '2023-07-06 08:12:40', '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `users_permissions`
--

CREATE TABLE `users_permissions` (
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (`admin_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD PRIMARY KEY (`role_id`,`permission_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_permissions`
--
ALTER TABLE `users_permissions`
  ADD PRIMARY KEY (`admin_id`,`permission_id`);

--
-- Indexes for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`admin_id`,`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
