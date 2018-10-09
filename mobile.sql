-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 04, 2018 at 03:33 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobile`
--

-- --------------------------------------------------------

--
-- Table structure for table `manufactures`
--

DROP TABLE IF EXISTS `manufactures`;
CREATE TABLE IF NOT EXISTS `manufactures` (
  `manu_ID` int(11) NOT NULL AUTO_INCREMENT,
  `manu_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manu_img` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`manu_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manufactures`
--

INSERT INTO `manufactures` (`manu_ID`, `manu_name`, `manu_img`) VALUES
(1, 'Apple', 'apple.jpg'),
(2, 'Oppo', 'oppo.png'),
(3, 'Nokia', 'nokia.jpg'),
(4, 'Samsung', 'samsung.jpg'),
(5, 'Xiaomi', 'xiaomi.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `image` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `manu_ID` int(11) NOT NULL,
  `type_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ID`, `name`, `price`, `image`, `description`, `manu_ID`, `type_ID`) VALUES
(2, 'Ipad Air 32GB', 12000000, 'maytinhbangip.png', 'Với kích thước 9.7 inch kết hợp với tấm nền LED backlit LCD độ phân giải 1536 x 2048 pixels iPad 6th vẫn mang lại cho bạn khả năng hiển thị hình ảnh trung thực cùng góc nhìn rộng.', 1, 2),
(3, 'Laptop Apple Macbook Pro\r\n', 40000000, 'laptopip.jpg', 'Là một chiếc máy tính thuộc dòng sản phẩm cao đến từ Apple, Macbook Pro Touch MR9Q2SA được trang bị lớp vỏ nhôm nguyên khối Unibody sang trọng, tinh tế và chắc chắn, bên cạnh đó máy với trọng lượng chỉ 1.37 kg, người dùng có thể mang máy theo sử dụng mọi lúc mọi nơi.', 1, 3),
(4, 'Sạc Dự Phòng Apple', 5000000, 'sacduphongip.jpg', 'Pin sạc dự phòng chính hãng uy tín, chất lượng tốt, an toàn, hiệu suất sạc cao, bảo hành 1 năm 1 đổi 1, mẫu mã đẹp. Giao hàng nhanh miễn phí toàn quốc.', 1, 5),
(5, 'Loa Bluetooth Chính Hãng', 250000, 'loaip.jpg', 'Đảm bảo tính năng NFC (phải có NFC, bluetooth bật) trên thiết bị đã được bật, màn hình mở khóa và đang hoạt động.\r\n\r\n- Đặt thiết bị lên trên loa sao cho vùng dò NFC trên loa và thiết bị (mỗi thiết bị có điểm đặt NFC ở vị trí khác nhau) chạm vào nhau.', 1, 4),
(6, 'Xiaomi Redmi 6A 16GB Chính hãng', 2100000, 'dienthoaixi.jpg', 'Hãng điện thoại Xiaomi mới đây vừa công bố ra mắt chiếc điện thoại Xiaomi Redmi 6A. Đây là chiếc điện thoại di động đầu tiên được trang bị bộ vi xử lý Helio A22 12nm từ MediaTek với hiệu suất vô cùng mạnh mẽ trong phân khúc giá. Người dùng đang cần tìm một chiếc smartphone hiệu suất mạnh mẽ cùng thiết kế đẹp thì Xiaomi Redmi 6A 16GB Chính hãng là lựa chọn vô cùng sáng giá.', 5, 1),
(7, 'Original 13.3 Inch Xiaomi Mi', 2500000, 'laptopxi.jpg', 'Fingerprint unlocking is not only efficient, to help you skip the password input process directly to unlock,it take  about 2 seconds to unlock.  \r\nit is also very safe, not only the fingerprint information has been system-level encryption,  and can identify false fingerprints,\r\neven fake fingerprint paper , it can strictly filter, you do not have to worry about the password was cracked. \r\nSupport different fingerprints into different accounts, your friends share a notebook but do not interfere with each other.', 5, 3),
(8, 'Xiaomi Mipad Xách Tay, Giá Rẻ', 150000, 'maytinhbangxi.jpg', 'Chào các bạn, không giống như mặt trận điện thoại, thị trường tablet Android khá âm thầm và lặng lẽ. Ngoài những thương hiệu của Trung Quốc liên tục cho ra sản phẩm mới thì những hãng lớn như Samsung, LG hay là HTC đều rất dè dặt mỗi lần ra mắt một chiếc máy tính bảng. Và sau hơn một năm thì hôm nay, mình sẽ mở hộp và đánh giá nhanh chiếc máy tính bảng thế hệ thứ hai của Xiaomi, đó là Mi Pad 2', 5, 2),
(9, 'Loa Bluetooth Mi Music Portable', 140000, 'loaxi.jpg', 'Loa Mi Bluetooth cho chất lượng âm thanh vượt trội và hỗ trợ nhiều chế độ phát nhạc. Tương thích với điện thoại thông minh, máy tính bảng, TV, máy tính xách ...', 5, 4),
(10, 'Pin dự phòng xiaomi 10000 mAh', 350000, 'sacduphongxi.jpg', 'Vỏ ngoài của pin được thiết kế với các họa tiết vân sọc nổi, mang lại vẻ đẹp độc đáo tinh tế cho sản phẩm và giúp chống bám vân tay trong quá trình sử dụng. Đèn LED được bố trí trên thân pin làm nhiệm vụ thông báo tình trạng pin với mỗi vạch tương ứng với 25 % mức pin.', 5, 5),
(11, 'Nokia 6.1 (2018) 32GB Chính hãng', 3000000, 'dienthoaino.png', 'Sau sự thành công của điện thoại Nokia 6 đời đầu, Nokia và HMD Global tiếp tục giới thiệu điện thoại Nokia 6.1 (2018) với nhiều nâng cấp giá trị nhằm mang đến trải nghiệm tốt hơn cho người dùng.', 3, 1),
(12, 'Laptop Nokia', 6000000, 'laptopno.jpg', 'Theo lời Nokia, Booklet 3G không phải là netbook, mà đó là 1 chiếc laptop mini. Những hình ảnh dưới đây sẽ cho bạn cái nhìn đầu tiên về model laptop đầu tiên có giá 575 EUR của gã khổng lồ di động Nokia.', 3, 3),
(13, 'Máy Tính Bảng Nokia N1', 1000000, 'maytinhbangno.jpg', 'Nokia N1 - máy tính bảng nguyên hộp chính hãng được nhập bởi didongthongminh.vn,mua nokia n1 giá tốt nhất,trả góp và bảo hành 1 đổi 1 trong 15 ngày.', 3, 2),
(14, 'Loa Bluetooth Nokia', 1400000, 'loano.jpg', 'Loa di động Nokia Play 360° Wireless MD-50W chất lượng chính hãng, nhiều ưu đãi tại CellphoneS.com.vn ✓Giá rẻ ✓1 đổi 1 trong 12 tháng ✓Giao hàng miễn ...', 3, 4),
(15, 'Sạc Dự Phòng Nokia', 200000, 'sacduphongno.jpg', 'Pin sạc dự phòng Nokia 6 giá rẻ, mẫu mã đẹp, chất lượng cao bảo hành 1 năm 1 đổi 1 với nhiều khuyến mãi và giao hàng tận nơi trong 30 phút.', 3, 5),
(16, 'OPPO F9', 2400000, 'dienthoaiop.png', 'OPPO đã mang đến một kiểu màn hình mới trên OPPO F9, đó là màn hình “giọt nước”. Giờ đây phần khuyết trên đỉnh màn hình đã rất bé, đẹp hơn và nhiều diện tích dành cho màn hình hơn so với màn hình “tai thỏ” đang phổ biến hiện nay. Kích thước màn hình OPPO F9 vẫn rất lớn với 6,3 inch, độ phân giải Full HD+ và tỉ lệ rộng 19,5:9,', 2, 1),
(17, 'Laptop Oppe Mới Nhất', 250000, 'laptopop.jpg', 'Pavilion x360 ba080TU có thiết kế đầy trang nhã và tinh tế, máy được làm từ vỏ nhựa nguyên khối có độ dày 19.9 mm và trọng lượng chỉ 1.74 kg cho người dùng dễ dàng di chuyển nhiều nơi. Ngoài ra, bản lề kim loại kèm khớp bánh răng chắc chắn giúp máy cùng khớp xoay 360 độ bền chắc luôn mang đến những tư thế hoàn hảo để làm việc, sáng tạo, duyệt web và giải trí.', 2, 3),
(18, 'Máy Tính Bảng Oppo', 6000000, 'maytinhbangop.jpg', 'Máy có kích thước 8 inch độ phân giải HD 1280 x 800 pixels, mật độ điểm ảnh 240 dpi, thích hợp cho các mục đích đơn giản như xem phim hay đọc báo.', 2, 2),
(19, 'Loa Di Động Oppo', 2500000, 'loaop.jpg', 'Bán Loa Oppo Sonica chính hãng giá tốt trên toàn Quốc, liên hệ 1900 6723 để được tư vấn về sản phẩm. Oppo Sonica sở hữu một thiết kế đẹp, sang trọng, ...', 2, 4),
(20, 'Sạc Dự Phòng Oppo', 250000, 'sacduphongop.jpg', 'Sạc đầy được cho điện thoại và máy tính bảng có dung lượng dưới 6.000 mAh.', 2, 5),
(21, 'Điện thoại Samsung Galaxy A6 (2018)', 6500000, 'dienthoaisa.png', 'Mặt trước là camera \"tự sướng\" và đèn LED trợ sáng 3 cấp độ giúp chụp ảnh selfie trong điều kiện thiếu sáng tốt hơn.\r\nMặt lưng là dãy ăng-ten trên dưới đối xứng hình chữ U và camera chính và cảm biến vân tay được gom chung vào 1 cụm.', 4, 1),
(22, 'Laptop Samsung NT930 Intel Core i7-8550U', 14000000, 'laptopsa.jpg', 'Máy mới lắm, mới 99%, nguyên bản 100% nhé, Hàng luôn sẵn trong kho.Có nhiều cấu hình khác nhau quý khách muốn lấy cấu hình như thế nào vui lòng call Hotline để đặt hàng và nhận báo giá, Nếu model còn hàng new seal quý khách cần lấy hàng new seal call hotline để có báo giá hàng new nguyên seal', 4, 3),
(23, 'Loa SamSung Gía Rẽ', 300000, 'loasa.jpg', 'Loa cong: 2.1 Kênh\r\n\r\nCông suất: 260W\r\n\r\nÂm thanh lan toả đa chiều\r\n\r\nKết nối không dây với Tivi và các thiết bị di động\r\n\r\nĐiều khiển thông minh qua One Remote\r\n\r\nCó thể điều khiển từ xa thông qua Bluetooth', 4, 4),
(24, 'Samsung Galaxy Tab 3', 2500000, 'maytinhbangsa.jpg', 'Trên tay thiết kế kính và kim loại sang trọng từ Galaxy Tab S3 (9.7 inch) kết hợp S Pen cải tiến vượt trội. Thưởng thức mọi chất âm thuần khiết sống động từ hệ thống bốn loa ngoài âm thanh vòm cao cấp AKG', 4, 2),
(25, 'Sạc Dự Phòng Samsung 1000mAh', 450000, 'sacduphongsa.jpg', 'Sạc Nhanh Siêu Tốc Nhân Đôi Sức Mạnh Sạc Nhanh Siêu Tốc; Đa Dạng Thiết Bị Sử Dụng Với Đa Dạng Thiết Bị; Chuẩn Sạc Qi Tương Thích Với Chuẩn Sạc miniusb', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `protypes`
--

DROP TABLE IF EXISTS `protypes`;
CREATE TABLE IF NOT EXISTS `protypes` (
  `type_ID` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`type_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `protypes`
--

INSERT INTO `protypes` (`type_ID`, `type_name`, `type_img`) VALUES
(1, 'Điện Thoại', 'dienthoai.png'),
(2, 'Máy Tính Bảng', 'maytinhbang.png'),
(3, 'Laptop', 'laptop.jpg'),
(4, 'Loa', 'loa.jpg'),
(5, 'Sạc Dự Phòng', 'sacduphong.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_pass` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
