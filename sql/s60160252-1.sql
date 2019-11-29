-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 28, 2019 at 04:19 PM
-- Server version: 5.7.28-0ubuntu0.18.04.4
-- PHP Version: 7.2.24-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `s60160252`
--
CREATE DATABASE s60160252;
USE s60160252;


-- --------------------------------------------------------

--
-- Table structure for table `APPOINTMENT`
--

CREATE TABLE `APPOINTMENT` (
  `APM_ID` char(10) NOT NULL,
  `APM_DATE` date NOT NULL,
  `APM_TIME` time NOT NULL,
  `APM_DETAIL` varchar(100) NOT NULL,
  `APM_DATE_COME` date NOT NULL,
  `EMP_ID` char(10) NOT NULL,
  `CUS_ID` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `APPOINTMENT`
--

INSERT INTO `APPOINTMENT` (`APM_ID`, `APM_DATE`, `APM_TIME`, `APM_DETAIL`, `APM_DATE_COME`, `EMP_ID`, `CUS_ID`) VALUES
('1000', '2019-11-25', '08:00:00', 'ตรวจสอบการเข้างาน', '2019-11-27', '1000', '0001'),
('2000', '2019-11-24', '10:00:00', 'ตรวจสอบการเข้างาน', '2019-11-27', '2000', '0002'),
('3000', '2019-11-23', '12:00:00', 'ตรวจสอบการเข้างาน', '2019-11-27', '3000', '0003'),
('4000', '2019-11-22', '12:30:00', 'ตรวจสอบการเข้างาน', '2019-11-27', '4000', '0004'),
('5000', '2019-11-26', '16:30:00', 'ตรวจสอบการเข้างาน', '2019-11-27', '000', '0005');

-- --------------------------------------------------------

--
-- Table structure for table `BILLCUSTOMER`
--

CREATE TABLE `BILLCUSTOMER` (
  `BC_ID` char(10) NOT NULL,
  `BC_DATE` date NOT NULL,
  `BC_PRICE` decimal(9,2) NOT NULL,
  `BC_TOTAL_PRICE` decimal(9,2) NOT NULL,
  `BC_PAYMENT_DATE` date NOT NULL,
  `BC_PAYMENT_TYPE` varchar(20) NOT NULL,
  `EMP_ID` char(10) DEFAULT NULL,
  `CUS_ID` char(10) DEFAULT NULL,
  `TM_ID` char(10) DEFAULT NULL,
  `SS_ID` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BILLCUSTOMER`
--

INSERT INTO `BILLCUSTOMER` (`BC_ID`, `BC_DATE`, `BC_PRICE`, `BC_TOTAL_PRICE`, `BC_PAYMENT_DATE`, `BC_PAYMENT_TYPE`, `EMP_ID`, `CUS_ID`, `TM_ID`, `SS_ID`) VALUES
('BC00000001', '2019-11-21', '300.00', '500.00', '2019-11-21', 'เงินสด', '2000', '0001', 'Tm0001', NULL),
('BC00000002', '2019-11-22', '500.00', '700.00', '2019-11-22', 'เงินสด', '3000', '0001', 'Tm0002', NULL),
('BC00000003', '2019-11-22', '500.00', '700.00', '2019-11-22', 'เงินสด', '1000', '0002', 'Tm0003', NULL),
('BC00000004', '2019-11-24', '500.00', '500.00', '2019-11-24', 'เงินสด', '000', '0001', 'Tm0004', NULL),
('BC00000005', '2019-11-25', '220.00', '440.00', '2019-11-25', 'เงินสด', '2000', '0002', 'Tm0004', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `BILLEMPLOYEE`
--

CREATE TABLE `BILLEMPLOYEE` (
  `BILLEMP_ID` char(10) NOT NULL,
  `BILLEMP_DATE` date NOT NULL,
  `BILLEMP_PRICE` decimal(9,2) DEFAULT NULL,
  `BILLEMP_PAYMANT_TYPE` varchar(20) NOT NULL,
  `EMP_ID` char(10) DEFAULT NULL,
  `PERIOD_ID` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BILLEMPLOYEE`
--

INSERT INTO `BILLEMPLOYEE` (`BILLEMP_ID`, `BILLEMP_DATE`, `BILLEMP_PRICE`, `BILLEMP_PAYMANT_TYPE`, `EMP_ID`, `PERIOD_ID`) VALUES
('BP00000001', '2019-11-11', '300.00', 'เงินสด', 'EMP000001', NULL),
('BP00000002', '2019-11-12', '49000.00', 'เงินสด', '2000', NULL),
('BP00000003', '2019-10-30', '15000.00', 'เงินสด', '2000', NULL),
('BP00000004', '2019-11-16', '8000.00', 'เงินสด', '1000', NULL),
('BP00000005', '2019-11-27', '10000.00', 'เงินสด', '2000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `BRANCH`
--

CREATE TABLE `BRANCH` (
  `BRAN_ID` char(10) NOT NULL,
  `BRAN_NAME` varchar(40) NOT NULL,
  `BR_ADDRESS` varchar(100) NOT NULL,
  `BR_TEL` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BRANCH`
--

INSERT INTO `BRANCH` (`BRAN_ID`, `BRAN_NAME`, `BR_ADDRESS`, `BR_TEL`) VALUES
('B000000001', 'dentist clinic สาขา บางแสน', ' 47/2 ตำบลแสนสุข อำเภอเมืองชลบุรี\r\nชลบุรี 20130', '0925680832'),
('B000000002', 'dentist clinic สาขา ชลบุรี', '87/4 ตำบล บางปลาสร้อย อำเภอเมืองชลบุรี\r\nชลบุรี 20000', '0973950285'),
('B000000003', 'dentist clinic สาขา พนัสนิคม', '32/32 ถนน สุขประยูร ตำบล บ้านช้าง อำเภอพนัสนิคม ชลบุรี 20140', '0349579385'),
('B000000004', 'dentist clinic สาขา บ้านบึง', '83/8 ตำบล หนองชาก อำเภอบ้านบึง\r\nชลบุรี 20170', '0834859724'),
('B000000005', 'dentist clinic สาขา บางประกง', '71/0 ถนน จรัญยานนท์\r\nตำบล บางวัว อำเภอบางปะกง\r\nฉะเชิงเทรา 24180', '0457287377');

-- --------------------------------------------------------

--
-- Table structure for table `CLAIM`
--

CREATE TABLE `CLAIM` (
  `CLAIM_ID` char(10) NOT NULL,
  `CLAIM_DATE` date NOT NULL,
  `CLAIM_AMOUNT` varchar(100) NOT NULL,
  `EMP_ID` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CLAIM`
--

INSERT INTO `CLAIM` (`CLAIM_ID`, `CLAIM_DATE`, `CLAIM_AMOUNT`, `EMP_ID`) VALUES
('1000', '2019-11-25', 'น้ำยาล้างแผล', '000'),
('2000', '2019-11-25', 'ไหมขัดฟัน', '1000'),
('3000', '2019-11-24', 'เหล็ดดัดฟัน', '2000'),
('4000', '2019-11-21', 'น้ำยาล้างปาก', '3000'),
('5000', '2019-11-15', 'ยาแก้ปวด', '4000');

-- --------------------------------------------------------

--
-- Table structure for table `CUSTOMER`
--

CREATE TABLE `CUSTOMER` (
  `CUS_ID` char(10) NOT NULL,
  `CUS_FNAME` varchar(20) NOT NULL,
  `CUS_LNAME` varchar(20) NOT NULL,
  `CUS_BIRTHDATE` date NOT NULL,
  `CUS_GENDER` char(1) NOT NULL,
  `CUS_TEL` char(10) NOT NULL,
  `CUS_ADDDRESS` varchar(100) NOT NULL,
  `CUS_ID_NUMBER` char(13) NOT NULL,
  `CUS_BLOOD_TYPE` char(1) NOT NULL,
  `CUS_DRUG_ALLERFGIC` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CUSTOMER`
--

INSERT INTO `CUSTOMER` (`CUS_ID`, `CUS_FNAME`, `CUS_LNAME`, `CUS_BIRTHDATE`, `CUS_GENDER`, `CUS_TEL`, `CUS_ADDDRESS`, `CUS_ID_NUMBER`, `CUS_BLOOD_TYPE`, `CUS_DRUG_ALLERFGIC`) VALUES
('0001', 'nattawan', 'pandee', '1981-11-02', 'F', '0989789890', '78   Thesaban 1 Rd. Tambon Sriracha, Amphur Sriracha, Chonburi 20110 Thailand.', '1765458742356', 'O', '-'),
('0002', 'nattakoern', 'nabone', '1981-12-08', 'M', '0983719789', 'Tambon Sriracha, Amphur Sriracha, Chonburi 20110 Thailand.', '1897890789890', 'A', '_'),
('0003', 'pattanee', 'jandee', '1999-09-15', 'M', '0897231090', '89 Tambon Sriracha, Amphur Sriracha, Chonburi 20110 Thailand.', '1298702398721', 'B', '_'),
('0004', 'janaia', 'kornchai', '1981-02-12', 'F', '0982148790', '44 Tambon maung Amphur Sriracha, Chonburi 20110 Thailand.', '138974329872', 'O', ''),
('0005', 'thapanwan', 'acomesiri', '1981-07-12', 'F', '0645633456', '78 Tambon bangsae Amphur Sriracha, Chonburi 20810 Thailand.', '1235674856387', 'O', '-');

-- --------------------------------------------------------

--
-- Table structure for table `DETAILCLAIM`
--

CREATE TABLE `DETAILCLAIM` (
  `DETAILCLAIM_ID` char(10) NOT NULL,
  `DETAILCLAIM_AMOUNT` int(11) NOT NULL,
  `DETAILCLAIM_CAUSE` varchar(100) NOT NULL,
  `PD_ID` char(10) DEFAULT NULL,
  `OR_ID` char(10) DEFAULT NULL,
  `CLAIM_ID` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `DETAILCLAIM`
--

INSERT INTO `DETAILCLAIM` (`DETAILCLAIM_ID`, `DETAILCLAIM_AMOUNT`, `DETAILCLAIM_CAUSE`, `PD_ID`, `OR_ID`, `CLAIM_ID`) VALUES
('Dc00000001', 2, 'สินค้าชำรุด', '1012000000', 'OR00000001', '1000'),
('Dc00000002', 5, 'สินค้าไม่ตรงตามที่ได้รับ', '1014000000', 'OR00000002', '2000'),
('Dc00000003', 1, 'สินค้าไม่ตรงตามที่ได้รับ', '2010000000', 'OR00000003', '3000'),
('Dc00000004', 1, 'ได้รับสินค้าผิดประเภท', '2020000000', 'OR00000004', '4000'),
('Dc00000005', 2, 'สินค้าชำรุด', '2020000000', 'OR00000005', '5000');

-- --------------------------------------------------------

--
-- Table structure for table `DETAILGETCLAIM`
--

CREATE TABLE `DETAILGETCLAIM` (
  `DETAIL_GET_CLAIM_ID` char(10) NOT NULL,
  `DETAIL_GET_CLAIM_AMOUNT` int(11) NOT NULL,
  `PD_ID` char(10) DEFAULT NULL,
  `GET_CLAIM_ID` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `DETAILGETCLAIM`
--

INSERT INTO `DETAILGETCLAIM` (`DETAIL_GET_CLAIM_ID`, `DETAIL_GET_CLAIM_AMOUNT`, `PD_ID`, `GET_CLAIM_ID`) VALUES
('CDG0000001', 2, '1012000000', '1000'),
('CDG0000002', 5, '1014000000', '2000'),
('CDG0000003', 1, '2010000000', '3000'),
('CDG0000004', 1, '2020000000', '4000'),
('CDG0000005', 2, '2020000000', '5000');

-- --------------------------------------------------------

--
-- Table structure for table `DETAILGETPRODUCT`
--

CREATE TABLE `DETAILGETPRODUCT` (
  `DETAIL_GET_PD_ID` char(10) NOT NULL,
  `DETAIL_GET_PD_AMOUNT` int(11) NOT NULL,
  `GET_PD_ID` char(10) DEFAULT NULL,
  `PD_ID` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `DETAILGETPRODUCT`
--

INSERT INTO `DETAILGETPRODUCT` (`DETAIL_GET_PD_ID`, `DETAIL_GET_PD_AMOUNT`, `GET_PD_ID`, `PD_ID`) VALUES
('DGP0000001', 2, '1100000000', '1012000000'),
('DGP0000002', 5, '1120000000', '1014000000'),
('DGP0000003', 1, '1130000000', '2010000000'),
('DGP0000004', 1, '1140000000', '2020000000'),
('DGP0000005', 2, '1150000000', '2020000000');

-- --------------------------------------------------------

--
-- Table structure for table `DETAILLOTMEDICINE`
--

CREATE TABLE `DETAILLOTMEDICINE` (
  `DLM_ID` char(10) NOT NULL,
  `DLM_AMOUNT` int(11) NOT NULL,
  `DLM_EXP` date NOT NULL,
  `DLM_DATE_IN` date NOT NULL,
  `PD_ID` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `DETAILLOTMEDICINE`
--

INSERT INTO `DETAILLOTMEDICINE` (`DLM_ID`, `DLM_AMOUNT`, `DLM_EXP`, `DLM_DATE_IN`, `PD_ID`) VALUES
('1000', 20, '2020-03-27', '2019-11-25', '1012000000'),
('2000', 50, '2020-03-28', '2019-11-25', '1014000000'),
('3000', 60, '2020-07-27', '2019-11-25', '2010000000'),
('4000', 10, '2020-07-27', '2019-11-25', '2020000000'),
('5000', 12, '2020-11-27', '2019-11-24', '2030000000');

-- --------------------------------------------------------

--
-- Table structure for table `DETAILPRODUCTS`
--

CREATE TABLE `DETAILPRODUCTS` (
  `DETAIL_PD_ID` char(10) NOT NULL,
  `DETAIL_PD_AMOUNT` int(11) NOT NULL,
  `DETAIL_PD_PRICE` decimal(9,2) NOT NULL,
  `OR_ID` char(10) DEFAULT NULL,
  `PD_ID` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `DETAILPRODUCTS`
--

INSERT INTO `DETAILPRODUCTS` (`DETAIL_PD_ID`, `DETAIL_PD_AMOUNT`, `DETAIL_PD_PRICE`, `OR_ID`, `PD_ID`) VALUES
('DP00000001', 10, '100.00', 'OR00000001', '1012000000'),
('DP00000002', 8, '80.00', 'OR00000002', '1014000000'),
('DP00000003', 10, '350.00', 'OR00000002', '2010000000'),
('DP00000004', 10, '200.00', 'OR00000002', '2020000000'),
('DP00000005', 10, '350.00', 'OR00000001', '2030000000'),
('DP00000006', 10, '300.00', 'OR00000002', '2040000000'),
('DP00000007', 1, '250.00', 'OR00000003', '2050000000'),
('DP00000008', 12, '495.00', 'OR00000004', '2060000000'),
('DP00000009', 20, '80.00', 'OR00000005', 'PD00000001');

-- --------------------------------------------------------

--
-- Table structure for table `DETAILPROMOTION`
--

CREATE TABLE `DETAILPROMOTION` (
  `DETAIL_PRO_ID` char(10) NOT NULL,
  `DETAIL_PRO_PRICE` decimal(9,2) NOT NULL,
  `PRO_ID` char(10) DEFAULT NULL,
  `PD_ID` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `DETAILPROMOTION`
--

INSERT INTO `DETAILPROMOTION` (`DETAIL_PRO_ID`, `DETAIL_PRO_PRICE`, `PRO_ID`, `PD_ID`) VALUES
('1000', '99.00', 'P000000001', '1012000000'),
('2000', '199.00', 'P000000002', '1014000000'),
('3000', '299.00', 'P000000003', '2010000000'),
('4000', '199.00', 'P000000004', '2020000000'),
('5000', '350.00', 'P000000005', '2030000000');

-- --------------------------------------------------------

--
-- Table structure for table `DETAILTREATMENT`
--

CREATE TABLE `DETAILTREATMENT` (
  `DETAIL_TM_ID` char(10) NOT NULL,
  `DETAIL_TM_AMOUNT` int(11) NOT NULL,
  `DETAIL_TM_PRICE` decimal(9,2) NOT NULL,
  `TM_ID` char(10) DEFAULT NULL,
  `PD_ID` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `DETAILTREATMENT`
--

INSERT INTO `DETAILTREATMENT` (`DETAIL_TM_ID`, `DETAIL_TM_AMOUNT`, `DETAIL_TM_PRICE`, `TM_ID`, `PD_ID`) VALUES
('DTM0000001', 1, '400.00', 'Tm0001', '2030000000'),
('DTM0000002', 4, '1000.00', 'Tm0002', '2050000000'),
('DTM0000003', 3, '200.00', 'Tm0004', '2060000000'),
('DTM0000004', 1, '240.00', 'Tm0003', '2030000000'),
('DTM0000005', 2, '500.00', 'Tm0004', '2040000000');

-- --------------------------------------------------------

--
-- Table structure for table `EMPLOYEE`
--

CREATE TABLE `EMPLOYEE` (
  `EMP_ID` char(10) NOT NULL,
  `EMP_FNAME` varchar(20) NOT NULL,
  `EMP_LNAME` varchar(20) NOT NULL,
  `EMP_TEL` char(10) NOT NULL,
  `EMP_ADDRESS` varchar(100) NOT NULL,
  `EMP_EMAIL` varchar(150) NOT NULL,
  `EMP_BIRTHDATE` date NOT NULL,
  `EMP_SALARY` decimal(9,2) NOT NULL,
  `EMP_SALARY_PER_HOUR` decimal(9,2) DEFAULT NULL,
  `EMP_ID_NUMBER` char(13) NOT NULL,
  `EMP_DATE_WORK_START` date NOT NULL,
  `BR_ID` char(10) DEFAULT NULL,
  `POSITION_ID` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `EMPLOYEE`
--

INSERT INTO `EMPLOYEE` (`EMP_ID`, `EMP_FNAME`, `EMP_LNAME`, `EMP_TEL`, `EMP_ADDRESS`, `EMP_EMAIL`, `EMP_BIRTHDATE`, `EMP_SALARY`, `EMP_SALARY_PER_HOUR`, `EMP_ID_NUMBER`, `EMP_DATE_WORK_START`, `BR_ID`, `POSITION_ID`) VALUES
('000', 'ดำรง', 'จันโอช่า', '0987432109', 'กรงเทพฯ', 'jannn@gmai.com', '1998-05-11', '15000.00', '100.00', '7000000000000', '2019-11-25', 'B000000005', '1801254204'),
('1000', 'อรชพร', 'สมจิตร', '0981123111', 'กรงเทพฯ', 'somj@gmai.com', '1999-10-11', '45000.00', '400.00', '1000000000000', '2019-11-25', 'B000000001', '1801254200'),
('2000', 'ชาติ', 'ดลพร', '0981123111', 'กรงเทพฯ', 'diaaj@gmai.com', '1999-06-14', '60000.00', '400.00', '2000000000000', '2019-11-25', 'B000000002', '1801254201'),
('3000', 'ธิดา', 'ชาวคเวง', '0981198998', 'กรงเทพฯ', 'doij@gmai.com', '1999-02-09', '9000.00', '90.00', '3000000000000', '2019-11-25', 'B000000003', '1801254205'),
('4000', 'พรชัย', 'แพร่มาก', '0989782132', 'กรงเทพฯ', 'hihjj@gmai.com', '1998-10-05', '25000.00', '100.00', '4000000000000', '2019-11-25', 'B000000004', '1801254203'),
('EMP000001', 'บริการ', 'ดีเยี่ยม', '0987542115', 'กรุงเทพฯ', 'ิborikarrn7@gmail.com', '1995-08-09', '9000.00', NULL, '1475849562143', '2018-11-06', 'B000000002', '1801254202');

-- --------------------------------------------------------

--
-- Table structure for table `GETCLAIM`
--

CREATE TABLE `GETCLAIM` (
  `GET_CLAIM_ID` char(10) NOT NULL,
  `GET_CLAIM_DATE` date NOT NULL,
  `GET_CLAIM_AMOUNT` int(11) NOT NULL,
  `EMP_ID` char(10) NOT NULL,
  `CLAIM_ID` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `GETCLAIM`
--

INSERT INTO `GETCLAIM` (`GET_CLAIM_ID`, `GET_CLAIM_DATE`, `GET_CLAIM_AMOUNT`, `EMP_ID`, `CLAIM_ID`) VALUES
('1000', '2019-11-25', 2, '000', '1000'),
('2000', '2019-11-25', 2, '1000', '2000'),
('3000', '2019-11-24', 5, '2000', '3000'),
('4000', '2019-11-21', 3, '3000', '4000'),
('5000', '2019-11-15', 2, '4000', '5000');

-- --------------------------------------------------------

--
-- Table structure for table `GETPRODUCT`
--

CREATE TABLE `GETPRODUCT` (
  `GET_PD_ID` char(10) NOT NULL,
  `GET_PD_DATE` date NOT NULL,
  `GET_PD_AMOUNT` int(11) NOT NULL,
  `EMP_ID` char(10) DEFAULT NULL,
  `OR_ID` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `GETPRODUCT`
--

INSERT INTO `GETPRODUCT` (`GET_PD_ID`, `GET_PD_DATE`, `GET_PD_AMOUNT`, `EMP_ID`, `OR_ID`) VALUES
('1100000000', '2019-11-01', 5, '1000', 'OR00000001'),
('1120000000', '2019-11-08', 8, '2000', 'OR00000002'),
('1130000000', '2019-11-27', 10, '1000', 'OR00000003'),
('1140000000', '2019-11-10', 10, '2000', 'OR00000004'),
('1150000000', '2019-11-16', 10, '1000', 'OR00000005');

-- --------------------------------------------------------

--
-- Table structure for table `ORDEREMPLOYEE`
--

CREATE TABLE `ORDEREMPLOYEE` (
  `OR_ID` char(10) NOT NULL,
  `OR_DATE` date NOT NULL,
  `OR_DATE_GET_ORDER` date NOT NULL,
  `OR_TOTAL` int(11) NOT NULL,
  `OR_TOTAL_PRICE` decimal(8,2) NOT NULL,
  `PERIOD_ID` char(10) DEFAULT NULL,
  `EMP_ID` char(10) NOT NULL,
  `VD_ID` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ORDEREMPLOYEE`
--

INSERT INTO `ORDEREMPLOYEE` (`OR_ID`, `OR_DATE`, `OR_DATE_GET_ORDER`, `OR_TOTAL`, `OR_TOTAL_PRICE`, `PERIOD_ID`, `EMP_ID`, `VD_ID`) VALUES
('OR00000001', '2019-11-20', '2019-11-27', 100, '10000.00', NULL, '2000', '0000000004'),
('OR00000002', '2019-11-06', '2019-11-16', 100, '8000.00', NULL, '3000', '0000000004'),
('OR00000003', '2019-11-01', '2019-11-10', 50, '250.00', NULL, 'EMP000001', '0000000002'),
('OR00000004', '2019-10-20', '2019-10-30', 50, '15000.00', NULL, 'EMP000001', '0000000002'),
('OR00000005', '2019-10-15', '2019-10-25', 100, '49000.00', NULL, '3000', '0000000005');

-- --------------------------------------------------------

--
-- Table structure for table `PERIOD`
--

CREATE TABLE `PERIOD` (
  `PERIOD_ID` char(10) NOT NULL,
  `PERIOD_AROUND` int(11) NOT NULL,
  `PERIOD_DATE` date NOT NULL,
  `PERIOD_PAY` decimal(9,2) NOT NULL,
  `PERIOD_TOTAL_PAY` decimal(9,2) NOT NULL,
  `OR_ID` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PERIOD`
--

INSERT INTO `PERIOD` (`PERIOD_ID`, `PERIOD_AROUND`, `PERIOD_DATE`, `PERIOD_PAY`, `PERIOD_TOTAL_PAY`, `OR_ID`) VALUES
('P00001', 1, '2019-10-01', '8000.00', '0.00', 'OR00000002'),
('P00002', 1, '2019-10-05', '5000.00', '5000.00', 'OR00000001'),
('P00003', 2, '2019-10-12', '5000.00', '0.00', 'OR00000001'),
('P00004', 1, '2019-10-16', '12250.00', '36750.00', 'OR00000005'),
('P00005', 2, '2019-10-30', '12250.00', '24500.00', 'OR00000005'),
('P00006', 3, '2019-11-09', '12250.00', '12250.00', 'OR00000005'),
('P00007', 4, '2019-11-23', '12250.00', '0.00', 'OR00000005');

-- --------------------------------------------------------

--
-- Table structure for table `POSITION`
--

CREATE TABLE `POSITION` (
  `POSITION_ID` char(10) NOT NULL,
  `POSITION_NAME` varchar(20) NOT NULL,
  `POSITION_SALARY` decimal(9,2) NOT NULL,
  `POSITION_AMOUNT_YEAR` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `POSITION`
--

INSERT INTO `POSITION` (`POSITION_ID`, `POSITION_NAME`, `POSITION_SALARY`, `POSITION_AMOUNT_YEAR`) VALUES
('1801254200', 'หมอ', '45000.00', 1),
('1801254201', 'หมอ', '60000.00', 3),
('1801254202', 'พนักงาน', '9000.00', 1),
('1801254203', 'เภสัชกร', '25000.00', 1),
('1801254204', 'ผู้ช่วยหมอ', '15000.00', 1),
('1801254205', 'พนักงาน', '9000.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `PRODUCT`
--

CREATE TABLE `PRODUCT` (
  `PD_ID` char(10) NOT NULL,
  `PD_NAME` varchar(20) NOT NULL,
  `PD_TYPE` varchar(20) NOT NULL,
  `PD_RETAIL_PRICE` decimal(9,2) NOT NULL,
  `PD_SALE_PRICE` decimal(9,2) NOT NULL,
  `PD_AMOUNT` int(11) NOT NULL,
  `PD_DESCRIOTION` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PRODUCT`
--

INSERT INTO `PRODUCT` (`PD_ID`, `PD_NAME`, `PD_TYPE`, `PD_RETAIL_PRICE`, `PD_SALE_PRICE`, `PD_AMOUNT`, `PD_DESCRIOTION`) VALUES
('1012000000', 'น้ำยาบ้วนปาก', 'ยา', '100.00', '50.00', 10, 'เป็นน้ำยาบ้วนปากเพื่อกำจัดเชื้อแบคทีเรีย ทำให้ช่องปากสะอาด'),
('1014000000', 'ไหมขัดฟัน', 'ยา', '80.00', '70.00', 8, 'ไหมขัดฟันที่มีปลายข้างหนึ่งเป็นปลายแข็งเพื่อให้ง่ายต่อการทำความสะอาดซอกฟันในส่วนที่แปรงไม่ถึง'),
('2010000000', 'กระจกพรอมด้ามจับ', 'เวชภัณฑ์', '350.00', '300.00', 10, 'ใช้ส่องภายในช่องปากคนไข้เพื่อให้พื้นที่การทำงาน'),
('2020000000', 'ที่คีบสำลี', 'เวชภัณฑ์', '200.00', '150.00', 10, 'ใช้คีบสำลี'),
('2030000000', 'เครื่องมือหารอยผุ', 'เวชภัณฑ์', '350.00', '300.00', 10, 'ตรวจหารอยฟันผุ สามารถตรวจได้ทั้งฟันและใต้เหงือกเพราะปลาย 2 ด้านแตกต่างกัน'),
('2040000000', 'เครื่องมือแคะรากฟัน', 'เวชภัณฑ์', '300.00', '250.00', 10, 'ใชแคะรากฟัน ในกรณีทรากฟันหัก'),
('2050000000', 'Syringes ยาชา', 'ยา', '250.00', '200.00', 1, 'ทำให้ชาช่วงเวลาที่ถอนฟัน'),
('2060000000', 'เข็มเย็บรูปโค้ง ', 'เวชภัณฑ์ ', '495.00', '475.00', 12, 'ใช้แผลภายในช่องปาก'),
('PD00000001', 'สำลี', 'เวชภัณฑ์', '80.00', '50.00', 20, 'สำลี ตรารถพยาบาล ชนิดก้อน ผลิตจากฝ้ายบริสุทธิ์100% ผ่านกรรมวิธีที่ทันสมัยทำให้สำลีมีความสะอาด เยี่ยม');

-- --------------------------------------------------------

--
-- Table structure for table `PROMOTION`
--

CREATE TABLE `PROMOTION` (
  `PRO_ID` char(10) NOT NULL,
  `PRO_NAME` varchar(100) NOT NULL,
  `PRO_DATE_START` date NOT NULL,
  `PRO_DATE_END` date NOT NULL,
  `EMP_ID` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PROMOTION`
--

INSERT INTO `PROMOTION` (`PRO_ID`, `PRO_NAME`, `PRO_DATE_START`, `PRO_DATE_END`, `EMP_ID`) VALUES
('P000000001', 'ขูดหินปูนวันนี้ฟรีรอบหน้า', '2019-11-25', '2019-12-31', NULL),
('P000000002', 'ซื้อน้ำยาบ้วนปากแถมไหมขัดฟัน', '2019-11-25', '2019-12-31', NULL),
('P000000003', 'ดัดฟันวันนี้ลด20%', '2019-11-25', '2019-12-09', NULL),
('P000000004', 'ซื้อที่คีบสำลีฟรีสำลี', '2019-11-25', '2019-12-25', NULL),
('P000000005', 'ซื้อเครื่องมือหารอยผุแถมฟรี รอยผุ', '2019-11-25', '2019-12-25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SALARY`
--

CREATE TABLE `SALARY` (
  `S_ID` char(10) NOT NULL,
  `S_DATE` date NOT NULL,
  `S_PERIOD` varchar(10) NOT NULL,
  `S_AMOUNT` decimal(9,2) NOT NULL,
  `S_AMOUNT_RECEIVED` decimal(9,2) NOT NULL,
  `EMP_ID` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SALARY`
--

INSERT INTO `SALARY` (`S_ID`, `S_DATE`, `S_PERIOD`, `S_AMOUNT`, `S_AMOUNT_RECEIVED`, `EMP_ID`) VALUES
('1000000000', '2019-11-20', '1', '10000.00', '10000.00', '000'),
('1001000000', '2019-11-20', '1', '10000.00', '10000.00', '1000'),
('1002000000', '2019-11-20', '1', '60000.00', '60000.00', '4000'),
('1003000000', '2019-11-20', '1', '9000.00', '9000.00', '3000'),
('104000000', '2019-11-20', '1', '20000.00', '20000.00', '2000');

-- --------------------------------------------------------

--
-- Table structure for table `SCHEDULE`
--

CREATE TABLE `SCHEDULE` (
  `SCHED_ID` char(10) NOT NULL,
  `SCHED_TIME_START` time NOT NULL,
  `SCHED_TIME_END` time NOT NULL,
  `SCHED_DETAIL` varchar(100) NOT NULL,
  `SCHED_DATE_COME` date NOT NULL,
  `SCHED_DATE_APPOINTMENT` date NOT NULL,
  `SCHED_STATUS` varchar(20) NOT NULL,
  `EMP_ID` char(10) NOT NULL,
  `CUS_ID` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SCHEDULE`
--

INSERT INTO `SCHEDULE` (`SCHED_ID`, `SCHED_TIME_START`, `SCHED_TIME_END`, `SCHED_DETAIL`, `SCHED_DATE_COME`, `SCHED_DATE_APPOINTMENT`, `SCHED_STATUS`, `EMP_ID`, `CUS_ID`) VALUES
('S00001', '08:00:00', '12:00:00', 'ลูกค้าต้องการถอนฟัน', '2019-11-03', '2019-11-03', 'ยังไม่ได้รับการรักษา', '1000', '0001'),
('S00002', '13:30:00', '15:00:00', 'ลูกค้าต้องการขูดหินปูน', '2019-11-02', '2019-11-05', 'ได้รับการรักษาแล้ว', '2000', '0003'),
('S00003', '10:00:00', '12:00:00', 'ลูค้าต้องการอุดฟัน', '2019-11-10', '2019-11-10', 'ได้รับการรักษาแล้ว', '1000', '0004'),
('S00004', '14:30:00', '15:30:00', 'ลูกค้าต้องการฟอกฟัน', '2019-11-12', '2019-11-15', 'ยังไม่ได้รับการักษา', '1000', '0002'),
('S0000ถ', '12:00:00', '16:00:00', 'ลูกค้าต้องการถอนฟัน', '2019-11-20', '2019-11-23', 'ยังไม่ได้รับการรักษา', '1000', '0003');

-- --------------------------------------------------------

--
-- Table structure for table `SOCIALSECURITY`
--

CREATE TABLE `SOCIALSECURITY` (
  `SS_ID` char(10) NOT NULL,
  `SS_LNAME` varchar(100) NOT NULL,
  `SS_FNAME` varchar(100) NOT NULL,
  `SS_IDCARD` char(13) NOT NULL,
  `SS_TEL` char(10) NOT NULL,
  `SS_GENDER` char(1) NOT NULL,
  `SS_BIRTHDATE` date NOT NULL,
  `SS_STATUS` varchar(100) NOT NULL,
  `PD_ID` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SOCIALSECURITY`
--

INSERT INTO `SOCIALSECURITY` (`SS_ID`, `SS_LNAME`, `SS_FNAME`, `SS_IDCARD`, `SS_TEL`, `SS_GENDER`, `SS_BIRTHDATE`, `SS_STATUS`, `PD_ID`) VALUES
('1000', 'nattawan', 'pandee', '1765458742356', '0989789890', 'F', '1981-11-02', 'single', '1012000000'),
('2000', 'nattakoern', 'nabone', '1897890789890', '0983719789', 'M', '1981-12-08', 'sigle', '1014000000'),
('3000', 'pattanee', 'jandee', '1298702398721', '0897231090', 'M', '1999-09-15', 'single', '2010000000'),
('4000', 'janaia', 'kornchai', '138974329872', '0982148790', 'F', '1981-02-12', 'single', '2020000000'),
('5000', 'thapanwan', 'acomesiri', '1235674856387', '0645633456', 'F', '1981-07-12', 'm', '2030000000');

-- --------------------------------------------------------

--
-- Table structure for table `TREATMENTANDDISPENSE`
--

CREATE TABLE `TREATMENTANDDISPENSE` (
  `TM_ID` char(10) NOT NULL,
  `TM_DATE` date NOT NULL,
  `TM_PRICE` decimal(9,2) NOT NULL,
  `EMP_ID` char(10) NOT NULL,
  `CUS_ID` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TREATMENTANDDISPENSE`
--

INSERT INTO `TREATMENTANDDISPENSE` (`TM_ID`, `TM_DATE`, `TM_PRICE`, `EMP_ID`, `CUS_ID`) VALUES
('Tm0001', '2019-11-25', '800.00', '1000', '0001'),
('Tm0002', '2019-11-25', '1200.00', '2000', '0001'),
('Tm0003', '2019-11-24', '300.00', '3000', '0001'),
('Tm0004', '2019-11-24', '500.00', '4000', '0002');

-- --------------------------------------------------------

--
-- Table structure for table `VENDER`
--

CREATE TABLE `VENDER` (
  `VD_ID` char(10) NOT NULL,
  `VD_NAME` varchar(100) NOT NULL,
  `VD_PHONE` char(10) NOT NULL,
  `VD_EMAIL` varchar(50) NOT NULL,
  `VD_ADDRESS` varchar(100) NOT NULL,
  `VD_TYPE` varchar(100) NOT NULL,
  `VD_NAME_CONTACTS` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `VENDER`
--

INSERT INTO `VENDER` (`VD_ID`, `VD_NAME`, `VD_PHONE`, `VD_EMAIL`, `VD_ADDRESS`, `VD_TYPE`, `VD_NAME_CONTACTS`) VALUES
('0000000001', 'บริษัท เอ เอ็น บี ลาบอราตอรี่ (อำนวยเภสัช) จำกัด', '0987546578', 'anb_gmail.com', '98/11 กรุงเทพมหานคร ', 'ยาแผนปัจจุบัน', 'สมพงษ์ พรมอุทิศ'),
('0000000002', 'บริษัท ดวักเซิร์ฟ จำกัด', '0975321453', 'drugserv_gmail.com', '23/45 กรุงเทพมหานคร', 'อุปกรณ์การแพทย์', 'จินตนา รุ่งเรืองกิจ'),
('0000000003', 'บริษัท ทาเคดา (ประเทศไทย) จำกัด', '0987678543', 'takeda.co.th', '11/90 กรุงเทพมหานคร', 'เวชภัณฑ์', 'มงคล รื่นสด'),
('0000000004', 'บริษัท โนโว นอร์ดิสด์ ฟาร์มา (ประเทศไทย) จำกัด', '0945647567', 'novonodiskfama_gmail.com', '114 กรุงเทพมหานคร', 'ยา เวชภัณฑ์', 'พลยุทธ  โสภาค'),
('0000000005', 'บริษัท สยามฟาร์มา มาซูติคอล จำกัด', '0952134546', 'siampham_gmail.com', '112 จตุจักร กรุงเทพมหานคร', 'เวชภัณฑ์', 'พุทธิดา สัมฤทธิ์'),
('0000000006', 'MEYY DENT', '0976785432', 'meyydent_gmail.com', 'กรุงเทพมหานคร', 'เวชภัณฑ์', 'กาญจนา ภิเษก');

-- --------------------------------------------------------

--
-- Table structure for table `WORKOFF`
--

CREATE TABLE `WORKOFF` (
  `WO_ID` char(10) NOT NULL,
  `WO_DATE_START` date NOT NULL,
  `WO_TIME_START` time NOT NULL,
  `WO_DETAIL` varchar(100) NOT NULL,
  `WO_HOUR` int(11) NOT NULL,
  `WO_DATE_END` date NOT NULL,
  `WO_DATE_TIME` time NOT NULL,
  `WO_AMOUNT` int(11) NOT NULL,
  `EMP_ID` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `WORKOFF`
--

INSERT INTO `WORKOFF` (`WO_ID`, `WO_DATE_START`, `WO_TIME_START`, `WO_DETAIL`, `WO_HOUR`, `WO_DATE_END`, `WO_DATE_TIME`, `WO_AMOUNT`, `EMP_ID`) VALUES
('WO001', '2019-11-01', '07:00:00', 'ต่อทะเบียนรถยนต์', 5, '2019-11-01', '12:00:00', 1, '000'),
('WO002', '2019-11-05', '07:00:00', 'ลาป่วย ', 8, '2019-11-05', '16:00:00', 1, '3000'),
('WO003', '2019-11-15', '07:00:00', 'ไปต่างจังหวัด', 16, '2019-11-16', '16:00:00', 1, '2000'),
('WO005', '2019-11-25', '07:00:00', 'มารดาเข้าโรงพยาบาล', 13, '2019-11-26', '07:00:00', 1, '4000');

-- --------------------------------------------------------

--
-- Table structure for table `WORKTABLE`
--

CREATE TABLE `WORKTABLE` (
  `WT_ID` char(10) NOT NULL,
  `WT_DATE` date NOT NULL,
  `WT_TIME_IN` time NOT NULL,
  `WT_TIME_OUT` time NOT NULL,
  `WT_HOUR` time NOT NULL,
  `EMP_ID` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `WORKTABLE`
--

INSERT INTO `WORKTABLE` (`WT_ID`, `WT_DATE`, `WT_TIME_IN`, `WT_TIME_OUT`, `WT_HOUR`, `EMP_ID`) VALUES
('1000', '2019-11-27', '07:00:00', '16:00:00', '07:00:00', '1000'),
('10000', '2019-11-30', '08:00:00', '18:00:00', '07:00:00', '000'),
('2000', '2019-11-27', '07:00:00', '16:00:00', '07:00:00', '2000'),
('3000', '2019-11-27', '08:00:00', '18:00:00', '07:00:00', '3000'),
('4000', '2019-11-27', '08:00:00', '18:00:00', '07:00:00', '4000'),
('5000', '2019-11-27', '08:00:00', '18:00:00', '07:00:00', '000'),
('6000', '2019-11-28', '07:00:00', '16:00:00', '07:00:00', '2000'),
('7000', '2019-11-29', '08:00:00', '18:00:00', '07:00:00', '000'),
('8000', '2019-11-30', '08:00:00', '18:00:00', '07:00:00', '3000'),
('9000', '2019-11-30', '07:00:00', '16:00:00', '07:00:00', '4000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `APPOINTMENT`
--
ALTER TABLE `APPOINTMENT`
  ADD PRIMARY KEY (`APM_ID`),
  ADD UNIQUE KEY `APM_ID` (`APM_ID`),
  ADD KEY `EMP_ID` (`EMP_ID`),
  ADD KEY `CUS_ID` (`CUS_ID`);

--
-- Indexes for table `BILLCUSTOMER`
--
ALTER TABLE `BILLCUSTOMER`
  ADD PRIMARY KEY (`BC_ID`),
  ADD UNIQUE KEY `BC_ID` (`BC_ID`),
  ADD KEY `EMP_ID` (`EMP_ID`),
  ADD KEY `CUS_ID` (`CUS_ID`),
  ADD KEY `TM_ID` (`TM_ID`);

--
-- Indexes for table `BILLEMPLOYEE`
--
ALTER TABLE `BILLEMPLOYEE`
  ADD PRIMARY KEY (`BILLEMP_ID`),
  ADD UNIQUE KEY `BILLEMP_ID` (`BILLEMP_ID`),
  ADD KEY `EMP_ID` (`EMP_ID`),
  ADD KEY `PERIOD_ID` (`PERIOD_ID`);

--
-- Indexes for table `BRANCH`
--
ALTER TABLE `BRANCH`
  ADD PRIMARY KEY (`BRAN_ID`),
  ADD UNIQUE KEY `BRAN_ID` (`BRAN_ID`);

--
-- Indexes for table `CLAIM`
--
ALTER TABLE `CLAIM`
  ADD PRIMARY KEY (`CLAIM_ID`),
  ADD UNIQUE KEY `CLAIM_ID` (`CLAIM_ID`),
  ADD KEY `EMP_ID` (`EMP_ID`);

--
-- Indexes for table `CUSTOMER`
--
ALTER TABLE `CUSTOMER`
  ADD PRIMARY KEY (`CUS_ID`),
  ADD UNIQUE KEY `CUS_ID` (`CUS_ID`);

--
-- Indexes for table `DETAILCLAIM`
--
ALTER TABLE `DETAILCLAIM`
  ADD PRIMARY KEY (`DETAILCLAIM_ID`),
  ADD UNIQUE KEY `DETAILCLAIM_ID` (`DETAILCLAIM_ID`),
  ADD KEY `PD_ID` (`PD_ID`),
  ADD KEY `OR_ID` (`OR_ID`),
  ADD KEY `CLAIM_ID` (`CLAIM_ID`);

--
-- Indexes for table `DETAILGETCLAIM`
--
ALTER TABLE `DETAILGETCLAIM`
  ADD PRIMARY KEY (`DETAIL_GET_CLAIM_ID`),
  ADD UNIQUE KEY `DETAIL_GET_CLAIM_ID` (`DETAIL_GET_CLAIM_ID`),
  ADD KEY `PD_ID` (`PD_ID`),
  ADD KEY `GET_CLAIM_ID` (`GET_CLAIM_ID`);

--
-- Indexes for table `DETAILGETPRODUCT`
--
ALTER TABLE `DETAILGETPRODUCT`
  ADD PRIMARY KEY (`DETAIL_GET_PD_ID`),
  ADD UNIQUE KEY `DETAIL_GET_PD_ID` (`DETAIL_GET_PD_ID`),
  ADD KEY `GET_PD_ID` (`GET_PD_ID`),
  ADD KEY `PD_ID` (`PD_ID`);

--
-- Indexes for table `DETAILLOTMEDICINE`
--
ALTER TABLE `DETAILLOTMEDICINE`
  ADD PRIMARY KEY (`DLM_ID`),
  ADD UNIQUE KEY `DLM_ID` (`DLM_ID`),
  ADD KEY `PD_ID` (`PD_ID`);

--
-- Indexes for table `DETAILPRODUCTS`
--
ALTER TABLE `DETAILPRODUCTS`
  ADD PRIMARY KEY (`DETAIL_PD_ID`),
  ADD UNIQUE KEY `DETAIL_PD_ID` (`DETAIL_PD_ID`),
  ADD KEY `OR_ID` (`OR_ID`),
  ADD KEY `PD_ID` (`PD_ID`);

--
-- Indexes for table `DETAILPROMOTION`
--
ALTER TABLE `DETAILPROMOTION`
  ADD PRIMARY KEY (`DETAIL_PRO_ID`),
  ADD UNIQUE KEY `DETAIL_PRO_ID` (`DETAIL_PRO_ID`),
  ADD KEY `PRO_ID` (`PRO_ID`),
  ADD KEY `PD_ID` (`PD_ID`);

--
-- Indexes for table `DETAILTREATMENT`
--
ALTER TABLE `DETAILTREATMENT`
  ADD PRIMARY KEY (`DETAIL_TM_ID`),
  ADD UNIQUE KEY `DETAIL_TM_ID` (`DETAIL_TM_ID`),
  ADD KEY `TM_ID` (`TM_ID`),
  ADD KEY `PD_ID` (`PD_ID`);

--
-- Indexes for table `EMPLOYEE`
--
ALTER TABLE `EMPLOYEE`
  ADD PRIMARY KEY (`EMP_ID`),
  ADD UNIQUE KEY `EMP_ID` (`EMP_ID`),
  ADD KEY `BR_ID` (`BR_ID`),
  ADD KEY `POSITION_ID` (`POSITION_ID`);

--
-- Indexes for table `GETCLAIM`
--
ALTER TABLE `GETCLAIM`
  ADD PRIMARY KEY (`GET_CLAIM_ID`),
  ADD UNIQUE KEY `GET_CLAIM_ID` (`GET_CLAIM_ID`),
  ADD KEY `EMP_ID` (`EMP_ID`),
  ADD KEY `CLAIM_ID` (`CLAIM_ID`);

--
-- Indexes for table `GETPRODUCT`
--
ALTER TABLE `GETPRODUCT`
  ADD PRIMARY KEY (`GET_PD_ID`),
  ADD UNIQUE KEY `GET_PD_ID` (`GET_PD_ID`),
  ADD KEY `EMP_ID` (`EMP_ID`),
  ADD KEY `OR_ID` (`OR_ID`);

--
-- Indexes for table `ORDEREMPLOYEE`
--
ALTER TABLE `ORDEREMPLOYEE`
  ADD PRIMARY KEY (`OR_ID`),
  ADD KEY `EMP_ID` (`EMP_ID`),
  ADD KEY `VD_ID` (`VD_ID`),
  ADD KEY `PERIOD_ID` (`PERIOD_ID`);

--
-- Indexes for table `PERIOD`
--
ALTER TABLE `PERIOD`
  ADD PRIMARY KEY (`PERIOD_ID`),
  ADD UNIQUE KEY `PERIOD_ID` (`PERIOD_ID`),
  ADD KEY `OR_ID` (`OR_ID`);

--
-- Indexes for table `POSITION`
--
ALTER TABLE `POSITION`
  ADD PRIMARY KEY (`POSITION_ID`),
  ADD UNIQUE KEY `POSITION_ID` (`POSITION_ID`);

--
-- Indexes for table `PRODUCT`
--
ALTER TABLE `PRODUCT`
  ADD PRIMARY KEY (`PD_ID`),
  ADD UNIQUE KEY `PD_ID` (`PD_ID`);

--
-- Indexes for table `PROMOTION`
--
ALTER TABLE `PROMOTION`
  ADD PRIMARY KEY (`PRO_ID`),
  ADD UNIQUE KEY `PRO_ID` (`PRO_ID`),
  ADD KEY `EMP_ID` (`EMP_ID`);

--
-- Indexes for table `SALARY`
--
ALTER TABLE `SALARY`
  ADD PRIMARY KEY (`S_ID`),
  ADD UNIQUE KEY `S_ID` (`S_ID`),
  ADD KEY `EMP_ID` (`EMP_ID`);

--
-- Indexes for table `SCHEDULE`
--
ALTER TABLE `SCHEDULE`
  ADD PRIMARY KEY (`SCHED_ID`),
  ADD UNIQUE KEY `SCHED_ID` (`SCHED_ID`),
  ADD KEY `EMP_ID` (`EMP_ID`),
  ADD KEY `CUS_ID` (`CUS_ID`);

--
-- Indexes for table `SOCIALSECURITY`
--
ALTER TABLE `SOCIALSECURITY`
  ADD PRIMARY KEY (`SS_ID`),
  ADD UNIQUE KEY `SS_ID` (`SS_ID`),
  ADD KEY `PD_ID` (`PD_ID`);

--
-- Indexes for table `TREATMENTANDDISPENSE`
--
ALTER TABLE `TREATMENTANDDISPENSE`
  ADD PRIMARY KEY (`TM_ID`),
  ADD UNIQUE KEY `TM_ID` (`TM_ID`),
  ADD KEY `EMP_ID` (`EMP_ID`),
  ADD KEY `CUS_ID` (`CUS_ID`);

--
-- Indexes for table `VENDER`
--
ALTER TABLE `VENDER`
  ADD PRIMARY KEY (`VD_ID`),
  ADD UNIQUE KEY `VD_ID` (`VD_ID`);

--
-- Indexes for table `WORKOFF`
--
ALTER TABLE `WORKOFF`
  ADD PRIMARY KEY (`WO_ID`),
  ADD UNIQUE KEY `WO_ID` (`WO_ID`),
  ADD KEY `EMP_ID` (`EMP_ID`);

--
-- Indexes for table `WORKTABLE`
--
ALTER TABLE `WORKTABLE`
  ADD PRIMARY KEY (`WT_ID`),
  ADD UNIQUE KEY `WT_ID` (`WT_ID`),
  ADD KEY `EMP_ID` (`EMP_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `APPOINTMENT`
--
ALTER TABLE `APPOINTMENT`
  ADD CONSTRAINT `APPOINTMENT_ibfk_1` FOREIGN KEY (`EMP_ID`) REFERENCES `EMPLOYEE` (`EMP_ID`),
  ADD CONSTRAINT `APPOINTMENT_ibfk_2` FOREIGN KEY (`CUS_ID`) REFERENCES `CUSTOMER` (`CUS_ID`);

--
-- Constraints for table `BILLCUSTOMER`
--
ALTER TABLE `BILLCUSTOMER`
  ADD CONSTRAINT `BILLCUSTOMER_ibfk_1` FOREIGN KEY (`EMP_ID`) REFERENCES `EMPLOYEE` (`EMP_ID`),
  ADD CONSTRAINT `BILLCUSTOMER_ibfk_2` FOREIGN KEY (`CUS_ID`) REFERENCES `CUSTOMER` (`CUS_ID`),
  ADD CONSTRAINT `BILLCUSTOMER_ibfk_3` FOREIGN KEY (`TM_ID`) REFERENCES `TREATMENTANDDISPENSE` (`TM_ID`);

--
-- Constraints for table `BILLEMPLOYEE`
--
ALTER TABLE `BILLEMPLOYEE`
  ADD CONSTRAINT `BILLEMPLOYEE_ibfk_1` FOREIGN KEY (`EMP_ID`) REFERENCES `EMPLOYEE` (`EMP_ID`),
  ADD CONSTRAINT `BILLEMPLOYEE_ibfk_2` FOREIGN KEY (`PERIOD_ID`) REFERENCES `PERIOD` (`PERIOD_ID`);

--
-- Constraints for table `CLAIM`
--
ALTER TABLE `CLAIM`
  ADD CONSTRAINT `CLAIM_ibfk_1` FOREIGN KEY (`EMP_ID`) REFERENCES `EMPLOYEE` (`EMP_ID`);

--
-- Constraints for table `DETAILCLAIM`
--
ALTER TABLE `DETAILCLAIM`
  ADD CONSTRAINT `DETAILCLAIM_ibfk_1` FOREIGN KEY (`PD_ID`) REFERENCES `PRODUCT` (`PD_ID`),
  ADD CONSTRAINT `DETAILCLAIM_ibfk_2` FOREIGN KEY (`OR_ID`) REFERENCES `ORDEREMPLOYEE` (`OR_ID`),
  ADD CONSTRAINT `DETAILCLAIM_ibfk_3` FOREIGN KEY (`CLAIM_ID`) REFERENCES `CLAIM` (`CLAIM_ID`);

--
-- Constraints for table `DETAILGETCLAIM`
--
ALTER TABLE `DETAILGETCLAIM`
  ADD CONSTRAINT `DETAILGETCLAIM_ibfk_1` FOREIGN KEY (`PD_ID`) REFERENCES `PRODUCT` (`PD_ID`),
  ADD CONSTRAINT `DETAILGETCLAIM_ibfk_2` FOREIGN KEY (`GET_CLAIM_ID`) REFERENCES `GETCLAIM` (`GET_CLAIM_ID`);

--
-- Constraints for table `DETAILGETPRODUCT`
--
ALTER TABLE `DETAILGETPRODUCT`
  ADD CONSTRAINT `DETAILGETPRODUCT_ibfk_1` FOREIGN KEY (`GET_PD_ID`) REFERENCES `GETPRODUCT` (`GET_PD_ID`),
  ADD CONSTRAINT `DETAILGETPRODUCT_ibfk_2` FOREIGN KEY (`PD_ID`) REFERENCES `PRODUCT` (`PD_ID`);

--
-- Constraints for table `DETAILLOTMEDICINE`
--
ALTER TABLE `DETAILLOTMEDICINE`
  ADD CONSTRAINT `DETAILLOTMEDICINE_ibfk_1` FOREIGN KEY (`PD_ID`) REFERENCES `PRODUCT` (`PD_ID`);

--
-- Constraints for table `DETAILPRODUCTS`
--
ALTER TABLE `DETAILPRODUCTS`
  ADD CONSTRAINT `DETAILPRODUCTS_ibfk_1` FOREIGN KEY (`OR_ID`) REFERENCES `ORDEREMPLOYEE` (`OR_ID`),
  ADD CONSTRAINT `DETAILPRODUCTS_ibfk_2` FOREIGN KEY (`PD_ID`) REFERENCES `PRODUCT` (`PD_ID`);

--
-- Constraints for table `DETAILPROMOTION`
--
ALTER TABLE `DETAILPROMOTION`
  ADD CONSTRAINT `DETAILPROMOTION_ibfk_1` FOREIGN KEY (`PRO_ID`) REFERENCES `PROMOTION` (`PRO_ID`),
  ADD CONSTRAINT `DETAILPROMOTION_ibfk_2` FOREIGN KEY (`PD_ID`) REFERENCES `PRODUCT` (`PD_ID`);

--
-- Constraints for table `DETAILTREATMENT`
--
ALTER TABLE `DETAILTREATMENT`
  ADD CONSTRAINT `DETAILTREATMENT_ibfk_1` FOREIGN KEY (`TM_ID`) REFERENCES `TREATMENTANDDISPENSE` (`TM_ID`),
  ADD CONSTRAINT `DETAILTREATMENT_ibfk_2` FOREIGN KEY (`PD_ID`) REFERENCES `PRODUCT` (`PD_ID`);

--
-- Constraints for table `EMPLOYEE`
--
ALTER TABLE `EMPLOYEE`
  ADD CONSTRAINT `EMPLOYEE_ibfk_1` FOREIGN KEY (`BR_ID`) REFERENCES `BRANCH` (`BRAN_ID`),
  ADD CONSTRAINT `EMPLOYEE_ibfk_2` FOREIGN KEY (`POSITION_ID`) REFERENCES `POSITION` (`POSITION_ID`);

--
-- Constraints for table `GETCLAIM`
--
ALTER TABLE `GETCLAIM`
  ADD CONSTRAINT `GETCLAIM_ibfk_1` FOREIGN KEY (`EMP_ID`) REFERENCES `EMPLOYEE` (`EMP_ID`),
  ADD CONSTRAINT `GETCLAIM_ibfk_2` FOREIGN KEY (`CLAIM_ID`) REFERENCES `CLAIM` (`CLAIM_ID`);

--
-- Constraints for table `GETPRODUCT`
--
ALTER TABLE `GETPRODUCT`
  ADD CONSTRAINT `GETPRODUCT_ibfk_1` FOREIGN KEY (`EMP_ID`) REFERENCES `EMPLOYEE` (`EMP_ID`),
  ADD CONSTRAINT `GETPRODUCT_ibfk_2` FOREIGN KEY (`OR_ID`) REFERENCES `ORDEREMPLOYEE` (`OR_ID`);

--
-- Constraints for table `ORDEREMPLOYEE`
--
ALTER TABLE `ORDEREMPLOYEE`
  ADD CONSTRAINT `ORDEREMPLOYEE_ibfk_1` FOREIGN KEY (`PERIOD_ID`) REFERENCES `PERIOD` (`PERIOD_ID`),
  ADD CONSTRAINT `ORDEREMPLOYEE_ibfk_2` FOREIGN KEY (`EMP_ID`) REFERENCES `EMPLOYEE` (`EMP_ID`),
  ADD CONSTRAINT `ORDEREMPLOYEE_ibfk_3` FOREIGN KEY (`VD_ID`) REFERENCES `VENDER` (`VD_ID`);

--
-- Constraints for table `PERIOD`
--
ALTER TABLE `PERIOD`
  ADD CONSTRAINT `PERIOD_ibfk_1` FOREIGN KEY (`OR_ID`) REFERENCES `ORDEREMPLOYEE` (`OR_ID`);

--
-- Constraints for table `PROMOTION`
--
ALTER TABLE `PROMOTION`
  ADD CONSTRAINT `PROMOTION_ibfk_1` FOREIGN KEY (`EMP_ID`) REFERENCES `EMPLOYEE` (`EMP_ID`);

--
-- Constraints for table `SALARY`
--
ALTER TABLE `SALARY`
  ADD CONSTRAINT `SALARY_ibfk_1` FOREIGN KEY (`EMP_ID`) REFERENCES `EMPLOYEE` (`EMP_ID`);

--
-- Constraints for table `SCHEDULE`
--
ALTER TABLE `SCHEDULE`
  ADD CONSTRAINT `SCHEDULE_ibfk_1` FOREIGN KEY (`EMP_ID`) REFERENCES `EMPLOYEE` (`EMP_ID`),
  ADD CONSTRAINT `SCHEDULE_ibfk_2` FOREIGN KEY (`CUS_ID`) REFERENCES `CUSTOMER` (`CUS_ID`);

--
-- Constraints for table `SOCIALSECURITY`
--
ALTER TABLE `SOCIALSECURITY`
  ADD CONSTRAINT `SOCIALSECURITY_ibfk_1` FOREIGN KEY (`PD_ID`) REFERENCES `PRODUCT` (`PD_ID`);

--
-- Constraints for table `TREATMENTANDDISPENSE`
--
ALTER TABLE `TREATMENTANDDISPENSE`
  ADD CONSTRAINT `TREATMENTANDDISPENSE_ibfk_1` FOREIGN KEY (`EMP_ID`) REFERENCES `EMPLOYEE` (`EMP_ID`),
  ADD CONSTRAINT `TREATMENTANDDISPENSE_ibfk_2` FOREIGN KEY (`CUS_ID`) REFERENCES `CUSTOMER` (`CUS_ID`);

--
-- Constraints for table `WORKOFF`
--
ALTER TABLE `WORKOFF`
  ADD CONSTRAINT `WORKOFF_ibfk_1` FOREIGN KEY (`EMP_ID`) REFERENCES `EMPLOYEE` (`EMP_ID`);

--
-- Constraints for table `WORKTABLE`
--
ALTER TABLE `WORKTABLE`
  ADD CONSTRAINT `WORKTABLE_ibfk_1` FOREIGN KEY (`EMP_ID`) REFERENCES `EMPLOYEE` (`EMP_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
