-- MySQL dump 10.16  Distrib 10.1.36-MariaDB, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: shopthoitrangdb
-- ------------------------------------------------------
-- Server version	10.1.36-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chitiethoadon`
--

DROP TABLE IF EXISTS `chitiethoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chitiethoadon` (
  `id_hoadon` int(11) NOT NULL AUTO_INCREMENT,
  `id_sanpham` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` decimal(18,8) NOT NULL,
  PRIMARY KEY (`id_hoadon`,`id_sanpham`),
  KEY `FK_chitiethoadon_sanpham` (`id_sanpham`),
  CONSTRAINT `FK_chitiethoadon_hoadon` FOREIGN KEY (`id_hoadon`) REFERENCES `hoadon` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_chitiethoadon_sanpham` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitiethoadon`
--

LOCK TABLES `chitiethoadon` WRITE;
/*!40000 ALTER TABLE `chitiethoadon` DISABLE KEYS */;
INSERT INTO `chitiethoadon` VALUES (18,8,1,499000.00000000),(18,9,1,699000.00000000),(20,7,1,400000.00000000),(21,8,1,499000.00000000),(21,9,1,699000.00000000);
/*!40000 ALTER TABLE `chitiethoadon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hoadon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ngayban` date NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `id_nhanvien` int(11) DEFAULT NULL,
  `tongtien` decimal(18,8) NOT NULL,
  `vat` decimal(18,8) DEFAULT NULL,
  `thanhtien` decimal(18,8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_hoadon_khachhang` (`id_khachhang`),
  KEY `FK_hoadon_nhanvien` (`id_nhanvien`),
  CONSTRAINT `FK_hoadon_khachhang` FOREIGN KEY (`id_khachhang`) REFERENCES `khachhang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_hoadon_nhanvien` FOREIGN KEY (`id_nhanvien`) REFERENCES `nhanvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoadon`
--

LOCK TABLES `hoadon` WRITE;
/*!40000 ALTER TABLE `hoadon` DISABLE KEYS */;
INSERT INTO `hoadon` VALUES (18,'2019-06-30',18,1,1198000.00000000,17970.00000000,1215970.00000000),(19,'2019-06-30',19,1,1198000.00000000,17970.00000000,1215970.00000000),(20,'2019-06-30',20,1,400000.00000000,6000.00000000,406000.00000000),(21,'2019-07-01',21,1,1198000.00000000,17970.00000000,1215970.00000000);
/*!40000 ALTER TABLE `hoadon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `khachhang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(45) NOT NULL,
  `sodienthoai` varchar(45) NOT NULL,
  `diachi` varchar(500) NOT NULL,
  `ghichu` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khachhang`
--

LOCK TABLES `khachhang` WRITE;
/*!40000 ALTER TABLE `khachhang` DISABLE KEYS */;
INSERT INTO `khachhang` VALUES (18,'Nguyễn Thị Uyển Nhi','03','2','2'),(19,'Nguyễn Thị Uyển Nhi','0392','A',''),(20,'Hồ Đăng San','03956053602312312312','Quảng Phước, Quảng Điền',''),(21,'Hồ Đăng San','0395605360','Quảng Phước, Quảng Điền','');
/*!40000 ALTER TABLE `khachhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kieu`
--

DROP TABLE IF EXISTS `kieu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kieu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(45) NOT NULL,
  `id_loai` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_kieu_loai` (`id_loai`),
  CONSTRAINT `FK_kieu_loai` FOREIGN KEY (`id_loai`) REFERENCES `loai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kieu`
--

LOCK TABLES `kieu` WRITE;
/*!40000 ALTER TABLE `kieu` DISABLE KEYS */;
INSERT INTO `kieu` VALUES (1,'Áo',1),(2,'Quần',1),(3,'Đầm',2),(4,'Váy',2),(5,'Áo',2),(6,'Quần',2);
/*!40000 ALTER TABLE `kieu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loai`
--

DROP TABLE IF EXISTS `loai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loai`
--

LOCK TABLES `loai` WRITE;
/*!40000 ALTER TABLE `loai` DISABLE KEYS */;
INSERT INTO `loai` VALUES (1,'Nam'),(2,'Nữ');
/*!40000 ALTER TABLE `loai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nhanvien` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(45) NOT NULL,
  `diachi` varchar(500) NOT NULL,
  `sodienthoai` varchar(45) NOT NULL,
  `gioitinh` varchar(45) NOT NULL,
  `chucvu` varchar(45) NOT NULL,
  `luong` decimal(18,8) NOT NULL,
  `chitieudoanhthu` decimal(18,8) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_nhanvien_user` (`id_user`),
  CONSTRAINT `FK_nhanvien_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien`
--

LOCK TABLES `nhanvien` WRITE;
/*!40000 ALTER TABLE `nhanvien` DISABLE KEYS */;
INSERT INTO `nhanvien` VALUES (1,'Trần Trung Trắc','Cầu Giấy, Hà Nội','0905667884','Nam','Nhân Viên',12000000.00000000,100000000.00000000,1);
/*!40000 ALTER TABLE `nhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhasanxuat`
--

DROP TABLE IF EXISTS `nhasanxuat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nhasanxuat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhasanxuat`
--

LOCK TABLES `nhasanxuat` WRITE;
/*!40000 ALTER TABLE `nhasanxuat` DISABLE KEYS */;
INSERT INTO `nhasanxuat` VALUES (1,'Cty Cp may mặc Huế'),(2,'Cty CP dệt may Huế'),(3,'Cơ sở may Phương Khánh');
/*!40000 ALTER TABLE `nhasanxuat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tensp` varchar(100) NOT NULL,
  `mieuta` varchar(1000) NOT NULL,
  `gia` decimal(18,8) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gianhap` decimal(18,8) NOT NULL,
  `ngaynhap` date NOT NULL,
  `id_loai` int(11) NOT NULL,
  `id_kieu` int(11) NOT NULL,
  `id_nhasanxuat` int(11) NOT NULL,
  `hinhanh` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_sanpham_nhasanxuat` (`id_nhasanxuat`),
  KEY `FK_sanpham_kieu` (`id_kieu`),
  KEY `FK_sanpham_loai` (`id_loai`),
  CONSTRAINT `FK_sanpham_kieu` FOREIGN KEY (`id_kieu`) REFERENCES `kieu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_sanpham_loai` FOREIGN KEY (`id_loai`) REFERENCES `loai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_sanpham_nhasanxuat` FOREIGN KEY (`id_nhasanxuat`) REFERENCES `nhasanxuat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanpham`
--

LOCK TABLES `sanpham` WRITE;
/*!40000 ALTER TABLE `sanpham` DISABLE KEYS */;
INSERT INTO `sanpham` VALUES (1,'Đầm xòe','Đầm đẹp kiểu Hàn Quốc năm 2019',685000.00000000,10,400000.00000000,'2019-01-05',2,3,1,'dam1.jpg'),(2,'Đầm voan','Đầm voan hoa dài tay',485000.00000000,20,300000.00000000,'2019-01-05',2,3,1,'dam2.jpg'),(3,'Áo thun nam có cổ','Áo thun nam có cổ màu xanh da trời',220000.00000000,20,100000.00000000,'2019-02-01',1,1,2,'aonam1.jpg'),(4,'Áo thun nam cổ tròn','Áo thun nam cổ tròn màu trắng',150000.00000000,30,75000.00000000,'2019-02-01',1,1,2,'aonam2.jpg'),(5,'Quần âu nữ','Quần âu đen dáng suông',500000.00000000,20,300000.00000000,'2019-03-05',2,6,3,'quannu1.jpg'),(6,'Quần jean nữ','Quần jean nữ thời trang',500000.00000000,50,300000.00000000,'2019-03-05',2,6,3,'quannu2.jpg'),(7,'Váy công sở','Váy công sở màu đen',400000.00000000,40,200000.00000000,'2019-03-05',2,4,3,'vay.jpg'),(8,'Áo sơ mi nữ','Áo sơ mi nữ kẻ sọc',499000.00000000,30,300000.00000000,'2019-03-05',2,5,3,'aonu.jpg'),(9,'Quần âu nam','Quần âu nam dáng đứng',699000.00000000,50,500000.00000000,'2019-03-02',1,2,2,'quannam1.jpg'),(10,'Quần jean nam','Quần jean nam thời trang',532000.00000000,60,300000.00000000,'2019-03-02',1,2,2,'quannam2.jpg');
/*!40000 ALTER TABLE `sanpham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tendangnhap` varchar(100) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `quyen` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Admin','123456','Admin');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'shopthoitrangdb'
--

--
-- Dumping routines for database 'shopthoitrangdb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-01  8:51:30
