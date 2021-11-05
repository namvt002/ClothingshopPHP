-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2021 at 01:38 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clothingshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_don_hang`
--

CREATE TABLE `chi_tiet_don_hang` (
  `CTDH_MA` int(11) NOT NULL,
  `SP_MA` int(11) NOT NULL,
  `M_MA` int(11) NOT NULL,
  `S_MA` int(11) NOT NULL,
  `DH_MA` int(11) NOT NULL,
  `CTDH_SOLUONG` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_khuyen_mai`
--

CREATE TABLE `chi_tiet_khuyen_mai` (
  `CTKM_MA` int(11) NOT NULL,
  `KM_MA` int(11) NOT NULL,
  `SP_MA` int(11) NOT NULL,
  `CTKM_PHANTRAM` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_phieu_nhap`
--

CREATE TABLE `chi_tiet_phieu_nhap` (
  `CTPN_MA` int(11) NOT NULL,
  `PN_MA` int(11) NOT NULL,
  `M_MA` int(11) NOT NULL,
  `S_MA` int(11) NOT NULL,
  `SP_MA` int(11) NOT NULL,
  `CTPN_SOLONG` int(11) NOT NULL,
  `CTPN_DONGGIA` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_trang_thai`
--

CREATE TABLE `chi_tiet_trang_thai` (
  `CTTT_MA` int(11) NOT NULL,
  `DH_MA` int(11) NOT NULL,
  `TT_MA` int(11) NOT NULL,
  `CTTT_NGAY` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `don_hang`
--

CREATE TABLE `don_hang` (
  `DH_MA` int(11) NOT NULL,
  `DH_TENNGUOINHAN` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `DH_SDTNN` int(11) NOT NULL,
  `DH_NGAYDAT` date NOT NULL,
  `DH_NGAYGIAO` date NOT NULL,
  `DH_TONGTIEN` float NOT NULL,
  `DH_TRANGTHAIHIENHANH` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `HTTT_MA` int(11) NOT NULL,
  `KH_MA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gia`
--

CREATE TABLE `gia` (
  `GIA_MA` int(11) NOT NULL,
  `NGÂYPDUNG` date NOT NULL,
  `SP_MA` int(11) NOT NULL,
  `S_MA` int(11) NOT NULL,
  `GIA_TIEN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hinh_thuc_thanh_toan`
--

CREATE TABLE `hinh_thuc_thanh_toan` (
  `HTTT_MA` int(11) NOT NULL,
  `HTTT_TEN` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hoa_don`
--

CREATE TABLE `hoa_don` (
  `HD_MA` int(11) NOT NULL,
  `NV_MA` int(11) NOT NULL,
  `DH_MA` int(11) NOT NULL,
  `HD_NGAY` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khach_hang`
--

CREATE TABLE `khach_hang` (
  `KH_MA` int(11) NOT NULL,
  `USER_NAME` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `PASSWORD` varchar(128) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `KH_TEN` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `KH_DIACHI` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `KH_SDT` int(11) NOT NULL,
  `KH_EMAIL` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `LEVEL` tinyint(2) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kho_hang`
--

CREATE TABLE `kho_hang` (
  `K_MA` int(11) NOT NULL,
  `K_TEN` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `K_DIACHI` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khuyen_mai`
--

CREATE TABLE `khuyen_mai` (
  `KM_MA` int(11) NOT NULL,
  `KM_TEN` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `KM_NGAYBD` date NOT NULL,
  `KM_NGAYKT` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loai_san_pham`
--

CREATE TABLE `loai_san_pham` (
  `LH_MA` int(11) NOT NULL,
  `LH_TEN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mau`
--

CREATE TABLE `mau` (
  `M_MA` int(11) NOT NULL,
  `M_TEN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ngay`
--

CREATE TABLE `ngay` (
  `NGAYAPDUNG` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nhan_vien`
--

CREATE TABLE `nhan_vien` (
  `NV_MA` int(11) NOT NULL,
  `USER_NAME` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `PASSWORD` varchar(128) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `NV_TEN` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `NV_EMAIL` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `NV_SDT` int(11) NOT NULL,
  `NV_DIACHI` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `LEVEL` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nha_san_xuat`
--

CREATE TABLE `nha_san_xuat` (
  `NSX_MA` int(11) NOT NULL,
  `NSX_TEN` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phieu_nhap_hang`
--

CREATE TABLE `phieu_nhap_hang` (
  `PN_MA` int(11) NOT NULL,
  `PN_TEN` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `PN_NGAY` date NOT NULL,
  `K_MA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `san_pham`
--

CREATE TABLE `san_pham` (
  `SP_MA` int(11) NOT NULL,
  `SP_TEN` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `SP_ANH` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `LH_MA` int(11) NOT NULL,
  `NSX_MA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `S_MA` int(11) NOT NULL,
  `S_TEN` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trang_thai`
--

CREATE TABLE `trang_thai` (
  `TT_MA` int(11) NOT NULL,
  `TT_TEN` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  ADD PRIMARY KEY (`CTDH_MA`),
  ADD KEY `DH_MA` (`DH_MA`),
  ADD KEY `SP_MA` (`SP_MA`),
  ADD KEY `chi_tiet_don_hang_ibfk_2` (`M_MA`),
  ADD KEY `S_MA` (`S_MA`);

--
-- Indexes for table `chi_tiet_khuyen_mai`
--
ALTER TABLE `chi_tiet_khuyen_mai`
  ADD PRIMARY KEY (`CTKM_MA`),
  ADD KEY `KM_MA` (`KM_MA`),
  ADD KEY `SP_MA` (`SP_MA`);

--
-- Indexes for table `chi_tiet_phieu_nhap`
--
ALTER TABLE `chi_tiet_phieu_nhap`
  ADD PRIMARY KEY (`CTPN_MA`),
  ADD KEY `SP_MA` (`SP_MA`),
  ADD KEY `S_MA` (`S_MA`),
  ADD KEY `M_MA` (`M_MA`),
  ADD KEY `PN_MA` (`PN_MA`);

--
-- Indexes for table `chi_tiet_trang_thai`
--
ALTER TABLE `chi_tiet_trang_thai`
  ADD PRIMARY KEY (`CTTT_MA`),
  ADD KEY `DH_MA` (`DH_MA`),
  ADD KEY `TT_MA` (`TT_MA`);

--
-- Indexes for table `don_hang`
--
ALTER TABLE `don_hang`
  ADD PRIMARY KEY (`DH_MA`),
  ADD KEY `HTTT_MA` (`HTTT_MA`),
  ADD KEY `KH_MA` (`KH_MA`);

--
-- Indexes for table `gia`
--
ALTER TABLE `gia`
  ADD PRIMARY KEY (`GIA_MA`),
  ADD KEY `SP_MA` (`SP_MA`),
  ADD KEY `S_MA` (`S_MA`),
  ADD KEY `NGÂYPDUNG` (`NGÂYPDUNG`);

--
-- Indexes for table `hinh_thuc_thanh_toan`
--
ALTER TABLE `hinh_thuc_thanh_toan`
  ADD PRIMARY KEY (`HTTT_MA`);

--
-- Indexes for table `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`HD_MA`),
  ADD KEY `DH_MA` (`DH_MA`),
  ADD KEY `NV_MA` (`NV_MA`);

--
-- Indexes for table `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`KH_MA`);

--
-- Indexes for table `kho_hang`
--
ALTER TABLE `kho_hang`
  ADD PRIMARY KEY (`K_MA`);

--
-- Indexes for table `khuyen_mai`
--
ALTER TABLE `khuyen_mai`
  ADD PRIMARY KEY (`KM_MA`);

--
-- Indexes for table `loai_san_pham`
--
ALTER TABLE `loai_san_pham`
  ADD PRIMARY KEY (`LH_MA`);

--
-- Indexes for table `mau`
--
ALTER TABLE `mau`
  ADD PRIMARY KEY (`M_MA`);

--
-- Indexes for table `ngay`
--
ALTER TABLE `ngay`
  ADD PRIMARY KEY (`NGAYAPDUNG`);

--
-- Indexes for table `nhan_vien`
--
ALTER TABLE `nhan_vien`
  ADD PRIMARY KEY (`NV_MA`);

--
-- Indexes for table `nha_san_xuat`
--
ALTER TABLE `nha_san_xuat`
  ADD PRIMARY KEY (`NSX_MA`);

--
-- Indexes for table `phieu_nhap_hang`
--
ALTER TABLE `phieu_nhap_hang`
  ADD PRIMARY KEY (`PN_MA`),
  ADD KEY `K_MA` (`K_MA`);

--
-- Indexes for table `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`SP_MA`),
  ADD KEY `NSX_MA` (`NSX_MA`),
  ADD KEY `LH_MA` (`LH_MA`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`S_MA`);

--
-- Indexes for table `trang_thai`
--
ALTER TABLE `trang_thai`
  ADD PRIMARY KEY (`TT_MA`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  MODIFY `CTDH_MA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chi_tiet_khuyen_mai`
--
ALTER TABLE `chi_tiet_khuyen_mai`
  MODIFY `CTKM_MA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chi_tiet_phieu_nhap`
--
ALTER TABLE `chi_tiet_phieu_nhap`
  MODIFY `CTPN_MA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chi_tiet_trang_thai`
--
ALTER TABLE `chi_tiet_trang_thai`
  MODIFY `CTTT_MA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `don_hang`
--
ALTER TABLE `don_hang`
  MODIFY `DH_MA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gia`
--
ALTER TABLE `gia`
  MODIFY `GIA_MA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hinh_thuc_thanh_toan`
--
ALTER TABLE `hinh_thuc_thanh_toan`
  MODIFY `HTTT_MA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hoa_don`
--
ALTER TABLE `hoa_don`
  MODIFY `HD_MA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `khach_hang`
--
ALTER TABLE `khach_hang`
  MODIFY `KH_MA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kho_hang`
--
ALTER TABLE `kho_hang`
  MODIFY `K_MA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `khuyen_mai`
--
ALTER TABLE `khuyen_mai`
  MODIFY `KM_MA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loai_san_pham`
--
ALTER TABLE `loai_san_pham`
  MODIFY `LH_MA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mau`
--
ALTER TABLE `mau`
  MODIFY `M_MA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nhan_vien`
--
ALTER TABLE `nhan_vien`
  MODIFY `NV_MA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nha_san_xuat`
--
ALTER TABLE `nha_san_xuat`
  MODIFY `NSX_MA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phieu_nhap_hang`
--
ALTER TABLE `phieu_nhap_hang`
  MODIFY `PN_MA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `SP_MA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `size`
--
ALTER TABLE `size`
  MODIFY `S_MA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trang_thai`
--
ALTER TABLE `trang_thai`
  MODIFY `TT_MA` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  ADD CONSTRAINT `chi_tiet_don_hang_ibfk_1` FOREIGN KEY (`DH_MA`) REFERENCES `don_hang` (`DH_MA`),
  ADD CONSTRAINT `chi_tiet_don_hang_ibfk_2` FOREIGN KEY (`M_MA`) REFERENCES `mau` (`M_MA`),
  ADD CONSTRAINT `chi_tiet_don_hang_ibfk_3` FOREIGN KEY (`SP_MA`) REFERENCES `san_pham` (`SP_MA`),
  ADD CONSTRAINT `chi_tiet_don_hang_ibfk_4` FOREIGN KEY (`S_MA`) REFERENCES `size` (`S_MA`);

--
-- Constraints for table `chi_tiet_khuyen_mai`
--
ALTER TABLE `chi_tiet_khuyen_mai`
  ADD CONSTRAINT `chi_tiet_khuyen_mai_ibfk_1` FOREIGN KEY (`KM_MA`) REFERENCES `khuyen_mai` (`KM_MA`),
  ADD CONSTRAINT `chi_tiet_khuyen_mai_ibfk_2` FOREIGN KEY (`SP_MA`) REFERENCES `san_pham` (`SP_MA`);

--
-- Constraints for table `chi_tiet_phieu_nhap`
--
ALTER TABLE `chi_tiet_phieu_nhap`
  ADD CONSTRAINT `chi_tiet_phieu_nhap_ibfk_1` FOREIGN KEY (`SP_MA`) REFERENCES `san_pham` (`SP_MA`),
  ADD CONSTRAINT `chi_tiet_phieu_nhap_ibfk_2` FOREIGN KEY (`S_MA`) REFERENCES `size` (`S_MA`),
  ADD CONSTRAINT `chi_tiet_phieu_nhap_ibfk_3` FOREIGN KEY (`M_MA`) REFERENCES `mau` (`M_MA`),
  ADD CONSTRAINT `chi_tiet_phieu_nhap_ibfk_4` FOREIGN KEY (`PN_MA`) REFERENCES `phieu_nhap_hang` (`PN_MA`);

--
-- Constraints for table `chi_tiet_trang_thai`
--
ALTER TABLE `chi_tiet_trang_thai`
  ADD CONSTRAINT `chi_tiet_trang_thai_ibfk_1` FOREIGN KEY (`DH_MA`) REFERENCES `don_hang` (`DH_MA`),
  ADD CONSTRAINT `chi_tiet_trang_thai_ibfk_2` FOREIGN KEY (`TT_MA`) REFERENCES `trang_thai` (`TT_MA`);

--
-- Constraints for table `don_hang`
--
ALTER TABLE `don_hang`
  ADD CONSTRAINT `don_hang_ibfk_1` FOREIGN KEY (`HTTT_MA`) REFERENCES `hinh_thuc_thanh_toan` (`HTTT_MA`),
  ADD CONSTRAINT `don_hang_ibfk_2` FOREIGN KEY (`KH_MA`) REFERENCES `khach_hang` (`KH_MA`);

--
-- Constraints for table `gia`
--
ALTER TABLE `gia`
  ADD CONSTRAINT `gia_ibfk_1` FOREIGN KEY (`SP_MA`) REFERENCES `san_pham` (`SP_MA`),
  ADD CONSTRAINT `gia_ibfk_2` FOREIGN KEY (`S_MA`) REFERENCES `size` (`S_MA`),
  ADD CONSTRAINT `gia_ibfk_3` FOREIGN KEY (`NGÂYPDUNG`) REFERENCES `ngay` (`NGAYAPDUNG`);

--
-- Constraints for table `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD CONSTRAINT `hoa_don_ibfk_1` FOREIGN KEY (`DH_MA`) REFERENCES `don_hang` (`DH_MA`),
  ADD CONSTRAINT `hoa_don_ibfk_2` FOREIGN KEY (`NV_MA`) REFERENCES `nhan_vien` (`NV_MA`);

--
-- Constraints for table `phieu_nhap_hang`
--
ALTER TABLE `phieu_nhap_hang`
  ADD CONSTRAINT `phieu_nhap_hang_ibfk_1` FOREIGN KEY (`K_MA`) REFERENCES `kho_hang` (`K_MA`);

--
-- Constraints for table `san_pham`
--
ALTER TABLE `san_pham`
  ADD CONSTRAINT `san_pham_ibfk_1` FOREIGN KEY (`NSX_MA`) REFERENCES `nha_san_xuat` (`NSX_MA`),
  ADD CONSTRAINT `san_pham_ibfk_2` FOREIGN KEY (`LH_MA`) REFERENCES `loai_san_pham` (`LH_MA`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
