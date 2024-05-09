-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th5 09, 2024 lúc 03:13 AM
-- Phiên bản máy phục vụ: 8.0.30
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `pty` int NOT NULL,
  `price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id`, `customer_id`, `product_id`, `pty`, `price`) VALUES
(16, 14, 38, 3, 10000000),
(17, 14, 39, 5, 8500000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `address`, `email`, `content`, `created_at`, `updated_at`) VALUES
(14, 'ưeqewqewq', '324324', '342432', 'ỷdgfdfd', 'ugfhjg', '2024-02-01 20:50:46', '2024-02-01 20:50:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `description`, `content`, `active`, `created_at`, `updated_at`) VALUES
(38, 'Shop', 0, 'Shop', '<p>Shop</p>', 1, '2024-01-31 21:03:52', '2024-01-31 21:03:52'),
(39, 'Giày Nam', 38, 'Giày Nam', '<p>Giày Nam</p>', 1, '2024-01-31 21:04:14', '2024-01-31 21:04:14'),
(40, 'Giày Nữ', 38, 'Giày Nữ', '<p>Giày Nữ</p>', 1, '2024-01-31 21:04:28', '2024-01-31 21:04:28'),
(41, 'Hàng Mới', 0, 'mới', '<p>mới</p>', 1, '2024-01-31 21:13:10', '2024-01-31 21:13:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_01_24_100511_create_menus_table', 2),
(6, '2024_01_29_051542_create_products_table', 3),
(7, '2024_01_29_053625_create_products_table', 4),
(8, '2024_01_30_064555_create_sliders_table', 5),
(9, '2024_01_30_132842_update_menu', 6),
(12, '2024_02_01_071555_create_customers_table', 7),
(13, '2024_02_01_071742_create_carts_table', 7),
(14, '2024_02_01_083525_create_jobs_table', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_id` int NOT NULL,
  `price` int DEFAULT NULL,
  `price_sale` int DEFAULT NULL,
  `active` int NOT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `content`, `menu_id`, `price`, `price_sale`, `active`, `thumb`, `created_at`, `updated_at`) VALUES
(27, 'Nike nam', 'Nike nam', '<p>Nike là một trong những thương hiệu thể thao nổi tiếng nhất trên thế giới. Từ học sinh tiểu học cho đến các vận động viên chuyên nghiệp, không ai có thể phủ nhận sức hấp dẫn của Nike. Nếu bạn khảo sát xem có bao nhiêu người đã hoặc đang sở hữu các sản phẩm của Nike, thì con số này sẽ khiến bạn bất ngờ.<br>Chất lượng của sản phẩm tạo nên uy tín của thương hiệu. Nhưng không thể phủ nhận vai trò của những chiến lược marketing vô cùng hiệu quả đã góp phần tạo nên thành công của Nike ngày hôm nay. Nike là nhà cung cấp giày và quần áo thể thao hàng đầu thế giới, đồng thời là nhà sản xuất quần áo thể thao lớn, với tổng doanh thu hơn 18,6 tỷ USD trong năm tài chính 2008. Tính đến năm 2008, công ty có hơn 30.000 nhân viên trên toàn thế giới.</p><p><img src=\"https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2.jpg\" alt=\"Giày Nike: Tổng quan thương hiệu giày Nike\" srcset=\"https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2.jpg 512w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-300x300.jpg 300w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-150x150.jpg 150w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-510x510.jpg 510w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-100x100.jpg 100w\" sizes=\"100vw\" width=\"700\" height=\"700\">Nguồn: Internet</p><p><i>Khởi đầu từ những chiếc giày Tiger…</i><br>Mọi chuyện bắt đầu với Nike vào đầu những năm 1960, khi người sáng lập Nike, Knight viết một trang giải thích cách công nhân Nhật Bản sản xuất giày chạy bộ giá rẻ. Sau đó, trong chuyến đi đến Nhật Bản, anh nhận thấy Công ty Tiger chuyên sản xuất giày chạy bộ chất lượng cao.<br>Năm 1964, Knight và người bạn William Bowerman đã trả 500 đô la để nhập khẩu giày hổ về Mỹ. Đến năm 1972, công ty bắt đầu thiết kế những đôi giày mang thương hiệu Nike của riêng mình và ký hợp đồng gia công với các nhà máy ở Châu Á (vẫn tồn tại cho đến ngày nay). Công ty non trẻ này đã ở trong một thời điểm hoàn hảo khi hoạt động chạy bộ trở nên phổ biến ở Hoa Kỳ vào những năm 1970: Nike có tổng doanh thu là 3 triệu đô la vào năm 1972, và tổng doanh thu là 270 triệu đô la trong những năm 1970 và vào năm 1980. Tổng doanh thu hàng năm lên tới 1 tỷ đô la Mỹ vào năm 1986.</p><p><i>…Đến những thăng trầm chốn thương trường</i><br>Sau thành công vào đầu những năm 1970, công ty gặp phải thử thách khó khăn đầu tiên vào những năm 1980. Nguyên nhân là do những thay đổi về nhân khẩu học đã chuyển Nike (nam, nữ và nữ) sang Nike, và các cô gái trẻ đã hơn 40 tuổi trong quá khứ. Khi về già, họ cảm thấy ít phải chạy bộ hơn. Ngày càng ít người tiêu dùng thích rèn luyện cơ thể bằng cách chạy bộ và ngày càng có nhiều người chạy bộ với tốc độ chậm hơn nhiều. Ngoài ra, thị trường giày chạy bộ ngày càng trở nên phân hóa (được coi là dấu hiệu của sự bão hòa), và bóng của nhu cầu tiêu dùng cũng khác nhau. Năm 1984, doanh số bán hàng của Nike giảm 17% và thị phần của công ty giảm từ 31% năm đó xuống còn 26%. Sự sụt giảm thị phần này tiếp tục giảm xuống 18,6% vào năm 1986.<br>Trong suốt những năm 1980, Nike bán giày giống như cách bán xe hơi với Audi và Fiat. Họ đã tạo ra những loại giày mới với các chức năng khác nhau, chẳng hạn như Pegasus (1988), Air Max (1987), và sau đó là Nike Air Jordan-Michael Jordan, vận động viên nổi tiếng nhất mọi thời đại. Bản thân nó cũng là một thương hiệu siêu đẳng và là một của các thương hiệu chính của Nike. Người phát ngôn. Ngôi sao và Tiger Woods, nơi Nike trở thành vận động viên được trả lương cao nhất từ ​​trước đến nay, trở thành người phát ngôn của thương hiệu Nike.<br>Công ty cũng đang nỗ lực thiết lập mối quan hệ lâu dài với môn Bóng đá Vua bằng cách tài trợ cho các cầu thủ nổi tiếng như World Championship Tour và Brazil của Ronaldo. Hầu hết ngân sách tiếp thị trị giá hàng tỷ đô la của Nike được sử dụng để tài trợ cho các vận động viên nổi tiếng. Rõ ràng việc kết hợp một thương hiệu thể thao với những ngôi sao thể thao hàng đầu của thế giới là ý nghĩa, nhưng dù sao thì cũng có những mặt trái của nó.<br>Trước hết, những ngôi sao như Michael Jordan, Tiger Woods hay Ronaldo đều là thương hiệu của chính họ. Trong một số trường hợp, các siêu sao được chứng nhận cũng sẽ có sản phẩm của riêng họ. Thực tế này đặt ra câu hỏi: “Liệu những anh hùng thể thao này có đang ủng hộ công việc của Nike? Hay Nike nên ủng hộ những nhân vật này?”</p><p>Thứ hai, và để làm cho vấn đề tồi tệ hơn, hàng triệu đô la được trả mỗi năm cho các công ty nổi tiếng này hoàn toàn trái ngược với mức lương trung bình thấp mà Nike trả cho công nhân nhà máy Việt Nam hoặc Indonesia. Khi một công ty như Nike chọn địa điểm đặt nhà máy dựa trên nguồn nhân công giá rẻ, nhưng lại chấp nhận rót một lượng lớn kinh phí tiếp thị vào những người đã có nhiều tiền trong tay, các tổ chức nhân quyền thật mỉa mai, chẳng hạn như các ngôi sao thể thao ở trên. Tất cả những chuyện trên đã khắc họa Nike như một công ty xấu xa đáng ghét. Thậm chí Phil Knight, khi đó vẫn còn là Tổng giám đốc điều hành của công ty này, khi biết được nhận thức tiêu cực về Nike đã cho biết rằng chính ông cũng đã từng bị miêu tả như là một “gã vô lại hoàn hảo”.</p>', 39, 2500000, NULL, 1, '/storage/uploads/2024/02/02/images.jpg', '2024-02-01 20:23:36', '2024-02-01 20:23:36'),
(28, 'Nike nam', 'nike nam', '<p>Nike là một trong những thương hiệu thể thao nổi tiếng nhất trên thế giới. Từ học sinh tiểu học cho đến các vận động viên chuyên nghiệp, không ai có thể phủ nhận sức hấp dẫn của Nike. Nếu bạn khảo sát xem có bao nhiêu người đã hoặc đang sở hữu các sản phẩm của Nike, thì con số này sẽ khiến bạn bất ngờ.<br>Chất lượng của sản phẩm tạo nên uy tín của thương hiệu. Nhưng không thể phủ nhận vai trò của những chiến lược marketing vô cùng hiệu quả đã góp phần tạo nên thành công của Nike ngày hôm nay. Nike là nhà cung cấp giày và quần áo thể thao hàng đầu thế giới, đồng thời là nhà sản xuất quần áo thể thao lớn, với tổng doanh thu hơn 18,6 tỷ USD trong năm tài chính 2008. Tính đến năm 2008, công ty có hơn 30.000 nhân viên trên toàn thế giới.</p><p><img src=\"https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2.jpg\" alt=\"Giày Nike: Tổng quan thương hiệu giày Nike\" srcset=\"https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2.jpg 512w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-300x300.jpg 300w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-150x150.jpg 150w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-510x510.jpg 510w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-100x100.jpg 100w\" sizes=\"100vw\" width=\"700\" height=\"700\">Nguồn: Internet</p><p><i>Khởi đầu từ những chiếc giày Tiger…</i><br>Mọi chuyện bắt đầu với Nike vào đầu những năm 1960, khi người sáng lập Nike, Knight viết một trang giải thích cách công nhân Nhật Bản sản xuất giày chạy bộ giá rẻ. Sau đó, trong chuyến đi đến Nhật Bản, anh nhận thấy Công ty Tiger chuyên sản xuất giày chạy bộ chất lượng cao.<br>Năm 1964, Knight và người bạn William Bowerman đã trả 500 đô la để nhập khẩu giày hổ về Mỹ. Đến năm 1972, công ty bắt đầu thiết kế những đôi giày mang thương hiệu Nike của riêng mình và ký hợp đồng gia công với các nhà máy ở Châu Á (vẫn tồn tại cho đến ngày nay). Công ty non trẻ này đã ở trong một thời điểm hoàn hảo khi hoạt động chạy bộ trở nên phổ biến ở Hoa Kỳ vào những năm 1970: Nike có tổng doanh thu là 3 triệu đô la vào năm 1972, và tổng doanh thu là 270 triệu đô la trong những năm 1970 và vào năm 1980. Tổng doanh thu hàng năm lên tới 1 tỷ đô la Mỹ vào năm 1986.</p><p><i>…Đến những thăng trầm chốn thương trường</i><br>Sau thành công vào đầu những năm 1970, công ty gặp phải thử thách khó khăn đầu tiên vào những năm 1980. Nguyên nhân là do những thay đổi về nhân khẩu học đã chuyển Nike (nam, nữ và nữ) sang Nike, và các cô gái trẻ đã hơn 40 tuổi trong quá khứ. Khi về già, họ cảm thấy ít phải chạy bộ hơn. Ngày càng ít người tiêu dùng thích rèn luyện cơ thể bằng cách chạy bộ và ngày càng có nhiều người chạy bộ với tốc độ chậm hơn nhiều. Ngoài ra, thị trường giày chạy bộ ngày càng trở nên phân hóa (được coi là dấu hiệu của sự bão hòa), và bóng của nhu cầu tiêu dùng cũng khác nhau. Năm 1984, doanh số bán hàng của Nike giảm 17% và thị phần của công ty giảm từ 31% năm đó xuống còn 26%. Sự sụt giảm thị phần này tiếp tục giảm xuống 18,6% vào năm 1986.<br>Trong suốt những năm 1980, Nike bán giày giống như cách bán xe hơi với Audi và Fiat. Họ đã tạo ra những loại giày mới với các chức năng khác nhau, chẳng hạn như Pegasus (1988), Air Max (1987), và sau đó là Nike Air Jordan-Michael Jordan, vận động viên nổi tiếng nhất mọi thời đại. Bản thân nó cũng là một thương hiệu siêu đẳng và là một của các thương hiệu chính của Nike. Người phát ngôn. Ngôi sao và Tiger Woods, nơi Nike trở thành vận động viên được trả lương cao nhất từ ​​trước đến nay, trở thành người phát ngôn của thương hiệu Nike.<br>Công ty cũng đang nỗ lực thiết lập mối quan hệ lâu dài với môn Bóng đá Vua bằng cách tài trợ cho các cầu thủ nổi tiếng như World Championship Tour và Brazil của Ronaldo. Hầu hết ngân sách tiếp thị trị giá hàng tỷ đô la của Nike được sử dụng để tài trợ cho các vận động viên nổi tiếng. Rõ ràng việc kết hợp một thương hiệu thể thao với những ngôi sao thể thao hàng đầu của thế giới là ý nghĩa, nhưng dù sao thì cũng có những mặt trái của nó.<br>Trước hết, những ngôi sao như Michael Jordan, Tiger Woods hay Ronaldo đều là thương hiệu của chính họ. Trong một số trường hợp, các siêu sao được chứng nhận cũng sẽ có sản phẩm của riêng họ. Thực tế này đặt ra câu hỏi: “Liệu những anh hùng thể thao này có đang ủng hộ công việc của Nike? Hay Nike nên ủng hộ những nhân vật này?”</p><p>Thứ hai, và để làm cho vấn đề tồi tệ hơn, hàng triệu đô la được trả mỗi năm cho các công ty nổi tiếng này hoàn toàn trái ngược với mức lương trung bình thấp mà Nike trả cho công nhân nhà máy Việt Nam hoặc Indonesia. Khi một công ty như Nike chọn địa điểm đặt nhà máy dựa trên nguồn nhân công giá rẻ, nhưng lại chấp nhận rót một lượng lớn kinh phí tiếp thị vào những người đã có nhiều tiền trong tay, các tổ chức nhân quyền thật mỉa mai, chẳng hạn như các ngôi sao thể thao ở trên. Tất cả những chuyện trên đã khắc họa Nike như một công ty xấu xa đáng ghét. Thậm chí Phil Knight, khi đó vẫn còn là Tổng giám đốc điều hành của công ty này, khi biết được nhận thức tiêu cực về Nike đã cho biết rằng chính ông cũng đã từng bị miêu tả như là một “gã vô lại hoàn hảo”.</p>', 39, 2600000, NULL, 1, '/storage/uploads/2024/02/02/tải xuống.jpg', '2024-02-01 20:24:19', '2024-02-01 20:24:19'),
(29, 'Nike nam', 'nike nam', '<p>Nike là một trong những thương hiệu thể thao nổi tiếng nhất trên thế giới. Từ học sinh tiểu học cho đến các vận động viên chuyên nghiệp, không ai có thể phủ nhận sức hấp dẫn của Nike. Nếu bạn khảo sát xem có bao nhiêu người đã hoặc đang sở hữu các sản phẩm của Nike, thì con số này sẽ khiến bạn bất ngờ.<br>Chất lượng của sản phẩm tạo nên uy tín của thương hiệu. Nhưng không thể phủ nhận vai trò của những chiến lược marketing vô cùng hiệu quả đã góp phần tạo nên thành công của Nike ngày hôm nay. Nike là nhà cung cấp giày và quần áo thể thao hàng đầu thế giới, đồng thời là nhà sản xuất quần áo thể thao lớn, với tổng doanh thu hơn 18,6 tỷ USD trong năm tài chính 2008. Tính đến năm 2008, công ty có hơn 30.000 nhân viên trên toàn thế giới.</p><p><img src=\"https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2.jpg\" alt=\"Giày Nike: Tổng quan thương hiệu giày Nike\" srcset=\"https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2.jpg 512w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-300x300.jpg 300w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-150x150.jpg 150w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-510x510.jpg 510w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-100x100.jpg 100w\" sizes=\"100vw\" width=\"700\" height=\"700\">Nguồn: Internet</p><p><i>Khởi đầu từ những chiếc giày Tiger…</i><br>Mọi chuyện bắt đầu với Nike vào đầu những năm 1960, khi người sáng lập Nike, Knight viết một trang giải thích cách công nhân Nhật Bản sản xuất giày chạy bộ giá rẻ. Sau đó, trong chuyến đi đến Nhật Bản, anh nhận thấy Công ty Tiger chuyên sản xuất giày chạy bộ chất lượng cao.<br>Năm 1964, Knight và người bạn William Bowerman đã trả 500 đô la để nhập khẩu giày hổ về Mỹ. Đến năm 1972, công ty bắt đầu thiết kế những đôi giày mang thương hiệu Nike của riêng mình và ký hợp đồng gia công với các nhà máy ở Châu Á (vẫn tồn tại cho đến ngày nay). Công ty non trẻ này đã ở trong một thời điểm hoàn hảo khi hoạt động chạy bộ trở nên phổ biến ở Hoa Kỳ vào những năm 1970: Nike có tổng doanh thu là 3 triệu đô la vào năm 1972, và tổng doanh thu là 270 triệu đô la trong những năm 1970 và vào năm 1980. Tổng doanh thu hàng năm lên tới 1 tỷ đô la Mỹ vào năm 1986.</p><p><i>…Đến những thăng trầm chốn thương trường</i><br>Sau thành công vào đầu những năm 1970, công ty gặp phải thử thách khó khăn đầu tiên vào những năm 1980. Nguyên nhân là do những thay đổi về nhân khẩu học đã chuyển Nike (nam, nữ và nữ) sang Nike, và các cô gái trẻ đã hơn 40 tuổi trong quá khứ. Khi về già, họ cảm thấy ít phải chạy bộ hơn. Ngày càng ít người tiêu dùng thích rèn luyện cơ thể bằng cách chạy bộ và ngày càng có nhiều người chạy bộ với tốc độ chậm hơn nhiều. Ngoài ra, thị trường giày chạy bộ ngày càng trở nên phân hóa (được coi là dấu hiệu của sự bão hòa), và bóng của nhu cầu tiêu dùng cũng khác nhau. Năm 1984, doanh số bán hàng của Nike giảm 17% và thị phần của công ty giảm từ 31% năm đó xuống còn 26%. Sự sụt giảm thị phần này tiếp tục giảm xuống 18,6% vào năm 1986.<br>Trong suốt những năm 1980, Nike bán giày giống như cách bán xe hơi với Audi và Fiat. Họ đã tạo ra những loại giày mới với các chức năng khác nhau, chẳng hạn như Pegasus (1988), Air Max (1987), và sau đó là Nike Air Jordan-Michael Jordan, vận động viên nổi tiếng nhất mọi thời đại. Bản thân nó cũng là một thương hiệu siêu đẳng và là một của các thương hiệu chính của Nike. Người phát ngôn. Ngôi sao và Tiger Woods, nơi Nike trở thành vận động viên được trả lương cao nhất từ ​​trước đến nay, trở thành người phát ngôn của thương hiệu Nike.<br>Công ty cũng đang nỗ lực thiết lập mối quan hệ lâu dài với môn Bóng đá Vua bằng cách tài trợ cho các cầu thủ nổi tiếng như World Championship Tour và Brazil của Ronaldo. Hầu hết ngân sách tiếp thị trị giá hàng tỷ đô la của Nike được sử dụng để tài trợ cho các vận động viên nổi tiếng. Rõ ràng việc kết hợp một thương hiệu thể thao với những ngôi sao thể thao hàng đầu của thế giới là ý nghĩa, nhưng dù sao thì cũng có những mặt trái của nó.<br>Trước hết, những ngôi sao như Michael Jordan, Tiger Woods hay Ronaldo đều là thương hiệu của chính họ. Trong một số trường hợp, các siêu sao được chứng nhận cũng sẽ có sản phẩm của riêng họ. Thực tế này đặt ra câu hỏi: “Liệu những anh hùng thể thao này có đang ủng hộ công việc của Nike? Hay Nike nên ủng hộ những nhân vật này?”</p><p>Thứ hai, và để làm cho vấn đề tồi tệ hơn, hàng triệu đô la được trả mỗi năm cho các công ty nổi tiếng này hoàn toàn trái ngược với mức lương trung bình thấp mà Nike trả cho công nhân nhà máy Việt Nam hoặc Indonesia. Khi một công ty như Nike chọn địa điểm đặt nhà máy dựa trên nguồn nhân công giá rẻ, nhưng lại chấp nhận rót một lượng lớn kinh phí tiếp thị vào những người đã có nhiều tiền trong tay, các tổ chức nhân quyền thật mỉa mai, chẳng hạn như các ngôi sao thể thao ở trên. Tất cả những chuyện trên đã khắc họa Nike như một công ty xấu xa đáng ghét. Thậm chí Phil Knight, khi đó vẫn còn là Tổng giám đốc điều hành của công ty này, khi biết được nhận thức tiêu cực về Nike đã cho biết rằng chính ông cũng đã từng bị miêu tả như là một “gã vô lại hoàn hảo”.</p>', 39, 3000000, NULL, 1, '/storage/uploads/2024/02/02/giay-nike-air-force-1-low-bamboo-weave-sail-gorge-green-fn0369-100-rep11-gia-re-ha-noi-2.jpg', '2024-02-01 20:28:45', '2024-02-01 20:28:45'),
(30, 'Nike nữ', 'nike nữ', '<p>Nike là một trong những thương hiệu thể thao nổi tiếng nhất trên thế giới. Từ học sinh tiểu học cho đến các vận động viên chuyên nghiệp, không ai có thể phủ nhận sức hấp dẫn của Nike. Nếu bạn khảo sát xem có bao nhiêu người đã hoặc đang sở hữu các sản phẩm của Nike, thì con số này sẽ khiến bạn bất ngờ.<br>Chất lượng của sản phẩm tạo nên uy tín của thương hiệu. Nhưng không thể phủ nhận vai trò của những chiến lược marketing vô cùng hiệu quả đã góp phần tạo nên thành công của Nike ngày hôm nay. Nike là nhà cung cấp giày và quần áo thể thao hàng đầu thế giới, đồng thời là nhà sản xuất quần áo thể thao lớn, với tổng doanh thu hơn 18,6 tỷ USD trong năm tài chính 2008. Tính đến năm 2008, công ty có hơn 30.000 nhân viên trên toàn thế giới.</p><p><img src=\"https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2.jpg\" alt=\"Giày Nike: Tổng quan thương hiệu giày Nike\" srcset=\"https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2.jpg 512w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-300x300.jpg 300w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-150x150.jpg 150w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-510x510.jpg 510w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-100x100.jpg 100w\" sizes=\"100vw\" width=\"700\" height=\"700\">Nguồn: Internet</p><p><i>Khởi đầu từ những chiếc giày Tiger…</i><br>Mọi chuyện bắt đầu với Nike vào đầu những năm 1960, khi người sáng lập Nike, Knight viết một trang giải thích cách công nhân Nhật Bản sản xuất giày chạy bộ giá rẻ. Sau đó, trong chuyến đi đến Nhật Bản, anh nhận thấy Công ty Tiger chuyên sản xuất giày chạy bộ chất lượng cao.<br>Năm 1964, Knight và người bạn William Bowerman đã trả 500 đô la để nhập khẩu giày hổ về Mỹ. Đến năm 1972, công ty bắt đầu thiết kế những đôi giày mang thương hiệu Nike của riêng mình và ký hợp đồng gia công với các nhà máy ở Châu Á (vẫn tồn tại cho đến ngày nay). Công ty non trẻ này đã ở trong một thời điểm hoàn hảo khi hoạt động chạy bộ trở nên phổ biến ở Hoa Kỳ vào những năm 1970: Nike có tổng doanh thu là 3 triệu đô la vào năm 1972, và tổng doanh thu là 270 triệu đô la trong những năm 1970 và vào năm 1980. Tổng doanh thu hàng năm lên tới 1 tỷ đô la Mỹ vào năm 1986.</p><p><i>…Đến những thăng trầm chốn thương trường</i><br>Sau thành công vào đầu những năm 1970, công ty gặp phải thử thách khó khăn đầu tiên vào những năm 1980. Nguyên nhân là do những thay đổi về nhân khẩu học đã chuyển Nike (nam, nữ và nữ) sang Nike, và các cô gái trẻ đã hơn 40 tuổi trong quá khứ. Khi về già, họ cảm thấy ít phải chạy bộ hơn. Ngày càng ít người tiêu dùng thích rèn luyện cơ thể bằng cách chạy bộ và ngày càng có nhiều người chạy bộ với tốc độ chậm hơn nhiều. Ngoài ra, thị trường giày chạy bộ ngày càng trở nên phân hóa (được coi là dấu hiệu của sự bão hòa), và bóng của nhu cầu tiêu dùng cũng khác nhau. Năm 1984, doanh số bán hàng của Nike giảm 17% và thị phần của công ty giảm từ 31% năm đó xuống còn 26%. Sự sụt giảm thị phần này tiếp tục giảm xuống 18,6% vào năm 1986.<br>Trong suốt những năm 1980, Nike bán giày giống như cách bán xe hơi với Audi và Fiat. Họ đã tạo ra những loại giày mới với các chức năng khác nhau, chẳng hạn như Pegasus (1988), Air Max (1987), và sau đó là Nike Air Jordan-Michael Jordan, vận động viên nổi tiếng nhất mọi thời đại. Bản thân nó cũng là một thương hiệu siêu đẳng và là một của các thương hiệu chính của Nike. Người phát ngôn. Ngôi sao và Tiger Woods, nơi Nike trở thành vận động viên được trả lương cao nhất từ ​​trước đến nay, trở thành người phát ngôn của thương hiệu Nike.<br>Công ty cũng đang nỗ lực thiết lập mối quan hệ lâu dài với môn Bóng đá Vua bằng cách tài trợ cho các cầu thủ nổi tiếng như World Championship Tour và Brazil của Ronaldo. Hầu hết ngân sách tiếp thị trị giá hàng tỷ đô la của Nike được sử dụng để tài trợ cho các vận động viên nổi tiếng. Rõ ràng việc kết hợp một thương hiệu thể thao với những ngôi sao thể thao hàng đầu của thế giới là ý nghĩa, nhưng dù sao thì cũng có những mặt trái của nó.<br>Trước hết, những ngôi sao như Michael Jordan, Tiger Woods hay Ronaldo đều là thương hiệu của chính họ. Trong một số trường hợp, các siêu sao được chứng nhận cũng sẽ có sản phẩm của riêng họ. Thực tế này đặt ra câu hỏi: “Liệu những anh hùng thể thao này có đang ủng hộ công việc của Nike? Hay Nike nên ủng hộ những nhân vật này?”</p><p>Thứ hai, và để làm cho vấn đề tồi tệ hơn, hàng triệu đô la được trả mỗi năm cho các công ty nổi tiếng này hoàn toàn trái ngược với mức lương trung bình thấp mà Nike trả cho công nhân nhà máy Việt Nam hoặc Indonesia. Khi một công ty như Nike chọn địa điểm đặt nhà máy dựa trên nguồn nhân công giá rẻ, nhưng lại chấp nhận rót một lượng lớn kinh phí tiếp thị vào những người đã có nhiều tiền trong tay, các tổ chức nhân quyền thật mỉa mai, chẳng hạn như các ngôi sao thể thao ở trên. Tất cả những chuyện trên đã khắc họa Nike như một công ty xấu xa đáng ghét. Thậm chí Phil Knight, khi đó vẫn còn là Tổng giám đốc điều hành của công ty này, khi biết được nhận thức tiêu cực về Nike đã cho biết rằng chính ông cũng đã từng bị miêu tả như là một “gã vô lại hoàn hảo”.</p>', 40, 2500000, NULL, 1, '/storage/uploads/2024/02/02/tải xuống.jpg', '2024-02-01 20:29:23', '2024-02-01 20:29:23'),
(31, 'Nike nữ', 'nike nữ', '<p>Nike là một trong những thương hiệu thể thao nổi tiếng nhất trên thế giới. Từ học sinh tiểu học cho đến các vận động viên chuyên nghiệp, không ai có thể phủ nhận sức hấp dẫn của Nike. Nếu bạn khảo sát xem có bao nhiêu người đã hoặc đang sở hữu các sản phẩm của Nike, thì con số này sẽ khiến bạn bất ngờ.<br>Chất lượng của sản phẩm tạo nên uy tín của thương hiệu. Nhưng không thể phủ nhận vai trò của những chiến lược marketing vô cùng hiệu quả đã góp phần tạo nên thành công của Nike ngày hôm nay. Nike là nhà cung cấp giày và quần áo thể thao hàng đầu thế giới, đồng thời là nhà sản xuất quần áo thể thao lớn, với tổng doanh thu hơn 18,6 tỷ USD trong năm tài chính 2008. Tính đến năm 2008, công ty có hơn 30.000 nhân viên trên toàn thế giới.</p><p><img src=\"https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2.jpg\" alt=\"Giày Nike: Tổng quan thương hiệu giày Nike\" srcset=\"https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2.jpg 512w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-300x300.jpg 300w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-150x150.jpg 150w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-510x510.jpg 510w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-100x100.jpg 100w\" sizes=\"100vw\" width=\"700\" height=\"700\">Nguồn: Internet</p><p><i>Khởi đầu từ những chiếc giày Tiger…</i><br>Mọi chuyện bắt đầu với Nike vào đầu những năm 1960, khi người sáng lập Nike, Knight viết một trang giải thích cách công nhân Nhật Bản sản xuất giày chạy bộ giá rẻ. Sau đó, trong chuyến đi đến Nhật Bản, anh nhận thấy Công ty Tiger chuyên sản xuất giày chạy bộ chất lượng cao.<br>Năm 1964, Knight và người bạn William Bowerman đã trả 500 đô la để nhập khẩu giày hổ về Mỹ. Đến năm 1972, công ty bắt đầu thiết kế những đôi giày mang thương hiệu Nike của riêng mình và ký hợp đồng gia công với các nhà máy ở Châu Á (vẫn tồn tại cho đến ngày nay). Công ty non trẻ này đã ở trong một thời điểm hoàn hảo khi hoạt động chạy bộ trở nên phổ biến ở Hoa Kỳ vào những năm 1970: Nike có tổng doanh thu là 3 triệu đô la vào năm 1972, và tổng doanh thu là 270 triệu đô la trong những năm 1970 và vào năm 1980. Tổng doanh thu hàng năm lên tới 1 tỷ đô la Mỹ vào năm 1986.</p><p><i>…Đến những thăng trầm chốn thương trường</i><br>Sau thành công vào đầu những năm 1970, công ty gặp phải thử thách khó khăn đầu tiên vào những năm 1980. Nguyên nhân là do những thay đổi về nhân khẩu học đã chuyển Nike (nam, nữ và nữ) sang Nike, và các cô gái trẻ đã hơn 40 tuổi trong quá khứ. Khi về già, họ cảm thấy ít phải chạy bộ hơn. Ngày càng ít người tiêu dùng thích rèn luyện cơ thể bằng cách chạy bộ và ngày càng có nhiều người chạy bộ với tốc độ chậm hơn nhiều. Ngoài ra, thị trường giày chạy bộ ngày càng trở nên phân hóa (được coi là dấu hiệu của sự bão hòa), và bóng của nhu cầu tiêu dùng cũng khác nhau. Năm 1984, doanh số bán hàng của Nike giảm 17% và thị phần của công ty giảm từ 31% năm đó xuống còn 26%. Sự sụt giảm thị phần này tiếp tục giảm xuống 18,6% vào năm 1986.<br>Trong suốt những năm 1980, Nike bán giày giống như cách bán xe hơi với Audi và Fiat. Họ đã tạo ra những loại giày mới với các chức năng khác nhau, chẳng hạn như Pegasus (1988), Air Max (1987), và sau đó là Nike Air Jordan-Michael Jordan, vận động viên nổi tiếng nhất mọi thời đại. Bản thân nó cũng là một thương hiệu siêu đẳng và là một của các thương hiệu chính của Nike. Người phát ngôn. Ngôi sao và Tiger Woods, nơi Nike trở thành vận động viên được trả lương cao nhất từ ​​trước đến nay, trở thành người phát ngôn của thương hiệu Nike.<br>Công ty cũng đang nỗ lực thiết lập mối quan hệ lâu dài với môn Bóng đá Vua bằng cách tài trợ cho các cầu thủ nổi tiếng như World Championship Tour và Brazil của Ronaldo. Hầu hết ngân sách tiếp thị trị giá hàng tỷ đô la của Nike được sử dụng để tài trợ cho các vận động viên nổi tiếng. Rõ ràng việc kết hợp một thương hiệu thể thao với những ngôi sao thể thao hàng đầu của thế giới là ý nghĩa, nhưng dù sao thì cũng có những mặt trái của nó.<br>Trước hết, những ngôi sao như Michael Jordan, Tiger Woods hay Ronaldo đều là thương hiệu của chính họ. Trong một số trường hợp, các siêu sao được chứng nhận cũng sẽ có sản phẩm của riêng họ. Thực tế này đặt ra câu hỏi: “Liệu những anh hùng thể thao này có đang ủng hộ công việc của Nike? Hay Nike nên ủng hộ những nhân vật này?”</p><p>Thứ hai, và để làm cho vấn đề tồi tệ hơn, hàng triệu đô la được trả mỗi năm cho các công ty nổi tiếng này hoàn toàn trái ngược với mức lương trung bình thấp mà Nike trả cho công nhân nhà máy Việt Nam hoặc Indonesia. Khi một công ty như Nike chọn địa điểm đặt nhà máy dựa trên nguồn nhân công giá rẻ, nhưng lại chấp nhận rót một lượng lớn kinh phí tiếp thị vào những người đã có nhiều tiền trong tay, các tổ chức nhân quyền thật mỉa mai, chẳng hạn như các ngôi sao thể thao ở trên. Tất cả những chuyện trên đã khắc họa Nike như một công ty xấu xa đáng ghét. Thậm chí Phil Knight, khi đó vẫn còn là Tổng giám đốc điều hành của công ty này, khi biết được nhận thức tiêu cực về Nike đã cho biết rằng chính ông cũng đã từng bị miêu tả như là một “gã vô lại hoàn hảo”.</p>', 40, 3000000, NULL, 1, '/storage/uploads/2024/02/02/Nike_Jordan_h_ng_rep-02.jpg', '2024-02-01 20:29:53', '2024-02-01 20:29:53'),
(32, 'Nike nữ', 'nike nữ', '<p>Nike là một trong những thương hiệu thể thao nổi tiếng nhất trên thế giới. Từ học sinh tiểu học cho đến các vận động viên chuyên nghiệp, không ai có thể phủ nhận sức hấp dẫn của Nike. Nếu bạn khảo sát xem có bao nhiêu người đã hoặc đang sở hữu các sản phẩm của Nike, thì con số này sẽ khiến bạn bất ngờ.<br>Chất lượng của sản phẩm tạo nên uy tín của thương hiệu. Nhưng không thể phủ nhận vai trò của những chiến lược marketing vô cùng hiệu quả đã góp phần tạo nên thành công của Nike ngày hôm nay. Nike là nhà cung cấp giày và quần áo thể thao hàng đầu thế giới, đồng thời là nhà sản xuất quần áo thể thao lớn, với tổng doanh thu hơn 18,6 tỷ USD trong năm tài chính 2008. Tính đến năm 2008, công ty có hơn 30.000 nhân viên trên toàn thế giới.</p><p><img src=\"https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2.jpg\" alt=\"Giày Nike: Tổng quan thương hiệu giày Nike\" srcset=\"https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2.jpg 512w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-300x300.jpg 300w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-150x150.jpg 150w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-510x510.jpg 510w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-100x100.jpg 100w\" sizes=\"100vw\" width=\"700\" height=\"700\">Nguồn: Internet</p><p><i>Khởi đầu từ những chiếc giày Tiger…</i><br>Mọi chuyện bắt đầu với Nike vào đầu những năm 1960, khi người sáng lập Nike, Knight viết một trang giải thích cách công nhân Nhật Bản sản xuất giày chạy bộ giá rẻ. Sau đó, trong chuyến đi đến Nhật Bản, anh nhận thấy Công ty Tiger chuyên sản xuất giày chạy bộ chất lượng cao.<br>Năm 1964, Knight và người bạn William Bowerman đã trả 500 đô la để nhập khẩu giày hổ về Mỹ. Đến năm 1972, công ty bắt đầu thiết kế những đôi giày mang thương hiệu Nike của riêng mình và ký hợp đồng gia công với các nhà máy ở Châu Á (vẫn tồn tại cho đến ngày nay). Công ty non trẻ này đã ở trong một thời điểm hoàn hảo khi hoạt động chạy bộ trở nên phổ biến ở Hoa Kỳ vào những năm 1970: Nike có tổng doanh thu là 3 triệu đô la vào năm 1972, và tổng doanh thu là 270 triệu đô la trong những năm 1970 và vào năm 1980. Tổng doanh thu hàng năm lên tới 1 tỷ đô la Mỹ vào năm 1986.</p><p><i>…Đến những thăng trầm chốn thương trường</i><br>Sau thành công vào đầu những năm 1970, công ty gặp phải thử thách khó khăn đầu tiên vào những năm 1980. Nguyên nhân là do những thay đổi về nhân khẩu học đã chuyển Nike (nam, nữ và nữ) sang Nike, và các cô gái trẻ đã hơn 40 tuổi trong quá khứ. Khi về già, họ cảm thấy ít phải chạy bộ hơn. Ngày càng ít người tiêu dùng thích rèn luyện cơ thể bằng cách chạy bộ và ngày càng có nhiều người chạy bộ với tốc độ chậm hơn nhiều. Ngoài ra, thị trường giày chạy bộ ngày càng trở nên phân hóa (được coi là dấu hiệu của sự bão hòa), và bóng của nhu cầu tiêu dùng cũng khác nhau. Năm 1984, doanh số bán hàng của Nike giảm 17% và thị phần của công ty giảm từ 31% năm đó xuống còn 26%. Sự sụt giảm thị phần này tiếp tục giảm xuống 18,6% vào năm 1986.<br>Trong suốt những năm 1980, Nike bán giày giống như cách bán xe hơi với Audi và Fiat. Họ đã tạo ra những loại giày mới với các chức năng khác nhau, chẳng hạn như Pegasus (1988), Air Max (1987), và sau đó là Nike Air Jordan-Michael Jordan, vận động viên nổi tiếng nhất mọi thời đại. Bản thân nó cũng là một thương hiệu siêu đẳng và là một của các thương hiệu chính của Nike. Người phát ngôn. Ngôi sao và Tiger Woods, nơi Nike trở thành vận động viên được trả lương cao nhất từ ​​trước đến nay, trở thành người phát ngôn của thương hiệu Nike.<br>Công ty cũng đang nỗ lực thiết lập mối quan hệ lâu dài với môn Bóng đá Vua bằng cách tài trợ cho các cầu thủ nổi tiếng như World Championship Tour và Brazil của Ronaldo. Hầu hết ngân sách tiếp thị trị giá hàng tỷ đô la của Nike được sử dụng để tài trợ cho các vận động viên nổi tiếng. Rõ ràng việc kết hợp một thương hiệu thể thao với những ngôi sao thể thao hàng đầu của thế giới là ý nghĩa, nhưng dù sao thì cũng có những mặt trái của nó.<br>Trước hết, những ngôi sao như Michael Jordan, Tiger Woods hay Ronaldo đều là thương hiệu của chính họ. Trong một số trường hợp, các siêu sao được chứng nhận cũng sẽ có sản phẩm của riêng họ. Thực tế này đặt ra câu hỏi: “Liệu những anh hùng thể thao này có đang ủng hộ công việc của Nike? Hay Nike nên ủng hộ những nhân vật này?”</p><p>Thứ hai, và để làm cho vấn đề tồi tệ hơn, hàng triệu đô la được trả mỗi năm cho các công ty nổi tiếng này hoàn toàn trái ngược với mức lương trung bình thấp mà Nike trả cho công nhân nhà máy Việt Nam hoặc Indonesia. Khi một công ty như Nike chọn địa điểm đặt nhà máy dựa trên nguồn nhân công giá rẻ, nhưng lại chấp nhận rót một lượng lớn kinh phí tiếp thị vào những người đã có nhiều tiền trong tay, các tổ chức nhân quyền thật mỉa mai, chẳng hạn như các ngôi sao thể thao ở trên. Tất cả những chuyện trên đã khắc họa Nike như một công ty xấu xa đáng ghét. Thậm chí Phil Knight, khi đó vẫn còn là Tổng giám đốc điều hành của công ty này, khi biết được nhận thức tiêu cực về Nike đã cho biết rằng chính ông cũng đã từng bị miêu tả như là một “gã vô lại hoàn hảo”.</p>', 40, 5000000, NULL, 1, '/storage/uploads/2024/02/02/Giày-Nike-Zoom-nữ-F13-màu-đen-hồng.jpg', '2024-02-01 20:30:22', '2024-02-01 20:30:22'),
(33, 'Nike so cool', 'nike', '<p>Nike là một trong những thương hiệu thể thao nổi tiếng nhất trên thế giới. Từ học sinh tiểu học cho đến các vận động viên chuyên nghiệp, không ai có thể phủ nhận sức hấp dẫn của Nike. Nếu bạn khảo sát xem có bao nhiêu người đã hoặc đang sở hữu các sản phẩm của Nike, thì con số này sẽ khiến bạn bất ngờ.<br>Chất lượng của sản phẩm tạo nên uy tín của thương hiệu. Nhưng không thể phủ nhận vai trò của những chiến lược marketing vô cùng hiệu quả đã góp phần tạo nên thành công của Nike ngày hôm nay. Nike là nhà cung cấp giày và quần áo thể thao hàng đầu thế giới, đồng thời là nhà sản xuất quần áo thể thao lớn, với tổng doanh thu hơn 18,6 tỷ USD trong năm tài chính 2008. Tính đến năm 2008, công ty có hơn 30.000 nhân viên trên toàn thế giới.</p><p><img src=\"https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2.jpg\" alt=\"Giày Nike: Tổng quan thương hiệu giày Nike\" srcset=\"https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2.jpg 512w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-300x300.jpg 300w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-150x150.jpg 150w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-510x510.jpg 510w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-100x100.jpg 100w\" sizes=\"100vw\" width=\"700\" height=\"700\">Nguồn: Internet</p><p><i>Khởi đầu từ những chiếc giày Tiger…</i><br>Mọi chuyện bắt đầu với Nike vào đầu những năm 1960, khi người sáng lập Nike, Knight viết một trang giải thích cách công nhân Nhật Bản sản xuất giày chạy bộ giá rẻ. Sau đó, trong chuyến đi đến Nhật Bản, anh nhận thấy Công ty Tiger chuyên sản xuất giày chạy bộ chất lượng cao.<br>Năm 1964, Knight và người bạn William Bowerman đã trả 500 đô la để nhập khẩu giày hổ về Mỹ. Đến năm 1972, công ty bắt đầu thiết kế những đôi giày mang thương hiệu Nike của riêng mình và ký hợp đồng gia công với các nhà máy ở Châu Á (vẫn tồn tại cho đến ngày nay). Công ty non trẻ này đã ở trong một thời điểm hoàn hảo khi hoạt động chạy bộ trở nên phổ biến ở Hoa Kỳ vào những năm 1970: Nike có tổng doanh thu là 3 triệu đô la vào năm 1972, và tổng doanh thu là 270 triệu đô la trong những năm 1970 và vào năm 1980. Tổng doanh thu hàng năm lên tới 1 tỷ đô la Mỹ vào năm 1986.</p><p><i>…Đến những thăng trầm chốn thương trường</i><br>Sau thành công vào đầu những năm 1970, công ty gặp phải thử thách khó khăn đầu tiên vào những năm 1980. Nguyên nhân là do những thay đổi về nhân khẩu học đã chuyển Nike (nam, nữ và nữ) sang Nike, và các cô gái trẻ đã hơn 40 tuổi trong quá khứ. Khi về già, họ cảm thấy ít phải chạy bộ hơn. Ngày càng ít người tiêu dùng thích rèn luyện cơ thể bằng cách chạy bộ và ngày càng có nhiều người chạy bộ với tốc độ chậm hơn nhiều. Ngoài ra, thị trường giày chạy bộ ngày càng trở nên phân hóa (được coi là dấu hiệu của sự bão hòa), và bóng của nhu cầu tiêu dùng cũng khác nhau. Năm 1984, doanh số bán hàng của Nike giảm 17% và thị phần của công ty giảm từ 31% năm đó xuống còn 26%. Sự sụt giảm thị phần này tiếp tục giảm xuống 18,6% vào năm 1986.<br>Trong suốt những năm 1980, Nike bán giày giống như cách bán xe hơi với Audi và Fiat. Họ đã tạo ra những loại giày mới với các chức năng khác nhau, chẳng hạn như Pegasus (1988), Air Max (1987), và sau đó là Nike Air Jordan-Michael Jordan, vận động viên nổi tiếng nhất mọi thời đại. Bản thân nó cũng là một thương hiệu siêu đẳng và là một của các thương hiệu chính của Nike. Người phát ngôn. Ngôi sao và Tiger Woods, nơi Nike trở thành vận động viên được trả lương cao nhất từ ​​trước đến nay, trở thành người phát ngôn của thương hiệu Nike.<br>Công ty cũng đang nỗ lực thiết lập mối quan hệ lâu dài với môn Bóng đá Vua bằng cách tài trợ cho các cầu thủ nổi tiếng như World Championship Tour và Brazil của Ronaldo. Hầu hết ngân sách tiếp thị trị giá hàng tỷ đô la của Nike được sử dụng để tài trợ cho các vận động viên nổi tiếng. Rõ ràng việc kết hợp một thương hiệu thể thao với những ngôi sao thể thao hàng đầu của thế giới là ý nghĩa, nhưng dù sao thì cũng có những mặt trái của nó.<br>Trước hết, những ngôi sao như Michael Jordan, Tiger Woods hay Ronaldo đều là thương hiệu của chính họ. Trong một số trường hợp, các siêu sao được chứng nhận cũng sẽ có sản phẩm của riêng họ. Thực tế này đặt ra câu hỏi: “Liệu những anh hùng thể thao này có đang ủng hộ công việc của Nike? Hay Nike nên ủng hộ những nhân vật này?”</p><p>Thứ hai, và để làm cho vấn đề tồi tệ hơn, hàng triệu đô la được trả mỗi năm cho các công ty nổi tiếng này hoàn toàn trái ngược với mức lương trung bình thấp mà Nike trả cho công nhân nhà máy Việt Nam hoặc Indonesia. Khi một công ty như Nike chọn địa điểm đặt nhà máy dựa trên nguồn nhân công giá rẻ, nhưng lại chấp nhận rót một lượng lớn kinh phí tiếp thị vào những người đã có nhiều tiền trong tay, các tổ chức nhân quyền thật mỉa mai, chẳng hạn như các ngôi sao thể thao ở trên. Tất cả những chuyện trên đã khắc họa Nike như một công ty xấu xa đáng ghét. Thậm chí Phil Knight, khi đó vẫn còn là Tổng giám đốc điều hành của công ty này, khi biết được nhận thức tiêu cực về Nike đã cho biết rằng chính ông cũng đã từng bị miêu tả như là một “gã vô lại hoàn hảo”.</p>', 38, 5000000, NULL, 1, '/storage/uploads/2024/02/02/giay-nike-air-max-97-silver-bullet-rep-11.jpg', '2024-02-01 20:39:10', '2024-02-01 20:39:10'),
(34, 'Nike so cool', 'nike', '<p>Nike là một trong những thương hiệu thể thao nổi tiếng nhất trên thế giới. Từ học sinh tiểu học cho đến các vận động viên chuyên nghiệp, không ai có thể phủ nhận sức hấp dẫn của Nike. Nếu bạn khảo sát xem có bao nhiêu người đã hoặc đang sở hữu các sản phẩm của Nike, thì con số này sẽ khiến bạn bất ngờ.<br>Chất lượng của sản phẩm tạo nên uy tín của thương hiệu. Nhưng không thể phủ nhận vai trò của những chiến lược marketing vô cùng hiệu quả đã góp phần tạo nên thành công của Nike ngày hôm nay. Nike là nhà cung cấp giày và quần áo thể thao hàng đầu thế giới, đồng thời là nhà sản xuất quần áo thể thao lớn, với tổng doanh thu hơn 18,6 tỷ USD trong năm tài chính 2008. Tính đến năm 2008, công ty có hơn 30.000 nhân viên trên toàn thế giới.</p><p><img src=\"https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2.jpg\" alt=\"Giày Nike: Tổng quan thương hiệu giày Nike\" srcset=\"https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2.jpg 512w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-300x300.jpg 300w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-150x150.jpg 150w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-510x510.jpg 510w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-100x100.jpg 100w\" sizes=\"100vw\" width=\"700\" height=\"700\">Nguồn: Internet</p><p><i>Khởi đầu từ những chiếc giày Tiger…</i><br>Mọi chuyện bắt đầu với Nike vào đầu những năm 1960, khi người sáng lập Nike, Knight viết một trang giải thích cách công nhân Nhật Bản sản xuất giày chạy bộ giá rẻ. Sau đó, trong chuyến đi đến Nhật Bản, anh nhận thấy Công ty Tiger chuyên sản xuất giày chạy bộ chất lượng cao.<br>Năm 1964, Knight và người bạn William Bowerman đã trả 500 đô la để nhập khẩu giày hổ về Mỹ. Đến năm 1972, công ty bắt đầu thiết kế những đôi giày mang thương hiệu Nike của riêng mình và ký hợp đồng gia công với các nhà máy ở Châu Á (vẫn tồn tại cho đến ngày nay). Công ty non trẻ này đã ở trong một thời điểm hoàn hảo khi hoạt động chạy bộ trở nên phổ biến ở Hoa Kỳ vào những năm 1970: Nike có tổng doanh thu là 3 triệu đô la vào năm 1972, và tổng doanh thu là 270 triệu đô la trong những năm 1970 và vào năm 1980. Tổng doanh thu hàng năm lên tới 1 tỷ đô la Mỹ vào năm 1986.</p><p><i>…Đến những thăng trầm chốn thương trường</i><br>Sau thành công vào đầu những năm 1970, công ty gặp phải thử thách khó khăn đầu tiên vào những năm 1980. Nguyên nhân là do những thay đổi về nhân khẩu học đã chuyển Nike (nam, nữ và nữ) sang Nike, và các cô gái trẻ đã hơn 40 tuổi trong quá khứ. Khi về già, họ cảm thấy ít phải chạy bộ hơn. Ngày càng ít người tiêu dùng thích rèn luyện cơ thể bằng cách chạy bộ và ngày càng có nhiều người chạy bộ với tốc độ chậm hơn nhiều. Ngoài ra, thị trường giày chạy bộ ngày càng trở nên phân hóa (được coi là dấu hiệu của sự bão hòa), và bóng của nhu cầu tiêu dùng cũng khác nhau. Năm 1984, doanh số bán hàng của Nike giảm 17% và thị phần của công ty giảm từ 31% năm đó xuống còn 26%. Sự sụt giảm thị phần này tiếp tục giảm xuống 18,6% vào năm 1986.<br>Trong suốt những năm 1980, Nike bán giày giống như cách bán xe hơi với Audi và Fiat. Họ đã tạo ra những loại giày mới với các chức năng khác nhau, chẳng hạn như Pegasus (1988), Air Max (1987), và sau đó là Nike Air Jordan-Michael Jordan, vận động viên nổi tiếng nhất mọi thời đại. Bản thân nó cũng là một thương hiệu siêu đẳng và là một của các thương hiệu chính của Nike. Người phát ngôn. Ngôi sao và Tiger Woods, nơi Nike trở thành vận động viên được trả lương cao nhất từ ​​trước đến nay, trở thành người phát ngôn của thương hiệu Nike.<br>Công ty cũng đang nỗ lực thiết lập mối quan hệ lâu dài với môn Bóng đá Vua bằng cách tài trợ cho các cầu thủ nổi tiếng như World Championship Tour và Brazil của Ronaldo. Hầu hết ngân sách tiếp thị trị giá hàng tỷ đô la của Nike được sử dụng để tài trợ cho các vận động viên nổi tiếng. Rõ ràng việc kết hợp một thương hiệu thể thao với những ngôi sao thể thao hàng đầu của thế giới là ý nghĩa, nhưng dù sao thì cũng có những mặt trái của nó.<br>Trước hết, những ngôi sao như Michael Jordan, Tiger Woods hay Ronaldo đều là thương hiệu của chính họ. Trong một số trường hợp, các siêu sao được chứng nhận cũng sẽ có sản phẩm của riêng họ. Thực tế này đặt ra câu hỏi: “Liệu những anh hùng thể thao này có đang ủng hộ công việc của Nike? Hay Nike nên ủng hộ những nhân vật này?”</p><p>Thứ hai, và để làm cho vấn đề tồi tệ hơn, hàng triệu đô la được trả mỗi năm cho các công ty nổi tiếng này hoàn toàn trái ngược với mức lương trung bình thấp mà Nike trả cho công nhân nhà máy Việt Nam hoặc Indonesia. Khi một công ty như Nike chọn địa điểm đặt nhà máy dựa trên nguồn nhân công giá rẻ, nhưng lại chấp nhận rót một lượng lớn kinh phí tiếp thị vào những người đã có nhiều tiền trong tay, các tổ chức nhân quyền thật mỉa mai, chẳng hạn như các ngôi sao thể thao ở trên. Tất cả những chuyện trên đã khắc họa Nike như một công ty xấu xa đáng ghét. Thậm chí Phil Knight, khi đó vẫn còn là Tổng giám đốc điều hành của công ty này, khi biết được nhận thức tiêu cực về Nike đã cho biết rằng chính ông cũng đã từng bị miêu tả như là một “gã vô lại hoàn hảo”.</p>', 38, 6000000, NULL, 1, '/storage/uploads/2024/02/02/z2230067757790_f6bf9fbf994e6ef2c76e043796750fcb.jpg', '2024-02-01 20:39:33', '2024-02-01 20:39:33');
INSERT INTO `products` (`id`, `name`, `description`, `content`, `menu_id`, `price`, `price_sale`, `active`, `thumb`, `created_at`, `updated_at`) VALUES
(35, 'Nike so cool', 'nike', '<p>Nike là một trong những thương hiệu thể thao nổi tiếng nhất trên thế giới. Từ học sinh tiểu học cho đến các vận động viên chuyên nghiệp, không ai có thể phủ nhận sức hấp dẫn của Nike. Nếu bạn khảo sát xem có bao nhiêu người đã hoặc đang sở hữu các sản phẩm của Nike, thì con số này sẽ khiến bạn bất ngờ.<br>Chất lượng của sản phẩm tạo nên uy tín của thương hiệu. Nhưng không thể phủ nhận vai trò của những chiến lược marketing vô cùng hiệu quả đã góp phần tạo nên thành công của Nike ngày hôm nay. Nike là nhà cung cấp giày và quần áo thể thao hàng đầu thế giới, đồng thời là nhà sản xuất quần áo thể thao lớn, với tổng doanh thu hơn 18,6 tỷ USD trong năm tài chính 2008. Tính đến năm 2008, công ty có hơn 30.000 nhân viên trên toàn thế giới.</p><p><img src=\"https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2.jpg\" alt=\"Giày Nike: Tổng quan thương hiệu giày Nike\" srcset=\"https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2.jpg 512w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-300x300.jpg 300w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-150x150.jpg 150w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-510x510.jpg 510w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-100x100.jpg 100w\" sizes=\"100vw\" width=\"700\" height=\"700\">Nguồn: Internet</p><p><i>Khởi đầu từ những chiếc giày Tiger…</i><br>Mọi chuyện bắt đầu với Nike vào đầu những năm 1960, khi người sáng lập Nike, Knight viết một trang giải thích cách công nhân Nhật Bản sản xuất giày chạy bộ giá rẻ. Sau đó, trong chuyến đi đến Nhật Bản, anh nhận thấy Công ty Tiger chuyên sản xuất giày chạy bộ chất lượng cao.<br>Năm 1964, Knight và người bạn William Bowerman đã trả 500 đô la để nhập khẩu giày hổ về Mỹ. Đến năm 1972, công ty bắt đầu thiết kế những đôi giày mang thương hiệu Nike của riêng mình và ký hợp đồng gia công với các nhà máy ở Châu Á (vẫn tồn tại cho đến ngày nay). Công ty non trẻ này đã ở trong một thời điểm hoàn hảo khi hoạt động chạy bộ trở nên phổ biến ở Hoa Kỳ vào những năm 1970: Nike có tổng doanh thu là 3 triệu đô la vào năm 1972, và tổng doanh thu là 270 triệu đô la trong những năm 1970 và vào năm 1980. Tổng doanh thu hàng năm lên tới 1 tỷ đô la Mỹ vào năm 1986.</p><p><i>…Đến những thăng trầm chốn thương trường</i><br>Sau thành công vào đầu những năm 1970, công ty gặp phải thử thách khó khăn đầu tiên vào những năm 1980. Nguyên nhân là do những thay đổi về nhân khẩu học đã chuyển Nike (nam, nữ và nữ) sang Nike, và các cô gái trẻ đã hơn 40 tuổi trong quá khứ. Khi về già, họ cảm thấy ít phải chạy bộ hơn. Ngày càng ít người tiêu dùng thích rèn luyện cơ thể bằng cách chạy bộ và ngày càng có nhiều người chạy bộ với tốc độ chậm hơn nhiều. Ngoài ra, thị trường giày chạy bộ ngày càng trở nên phân hóa (được coi là dấu hiệu của sự bão hòa), và bóng của nhu cầu tiêu dùng cũng khác nhau. Năm 1984, doanh số bán hàng của Nike giảm 17% và thị phần của công ty giảm từ 31% năm đó xuống còn 26%. Sự sụt giảm thị phần này tiếp tục giảm xuống 18,6% vào năm 1986.<br>Trong suốt những năm 1980, Nike bán giày giống như cách bán xe hơi với Audi và Fiat. Họ đã tạo ra những loại giày mới với các chức năng khác nhau, chẳng hạn như Pegasus (1988), Air Max (1987), và sau đó là Nike Air Jordan-Michael Jordan, vận động viên nổi tiếng nhất mọi thời đại. Bản thân nó cũng là một thương hiệu siêu đẳng và là một của các thương hiệu chính của Nike. Người phát ngôn. Ngôi sao và Tiger Woods, nơi Nike trở thành vận động viên được trả lương cao nhất từ ​​trước đến nay, trở thành người phát ngôn của thương hiệu Nike.<br>Công ty cũng đang nỗ lực thiết lập mối quan hệ lâu dài với môn Bóng đá Vua bằng cách tài trợ cho các cầu thủ nổi tiếng như World Championship Tour và Brazil của Ronaldo. Hầu hết ngân sách tiếp thị trị giá hàng tỷ đô la của Nike được sử dụng để tài trợ cho các vận động viên nổi tiếng. Rõ ràng việc kết hợp một thương hiệu thể thao với những ngôi sao thể thao hàng đầu của thế giới là ý nghĩa, nhưng dù sao thì cũng có những mặt trái của nó.<br>Trước hết, những ngôi sao như Michael Jordan, Tiger Woods hay Ronaldo đều là thương hiệu của chính họ. Trong một số trường hợp, các siêu sao được chứng nhận cũng sẽ có sản phẩm của riêng họ. Thực tế này đặt ra câu hỏi: “Liệu những anh hùng thể thao này có đang ủng hộ công việc của Nike? Hay Nike nên ủng hộ những nhân vật này?”</p><p>Thứ hai, và để làm cho vấn đề tồi tệ hơn, hàng triệu đô la được trả mỗi năm cho các công ty nổi tiếng này hoàn toàn trái ngược với mức lương trung bình thấp mà Nike trả cho công nhân nhà máy Việt Nam hoặc Indonesia. Khi một công ty như Nike chọn địa điểm đặt nhà máy dựa trên nguồn nhân công giá rẻ, nhưng lại chấp nhận rót một lượng lớn kinh phí tiếp thị vào những người đã có nhiều tiền trong tay, các tổ chức nhân quyền thật mỉa mai, chẳng hạn như các ngôi sao thể thao ở trên. Tất cả những chuyện trên đã khắc họa Nike như một công ty xấu xa đáng ghét. Thậm chí Phil Knight, khi đó vẫn còn là Tổng giám đốc điều hành của công ty này, khi biết được nhận thức tiêu cực về Nike đã cho biết rằng chính ông cũng đã từng bị miêu tả như là một “gã vô lại hoàn hảo”.</p>', 38, 8000000, NULL, 1, '/storage/uploads/2024/02/02/tải xuống (1).jpg', '2024-02-01 20:40:12', '2024-02-01 20:40:59'),
(36, 'Nike mới', 'mới', '<p>Nike là một trong những thương hiệu thể thao nổi tiếng nhất trên thế giới. Từ học sinh tiểu học cho đến các vận động viên chuyên nghiệp, không ai có thể phủ nhận sức hấp dẫn của Nike. Nếu bạn khảo sát xem có bao nhiêu người đã hoặc đang sở hữu các sản phẩm của Nike, thì con số này sẽ khiến bạn bất ngờ.<br>Chất lượng của sản phẩm tạo nên uy tín của thương hiệu. Nhưng không thể phủ nhận vai trò của những chiến lược marketing vô cùng hiệu quả đã góp phần tạo nên thành công của Nike ngày hôm nay. Nike là nhà cung cấp giày và quần áo thể thao hàng đầu thế giới, đồng thời là nhà sản xuất quần áo thể thao lớn, với tổng doanh thu hơn 18,6 tỷ USD trong năm tài chính 2008. Tính đến năm 2008, công ty có hơn 30.000 nhân viên trên toàn thế giới.</p><p><img src=\"https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2.jpg\" alt=\"Giày Nike: Tổng quan thương hiệu giày Nike\" srcset=\"https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2.jpg 512w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-300x300.jpg 300w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-150x150.jpg 150w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-510x510.jpg 510w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-100x100.jpg 100w\" sizes=\"100vw\" width=\"700\" height=\"700\">Nguồn: Internet</p><p><i>Khởi đầu từ những chiếc giày Tiger…</i><br>Mọi chuyện bắt đầu với Nike vào đầu những năm 1960, khi người sáng lập Nike, Knight viết một trang giải thích cách công nhân Nhật Bản sản xuất giày chạy bộ giá rẻ. Sau đó, trong chuyến đi đến Nhật Bản, anh nhận thấy Công ty Tiger chuyên sản xuất giày chạy bộ chất lượng cao.<br>Năm 1964, Knight và người bạn William Bowerman đã trả 500 đô la để nhập khẩu giày hổ về Mỹ. Đến năm 1972, công ty bắt đầu thiết kế những đôi giày mang thương hiệu Nike của riêng mình và ký hợp đồng gia công với các nhà máy ở Châu Á (vẫn tồn tại cho đến ngày nay). Công ty non trẻ này đã ở trong một thời điểm hoàn hảo khi hoạt động chạy bộ trở nên phổ biến ở Hoa Kỳ vào những năm 1970: Nike có tổng doanh thu là 3 triệu đô la vào năm 1972, và tổng doanh thu là 270 triệu đô la trong những năm 1970 và vào năm 1980. Tổng doanh thu hàng năm lên tới 1 tỷ đô la Mỹ vào năm 1986.</p><p><i>…Đến những thăng trầm chốn thương trường</i><br>Sau thành công vào đầu những năm 1970, công ty gặp phải thử thách khó khăn đầu tiên vào những năm 1980. Nguyên nhân là do những thay đổi về nhân khẩu học đã chuyển Nike (nam, nữ và nữ) sang Nike, và các cô gái trẻ đã hơn 40 tuổi trong quá khứ. Khi về già, họ cảm thấy ít phải chạy bộ hơn. Ngày càng ít người tiêu dùng thích rèn luyện cơ thể bằng cách chạy bộ và ngày càng có nhiều người chạy bộ với tốc độ chậm hơn nhiều. Ngoài ra, thị trường giày chạy bộ ngày càng trở nên phân hóa (được coi là dấu hiệu của sự bão hòa), và bóng của nhu cầu tiêu dùng cũng khác nhau. Năm 1984, doanh số bán hàng của Nike giảm 17% và thị phần của công ty giảm từ 31% năm đó xuống còn 26%. Sự sụt giảm thị phần này tiếp tục giảm xuống 18,6% vào năm 1986.<br>Trong suốt những năm 1980, Nike bán giày giống như cách bán xe hơi với Audi và Fiat. Họ đã tạo ra những loại giày mới với các chức năng khác nhau, chẳng hạn như Pegasus (1988), Air Max (1987), và sau đó là Nike Air Jordan-Michael Jordan, vận động viên nổi tiếng nhất mọi thời đại. Bản thân nó cũng là một thương hiệu siêu đẳng và là một của các thương hiệu chính của Nike. Người phát ngôn. Ngôi sao và Tiger Woods, nơi Nike trở thành vận động viên được trả lương cao nhất từ ​​trước đến nay, trở thành người phát ngôn của thương hiệu Nike.<br>Công ty cũng đang nỗ lực thiết lập mối quan hệ lâu dài với môn Bóng đá Vua bằng cách tài trợ cho các cầu thủ nổi tiếng như World Championship Tour và Brazil của Ronaldo. Hầu hết ngân sách tiếp thị trị giá hàng tỷ đô la của Nike được sử dụng để tài trợ cho các vận động viên nổi tiếng. Rõ ràng việc kết hợp một thương hiệu thể thao với những ngôi sao thể thao hàng đầu của thế giới là ý nghĩa, nhưng dù sao thì cũng có những mặt trái của nó.<br>Trước hết, những ngôi sao như Michael Jordan, Tiger Woods hay Ronaldo đều là thương hiệu của chính họ. Trong một số trường hợp, các siêu sao được chứng nhận cũng sẽ có sản phẩm của riêng họ. Thực tế này đặt ra câu hỏi: “Liệu những anh hùng thể thao này có đang ủng hộ công việc của Nike? Hay Nike nên ủng hộ những nhân vật này?”</p><p>Thứ hai, và để làm cho vấn đề tồi tệ hơn, hàng triệu đô la được trả mỗi năm cho các công ty nổi tiếng này hoàn toàn trái ngược với mức lương trung bình thấp mà Nike trả cho công nhân nhà máy Việt Nam hoặc Indonesia. Khi một công ty như Nike chọn địa điểm đặt nhà máy dựa trên nguồn nhân công giá rẻ, nhưng lại chấp nhận rót một lượng lớn kinh phí tiếp thị vào những người đã có nhiều tiền trong tay, các tổ chức nhân quyền thật mỉa mai, chẳng hạn như các ngôi sao thể thao ở trên. Tất cả những chuyện trên đã khắc họa Nike như một công ty xấu xa đáng ghét. Thậm chí Phil Knight, khi đó vẫn còn là Tổng giám đốc điều hành của công ty này, khi biết được nhận thức tiêu cực về Nike đã cho biết rằng chính ông cũng đã từng bị miêu tả như là một “gã vô lại hoàn hảo”.</p>', 41, 9000000, NULL, 1, '/storage/uploads/2024/02/02/z1-4-scaled.jpg', '2024-02-01 20:42:07', '2024-02-01 20:42:07'),
(37, 'Nike 2024', 'hàng mới', '<p>Nike là một trong những thương hiệu thể thao nổi tiếng nhất trên thế giới. Từ học sinh tiểu học cho đến các vận động viên chuyên nghiệp, không ai có thể phủ nhận sức hấp dẫn của Nike. Nếu bạn khảo sát xem có bao nhiêu người đã hoặc đang sở hữu các sản phẩm của Nike, thì con số này sẽ khiến bạn bất ngờ.<br>Chất lượng của sản phẩm tạo nên uy tín của thương hiệu. Nhưng không thể phủ nhận vai trò của những chiến lược marketing vô cùng hiệu quả đã góp phần tạo nên thành công của Nike ngày hôm nay. Nike là nhà cung cấp giày và quần áo thể thao hàng đầu thế giới, đồng thời là nhà sản xuất quần áo thể thao lớn, với tổng doanh thu hơn 18,6 tỷ USD trong năm tài chính 2008. Tính đến năm 2008, công ty có hơn 30.000 nhân viên trên toàn thế giới.</p><p><img src=\"https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2.jpg\" alt=\"Giày Nike: Tổng quan thương hiệu giày Nike\" srcset=\"https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2.jpg 512w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-300x300.jpg 300w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-150x150.jpg 150w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-510x510.jpg 510w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-100x100.jpg 100w\" sizes=\"100vw\" width=\"700\" height=\"700\">Nguồn: Internet</p><p><i>Khởi đầu từ những chiếc giày Tiger…</i><br>Mọi chuyện bắt đầu với Nike vào đầu những năm 1960, khi người sáng lập Nike, Knight viết một trang giải thích cách công nhân Nhật Bản sản xuất giày chạy bộ giá rẻ. Sau đó, trong chuyến đi đến Nhật Bản, anh nhận thấy Công ty Tiger chuyên sản xuất giày chạy bộ chất lượng cao.<br>Năm 1964, Knight và người bạn William Bowerman đã trả 500 đô la để nhập khẩu giày hổ về Mỹ. Đến năm 1972, công ty bắt đầu thiết kế những đôi giày mang thương hiệu Nike của riêng mình và ký hợp đồng gia công với các nhà máy ở Châu Á (vẫn tồn tại cho đến ngày nay). Công ty non trẻ này đã ở trong một thời điểm hoàn hảo khi hoạt động chạy bộ trở nên phổ biến ở Hoa Kỳ vào những năm 1970: Nike có tổng doanh thu là 3 triệu đô la vào năm 1972, và tổng doanh thu là 270 triệu đô la trong những năm 1970 và vào năm 1980. Tổng doanh thu hàng năm lên tới 1 tỷ đô la Mỹ vào năm 1986.</p><p><i>…Đến những thăng trầm chốn thương trường</i><br>Sau thành công vào đầu những năm 1970, công ty gặp phải thử thách khó khăn đầu tiên vào những năm 1980. Nguyên nhân là do những thay đổi về nhân khẩu học đã chuyển Nike (nam, nữ và nữ) sang Nike, và các cô gái trẻ đã hơn 40 tuổi trong quá khứ. Khi về già, họ cảm thấy ít phải chạy bộ hơn. Ngày càng ít người tiêu dùng thích rèn luyện cơ thể bằng cách chạy bộ và ngày càng có nhiều người chạy bộ với tốc độ chậm hơn nhiều. Ngoài ra, thị trường giày chạy bộ ngày càng trở nên phân hóa (được coi là dấu hiệu của sự bão hòa), và bóng của nhu cầu tiêu dùng cũng khác nhau. Năm 1984, doanh số bán hàng của Nike giảm 17% và thị phần của công ty giảm từ 31% năm đó xuống còn 26%. Sự sụt giảm thị phần này tiếp tục giảm xuống 18,6% vào năm 1986.<br>Trong suốt những năm 1980, Nike bán giày giống như cách bán xe hơi với Audi và Fiat. Họ đã tạo ra những loại giày mới với các chức năng khác nhau, chẳng hạn như Pegasus (1988), Air Max (1987), và sau đó là Nike Air Jordan-Michael Jordan, vận động viên nổi tiếng nhất mọi thời đại. Bản thân nó cũng là một thương hiệu siêu đẳng và là một của các thương hiệu chính của Nike. Người phát ngôn. Ngôi sao và Tiger Woods, nơi Nike trở thành vận động viên được trả lương cao nhất từ ​​trước đến nay, trở thành người phát ngôn của thương hiệu Nike.<br>Công ty cũng đang nỗ lực thiết lập mối quan hệ lâu dài với môn Bóng đá Vua bằng cách tài trợ cho các cầu thủ nổi tiếng như World Championship Tour và Brazil của Ronaldo. Hầu hết ngân sách tiếp thị trị giá hàng tỷ đô la của Nike được sử dụng để tài trợ cho các vận động viên nổi tiếng. Rõ ràng việc kết hợp một thương hiệu thể thao với những ngôi sao thể thao hàng đầu của thế giới là ý nghĩa, nhưng dù sao thì cũng có những mặt trái của nó.<br>Trước hết, những ngôi sao như Michael Jordan, Tiger Woods hay Ronaldo đều là thương hiệu của chính họ. Trong một số trường hợp, các siêu sao được chứng nhận cũng sẽ có sản phẩm của riêng họ. Thực tế này đặt ra câu hỏi: “Liệu những anh hùng thể thao này có đang ủng hộ công việc của Nike? Hay Nike nên ủng hộ những nhân vật này?”</p><p>Thứ hai, và để làm cho vấn đề tồi tệ hơn, hàng triệu đô la được trả mỗi năm cho các công ty nổi tiếng này hoàn toàn trái ngược với mức lương trung bình thấp mà Nike trả cho công nhân nhà máy Việt Nam hoặc Indonesia. Khi một công ty như Nike chọn địa điểm đặt nhà máy dựa trên nguồn nhân công giá rẻ, nhưng lại chấp nhận rót một lượng lớn kinh phí tiếp thị vào những người đã có nhiều tiền trong tay, các tổ chức nhân quyền thật mỉa mai, chẳng hạn như các ngôi sao thể thao ở trên. Tất cả những chuyện trên đã khắc họa Nike như một công ty xấu xa đáng ghét. Thậm chí Phil Knight, khi đó vẫn còn là Tổng giám đốc điều hành của công ty này, khi biết được nhận thức tiêu cực về Nike đã cho biết rằng chính ông cũng đã từng bị miêu tả như là một “gã vô lại hoàn hảo”.</p>', 41, 9000000, NULL, 1, '/storage/uploads/2024/02/02/tải xuống.jpg', '2024-02-01 20:42:40', '2024-02-01 20:44:32'),
(38, 'Nike 2024', 'hot', '<p>Nike là một trong những thương hiệu thể thao nổi tiếng nhất trên thế giới. Từ học sinh tiểu học cho đến các vận động viên chuyên nghiệp, không ai có thể phủ nhận sức hấp dẫn của Nike. Nếu bạn khảo sát xem có bao nhiêu người đã hoặc đang sở hữu các sản phẩm của Nike, thì con số này sẽ khiến bạn bất ngờ.<br>Chất lượng của sản phẩm tạo nên uy tín của thương hiệu. Nhưng không thể phủ nhận vai trò của những chiến lược marketing vô cùng hiệu quả đã góp phần tạo nên thành công của Nike ngày hôm nay. Nike là nhà cung cấp giày và quần áo thể thao hàng đầu thế giới, đồng thời là nhà sản xuất quần áo thể thao lớn, với tổng doanh thu hơn 18,6 tỷ USD trong năm tài chính 2008. Tính đến năm 2008, công ty có hơn 30.000 nhân viên trên toàn thế giới.</p><p><img src=\"https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2.jpg\" alt=\"Giày Nike: Tổng quan thương hiệu giày Nike\" srcset=\"https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2.jpg 512w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-300x300.jpg 300w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-150x150.jpg 150w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-510x510.jpg 510w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-100x100.jpg 100w\" sizes=\"100vw\" width=\"700\" height=\"700\">Nguồn: Internet</p><p><i>Khởi đầu từ những chiếc giày Tiger…</i><br>Mọi chuyện bắt đầu với Nike vào đầu những năm 1960, khi người sáng lập Nike, Knight viết một trang giải thích cách công nhân Nhật Bản sản xuất giày chạy bộ giá rẻ. Sau đó, trong chuyến đi đến Nhật Bản, anh nhận thấy Công ty Tiger chuyên sản xuất giày chạy bộ chất lượng cao.<br>Năm 1964, Knight và người bạn William Bowerman đã trả 500 đô la để nhập khẩu giày hổ về Mỹ. Đến năm 1972, công ty bắt đầu thiết kế những đôi giày mang thương hiệu Nike của riêng mình và ký hợp đồng gia công với các nhà máy ở Châu Á (vẫn tồn tại cho đến ngày nay). Công ty non trẻ này đã ở trong một thời điểm hoàn hảo khi hoạt động chạy bộ trở nên phổ biến ở Hoa Kỳ vào những năm 1970: Nike có tổng doanh thu là 3 triệu đô la vào năm 1972, và tổng doanh thu là 270 triệu đô la trong những năm 1970 và vào năm 1980. Tổng doanh thu hàng năm lên tới 1 tỷ đô la Mỹ vào năm 1986.</p><p><i>…Đến những thăng trầm chốn thương trường</i><br>Sau thành công vào đầu những năm 1970, công ty gặp phải thử thách khó khăn đầu tiên vào những năm 1980. Nguyên nhân là do những thay đổi về nhân khẩu học đã chuyển Nike (nam, nữ và nữ) sang Nike, và các cô gái trẻ đã hơn 40 tuổi trong quá khứ. Khi về già, họ cảm thấy ít phải chạy bộ hơn. Ngày càng ít người tiêu dùng thích rèn luyện cơ thể bằng cách chạy bộ và ngày càng có nhiều người chạy bộ với tốc độ chậm hơn nhiều. Ngoài ra, thị trường giày chạy bộ ngày càng trở nên phân hóa (được coi là dấu hiệu của sự bão hòa), và bóng của nhu cầu tiêu dùng cũng khác nhau. Năm 1984, doanh số bán hàng của Nike giảm 17% và thị phần của công ty giảm từ 31% năm đó xuống còn 26%. Sự sụt giảm thị phần này tiếp tục giảm xuống 18,6% vào năm 1986.<br>Trong suốt những năm 1980, Nike bán giày giống như cách bán xe hơi với Audi và Fiat. Họ đã tạo ra những loại giày mới với các chức năng khác nhau, chẳng hạn như Pegasus (1988), Air Max (1987), và sau đó là Nike Air Jordan-Michael Jordan, vận động viên nổi tiếng nhất mọi thời đại. Bản thân nó cũng là một thương hiệu siêu đẳng và là một của các thương hiệu chính của Nike. Người phát ngôn. Ngôi sao và Tiger Woods, nơi Nike trở thành vận động viên được trả lương cao nhất từ ​​trước đến nay, trở thành người phát ngôn của thương hiệu Nike.<br>Công ty cũng đang nỗ lực thiết lập mối quan hệ lâu dài với môn Bóng đá Vua bằng cách tài trợ cho các cầu thủ nổi tiếng như World Championship Tour và Brazil của Ronaldo. Hầu hết ngân sách tiếp thị trị giá hàng tỷ đô la của Nike được sử dụng để tài trợ cho các vận động viên nổi tiếng. Rõ ràng việc kết hợp một thương hiệu thể thao với những ngôi sao thể thao hàng đầu của thế giới là ý nghĩa, nhưng dù sao thì cũng có những mặt trái của nó.<br>Trước hết, những ngôi sao như Michael Jordan, Tiger Woods hay Ronaldo đều là thương hiệu của chính họ. Trong một số trường hợp, các siêu sao được chứng nhận cũng sẽ có sản phẩm của riêng họ. Thực tế này đặt ra câu hỏi: “Liệu những anh hùng thể thao này có đang ủng hộ công việc của Nike? Hay Nike nên ủng hộ những nhân vật này?”</p><p>Thứ hai, và để làm cho vấn đề tồi tệ hơn, hàng triệu đô la được trả mỗi năm cho các công ty nổi tiếng này hoàn toàn trái ngược với mức lương trung bình thấp mà Nike trả cho công nhân nhà máy Việt Nam hoặc Indonesia. Khi một công ty như Nike chọn địa điểm đặt nhà máy dựa trên nguồn nhân công giá rẻ, nhưng lại chấp nhận rót một lượng lớn kinh phí tiếp thị vào những người đã có nhiều tiền trong tay, các tổ chức nhân quyền thật mỉa mai, chẳng hạn như các ngôi sao thể thao ở trên. Tất cả những chuyện trên đã khắc họa Nike như một công ty xấu xa đáng ghét. Thậm chí Phil Knight, khi đó vẫn còn là Tổng giám đốc điều hành của công ty này, khi biết được nhận thức tiêu cực về Nike đã cho biết rằng chính ông cũng đã từng bị miêu tả như là một “gã vô lại hoàn hảo”.</p>', 41, 10000000, NULL, 1, '/storage/uploads/2024/02/02/giay-nike-air-max-97-silver-bullet-rep-11.jpg', '2024-02-01 20:43:15', '2024-02-01 20:43:15'),
(39, 'Nike 2024', 'hot', '<p>Nike là một trong những thương hiệu thể thao nổi tiếng nhất trên thế giới. Từ học sinh tiểu học cho đến các vận động viên chuyên nghiệp, không ai có thể phủ nhận sức hấp dẫn của Nike. Nếu bạn khảo sát xem có bao nhiêu người đã hoặc đang sở hữu các sản phẩm của Nike, thì con số này sẽ khiến bạn bất ngờ.<br>Chất lượng của sản phẩm tạo nên uy tín của thương hiệu. Nhưng không thể phủ nhận vai trò của những chiến lược marketing vô cùng hiệu quả đã góp phần tạo nên thành công của Nike ngày hôm nay. Nike là nhà cung cấp giày và quần áo thể thao hàng đầu thế giới, đồng thời là nhà sản xuất quần áo thể thao lớn, với tổng doanh thu hơn 18,6 tỷ USD trong năm tài chính 2008. Tính đến năm 2008, công ty có hơn 30.000 nhân viên trên toàn thế giới.</p><p><img src=\"https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2.jpg\" alt=\"Giày Nike: Tổng quan thương hiệu giày Nike\" srcset=\"https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2.jpg 512w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-300x300.jpg 300w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-150x150.jpg 150w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-510x510.jpg 510w, https://mediaelly.sgp1.digitaloceanspaces.com/uploads/2021/04/16154143/tong-quan-thuong-hieu-giay-nike.2-100x100.jpg 100w\" sizes=\"100vw\" width=\"700\" height=\"700\">Nguồn: Internet</p><p><i>Khởi đầu từ những chiếc giày Tiger…</i><br>Mọi chuyện bắt đầu với Nike vào đầu những năm 1960, khi người sáng lập Nike, Knight viết một trang giải thích cách công nhân Nhật Bản sản xuất giày chạy bộ giá rẻ. Sau đó, trong chuyến đi đến Nhật Bản, anh nhận thấy Công ty Tiger chuyên sản xuất giày chạy bộ chất lượng cao.<br>Năm 1964, Knight và người bạn William Bowerman đã trả 500 đô la để nhập khẩu giày hổ về Mỹ. Đến năm 1972, công ty bắt đầu thiết kế những đôi giày mang thương hiệu Nike của riêng mình và ký hợp đồng gia công với các nhà máy ở Châu Á (vẫn tồn tại cho đến ngày nay). Công ty non trẻ này đã ở trong một thời điểm hoàn hảo khi hoạt động chạy bộ trở nên phổ biến ở Hoa Kỳ vào những năm 1970: Nike có tổng doanh thu là 3 triệu đô la vào năm 1972, và tổng doanh thu là 270 triệu đô la trong những năm 1970 và vào năm 1980. Tổng doanh thu hàng năm lên tới 1 tỷ đô la Mỹ vào năm 1986.</p><p><i>…Đến những thăng trầm chốn thương trường</i><br>Sau thành công vào đầu những năm 1970, công ty gặp phải thử thách khó khăn đầu tiên vào những năm 1980. Nguyên nhân là do những thay đổi về nhân khẩu học đã chuyển Nike (nam, nữ và nữ) sang Nike, và các cô gái trẻ đã hơn 40 tuổi trong quá khứ. Khi về già, họ cảm thấy ít phải chạy bộ hơn. Ngày càng ít người tiêu dùng thích rèn luyện cơ thể bằng cách chạy bộ và ngày càng có nhiều người chạy bộ với tốc độ chậm hơn nhiều. Ngoài ra, thị trường giày chạy bộ ngày càng trở nên phân hóa (được coi là dấu hiệu của sự bão hòa), và bóng của nhu cầu tiêu dùng cũng khác nhau. Năm 1984, doanh số bán hàng của Nike giảm 17% và thị phần của công ty giảm từ 31% năm đó xuống còn 26%. Sự sụt giảm thị phần này tiếp tục giảm xuống 18,6% vào năm 1986.<br>Trong suốt những năm 1980, Nike bán giày giống như cách bán xe hơi với Audi và Fiat. Họ đã tạo ra những loại giày mới với các chức năng khác nhau, chẳng hạn như Pegasus (1988), Air Max (1987), và sau đó là Nike Air Jordan-Michael Jordan, vận động viên nổi tiếng nhất mọi thời đại. Bản thân nó cũng là một thương hiệu siêu đẳng và là một của các thương hiệu chính của Nike. Người phát ngôn. Ngôi sao và Tiger Woods, nơi Nike trở thành vận động viên được trả lương cao nhất từ ​​trước đến nay, trở thành người phát ngôn của thương hiệu Nike.<br>Công ty cũng đang nỗ lực thiết lập mối quan hệ lâu dài với môn Bóng đá Vua bằng cách tài trợ cho các cầu thủ nổi tiếng như World Championship Tour và Brazil của Ronaldo. Hầu hết ngân sách tiếp thị trị giá hàng tỷ đô la của Nike được sử dụng để tài trợ cho các vận động viên nổi tiếng. Rõ ràng việc kết hợp một thương hiệu thể thao với những ngôi sao thể thao hàng đầu của thế giới là ý nghĩa, nhưng dù sao thì cũng có những mặt trái của nó.<br>Trước hết, những ngôi sao như Michael Jordan, Tiger Woods hay Ronaldo đều là thương hiệu của chính họ. Trong một số trường hợp, các siêu sao được chứng nhận cũng sẽ có sản phẩm của riêng họ. Thực tế này đặt ra câu hỏi: “Liệu những anh hùng thể thao này có đang ủng hộ công việc của Nike? Hay Nike nên ủng hộ những nhân vật này?”</p><p>Thứ hai, và để làm cho vấn đề tồi tệ hơn, hàng triệu đô la được trả mỗi năm cho các công ty nổi tiếng này hoàn toàn trái ngược với mức lương trung bình thấp mà Nike trả cho công nhân nhà máy Việt Nam hoặc Indonesia. Khi một công ty như Nike chọn địa điểm đặt nhà máy dựa trên nguồn nhân công giá rẻ, nhưng lại chấp nhận rót một lượng lớn kinh phí tiếp thị vào những người đã có nhiều tiền trong tay, các tổ chức nhân quyền thật mỉa mai, chẳng hạn như các ngôi sao thể thao ở trên. Tất cả những chuyện trên đã khắc họa Nike như một công ty xấu xa đáng ghét. Thậm chí Phil Knight, khi đó vẫn còn là Tổng giám đốc điều hành của công ty này, khi biết được nhận thức tiêu cực về Nike đã cho biết rằng chính ông cũng đã từng bị miêu tả như là một “gã vô lại hoàn hảo”.</p>', 41, 8500000, NULL, 1, '/storage/uploads/2024/02/02/images.jpg', '2024-02-01 20:44:05', '2024-02-01 20:44:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_by` int NOT NULL,
  `active` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `url`, `thumb`, `sort_by`, `active`, `created_at`, `updated_at`) VALUES
(5, 'NIKE Giày Cho Phái Nam', 'http://shop.test/danh-muc/39-giay-nam.html', '/storage/uploads/2024/02/01/air-jordan-34-cny_desktop-banner_e910e41fc5404a57a6b21b3be123f72a.png', 2, 1, '2024-01-30 20:33:29', '2024-02-01 20:33:19'),
(6, 'NIKE Giày Cho Phái Nữ', 'http://shop.test/danh-muc/40-giay-nu.html', '/storage/uploads/2024/02/01/6-dong-giay-the-thao-nu-nike-cool-ma-cac-co-nang-phai-so-huu-202102011615554862.jpg', 3, 1, '2024-01-30 20:34:22', '2024-02-01 20:33:31'),
(7, 'NIKE Nói Lên Đẳng Cấp', 'http://shop.test/danh-muc/38-shop.html', '/storage/uploads/2024/02/01/554724-078-banner-scaled.jpg', 1, 1, '2024-01-30 20:34:52', '2024-02-01 20:33:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nam Trần Dev', 'admin@gmail.com', NULL, '$2y$10$PRpeRQgAOS4pquYP4larp.vWOuC6WBUCliQ3tbi1CM7o7jUGePZsK', NULL, '2024-01-24 08:19:33', '2024-01-24 08:19:33');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_customer_id_foreign` (`customer_id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
