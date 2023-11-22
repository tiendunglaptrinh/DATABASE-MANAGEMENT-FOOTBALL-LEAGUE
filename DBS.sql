-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3308
-- Thời gian đã tạo: Th10 22, 2023 lúc 03:58 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `management_football_league`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `assits`
--

CREATE TABLE `assits` (
  `TimeAssit` time NOT NULL,
  `Assit_Player` varchar(6) NOT NULL,
  `Assit_Match` varchar(6) NOT NULL,
  `Assit_HYear` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `assits`
--

INSERT INTO `assits` (`TimeAssit`, `Assit_Player`, `Assit_Match`, `Assit_HYear`) VALUES
('15:45:00', 'C03P05', 'M6', 2022),
('16:15:00', 'J10P08', 'M1', 2022),
('16:20:00', 'I09P06', 'M1', 2022),
('16:25:00', 'H08P10', 'M1', 2022),
('18:20:00', 'B02P06', 'M2', 2022),
('18:25:00', 'A01P07', 'M2', 2022),
('18:25:00', 'G07P06', 'M2', 2022),
('18:30:00', 'F06P10', 'M2', 2022),
('20:25:00', 'J10P08', 'M3', 2022),
('20:30:00', 'I09P06', 'M3', 2022),
('20:35:00', 'H08P10', 'M3', 2022),
('21:25:00', 'G07P06', 'M4', 2022),
('21:30:00', 'F06P10', 'M4', 2022),
('21:35:00', 'E05P07', 'M4', 2022),
('22:25:00', 'C03P05', 'M5', 2022),
('22:25:00', 'E05P07', 'M5', 2022),
('22:30:00', 'D04P09', 'M5', 2022);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `card`
--

CREATE TABLE `card` (
  `TypeCard` char(1) NOT NULL,
  `Time` time NOT NULL,
  `Card_Player` varchar(6) NOT NULL,
  `Card_Match` varchar(6) NOT NULL,
  `Card_HYear` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `card`
--

INSERT INTO `card` (`TypeCard`, `Time`, `Card_Player`, `Card_Match`, `Card_HYear`) VALUES
('R', '15:30:00', 'C03P05', 'M6', 2022),
('R', '16:30:00', 'I09P06', 'M1', 2022),
('R', '18:30:00', 'A01P07', 'M2', 2022),
('R', '18:30:00', 'G07P06', 'M2', 2022),
('R', '20:30:00', 'I09P06', 'M3', 2022),
('R', '21:30:00', 'E05P07', 'M4', 2022),
('R', '21:30:00', 'G07P06', 'M4', 2022),
('R', '22:30:00', 'E05P07', 'M5', 2022),
('Y', '16:30:00', 'H08P10', 'M1', 2022),
('Y', '16:30:00', 'J10P08', 'M1', 2022),
('Y', '18:30:00', 'B02P06', 'M2', 2022),
('Y', '18:30:00', 'F06P10', 'M2', 2022),
('Y', '20:30:00', 'H08P10', 'M3', 2022),
('Y', '20:30:00', 'J10P08', 'M3', 2022),
('Y', '21:30:00', 'F06P10', 'M4', 2022),
('Y', '22:30:00', 'C03P05', 'M5', 2022),
('Y', '22:30:00', 'D04P09', 'M5', 2022);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coach`
--

CREATE TABLE `coach` (
  `CoachCode` varchar(6) NOT NULL,
  `CoachCef` varchar(20) DEFAULT NULL,
  `Experience` int(11) DEFAULT NULL,
  `LeadCode` varchar(10) DEFAULT NULL,
  `C_Team` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `coach`
--

INSERT INTO `coach` (`CoachCode`, `CoachCef`, `Experience`, `LeadCode`, `C_Team`) VALUES
('A01P01', 'UEFA Pro', 5, NULL, 'TeamAlpha'),
('A01P02', 'UEFA B', 3, 'A01P01', 'TeamAlpha'),
('B02P01', 'CONMEBOL Pro', 4, NULL, 'TeamBravo'),
('B02P02', 'CONMEBOL A', 2, 'B02P01', 'TeamBravo'),
('C03P01', 'AFC Pro', 4, NULL, 'TeamCharlie'),
('C03P02', 'AFC A', 2, 'C03P01', 'TeamCharlie'),
('D04P01', 'CAF Pro', 3, NULL, 'TeamDelta'),
('D04P02', 'CAF B', 1, 'D04P01', 'TeamDelta'),
('E05P01', 'AFC Pro', 5, NULL, 'TeamEcho'),
('E05P02', 'AFC A', 3, 'E05P01', 'TeamEcho'),
('F06P01', 'CAF Pro', 4, NULL, 'TeamFoxtrot'),
('F06P02', 'CAF B', 2, 'F06P01', 'TeamFoxtrot'),
('G07P01', 'AFC Pro', 5, NULL, 'TeamGolf'),
('G07P02', 'AFC A', 3, 'G07P01', 'TeamGolf'),
('H08P01', 'UEFA A', 4, NULL, 'TeamHotel'),
('H08P02', 'UEFA B', 2, 'H08P01', 'TeamHotel'),
('I09P01', 'CONMEBOL Pro', 3, NULL, 'TeamIndia'),
('I09P02', 'CONMEBOL A', 1, 'I09P01', 'TeamIndia'),
('J10P01', 'UEFA Pro', 5, NULL, 'TeamJuliet'),
('J10P02', 'UEFA B', 3, 'J10P01', 'TeamJuliet');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gate_stadium`
--

CREATE TABLE `gate_stadium` (
  `GateStadium` int(11) NOT NULL,
  `GS_SCode` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `gate_stadium`
--

INSERT INTO `gate_stadium` (`GateStadium`, `GS_SCode`) VALUES
(1, 'ABC01'),
(1, 'DEF02'),
(1, 'GHI03'),
(1, 'JKL04'),
(1, 'MNO05'),
(1, 'PQR06'),
(1, 'STU07'),
(1, 'VWX08'),
(2, 'ABC01'),
(2, 'DEF02'),
(2, 'GHI03'),
(2, 'JKL04'),
(2, 'MNO05'),
(2, 'PQR06'),
(2, 'STU07'),
(2, 'VWX08'),
(3, 'ABC01'),
(3, 'GHI03'),
(3, 'PQR06'),
(3, 'VWX08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `goals`
--

CREATE TABLE `goals` (
  `TimeGoal` time NOT NULL,
  `Goal_Player` varchar(6) NOT NULL,
  `Goal_Match` varchar(6) NOT NULL,
  `Goal_HYear` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `goals`
--

INSERT INTO `goals` (`TimeGoal`, `Goal_Player`, `Goal_Match`, `Goal_HYear`) VALUES
('15:45:00', 'C03P05', 'M6', 2022),
('16:15:00', 'J10P08', 'M1', 2022),
('16:20:00', 'I09P06', 'M1', 2022),
('16:25:00', 'H08P10', 'M1', 2022),
('18:20:00', 'B02P06', 'M2', 2022),
('18:25:00', 'A01P07', 'M2', 2022),
('18:25:00', 'G07P06', 'M2', 2022),
('18:30:00', 'F06P10', 'M2', 2022),
('20:25:00', 'J10P08', 'M3', 2022),
('20:30:00', 'I09P06', 'M3', 2022),
('20:35:00', 'H08P10', 'M3', 2022),
('21:25:00', 'G07P06', 'M4', 2022),
('21:30:00', 'F06P10', 'M4', 2022),
('21:35:00', 'E05P07', 'M4', 2022),
('22:25:00', 'C03P05', 'M5', 2022),
('22:25:00', 'E05P07', 'M5', 2022),
('22:30:00', 'D04P09', 'M5', 2022);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `include`
--

CREATE TABLE `include` (
  `I_HYearCode` int(11) NOT NULL,
  `I_TeamName` varchar(20) NOT NULL,
  `No_player` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `include`
--

INSERT INTO `include` (`I_HYearCode`, `I_TeamName`, `No_player`) VALUES
(2022, 'TeamAlpha', 25),
(2022, 'TeamBravo', 23),
(2022, 'TeamCharlie', 24),
(2022, 'TeamDelta', 22),
(2022, 'TeamEcho', 26),
(2022, 'TeamFoxtrot', 20),
(2022, 'TeamGolf', 21),
(2022, 'TeamHotel', 19),
(2022, 'TeamIndia', 18),
(2022, 'TeamJuliet', 27);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `is_played`
--

CREATE TABLE `is_played` (
  `is_PlayedCode` varchar(6) NOT NULL,
  `is_MatchCode` varchar(6) NOT NULL,
  `is_YearCode` int(11) NOT NULL,
  `Role` varchar(2) NOT NULL,
  `TimeIn` time NOT NULL,
  `TimeOut` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `is_played`
--

INSERT INTO `is_played` (`is_PlayedCode`, `is_MatchCode`, `is_YearCode`, `Role`, `TimeIn`, `TimeOut`) VALUES
('A01P07', 'M2', 2022, 'MF', '17:00:00', '18:30:00'),
('B02P06', 'M2', 2022, 'PL', '17:00:00', '18:30:00'),
('C03P05', 'M5', 2022, 'DF', '21:00:00', '22:30:00'),
('C03P05', 'M6', 2022, 'DF', '14:00:00', '15:30:00'),
('D04P09', 'M5', 2022, 'PL', '21:00:00', '22:30:00'),
('E05P07', 'M4', 2022, 'MF', '20:00:00', '21:30:00'),
('E05P07', 'M5', 2022, 'MF', '21:00:00', '22:30:00'),
('F06P10', 'M2', 2022, 'DF', '17:00:00', '18:30:00'),
('F06P10', 'M4', 2022, 'DF', '20:00:00', '21:30:00'),
('G07P06', 'M2', 2022, 'PL', '17:00:00', '18:30:00'),
('G07P06', 'M4', 2022, 'PL', '20:00:00', '21:30:00'),
('H08P10', 'M1', 2022, 'MF', '15:00:00', '16:30:00'),
('H08P10', 'M3', 2022, 'MF', '19:00:00', '20:30:00'),
('I09P06', 'M1', 2022, 'DF', '15:00:00', '16:30:00'),
('I09P06', 'M3', 2022, 'DF', '19:00:00', '20:30:00'),
('J10P08', 'M1', 2022, 'PL', '15:00:00', '16:30:00'),
('J10P08', 'M3', 2022, 'PL', '19:00:00', '20:30:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `matches`
--

CREATE TABLE `matches` (
  `MatchCode` varchar(6) NOT NULL,
  `M_HYearCode` int(11) NOT NULL,
  `TimeStart` time NOT NULL,
  `TimeFinish` time NOT NULL,
  `MatchDate` date DEFAULT NULL,
  `M_SCode` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `matches`
--

INSERT INTO `matches` (`MatchCode`, `M_HYearCode`, `TimeStart`, `TimeFinish`, `MatchDate`, `M_SCode`) VALUES
('M1', 2022, '18:00:00', '20:00:00', '2022-06-21', 'ABC01'),
('M10', 2022, '19:00:00', '21:00:00', '2022-06-30', 'DEF02'),
('M11', 2022, '18:00:00', '20:00:00', '2022-07-01', 'GHI03'),
('M12', 2022, '19:00:00', '21:00:00', '2022-07-02', 'GHI03'),
('M13', 2022, '20:00:00', '22:00:00', '2022-07-03', 'GHI03'),
('M14', 2022, '18:00:00', '20:00:00', '2022-07-04', 'GHI03'),
('M15', 2022, '19:00:00', '21:00:00', '2022-07-05', 'GHI03'),
('M16', 2022, '18:00:00', '20:00:00', '2022-07-06', 'JKL04'),
('M17', 2022, '19:00:00', '21:00:00', '2022-07-07', 'JKL04'),
('M18', 2022, '20:00:00', '22:00:00', '2022-07-08', 'JKL04'),
('M19', 2022, '18:00:00', '20:00:00', '2022-07-09', 'JKL04'),
('M2', 2022, '19:00:00', '21:00:00', '2022-06-22', 'ABC01'),
('M20', 2022, '19:00:00', '21:00:00', '2022-07-10', 'MNO05'),
('M21', 2022, '18:00:00', '20:00:00', '2022-07-11', 'MNO05'),
('M22', 2022, '19:00:00', '21:00:00', '2022-07-12', 'MNO05'),
('M23', 2022, '20:00:00', '22:00:00', '2022-07-13', 'PQR06'),
('M24', 2022, '18:00:00', '20:00:00', '2022-07-14', 'PQR06'),
('M25', 2022, '19:00:00', '21:00:00', '2022-07-15', 'STU07'),
('M26', 2022, '20:00:00', '22:00:00', '2022-07-16', 'STU07'),
('M27', 2022, '18:00:00', '20:00:00', '2022-07-17', 'STU07'),
('M28', 2022, '19:00:00', '21:00:00', '2022-07-18', 'STU07'),
('M29', 2022, '20:00:00', '22:00:00', '2022-07-19', 'STU07'),
('M3', 2022, '20:00:00', '22:00:00', '2022-06-23', 'ABC01'),
('M30', 2022, '18:00:00', '20:00:00', '2022-07-20', 'STU07'),
('M31', 2022, '19:00:00', '21:00:00', '2022-07-21', 'MNO05'),
('M32', 2022, '20:00:00', '22:00:00', '2022-07-22', 'MNO05'),
('M33', 2022, '18:00:00', '20:00:00', '2022-07-23', 'MNO05'),
('M34', 2022, '19:00:00', '21:00:00', '2022-07-24', 'MNO05'),
('M35', 2022, '20:00:00', '22:00:00', '2022-07-25', 'MNO05'),
('M36', 2022, '18:00:00', '20:00:00', '2022-07-26', 'PQR06'),
('M37', 2022, '19:00:00', '21:00:00', '2022-07-27', 'PQR06'),
('M38', 2022, '20:00:00', '22:00:00', '2022-07-28', 'PQR06'),
('M39', 2022, '18:00:00', '20:00:00', '2022-07-29', 'PQR06'),
('M4', 2022, '18:00:00', '20:00:00', '2022-06-24', 'ABC01'),
('M40', 2022, '19:00:00', '21:00:00', '2022-07-30', 'PQR06'),
('M41', 2022, '18:00:00', '20:00:00', '2022-07-31', 'STU07'),
('M42', 2022, '19:00:00', '21:00:00', '2022-08-01', 'STU07'),
('M43', 2022, '20:00:00', '22:00:00', '2022-08-02', 'STU07'),
('M44', 2022, '18:00:00', '20:00:00', '2022-08-03', 'STU07'),
('M45', 2022, '19:00:00', '21:00:00', '2022-08-04', 'STU07'),
('M5', 2022, '19:00:00', '21:00:00', '2022-06-25', 'ABC01'),
('M6', 2022, '18:00:00', '20:00:00', '2022-06-26', 'DEF02'),
('M7', 2022, '19:00:00', '21:00:00', '2022-06-27', 'DEF02'),
('M8', 2022, '20:00:00', '22:00:00', '2022-06-28', 'DEF02'),
('M9', 2022, '18:00:00', '20:00:00', '2022-06-29', 'DEF02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nation`
--

CREATE TABLE `nation` (
  `FFCountryCode` varchar(3) NOT NULL,
  `Continent` varchar(20) NOT NULL,
  `Nname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nation`
--

INSERT INTO `nation` (`FFCountryCode`, `Continent`, `Nname`) VALUES
('ARG', 'South America', 'Argentina'),
('AUS', 'Oceania', 'Australia'),
('AUT', 'Europe', 'Austria'),
('BEL', 'Europe', 'Belgium'),
('BGR', 'Europe', 'Bulgaria'),
('BRA', 'South America', 'Brazil'),
('CAN', 'North America', 'Canada'),
('CHL', 'South America', 'Chile'),
('CHN', 'Asia', 'China'),
('COL', 'South America', 'Colombia'),
('CZE', 'Europe', 'Czech Republic'),
('DNK', 'Europe', 'Denmark'),
('EGY', 'Africa', 'Egypt'),
('ESP', 'Europe', 'Spain'),
('FIN', 'Europe', 'Finland'),
('FRA', 'Europe', 'France'),
('GBR', 'Europe', 'United Kingdom'),
('GER', 'Europe', 'Germany'),
('HRV', 'Europe', 'Croatia'),
('HUN', 'Europe', 'Hungary'),
('IDN', 'Asia', 'Indonesia'),
('IND', 'Asia', 'India'),
('IRL', 'Europe', 'Ireland'),
('IRN', 'Asia', 'Iran'),
('ISR', 'Asia', 'Israel'),
('ITA', 'Europe', 'Italy'),
('JPN', 'Asia', 'Japan'),
('KOR', 'Asia', 'South Korea'),
('LKA', 'Asia', 'Sri Lanka'),
('MEX', 'North America', 'Mexico'),
('MNG', 'Asia', 'Mongolia'),
('MYS', 'Asia', 'Malaysia'),
('NGA', 'Africa', 'Nigeria'),
('NGR', 'Africa', 'Ghana'),
('NLD', 'Europe', 'Netherlands'),
('NOR', 'Europe', 'Norway'),
('POL', 'Europe', 'Poland'),
('PRT', 'Europe', 'Portugal'),
('QAT', 'Asia', 'Qutar'),
('RUS', 'Europe', 'Russia'),
('SAU', 'Asia', 'Saudi Arabia'),
('SGP', 'Asia', 'Singapore'),
('SWE', 'Europe', 'Sweden'),
('THA', 'Asia', 'Thailand'),
('TUR', 'Asia', 'Turkey'),
('UKR', 'Europe', 'Ukraine'),
('USA', 'North America', 'United States'),
('VNM', 'Asia', 'Vietnam'),
('ZAF', 'Africa', 'South Africa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `participate_in`
--

CREATE TABLE `participate_in` (
  `P_FFCCode` varchar(3) NOT NULL,
  `P_HYearCode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `participate_in`
--

INSERT INTO `participate_in` (`P_FFCCode`, `P_HYearCode`) VALUES
('ARG', 2022),
('BRA', 2022),
('CHN', 2022),
('FRA', 2022),
('GER', 2022),
('IND', 2022),
('MEX', 2022),
('NGA', 2022),
('RUS', 2022),
('USA', 2022);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `player`
--

CREATE TABLE `player` (
  `PlayerCode` varchar(6) NOT NULL,
  `Status` varchar(15) NOT NULL,
  `Role` varchar(15) NOT NULL,
  `ShirtNum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `player`
--

INSERT INTO `player` (`PlayerCode`, `Status`, `Role`, `ShirtNum`) VALUES
('A01P05', 'Fit', 'Forward', 9),
('A01P06', 'Fit', 'Midfielder', 8),
('A01P07', 'Injured', 'Defender', 5),
('A01P08', 'Fit', 'Goalkeeper', 1),
('A01P09', 'Fit', 'Forward', 11),
('A01P10', 'Fit', 'Midfielder', 7),
('B02P05', 'Fit', 'Forward', 10),
('B02P06', 'Injured', 'Midfielder', 6),
('B02P07', 'Fit', 'Defender', 4),
('B02P08', 'Fit', 'Goalkeeper', 1),
('B02P09', 'Fit', 'Forward', 11),
('B02P10', 'Fit', 'Midfielder', 8),
('C03P05', 'Fit', 'Forward', 9),
('C03P06', 'Fit', 'Midfielder', 8),
('C03P07', 'Injured', 'Defender', 5),
('C03P08', 'Fit', 'Goalkeeper', 1),
('C03P09', 'Fit', 'Forward', 11),
('C03P10', 'Fit', 'Midfielder', 7),
('D04P05', 'Fit', 'Forward', 10),
('D04P06', 'Fit', 'Midfielder', 6),
('D04P07', 'Fit', 'Defender', 4),
('D04P08', 'Fit', 'Goalkeeper', 1),
('D04P09', 'Fit', 'Forward', 11),
('D04P10', 'Fit', 'Midfielder', 8),
('E05P05', 'Fit', 'Forward', 9),
('E05P06', 'Fit', 'Midfielder', 8),
('E05P07', 'Injured', 'Defender', 5),
('E05P08', 'Fit', 'Goalkeeper', 1),
('E05P09', 'Fit', 'Forward', 11),
('E05P10', 'Fit', 'Midfielder', 7),
('F06P05', 'Fit', 'Forward', 10),
('F06P06', 'Fit', 'Midfielder', 6),
('F06P07', 'Fit', 'Defender', 4),
('F06P08', 'Fit', 'Goalkeeper', 1),
('F06P09', 'Fit', 'Forward', 11),
('F06P10', 'Fit', 'Midfielder', 8),
('G07P05', 'Fit', 'Forward', 9),
('G07P06', 'Fit', 'Midfielder', 8),
('G07P07', 'Injured', 'Defender', 5),
('G07P08', 'Fit', 'Goalkeeper', 1),
('G07P09', 'Fit', 'Forward', 11),
('G07P10', 'Fit', 'Midfielder', 7),
('H08P05', 'Fit', 'Forward', 9),
('H08P06', 'Fit', 'Midfielder', 8),
('H08P07', 'Fit', 'Defender', 5),
('H08P08', 'Fit', 'Goalkeeper', 1),
('H08P09', 'Fit', 'Forward', 11),
('H08P10', 'Fit', 'Midfielder', 7),
('I09P05', 'Fit', 'Forward', 10),
('I09P06', 'Fit', 'Midfielder', 6),
('I09P07', 'Fit', 'Defender', 4),
('I09P08', 'Fit', 'Goalkeeper', 1),
('I09P09', 'Fit', 'Forward', 11),
('I09P10', 'Fit', 'Midfielder', 8),
('J10P05', 'Fit', 'Forward', 9),
('J10P06', 'Fit', 'Midfielder', 8),
('J10P07', 'Fit', 'Defender', 5),
('J10P08', 'Fit', 'Goalkeeper', 1),
('J10P09', 'Fit', 'Forward', 11),
('J10P10', 'Fit', 'Midfielder', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `play_in`
--

CREATE TABLE `play_in` (
  `TeamPlay` varchar(20) NOT NULL,
  `MatchPlay` varchar(6) NOT NULL,
  `HYearPlay` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `play_in`
--

INSERT INTO `play_in` (`TeamPlay`, `MatchPlay`, `HYearPlay`) VALUES
('TeamAlpha', 'M1', 2022),
('TeamBravo', 'M5', 2022),
('TeamCharlie', 'M3', 2022),
('TeamDelta', 'M4', 2022),
('TeamEcho', 'M19', 2022),
('TeamFoxtrot', 'M23', 2022),
('TeamGolf', 'M24', 2022),
('TeamHotel', 'M27', 2022),
('TeamIndia', 'M12', 2022),
('TeamJuliet', 'M32', 2022);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `season`
--

CREATE TABLE `season` (
  `HostYearCode` int(11) NOT NULL,
  `OpenDate` date NOT NULL,
  `CloseDate` date NOT NULL,
  `No_Team` int(11) NOT NULL,
  `S_FFCCode` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `season`
--

INSERT INTO `season` (`HostYearCode`, `OpenDate`, `CloseDate`, `No_Team`, `S_FFCCode`) VALUES
(2022, '2022-06-21', '2022-07-15', 10, 'QAT');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `season_team`
--

CREATE TABLE `season_team` (
  `TeamName` varchar(20) NOT NULL,
  `T_FFCCode` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `season_team`
--

INSERT INTO `season_team` (`TeamName`, `T_FFCCode`) VALUES
('TeamHotel', 'ARG'),
('TeamBravo', 'BRA'),
('TeamEcho', 'CHN'),
('TeamDelta', 'FRA'),
('TeamCharlie', 'GER'),
('TeamFoxtrot', 'IND'),
('TeamIndia', 'MEX'),
('TeamGolf', 'NGA'),
('TeamJuliet', 'RUS'),
('TeamAlpha', 'USA');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sponsor`
--

CREATE TABLE `sponsor` (
  `SpsName` varchar(15) NOT NULL,
  `SpsType` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sponsor`
--

INSERT INTO `sponsor` (`SpsName`, `SpsType`) VALUES
('Adidas', 'Sportswear'),
('Apple', 'Technology'),
('Chevrolet', 'Automobile'),
('Coca-Cola', 'Beverages'),
('Ford', 'Automobile'),
('Honda', 'Automobile'),
('IBM', 'Technology'),
('KFC', 'Fast Food'),
('MasterCard', 'Finance'),
('McDonald\'s', 'Fast Food'),
('Microsoft', 'Technology'),
('Nike', 'Sportswear'),
('Panasonic', 'Electronics'),
('Pepsi', 'Beverages'),
('Samsung', 'Technology'),
('Sony', 'Electronics'),
('Toyota', 'Automobile'),
('Visa', 'Finance');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sposor_for`
--

CREATE TABLE `sposor_for` (
  `SF_Name` varchar(15) NOT NULL,
  `SF_Team` varchar(20) NOT NULL,
  `Finance` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sposor_for`
--

INSERT INTO `sposor_for` (`SF_Name`, `SF_Team`, `Finance`) VALUES
('Adidas', 'TeamBravo', 800000.00),
('Apple', 'TeamFoxtrot', 2000000.00),
('Coca-Cola', 'TeamCharlie', 1200000.00),
('Ford', 'TeamHotel', 1100000.00),
('KFC', 'TeamJuliet', 1600000.00),
('McDonald\'s', 'TeamIndia', 1800000.00),
('Nike', 'TeamAlpha', 1000000.00),
('Pepsi', 'TeamDelta', 900000.00),
('Samsung', 'TeamEcho', 1500000.00),
('Toyota', 'TeamGolf', 1300000.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `stadium`
--

CREATE TABLE `stadium` (
  `StadiumCode` varchar(5) NOT NULL,
  `SName` varchar(20) DEFAULT NULL,
  `Address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `stadium`
--

INSERT INTO `stadium` (`StadiumCode`, `SName`, `Address`) VALUES
('ABC01', 'Stadium Alpha', '123 Main Street, City Alpha'),
('DEF02', 'Stadium Bravo', '456 Park Avenue, City Bravo'),
('GHI03', 'Stadium Charlie', '789 Oak Lane, City Charlie'),
('JKL04', 'Stadium Delta', '101 Pine Road, City Delta'),
('MNO05', 'Stadium Echo', '202 Maple Drive, City Echo'),
('PQR06', 'Stadium Foxtrot', '303 Elm Street, City Foxtrot'),
('STU07', 'Stadium Golf', '404 Cedar Lane, City Golf'),
('VWX08', 'Stadium Hotel', '505 Birch Road, City Hotel');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `staff`
--

CREATE TABLE `staff` (
  `StaffCode` varchar(6) NOT NULL,
  `Position` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `staff`
--

INSERT INTO `staff` (`StaffCode`, `Position`) VALUES
('A01P03', 'Physiotherapist'),
('A01P04', 'Analyst'),
('B02P03', 'Fitness Coach'),
('B02P04', 'Team Doctor'),
('C03P03', 'Physiotherapist'),
('C03P04', 'Analyst'),
('D04P03', 'Fitness Coach'),
('D04P04', 'Team Doctor'),
('E05P03', 'Analyst'),
('E05P04', 'Physiotherapist'),
('F06P03', 'Fitness Coach'),
('F06P04', 'Team Doctor'),
('G07P03', 'Physiotherapist'),
('G07P04', 'Analyst'),
('H08P03', 'Fitness Coach'),
('H08P04', 'Team Doctor'),
('I09P03', 'Physiotherapist'),
('I09P04', 'Analyst'),
('J10P07', 'Fitness Coach'),
('J10P08', 'Team Doctor');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `team_member`
--

CREATE TABLE `team_member` (
  `MemberCode` varchar(6) NOT NULL,
  `FName` varchar(15) NOT NULL,
  `Minit` varchar(15) NOT NULL,
  `LName` varchar(15) NOT NULL,
  `Age` int(11) NOT NULL,
  `Gender` char(1) NOT NULL,
  `Nationality` varchar(20) NOT NULL,
  `TM_Team` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `team_member`
--

INSERT INTO `team_member` (`MemberCode`, `FName`, `Minit`, `LName`, `Age`, `Gender`, `Nationality`, `TM_Team`) VALUES
('A01P01', 'John', 'A', 'Doe', 25, 'M', 'USA', 'TeamAlpha'),
('A01P02', 'Jane', 'B', 'Smith', 27, 'F', 'CAN', 'TeamAlpha'),
('A01P03', 'Robert', 'C', 'Johnson', 23, 'M', 'ENG', 'TeamAlpha'),
('A01P04', 'Emily', 'D', 'Anderson', 26, 'F', 'AUS', 'TeamAlpha'),
('A01P05', 'William', 'E', 'Davis', 24, 'M', 'BRA', 'TeamAlpha'),
('A01P06', 'Emma', 'F', 'Garcia', 22, 'F', 'FRA', 'TeamAlpha'),
('A01P07', 'Michael', 'G', 'Brown', 28, 'M', 'GER', 'TeamAlpha'),
('A01P08', 'Sophia', 'H', 'Wilson', 25, 'F', 'ITA', 'TeamAlpha'),
('A01P09', 'James', 'I', 'Martinez', 23, 'M', 'JPN', 'TeamAlpha'),
('A01P10', 'Olivia', 'J', 'Lopez', 27, 'F', 'KOR', 'TeamAlpha'),
('B02P01', 'Daniel', 'A', 'Hernandez', 24, 'M', 'ARG', 'TeamBravo'),
('B02P02', 'Ava', 'B', 'Wang', 26, 'F', 'CHI', 'TeamBravo'),
('B02P03', 'Ethan', 'C', 'Luna', 22, 'M', 'COL', 'TeamBravo'),
('B02P04', 'Mia', 'D', 'Lee', 28, 'F', 'IND', 'TeamBravo'),
('B02P05', 'Noah', 'E', 'Nguyen', 24, 'M', 'JPN', 'TeamBravo'),
('B02P06', 'Isabella', 'F', 'Kim', 23, 'F', 'KOR', 'TeamBravo'),
('B02P07', 'Liam', 'G', 'Singh', 27, 'M', 'USA', 'TeamBravo'),
('B02P08', 'Zoe', 'H', 'Nguyen', 25, 'F', 'VIE', 'TeamBravo'),
('B02P09', 'Alexander', 'I', 'Smith', 23, 'M', 'RUS', 'TeamBravo'),
('B02P10', 'Sophie', 'J', 'Harris', 28, 'F', 'SWE', 'TeamBravo'),
('C03P01', 'William', 'A', 'Brown', 26, 'M', 'AUS', 'TeamCharlie'),
('C03P02', 'Emma', 'B', 'Garcia', 24, 'F', 'BRA', 'TeamCharlie'),
('C03P03', 'James', 'C', 'Martinez', 22, 'M', 'CAN', 'TeamCharlie'),
('C03P04', 'Sophia', 'D', 'Davis', 28, 'F', 'CHI', 'TeamCharlie'),
('C03P05', 'Aiden', 'E', 'Hernandez', 25, 'M', 'COL', 'TeamCharlie'),
('C03P06', 'Luna', 'F', 'Wang', 23, 'F', 'ENG', 'TeamCharlie'),
('C03P07', 'Elijah', 'G', 'Johnson', 27, 'M', 'FRA', 'TeamCharlie'),
('C03P08', 'Olivia', 'H', 'Lopez', 25, 'F', 'GER', 'TeamCharlie'),
('C03P09', 'Liam', 'I', 'Anderson', 23, 'M', 'IND', 'TeamCharlie'),
('C03P10', 'Zoe', 'J', 'Smith', 28, 'F', 'ITA', 'TeamCharlie'),
('D04P01', 'Ethan', 'A', 'Wilson', 24, 'M', 'JPN', 'TeamDelta'),
('D04P02', 'Mia', 'B', 'Lopez', 26, 'F', 'KOR', 'TeamDelta'),
('D04P03', 'Noah', 'C', 'Nguyen', 22, 'M', 'MEX', 'TeamDelta'),
('D04P04', 'Isabella', 'D', 'Harris', 28, 'F', 'NED', 'TeamDelta'),
('D04P05', 'Liam', 'E', 'Wang', 25, 'M', 'POR', 'TeamDelta'),
('D04P06', 'Sophie', 'F', 'Lee', 23, 'F', 'RUS', 'TeamDelta'),
('D04P07', 'Alexander', 'G', 'Singh', 27, 'M', 'SWE', 'TeamDelta'),
('D04P08', 'Zoe', 'H', 'Smith', 25, 'F', 'USA', 'TeamDelta'),
('D04P09', 'Elijah', 'I', 'Garcia', 23, 'M', 'VIE', 'TeamDelta'),
('D04P10', 'Luna', 'J', 'Anderson', 28, 'F', 'ARG', 'TeamDelta'),
('E05P01', 'Aiden', 'A', 'Nguyen', 25, 'M', 'BRA', 'TeamEcho'),
('E05P02', 'Zoe', 'B', 'Hernandez', 28, 'F', 'CAN', 'TeamEcho'),
('E05P03', 'Sophie', 'C', 'Wang', 23, 'F', 'COL', 'TeamEcho'),
('E05P04', 'Alexander', 'D', 'Singh', 24, 'M', 'ENG', 'TeamEcho'),
('E05P05', 'Luna', 'E', 'Lopez', 26, 'F', 'FRA', 'TeamEcho'),
('E05P06', 'Elijah', 'F', 'Smith', 22, 'M', 'GER', 'TeamEcho'),
('E05P07', 'Olivia', 'G', 'Johnson', 27, 'F', 'IND', 'TeamEcho'),
('E05P08', 'Liam', 'H', 'Martinez', 25, 'M', 'ITA', 'TeamEcho'),
('E05P09', 'William', 'I', 'Brown', 23, 'M', 'JPN', 'TeamEcho'),
('E05P10', 'Emma', 'J', 'Davis', 24, 'F', 'KOR', 'TeamEcho'),
('F06P01', 'Ava', 'A', 'Garcia', 26, 'F', 'MEX', 'TeamFoxtrot'),
('F06P02', 'Liam', 'B', 'Wang', 24, 'M', 'NED', 'TeamFoxtrot'),
('F06P03', 'Noah', 'C', 'Brown', 28, 'M', 'POR', 'TeamFoxtrot'),
('F06P04', 'Sophia', 'D', 'Lopez', 22, 'F', 'RUS', 'TeamFoxtrot'),
('F06P05', 'Ethan', 'E', 'Hernandez', 25, 'M', 'SWE', 'TeamFoxtrot'),
('F06P06', 'Mia', 'F', 'Johnson', 23, 'F', 'USA', 'TeamFoxtrot'),
('F06P07', 'Olivia', 'G', 'Martinez', 27, 'F', 'VIE', 'TeamFoxtrot'),
('F06P08', 'Zoe', 'H', 'Smith', 24, 'F', 'ARG', 'TeamFoxtrot'),
('F06P09', 'Alexander', 'I', 'Singh', 28, 'M', 'BRA', 'TeamFoxtrot'),
('F06P10', 'Luna', 'J', 'Nguyen', 22, 'F', 'CHI', 'TeamFoxtrot'),
('G07P01', 'Sophie', 'A', 'Wang', 23, 'F', 'COL', 'TeamGolf'),
('G07P02', 'Ethan', 'B', 'Lee', 27, 'M', 'ENG', 'TeamGolf'),
('G07P03', 'Isabella', 'C', 'Anderson', 25, 'F', 'FRA', 'TeamGolf'),
('G07P04', 'Aiden', 'D', 'Brown', 23, 'M', 'GER', 'TeamGolf'),
('G07P05', 'Mia', 'E', 'Garcia', 28, 'F', 'IND', 'TeamGolf'),
('G07P06', 'Noah', 'F', 'Hernandez', 24, 'M', 'ITA', 'TeamGolf'),
('G07P07', 'Zoe', 'G', 'Johnson', 22, 'F', 'JPN', 'TeamGolf'),
('G07P08', 'Liam', 'H', 'Lopez', 27, 'M', 'KOR', 'TeamGolf'),
('G07P09', 'Olivia', 'I', 'Smith', 25, 'F', 'MEX', 'TeamGolf'),
('G07P10', 'Luna', 'J', 'Nguyen', 23, 'F', 'NED', 'TeamGolf'),
('H08P01', 'Elijah', 'K', 'Smith', 26, 'M', 'RUS', 'TeamHotel'),
('H08P02', 'Olivia', 'L', 'Garcia', 23, 'F', 'SWE', 'TeamHotel'),
('H08P03', 'Aiden', 'M', 'Brown', 28, 'M', 'USA', 'TeamHotel'),
('H08P04', 'Zoe', 'N', 'Martinez', 25, 'F', 'VIE', 'TeamHotel'),
('H08P05', 'Sophie', 'O', 'Anderson', 23, 'F', 'ARG', 'TeamHotel'),
('H08P06', 'Ethan', 'P', 'Lopez', 27, 'M', 'COL', 'TeamHotel'),
('H08P07', 'Isabella', 'Q', 'Wang', 25, 'F', 'ENG', 'TeamHotel'),
('H08P08', 'Ava', 'R', 'Hernandez', 23, 'F', 'FRA', 'TeamHotel'),
('H08P09', 'Noah', 'S', 'Johnson', 28, 'M', 'GER', 'TeamHotel'),
('H08P10', 'Liam', 'T', 'Nguyen', 22, 'M', 'IND', 'TeamHotel'),
('I09P01', 'Emma', 'K', 'Harris', 24, 'F', 'ITA', 'TeamIndia'),
('I09P02', 'Michael', 'L', 'Singh', 26, 'M', 'JPN', 'TeamIndia'),
('I09P03', 'Ava', 'M', 'Wang', 22, 'F', 'KOR', 'TeamIndia'),
('I09P04', 'Luna', 'N', 'Lee', 28, 'F', 'MEX', 'TeamIndia'),
('I09P05', 'Noah', 'O', 'Lopez', 24, 'M', 'NED', 'TeamIndia'),
('I09P06', 'Sophia', 'P', 'Anderson', 23, 'F', 'POR', 'TeamIndia'),
('I09P07', 'Elijah', 'Q', 'Smith', 27, 'M', 'RUS', 'TeamIndia'),
('I09P08', 'Olivia', 'R', 'Garcia', 25, 'F', 'SWE', 'TeamIndia'),
('I09P09', 'Liam', 'S', 'Brown', 23, 'M', 'USA', 'TeamIndia'),
('I09P10', 'Zoe', 'T', 'Martinez', 28, 'F', 'VIE', 'TeamIndia'),
('J10P01', 'Alexander', 'K', 'Hernandez', 25, 'M', 'BRA', 'TeamJuliet'),
('J10P02', 'Luna', 'L', 'Wang', 28, 'F', 'CHI', 'TeamJuliet'),
('J10P03', 'Noah', 'M', 'Brown', 23, 'M', 'COL', 'TeamJuliet'),
('J10P04', 'Sophie', 'N', 'Garcia', 24, 'F', 'ENG', 'TeamJuliet'),
('J10P05', 'Ethan', 'O', 'Johnson', 26, 'M', 'FRA', 'TeamJuliet'),
('J10P06', 'Isabella', 'P', 'Anderson', 22, 'F', 'GER', 'TeamJuliet'),
('J10P07', 'Aiden', 'Q', 'Lopez', 27, 'M', 'IND', 'TeamJuliet'),
('J10P08', 'Zoe', 'R', 'Martinez', 25, 'F', 'ITA', 'TeamJuliet'),
('J10P09', 'Olivia', 'S', 'Smith', 23, 'F', 'JPN', 'TeamJuliet'),
('J10P10', 'Liam', 'T', 'Nguyen', 28, 'M', 'KOR', 'TeamJuliet');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `assits`
--
ALTER TABLE `assits`
  ADD PRIMARY KEY (`TimeAssit`,`Assit_Player`,`Assit_Match`,`Assit_HYear`),
  ADD KEY `FK_ASSIT_RELATED` (`Assit_Player`,`Assit_Match`,`Assit_HYear`);

--
-- Chỉ mục cho bảng `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`TypeCard`,`Time`,`Card_Player`,`Card_Match`,`Card_HYear`),
  ADD KEY `FK_CARD_RELATED` (`Card_Player`,`Card_Match`,`Card_HYear`);

--
-- Chỉ mục cho bảng `coach`
--
ALTER TABLE `coach`
  ADD PRIMARY KEY (`CoachCode`),
  ADD KEY `FK_SUPER_COACH` (`LeadCode`),
  ADD KEY `FK_COACH_IN_TEAM` (`C_Team`);

--
-- Chỉ mục cho bảng `gate_stadium`
--
ALTER TABLE `gate_stadium`
  ADD PRIMARY KEY (`GateStadium`,`GS_SCode`),
  ADD KEY `FK_GATE_STADIUM` (`GS_SCode`);

--
-- Chỉ mục cho bảng `goals`
--
ALTER TABLE `goals`
  ADD PRIMARY KEY (`TimeGoal`,`Goal_Player`,`Goal_Match`,`Goal_HYear`),
  ADD KEY `FK_GOAL_RELATED` (`Goal_Player`,`Goal_Match`,`Goal_HYear`);

--
-- Chỉ mục cho bảng `include`
--
ALTER TABLE `include`
  ADD PRIMARY KEY (`I_HYearCode`,`I_TeamName`),
  ADD KEY `FK_INCLUDE_TEAM` (`I_TeamName`);

--
-- Chỉ mục cho bảng `is_played`
--
ALTER TABLE `is_played`
  ADD PRIMARY KEY (`is_PlayedCode`,`is_MatchCode`,`is_YearCode`),
  ADD KEY `FK_PLAYED_RELATED` (`is_MatchCode`,`is_YearCode`);

--
-- Chỉ mục cho bảng `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`MatchCode`,`M_HYearCode`),
  ADD KEY `FK_MATCH_YEAR` (`M_HYearCode`),
  ADD KEY `FK_MATCH_STADIUM` (`M_SCode`);

--
-- Chỉ mục cho bảng `nation`
--
ALTER TABLE `nation`
  ADD PRIMARY KEY (`FFCountryCode`),
  ADD UNIQUE KEY `Nname` (`Nname`);

--
-- Chỉ mục cho bảng `participate_in`
--
ALTER TABLE `participate_in`
  ADD PRIMARY KEY (`P_FFCCode`,`P_HYearCode`),
  ADD KEY `FK_YEAR_PARTICIPATE` (`P_HYearCode`);

--
-- Chỉ mục cho bảng `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`PlayerCode`);

--
-- Chỉ mục cho bảng `play_in`
--
ALTER TABLE `play_in`
  ADD PRIMARY KEY (`TeamPlay`,`MatchPlay`,`HYearPlay`),
  ADD KEY `FK_PLAY_RELATED` (`MatchPlay`,`HYearPlay`);

--
-- Chỉ mục cho bảng `season`
--
ALTER TABLE `season`
  ADD PRIMARY KEY (`HostYearCode`),
  ADD KEY `FK_NATION_SEASON` (`S_FFCCode`);

--
-- Chỉ mục cho bảng `season_team`
--
ALTER TABLE `season_team`
  ADD PRIMARY KEY (`TeamName`),
  ADD KEY `FK_TEAM_NATION` (`T_FFCCode`);

--
-- Chỉ mục cho bảng `sponsor`
--
ALTER TABLE `sponsor`
  ADD PRIMARY KEY (`SpsName`);

--
-- Chỉ mục cho bảng `sposor_for`
--
ALTER TABLE `sposor_for`
  ADD PRIMARY KEY (`SF_Name`,`SF_Team`),
  ADD KEY `FK_SPONFOR_TEAM` (`SF_Team`);

--
-- Chỉ mục cho bảng `stadium`
--
ALTER TABLE `stadium`
  ADD PRIMARY KEY (`StadiumCode`),
  ADD UNIQUE KEY `SName` (`SName`);

--
-- Chỉ mục cho bảng `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`StaffCode`);

--
-- Chỉ mục cho bảng `team_member`
--
ALTER TABLE `team_member`
  ADD PRIMARY KEY (`MemberCode`),
  ADD KEY `FK_TEAM_IN_SEASON` (`TM_Team`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `assits`
--
ALTER TABLE `assits`
  ADD CONSTRAINT `FK_ASSIT_RELATED` FOREIGN KEY (`Assit_Player`,`Assit_Match`,`Assit_HYear`) REFERENCES `is_played` (`is_PlayedCode`, `is_MatchCode`, `is_YearCode`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `card`
--
ALTER TABLE `card`
  ADD CONSTRAINT `FK_CARD_RELATED` FOREIGN KEY (`Card_Player`,`Card_Match`,`Card_HYear`) REFERENCES `is_played` (`is_PlayedCode`, `is_MatchCode`, `is_YearCode`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `coach`
--
ALTER TABLE `coach`
  ADD CONSTRAINT `FK_COACH_IN_TEAM` FOREIGN KEY (`C_Team`) REFERENCES `season_team` (`TeamName`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_CODE_COACH_TEAM` FOREIGN KEY (`CoachCode`) REFERENCES `team_member` (`MemberCode`),
  ADD CONSTRAINT `FK_SUPER_COACH` FOREIGN KEY (`LeadCode`) REFERENCES `coach` (`CoachCode`);

--
-- Các ràng buộc cho bảng `gate_stadium`
--
ALTER TABLE `gate_stadium`
  ADD CONSTRAINT `FK_GATE_STADIUM` FOREIGN KEY (`GS_SCode`) REFERENCES `stadium` (`StadiumCode`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `goals`
--
ALTER TABLE `goals`
  ADD CONSTRAINT `FK_GOAL_RELATED` FOREIGN KEY (`Goal_Player`,`Goal_Match`,`Goal_HYear`) REFERENCES `is_played` (`is_PlayedCode`, `is_MatchCode`, `is_YearCode`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `include`
--
ALTER TABLE `include`
  ADD CONSTRAINT `FK_INCLUDE_TEAM` FOREIGN KEY (`I_TeamName`) REFERENCES `season_team` (`TeamName`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_INCLUDE_TEAM_YEAR` FOREIGN KEY (`I_HYearCode`) REFERENCES `season` (`HostYearCode`);

--
-- Các ràng buộc cho bảng `is_played`
--
ALTER TABLE `is_played`
  ADD CONSTRAINT `FK_PLAYED_RELATED` FOREIGN KEY (`is_MatchCode`,`is_YearCode`) REFERENCES `matches` (`MatchCode`, `M_HYearCode`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_PLAYER_PLAY` FOREIGN KEY (`is_PlayedCode`) REFERENCES `player` (`PlayerCode`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `matches`
--
ALTER TABLE `matches`
  ADD CONSTRAINT `FK_MATCH_STADIUM` FOREIGN KEY (`M_SCode`) REFERENCES `stadium` (`StadiumCode`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_MATCH_YEAR` FOREIGN KEY (`M_HYearCode`) REFERENCES `season` (`HostYearCode`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `participate_in`
--
ALTER TABLE `participate_in`
  ADD CONSTRAINT `FK_NATION_PARTICIPATE` FOREIGN KEY (`P_FFCCode`) REFERENCES `nation` (`FFCountryCode`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_YEAR_PARTICIPATE` FOREIGN KEY (`P_HYearCode`) REFERENCES `season` (`HostYearCode`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `player`
--
ALTER TABLE `player`
  ADD CONSTRAINT `FK_CODE_PLAYER_TEAM` FOREIGN KEY (`PlayerCode`) REFERENCES `team_member` (`MemberCode`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `play_in`
--
ALTER TABLE `play_in`
  ADD CONSTRAINT `FK_PLAY_RELATED` FOREIGN KEY (`MatchPlay`,`HYearPlay`) REFERENCES `matches` (`MatchCode`, `M_HYearCode`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_TEAM_PLAY` FOREIGN KEY (`TeamPlay`) REFERENCES `season_team` (`TeamName`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `season`
--
ALTER TABLE `season`
  ADD CONSTRAINT `FK_NATION_SEASON` FOREIGN KEY (`S_FFCCode`) REFERENCES `nation` (`FFCountryCode`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `season_team`
--
ALTER TABLE `season_team`
  ADD CONSTRAINT `FK_TEAM_NATION` FOREIGN KEY (`T_FFCCode`) REFERENCES `nation` (`FFCountryCode`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `sposor_for`
--
ALTER TABLE `sposor_for`
  ADD CONSTRAINT `FK_SPONFOR_NAME` FOREIGN KEY (`SF_Name`) REFERENCES `sponsor` (`SpsName`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_SPONFOR_TEAM` FOREIGN KEY (`SF_Team`) REFERENCES `season_team` (`TeamName`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `FK_STAFF_TEAM` FOREIGN KEY (`StaffCode`) REFERENCES `team_member` (`MemberCode`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `team_member`
--
ALTER TABLE `team_member`
  ADD CONSTRAINT `FK_TEAM_IN_SEASON` FOREIGN KEY (`TM_Team`) REFERENCES `season_team` (`TeamName`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
