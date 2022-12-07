-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 07, 2022 lúc 06:17 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webbandodunghoctap`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `user_id` int(10) NOT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `name`, `email`, `address`, `phone`, `user_id`, `note`, `status`, `created_at`, `updated_at`) VALUES
(471, 'Nguyễn Thao', 'tranthanhthang2008@gmail.com', 'Bắc Giang', '0976147018', 0, NULL, 0, '2022-12-07 08:29:40', '2022-12-07 08:29:40'),
(472, 'Phạm Hoa', 'hoa18051210@gmail.com', 'Bắc Giang', '0976147018', 0, NULL, 0, '2022-12-07 08:34:37', '2022-12-07 08:34:37'),
(473, 'Quỳnh Hoa', 'hoapham18051210@gmail.com', 'Bắc Giang', '0976147018', 0, NULL, 0, '2022-12-07 08:39:04', '2022-12-07 08:39:04'),
(474, 'Quỳnh Hoa', 'hoapham18051210@gmail.com', 'Bắc Giang', '0976147018', 0, NULL, 0, '2022-12-07 08:51:03', '2022-12-07 08:51:03'),
(475, 'Quỳnh Hoa', 'hoapham18051210@gmail.com', 'Bắc Giang', '0976147018', 0, NULL, 0, '2022-12-07 09:14:20', '2022-12-07 09:14:20'),
(476, 'Nguyễn Thao', 'tranthanhthang2008@gmail.com', 'Bắc Giang', '0976147018', 0, NULL, 0, '2022-12-07 09:39:09', '2022-12-07 09:39:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) NOT NULL,
  `title` varchar(200) NOT NULL,
  `intro` text NOT NULL,
  `content` text NOT NULL,
  `images` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `id_user`, `title`, `intro`, `content`, `images`, `status`, `created_at`, `update_at`) VALUES
(6, 9, 'Cách chọn tập vở cho học sinh tiểu học', 'Chất lượng chữ viết của các con không chỉ phụ thuộc vào điều kiện chủ quan và năng lực cá nhân mà nó còn phụ thuộc vào loại vở học sinh. Đây chính là yếu tố khách quan để cho con có thể viết chữ được rõ ràng và sạch đẹp nhất.', '<span style=\"font-family:arial,helvetica,sans-serif; font-size:12px\">Chất lượng chữ viết của các con không chỉ phụ thuộc vào điều kiện chủ quan và năng lực cá nhân mà nó còn phụ thuộc vào loại vở học sinh. Đây chính là yếu tố khách quan để cho con có thể viết chữ được rõ ràng và sạch đẹp nhất.</span>', 'tt_1.jpg', 1, '2022-12-06 18:17:59', '0000-00-00 00:00:00'),
(7, 9, 'Cách bảo quản bút máy và bút bi.', 'Cách bảo quả bút máy cũng phức tạp, cần kiểm tra ống mực và vệ sinh bút thường xuyên. Vậy tại sao bút máy lại được xem là thể hiện sự đẳng cấp? Với những người yêu thích sự cổ điển thì việc sở hữu một cây bút máy thể hiện những sự khéo léo, tinh tế và lịch lãm cho người sử dụng.\r\n\r\nCòn với bút bi nên hạn chế làm rơi rớt vì dễ làm tắc mực, đứt nét. Hơn nữa giá thành rẻ nên dễ dàng mua lại khi hết mực hoặc làm mất.', '<p>Cách bảo quả bút máy cũng phức tạp, cần kiểm tra ống mực và vệ sinh bút thường xuyên. Vậy tại sao bút máy lại được xem là thể hiện sự đẳng cấp? Với những người yêu thích sự cổ điển thì việc sở hữu một cây bút máy thể hiện những sự khéo léo, tinh tế và lịch lãm cho người sử dụng.</p>\r\n\r\n<p>Còn với bút bi nên hạn chế làm rơi rớt vì dễ làm tắc mực, đứt nét. Hơn <a href=\"https://butpicasso.com/product-tag/but-ky-nu\" rel=\"noopener\" style=\"box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(51, 72, 98); text-decoration-line: none;\" target=\"_blank\" title=\"bút ký dành cho nữ\">nữ</a>a giá thành rẻ nên dễ dàng mua lại khi hết mực hoặc làm mất.</p>\r\n', 'tt_2.jpg', 1, '2022-12-06 18:21:07', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `date_order` datetime DEFAULT NULL,
  `total` float DEFAULT NULL,
  `payments` varchar(200) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `payment_status` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id`, `customer_id`, `date_order`, `total`, `payments`, `note`, `payment_status`, `status`, `created_at`, `updated_at`) VALUES
(65, 471, '2022-12-07 15:29:40', 209000, NULL, '', 0, 1, '2022-12-07 08:29:40', '2022-12-07 08:29:40'),
(66, 472, '2022-12-07 15:34:37', 66000, NULL, '', 0, 1, '2022-12-07 08:34:37', '2022-12-07 08:34:37'),
(67, 473, '2022-12-07 15:39:04', 31900, NULL, '', 0, 1, '2022-12-07 08:39:04', '2022-12-07 08:39:04'),
(68, 474, '2022-12-07 15:51:03', 66000, NULL, '', 1, 1, '2022-12-07 15:52:05', '2022-12-07 08:51:03'),
(69, 475, '2022-12-07 16:14:20', 66000, 'COD', '', 2, 3, '2022-12-07 16:14:55', '2022-12-07 09:14:20'),
(70, 476, '2022-12-07 16:39:09', 66000, 'COD', '', 1, 1, '2022-12-07 09:39:09', '2022-12-07 09:39:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` double NOT NULL,
  `user_id` int(10) NOT NULL DEFAULT 8,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `quantity`, `unit_price`, `user_id`, `created_at`, `updated_at`) VALUES
(105, 70, 83, 1, 60000, 8, '2022-12-07 09:39:09', '2022-12-07 09:39:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_status`
--

CREATE TABLE `order_status` (
  `id` tinyint(1) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `order_status`
--

INSERT INTO `order_status` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Chưa giao hàng', NULL, NULL),
(2, 'Đang giao hàng', NULL, NULL),
(3, 'Đã giao hàng', NULL, NULL),
(4, 'Đã hủy đơn hàng', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('tranthanhthang2008@gmail.com', '84b66f0ff924f04b6193ca7fe977e9250a2393f8563fc938585671195f2e0707', '2017-06-22 00:36:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment_status`
--

CREATE TABLE `payment_status` (
  `id` tinyint(1) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `payment_status`
--

INSERT INTO `payment_status` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Chưa thanh toán', NULL, NULL),
(2, 'Đã thanh toán', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `power_type`
--

CREATE TABLE `power_type` (
  `id_power` tinyint(2) UNSIGNED NOT NULL,
  `name_power` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `power_type`
--

INSERT INTO `power_type` (`id_power`, `name_power`, `created_at`, `updated_at`) VALUES
(1, 'member', NULL, NULL),
(2, 'admin', NULL, NULL),
(3, 'super admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `id_type` int(10) UNSIGNED DEFAULT NULL,
  `intro` text DEFAULT NULL,
  `price` float DEFAULT NULL,
  `promo_price` float DEFAULT NULL,
  `image` text DEFAULT NULL,
  `unit` text DEFAULT NULL,
  `new` tinyint(1) DEFAULT 0,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `id_type`, `intro`, `price`, `promo_price`, `image`, `unit`, `new`, `status`, `created_at`, `updated_at`) VALUES
(71, 'Vở kẻ ngang gáy', 5, '<em><strong>Vở kẻ ngang gáy vuông 80 trang Pupil Traditional Food 1102</strong></em><span style=\"background-color:rgb(255, 248, 248); color:rgb(0, 0, 0); font-family:arial,helvetica neue,helvetica,sans-serif; font-size:14px\"> gây ấn tượng cực mạnh với các bạn học sinh với bìa vở là \"bộ sưu tập\" của các món ăn nổi tiếng từ một số quốc gia trên thế giới. </span>', 8000, NULL, 'vo_2.jpg', 'Cái', 1, 1, '2022-12-06 10:25:06', '2022-12-06 10:25:06'),
(72, 'Vở kẻ ngang Liên Quân', 5, '<strong>Vở kẻ ngang Liên Quân 200 trang </strong><span style=\"background-color:rgb(255, 248, 248); color:rgb(0, 0, 0); font-family:arial,helvetica neue,helvetica,sans-serif; font-size:14px\">) sử dụng hình ảnh bản quyền game Liên Quân độc đáo, phù hợp với sở thích của học sinh - sinh viên. Sản phẩm được sản xuất trên dây truyền liên động hiện đại, đạt chất lượng tốt, màu sắc đẹp, bắt mắt.</span>', 24000, NULL, 'vo_3.jpg', 'Cái', 1, 1, '2022-12-06 10:26:29', '2022-12-06 10:26:29'),
(73, 'Vở 4 Ly Ngang', 5, '<strong>Vở 4 Ly Ngang 96 Trang Hồng Hà Class Dreaming Bear New 0424</strong><span style=\"background-color:rgb(255, 248, 248); color:rgb(0, 0, 0); font-family:arial,helvetica neue,helvetica,sans-serif; font-size:14px\"> thể hiện hình ảnh độc đáo màu sắc tươi sáng, hình ảnh sinh động phù hợp với học sinh - sinh viên.</span>', 24000, NULL, 'vo_4.jpg', 'Cái', 0, 1, '2022-12-06 10:28:53', '2022-12-06 10:28:53'),
(74, 'Vở vẽ A3', 5, '<em><strong>Vở vẽ </strong></em><span style=\"background-color:rgb(255, 248, 248); color:rgb(0, 0, 0); font-family:arial,helvetica neue,helvetica,sans-serif; font-size:14px\"> </span><strong>A3</strong><span style=\"background-color:rgb(255, 248, 248); color:rgb(0, 0, 0); font-family:arial,helvetica neue,helvetica,sans-serif; font-size:14px\"> Hồng Hà được thiết kế theo phong cách mới, độc đáo, khác biết phù hợp với nhiều đối tượng sử dụng. Bộ sản phẩm gồm 20 tờ giấy A4 giúp bạn thỏa sức thể hiện đam mê trong học tập và công việc.</span>', 29000, NULL, 'vo_5.jpg', 'Cái', 1, 1, '2022-12-06 10:30:19', '2022-12-06 10:30:19'),
(75, 'Vở chép nhạc School', 5, '<strong>Vở chép nhạc</strong><span style=\"background-color:rgb(255, 248, 248); color:rgb(0, 0, 0); font-family:arial,helvetica neue,helvetica,sans-serif; font-size:14px\"> luôn nằm trong vị trí dòng sản phẩm bán chạy tại Hồng Hà. Với thiết kế vui tươi, ngộ nghĩnh rất được các bạn nhỏ yêu thích. </span>', 20000, NULL, 'vo_6.jpg', 'Cái', 0, 1, '2022-12-06 10:31:32', '2022-12-06 10:31:32'),
(76, 'Bút máy nét hoa Pattern', 6, '<em><strong>Bút máy nét hoa Pattern Y01 2278</strong></em><span style=\"background-color:rgb(255, 248, 248); color:rgb(0, 0, 0); font-family:arial,helvetica neue,helvetica,sans-serif; font-size:14px\"> là sản phẩm bút máy nét hoa dành cho học sinh Tiểu học luyện viết chữ đẹp. Màu sắc bút tươi mới, hình ảnh ngộ nghĩnh được in bằng công nghệ in chuyển nhiệt nên thành phẩm có sự sắc nét hơn hẳn, tạo sự thích thú cho </span><span style=\"background-color:rgb(255, 248, 248); color:rgb(0, 0, 0); font-family:arial,helvetica neue,helvetica,sans-serif; font-size:14px\">các bé khi học bài.</span>', 30000, NULL, 'but_1.jpg', 'Cái', 1, 1, '2022-12-06 10:32:44', '2022-12-06 10:32:44'),
(77, 'Bút máy nét thường Candy', 6, '<strong>Bút máy Hồng Hà 2271</strong><span style=\"background-color:rgb(255, 248, 248); color:rgb(0, 0, 0); font-family:arial,helvetica neue,helvetica,sans-serif; font-size:14px\"> có thiết kế và cấu tạo thông minh cùng hình ảnh ngộ nghĩnh, bắt mắt, phù hợp với học sinh tiểu học, giúp học sinh luyện chữ dễ dàng.</span>', 35000, NULL, 'but_2.jpg', 'Cái', 1, 1, '2022-12-06 10:33:40', '2022-12-06 10:33:40'),
(78, 'Bút chì gỗ ABC-2B', 5, '<strong>Bút chì 2B Có Tẩy  ABC 3399</strong><span style=\"background-color:rgb(255, 248, 248); color:rgb(0, 0, 0); font-family:arial,helvetica neue,helvetica,sans-serif; font-size:14px\"> được làm từ chất liệu gỗ bền chắc, ruột chì có độ cứng 2B phù hợp cho các bạn học sinh, sinh viên tập viết, vẽ hình.</span>', 3000, NULL, 'but_3.jpg', 'Cái', 1, 1, '2022-12-06 10:35:37', '2022-12-06 10:35:37'),
(79, 'Bút máy Hồng Hà nét hoa', 6, '<strong>Bút máy Hồng Hà nét hoa 300 - 2231 </strong><span style=\"background-color:rgb(255, 248, 248); color:rgb(0, 0, 0); font-family:arial,helvetica neue,helvetica,sans-serif; font-size:14px\">là sản phẩm được ưa chuộng nhờ thiết kế tối ưu hỗ trợ việc luyện viết chữ đẹp. </span>', 35000, NULL, 'but_5.jpg', 'Cái', 1, 1, '2022-12-06 10:38:04', '2022-12-06 10:38:04'),
(80, 'Bút máy nét hoa Tom & Jerry', 6, '<strong>Bút máy Tom & Jerry Hồng Hà 2265</strong><span style=\"background-color:rgb(255, 248, 248); color:rgb(0, 0, 0); font-family:arial,helvetica neue,helvetica,sans-serif; font-size:14px\"> là sản phẩm có ngòi mài nét hoa 0.5mm công nghệ mới, dễ dàng tạo nét thanh nét đậm</span>', 25000, NULL, 'but_6.jpg', 'Cái', 0, 1, '2022-12-06 10:39:24', '2022-12-06 10:39:24'),
(81, 'Thước kẻ Tàu Siêu Tốc', 7, '<strong>Thước kẻ Tàu Siêu Tốc 15cm  </strong><span style=\"background-color:rgb(255, 248, 248); color:rgb(0, 0, 0); font-family:arial,helvetica neue,helvetica,sans-serif; font-size:14px\">được thiết kế hình Tàu Siêu Tốc ngộ nghĩnh. Nhỏ gọn vừa hộp bút, phù hợp với các bạn nhỏ sử dụng trong việc học tập.</span>', 10000, NULL, 'dd_1.jpg', 'Cái', 1, 1, '2022-12-06 10:40:57', '2022-12-06 10:40:57'),
(82, 'Compa chì gỗ SM 05', 7, '<strong><em>Compa chì gỗ SM 05</em></strong><span style=\"background-color:rgb(255, 248, 248); color:rgb(0, 0, 0); font-family:arial,helvetica neue,helvetica,sans-serif; font-size:14px\"> với thiết kế nhỏ gọn, trọng lượng nhẹ, dễ cầm và dễ sử dụng.</span>', 25000, NULL, 'dd_2.jpg', 'Cái', 0, 1, '2022-12-06 10:42:50', '2022-12-06 10:42:50'),
(83, 'Đèn học sinh bảo vệ thị lực', 7, '<strong>Đèn học sinh bảo vệ thị lực Hồng Hà 3382</strong><span style=\"background-color:rgb(255, 248, 248); color:rgb(0, 0, 0); font-family:arial,helvetica neue,helvetica,sans-serif; font-size:14px\"> chiếu sáng tốt, giúp trẻ đỡ mỏi mắt và không làm ảnh hưởng đến thị giác của trẻ.</span>', 60000, NULL, 'dd_4.jpg', 'Cái', 1, 1, '2022-12-06 10:44:02', '2022-12-06 10:44:02'),
(84, 'Mực lọ đen Hồng Hà', 7, '<strong>Mực lọ Hồng Hà 3457</strong><span style=\"background-color:rgb(255, 248, 248); color:rgb(0, 0, 0); font-family:arial,helvetica neue,helvetica,sans-serif; font-size:14px\"> 60ml phù hợp cho học sinh, sinh viên. Được làm từ nước khử ion và hóa chất an toàn cho người sử dụng. Viết khô nhanh - không cặn - không nhòe - bền màu. Sản phẩm để nơi khô ráo, thoáng mát. Đậy nắp lọ sau khi sử dụng, không sử dụng chung với các mực khác.</span>', 20000, NULL, 'dd_5.jpg', 'Cái', 0, 1, '2022-12-06 10:45:38', '2022-12-06 10:45:38'),
(85, 'Balo học sinh DC', 8, '<em><strong>Balo học sinh DC HS02 3716</strong></em><span style=\"background-color:rgb(255, 248, 248); color:rgb(0, 0, 0); font-family:arial,helvetica neue,helvetica,sans-serif; font-size:14px\"> sử dụng chất liệu vải cao cấp, có khả năng chống thấm nước và bụi bẩn hiệu quả, khóa kéo chắc chắn, phù hợp với lứa tuổi sử dụng. </span>', 70000, NULL, 'balo_1.jpg', 'Cái', 1, 1, '2022-12-06 10:48:00', '2022-12-06 10:48:00'),
(86, 'Cặp nhựa học sinh Cozy', 8, '<strong>Cặp học sinh</strong><span style=\"background-color:rgb(255, 248, 248); color:rgb(0, 0, 0); font-family:arial,helvetica neue,helvetica,sans-serif; font-size:14px\"> Hồng Hà mang tên Cozy thiết kế đẹp, bắt mắt. Sản phẩm làm bằng chất liệu PP bền đẹp, dễ dàng lưu trữ tài liệu, phù hợp cho các bạn học sinh, sinh viên.</span>', 29000, NULL, 'balo_2.jpg', 'Cái', 0, 1, '2022-12-06 10:49:08', '2022-12-06 10:49:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_properties`
--

CREATE TABLE `products_properties` (
  `id` int(10) NOT NULL,
  `pro_id` int(10) NOT NULL,
  `size_id` int(10) NOT NULL,
  `p_price` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_size`
--

CREATE TABLE `product_size` (
  `id` int(10) NOT NULL,
  `size` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_type`
--

CREATE TABLE `product_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `intro` text NOT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product_type`
--

INSERT INTO `product_type` (`id`, `name`, `intro`, `image`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Vở học sinh', '<span style=\"color:rgb(85, 85, 85); font-family:arial,helvetica neue,helvetica,sans-serif; font-size:16px\">Vở viết Hồng Hà đa dạng sự lựa chọn từ thiết kế, định lượng, độ trắng, kích thước đến số trang</span>', '12.jpg', 1, NULL, NULL),
(6, 'Bút học sinh', '<span style=\"color:rgb(85, 85, 85); font-family:arial,helvetica neue,helvetica,sans-serif; font-size:16px\">Chúng tôi cung cấp các sản phẩm Bút học sinh đạt chất lượng cao trong khâu sản xuất và đa dạng về mẫu mã sử dụng trong quá trình học tập </span>', '37.jpg', 1, NULL, NULL),
(7, 'Đồ dùng học tập', '<span style=\"color:rgb(85, 85, 85); font-family:arial,helvetica neue,helvetica,sans-serif; font-size:16px\">Chúng tôi cung cấp các sản phẩm Dụng cụ học tập phục vụ tận tình cho nhu cầu học tập đa dạng của các bạn học sinh, sinh viên</span>', '6.jpg', 1, NULL, NULL),
(8, 'Balo - Cặp sách', '<span style=\"color:rgb(85, 85, 85); font-family:arial,helvetica neue,helvetica,sans-serif; font-size:16px\">Cung cấp các sản phẩm Balo - Túi cặp uy tín, chất lượng cao, thiết kế độc đáng và tiện lợi. </span>', '4.png', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `recommends`
--

CREATE TABLE `recommends` (
  `id` int(10) NOT NULL,
  `pro_id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(10) NOT NULL,
  `link` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `link`, `image`) VALUES
(5, '', 'banner2.jpg'),
(6, '', 'banner3.jpg'),
(7, '', 'banner4.jpg'),
(8, '', 'banner2.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `power` tinyint(2) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `address`, `power`, `active`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(9, 'Nguyễn Thao', 'tranthanhthang2008@gmail.com', '$2y$10$15Cp.HpeMKmlpsMGKEeLVOVtF7.QZ.zaKtUlGr0UeM.XwigGUQdoC', '01662235151', '1243', 3, 1, 1, 'p15lsk4cYjJOICWpqQxnYKOtNhaaErpfrkQp8l8VG4HKtw02GA71LlxtaR3j', NULL, '2022-12-07 09:30:02'),
(23, 'Quỳnh Hoa', 'hoapham18051210@gmail.com', '$2y$10$iYf0JCo.p/9eFqFtTS1KRu/HQGYj/hjtFp.SevBV3oYgpHFojO2Ae', '0976147018', '12345', 1, 1, 1, 'qsWdlbKbwwLFR3XHG3ZTQdblBtWefiLhw2IIXsPXRXaJI5PlIHGasriKW064', '2022-12-06 07:33:32', '2022-12-06 07:33:37'),
(24, 'Phạm Hoa', 'hoa18051210@gmail.com', '$2y$10$864gXUbjtMgoNE6mm3K3JOdyG56txtjYwubrS20B1nPkTSiH8Hx8y', '0368748161', 'Bắc Giang', 1, 1, 1, 'EuHcDQQkxGV9pWb6kGSRBUrdzPkhSRZ1sap33UQ6MiLXS5Bp7dRTgqVn3MBl', '2022-12-07 08:34:18', '2022-12-07 08:38:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `pro_id` int(10) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Chỉ mục cho bảng `payment_status`
--
ALTER TABLE `payment_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `power_type`
--
ALTER TABLE `power_type`
  ADD PRIMARY KEY (`id_power`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products_properties`
--
ALTER TABLE `products_properties`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `recommends`
--
ALTER TABLE `recommends`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=477;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT cho bảng `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `payment_status`
--
ALTER TABLE `payment_status`
  MODIFY `id` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `power_type`
--
ALTER TABLE `power_type`
  MODIFY `id_power` tinyint(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT cho bảng `products_properties`
--
ALTER TABLE `products_properties`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `product_size`
--
ALTER TABLE `product_size`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `recommends`
--
ALTER TABLE `recommends`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
