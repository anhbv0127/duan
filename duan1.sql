-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 21, 2024 at 04:30 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `duan1`
--

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int NOT NULL,
  `noidung` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `iduser` int NOT NULL,
  `idpro` int NOT NULL,
  `ngaybinhluan` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `binhluan`
--

INSERT INTO `binhluan` (`id`, `noidung`, `iduser`, `idpro`, `ngaybinhluan`) VALUES
(1, 'Sản phẩm rất đang trải nghiệm', 2, 1, '2023-09-22'),
(2, 'Sản phẩm rất tốt', 3, 1, '2023-09-22'),
(7, 'ok', 2, 8, '2023-10-15'),
(8, 'hahhahahaha', 2, 10, '2023-10-15'),
(10, 'sản phẩm rất tốt', 2, 11, '2023-10-17'),
(11, 'sản phẩm rất tốt', 2, 10, '2023-10-17'),
(12, 'sản phẩm rất tốt', 2, 7, '2023-10-17'),
(13, 'sản phẩm rất tốt', 2, 12, '2023-10-17'),
(14, 'sản phẩm rất tốt', 2, 12, '2023-10-17'),
(15, 'ok', 2, 13, '2023-10-17'),
(20, 'ok', 2, 12, '2023-10-20'),
(21, 'sản phẩm rất tốt', 2, 11, '2023-10-20'),
(22, 'knjh', 2, 12, '2023-11-15'),
(23, 'sản phẩm rất tốt', 2, 7, '2023-11-15'),
(24, 'sản phẩm rất tốt', 2, 7, '2023-11-15'),
(27, 'sản phẩm rất tốt', 2, 11, '2023-11-15'),
(28, 'sản phẩm rất tốt', 2, 2, '2023-11-15'),
(30, 'what', 2, 9, '2023-11-15');

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `trangthai` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name`, `trangthai`) VALUES
(1, 'Samsung', 0),
(2, 'Xiaomi', 0),
(3, 'IPHONE', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int NOT NULL,
  `id_order` int DEFAULT NULL,
  `id_pro` int DEFAULT NULL,
  `name` varchar(225) COLLATE utf8mb4_general_ci NOT NULL,
  `img` varchar(225) COLLATE utf8mb4_general_ci NOT NULL,
  `giamua` decimal(10,2) DEFAULT NULL,
  `soluong` int DEFAULT NULL,
  `thanhtien` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `id_order`, `id_pro`, `name`, `img`, `giamua`, `soluong`, `thanhtien`) VALUES
(62, 75, 1, '', '', '18000000.00', 1, '18000000.00'),
(63, 75, 5, '', '', '35000000.00', 1, '35000000.00'),
(64, 75, 5, '', '', '35000000.00', 1, '35000000.00'),
(66, 77, 1, '', '', '18000000.00', 1, '18000000.00'),
(67, 78, 2, '', '', '79000000.00', 1, '79000000.00'),
(68, 79, 13, '', '', '43000000.00', 1, '43000000.00'),
(69, 80, 9, '', '', '14000000.00', 7, '98000000.00'),
(70, 81, 12, '', '', '51000000.00', 1, '51000000.00');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `price` double(10,2) NOT NULL DEFAULT '0.00',
  `img` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `mota` text COLLATE utf8mb4_general_ci NOT NULL,
  `luotxem` int NOT NULL DEFAULT '0',
  `iddm` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `name`, `price`, `img`, `mota`, `luotxem`, `iddm`) VALUES
(1, 'Iphone13', 18000000.00, 'iphon13.jpeg', 'Chip Apple A15 Bionic giúp tối ưu hiệu năng sử dụng\r\niPhone 13 được trang bị con chip Apple A15 Bionic, chip set được sản xuất trên quy trình 5nm. Theo nhà sản xuất, con chip Apple A15 Bionic cho CPU nhanh hơn 50% và GPU nhanh hơn 30% so với đối thủ.\r\n\r\nChip A15 Bionic gồm 15 tỷ bóng bán dẫn, có thể thực hiện được 15,8 ngàn tỷ tác vụ trong một giây – con số này là minh chứng rõ ràng nhất đảm bảo cho sức mạnh hiệu năng iPhone 13. Các tác vụ học máy được thực hiện trên iPhone 13 cũng nhanh hơn bởi Apple đã trang bị nhân Neural Engine mạnh mẽ hơn trước.', 999, 3),
(2, 'iPhone 14 5TB', 79000000.00, 'iPhone 14 Pro Max.jpg', 'Những dòng iPhone đến từ nhà Apple đều có sức hút đặc biệt ngay từ thời điểm ra mắt và thế hệ iPhone 14 Pro Max cũng không ngoại lệ. Có thể nói, iPhone 14 Pro Max là sự kết hợp hoàn hảo giữa các yếu tố về thiết kế, cấu hình, tính năng, hệ điều hành,... Nếu bạn tò mò về siêu phẩm này, hãy đọc ngay phần đánh giá chi tiết phiên bản cao cấp nhất trong series iPhone 14 bên dưới nhé. ', 1000, 3),
(3, 'Samsung', 18000000.00, 'samsung2.jpg', 'ASUS Vivobook E1404FA-NK186W thuộc dòng Vivobook Go 14, dòng laptop hiệu năng cao giá rẻ giúp bạn làm việc hiệu quả mọi lúc mọi nơi. Với bộ vi xử lý AMD 7000 series mạnh mẽ, trang bị sẵn tới 16GB RAM, 512GB SSD, Vivobook E1404FA sẽ mang đến trải nghiệm làm việc thoải mái, vô cùng mượt mà.', 9, 1),
(5, 'Samsung ZFLiP', 35000000.00, 'Samsung Galaxy Z Flip5.jpg', 'Lenovo Ideapad 5 Pro 16 là chiếc laptop, máy tính xách tay thời đại mới dành cho các bạn trẻ đa nhiệm, năng động với vẻ ngoài hiện đại, mỏng nhẹ nhưng bên trong lại chứa một hiệu năng cực khủng. Bên cạnh đó, chiếc laptop Lenovo - Lenovo Ideapad này cũng được tích hợp nhiều công nghệ hiện đại, tối ưu tốt cho trải nghiệm sử dụng. Chắc chắn, mẫu laptop mỏng nhẹ này sẽ khiến bạn phải bất ngờ đấy. Hãy cùng Laptop88 đánh giá ngay mẫu laptop văn phòng này dưới đây nhé!', 10, 1),
(6, 'Xiaomi Redmi Note 12 Pro', 14000000.00, 'Xiaomi Redmi Note 12 Pro.jpg', 'Samsung S23 Ultra là dòng điện thoại cao cấp của Samsung, sở hữu camera độ phân giải 200MP ấn tượng, chip Snapdragon 8 Gen 2 mạnh mẽ, bộ nhớ RAM 8GB mang lại hiệu suất xử lý vượt trội cùng khung viền vuông vức sang trọng. Sản phẩm được ra mắt từ đầu năm 2023.', 9, 2),
(7, 'Xiaomi 13 Pro', 1800000.00, 'xiaomi1.jpg', 'Xiaomi 13 Pro là mẫu flagship mới sở hữu màn hình OLED 6.7 inch cùng tần số quét lên tới 120 Hz. Điện thoại sở hữu một cấu hình vượt trội với con chip Snapdragon gen 2 thế hệ mới, viên pin 4800 mAh hỗ trợ sạc nhanh công suất 120W. Camera máy mang lại cho người dùng khả năng nhiếp ảnh chuyên nghiệp với cụm camera Leica 50MP.', 9, 2),
(8, 'IPHONE15', 30000000.00, 'iphone15.jpeg', 'Lenovo Ideapad 5 Pro 16 là chiếc laptop, máy tính xách tay thời đại mới dành cho các bạn trẻ đa nhiệm, năng động với vẻ ngoài hiện đại, mỏng nhẹ nhưng bên trong lại chứa một hiệu năng cực khủng. Bên cạnh đó, chiếc laptop Lenovo - Lenovo Ideapad này cũng được tích hợp nhiều công nghệ hiện đại, tối ưu tốt cho trải nghiệm sử dụng. Chắc chắn, mẫu laptop mỏng nhẹ này sẽ khiến bạn phải bất ngờ đấy. Hãy cùng Laptop88 đánh giá ngay mẫu laptop văn phòng này dưới đây nhé!', 10, 3),
(9, 'Xiaomi Redmi Note 12 Pro', 14000000.00, 'Xiaomi Redmi Note 12 Pro.jpg', 'Samsung S23 Ultra là dòng điện thoại cao cấp của Samsung, sở hữu camera độ phân giải 200MP ấn tượng, chip Snapdragon 8 Gen 2 mạnh mẽ, bộ nhớ RAM 8GB mang lại hiệu suất xử lý vượt trội cùng khung viền vuông vức sang trọng. Sản phẩm được ra mắt từ đầu năm 2023.', 9, 2),
(10, 'Samsung Galaxy S23 Ultra 5G 256GB ', 18000000.00, 'samsung1.jpeg', 'Vận hành doanh nghiệp trên MacBook Air M2. Siêu mạnh mẽ với chip M2 thế hệ tiếp theo, MacBook Air được thiết kế mới nay nhỏ gọn hơn bao giờ hết, kết hợp giữa hiệu năng đáng kinh ngạc và thời lượng pin lên đến 18 giờ trong vỏ nhôm mỏng đầy ấn tượng.1 Nhờ đó, tất cả các bộ phận từ kinh doanh đến tài chính đều có thể làm việc năng suất hơn dù ở bất cứ đâu.', 9, 1),
(11, 'Iphone14', 39800000.00, 'iphone14.jpeg', 'Chip Apple A15 Bionic giúp tối ưu hiệu năng sử dụng\r\niPhone 13 được trang bị con chip Apple A15 Bionic, chip set được sản xuất trên quy trình 5nm. Theo nhà sản xuất, con chip Apple A15 Bionic cho CPU nhanh hơn 50% và GPU nhanh hơn 30% so với đối thủ.\r\n\r\nChip A15 Bionic gồm 15 tỷ bóng bán dẫn, có thể thực hiện được 15,8 ngàn tỷ tác vụ trong một giây – con số này là minh chứng rõ ràng nhất đảm bảo cho sức mạnh hiệu năng iPhone 13. Các tác vụ học máy được thực hiện trên iPhone 13 cũng nhanh hơn bởi Apple đã trang bị nhân Neural Engine mạnh mẽ hơn trước.', 1, 3),
(12, 'Iphone 14 pro max', 51000000.00, 'iPhone 14 Pro Max.jpg', 'Chip Apple A15 Bionic giúp tối ưu hiệu năng sử dụng\r\niPhone 13 được trang bị con chip Apple A15 Bionic, chip set được sản xuất trên quy trình 5nm. Theo nhà sản xuất, con chip Apple A15 Bionic cho CPU nhanh hơn 50% và GPU nhanh hơn 30% so với đối thủ.\r\n\r\nChip A15 Bionic gồm 15 tỷ bóng bán dẫn, có thể thực hiện được 15,8 ngàn tỷ tác vụ trong một giây – con số này là minh chứng rõ ràng nhất đảm bảo cho sức mạnh hiệu năng iPhone 13. Các tác vụ học máy được thực hiện trên iPhone 13 cũng nhanh hơn bởi Apple đã trang bị nhân Neural Engine mạnh mẽ hơn trước.', 0, 3),
(13, 'Iphone13', 43000000.00, 'iphone13.jpg', 'Chip Apple A15 Bionic giúp tối ưu hiệu năng sử dụng\r\niPhone 13 được trang bị con chip Apple A15 Bionic, chip set được sản xuất trên quy trình 5nm. Theo nhà sản xuất, con chip Apple A15 Bionic cho CPU nhanh hơn 50% và GPU nhanh hơn 30% so với đối thủ.\r\n\r\nChip A15 Bionic gồm 15 tỷ bóng bán dẫn, có thể thực hiện được 15,8 ngàn tỷ tác vụ trong một giây – con số này là minh chứng rõ ràng nhất đảm bảo cho sức mạnh hiệu năng iPhone 13. Các tác vụ học máy được thực hiện trên iPhone 13 cũng nhanh hơn bởi Apple đã trang bị nhân Neural Engine mạnh mẽ hơn trước.', 0, 3),
(19, 'Samsung Galaxy S22 Ultra', 11000000.00, 'Samsung Galaxy S23 Ultra.jpg', 'Các điện thoại iPhone là dòng sản phẩm điện thoại thông minh do Apple Inc. phát triển và sản xuất. Dòng điện thoại iPhone đã trở thành một trong những biểu tượng của thế giới công nghệ, với sự kết hợp giữa thiết kế đẹp mắt, hiệu suất mạnh mẽ và hệ điều hành iOS được tối ưu hóa.', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int NOT NULL,
  `user` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `pass` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tel` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `role` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `user`, `pass`, `email`, `address`, `tel`, `role`) VALUES
(1, 'ADMIN', '123456', 'admin@fpt.edu.vn', 'HĐ', '098765412', 1),
(2, 'Đào Sơn', '123456', 'sondvph38036@fpt.edu.vn', 'Hà Đông2', '09874565487654', 2),
(49, 'Việt Anh', '1', 'vietanh04@gmail.com', 'HN', '098765412', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int NOT NULL,
  `id_user` int DEFAULT NULL,
  `hoten` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sdt` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `diachi` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ngaydathang` date DEFAULT NULL,
  `tongtien` decimal(10,2) DEFAULT NULL,
  `pttt` varchar(11) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `trangthai` int DEFAULT '0' COMMENT '0.đơn hàng mới\r\n1.Đang xử lí\r\n2. Đang giao hàng\r\n3.Đã giao hàng'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `id_user`, `hoten`, `sdt`, `email`, `diachi`, `ngaydathang`, `tongtien`, `pttt`, `trangthai`) VALUES
(75, 2, '                            Đào Sơn', '09874565487654', 'sondvph38036@fpt.edu.vn', '                            Hà Đông2', NULL, '88000000.00', '1', 0),
(77, 2, '                            Viet Anh', '0987456548765', 'vietanh12@fpt.edu.vn', '                            Hà Đông2', NULL, '18000000.00', '2', 0),
(78, 2, '                            Le Nu', '09874565487654', 'lenu345@fpt.edu.vn', '                            Hà Đông2', NULL, '79000000.00', '2', 1),
(81, 2, '                            Son', '09874565487654', 'son469@fpt.edu.vn', '                            Hà Đông2', NULL, '51000000.00', '1', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idpro` (`idpro`),
  ADD KEY `iduser` (`iduser`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_order_detail_order` (`id_order`),
  ADD KEY `fk_order_detail_product` (`id_pro`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iddm` (`iddm`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tbl_order_id_user` (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
