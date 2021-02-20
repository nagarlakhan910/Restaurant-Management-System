-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2021 at 06:40 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

CREATE TABLE `auth` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `permission` varchar(25) NOT NULL,
  `user_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth`
--

INSERT INTO `auth` (`id`, `username`, `user_id`, `password`, `permission`, `user_created`) VALUES
(1, 'admin', '123456', 'password', 'admin', '2021-02-04 04:15:26'),
(4, 'lakhan', 'lakhan@123', '1234', 'user', '2021-02-04 04:30:03'),
(5, 'Harsh', '12345', '123456', 'user', '2021-02-04 04:44:35'),
(49, 'Gopal', '37', '1234', 'user', '2021-02-06 11:10:43'),
(56, 'vishnu', 'vishnu123', '1234', 'user', '2021-02-06 11:33:21');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `name_hindi` varchar(60) NOT NULL,
  `category` varchar(60) NOT NULL,
  `price` double NOT NULL,
  `date_added` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `name_hindi`, `category`, `price`, `date_added`) VALUES
(3, 'kakdi', 'kakdi', 'Salad', 20, '2021-01-30'),
(5, 'dfb', 'vncfis', 'Combo', 45, '0000-00-00'),
(6, 'dfb', 'vncfis', 'Combo', 45, '0000-00-00'),
(7, 'dfb', 'vncfis', 'Combo', 45, '0000-00-00'),
(8, 'Kaju Katli', 'Kaju Katli', 'Sweets', 50, '0000-00-00'),
(9, 'dfb', 'vncfis', 'Thali', 45, '0000-00-00'),
(10, 'dfb', 'vncfis', 'Thali', 45, '0000-00-00'),
(11, 'Cold Coffee', 'Cold Coffee', 'Hot & Cold Drinks', 80, '2021-01-31'),
(12, 'Hot Coffee', 'Hot Coffee', 'Hot & Cold Drinks', 50, '2021-01-31'),
(13, 'Potato Paratha', 'Aaloo Paratha', 'Paratha', 25, '2021-02-06');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `invoice_no` varchar(10) NOT NULL,
  `table_or_room` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` double NOT NULL,
  `charge` double NOT NULL,
  `net_amount` double NOT NULL,
  `payment_mode` varchar(20) NOT NULL,
  `invoice` text NOT NULL,
  `taken_by` varchar(50) NOT NULL,
  `taken_by_id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invoice_no`, `table_or_room`, `quantity`, `total_price`, `charge`, `net_amount`, `payment_mode`, `invoice`, `taken_by`, `taken_by_id`, `time`) VALUES
(338, '16', 'Table-A4', 6, 300, 20, 320, 'Cash', 'PCFET0NUWVBFIGh0bWw+PGh0bWwgbGFuZz0nZW4nPjxoZWFkPjxtZXRhIGNoYXJzZXQ9J1VURi04Jz48bWV0YSBuYW1lPSd2aWV3cG9ydCcgY29udGVudD0nd2lkdGg9ZGV2aWNlLXdpZHRoLCBpbml0aWFsLXNjYWxlPTEuMCc+PG1ldGEgaHR0cC1lcXVpdj0nWC1VQS1Db21wYXRpYmxlJyBjb250ZW50PSdpZT1lZGdlJz48dGl0bGU+UmVjZWlwdCBleGFtcGxlPC90aXRsZT48L2hlYWQ+PGJvZHkgc3R5bGU9J2hlaWdodDoyOTBweDt3aWR0aDo0MDBweCc+PGRpdiBjbGFzcz0ndGlja2V0Jz48aW1nIHNyYz0naW1hZ2VzL2JpbGwtaGVhZC1idy5wbmcnIGFsdD0nTG9nbycgc3R5bGU9J2hlaWdodDoxMjBweDt3aWR0aDo0MDBweCc+PHA+R1NUIElOIDogMjNBQk5QSjgwMzREMlpVPC9wPjx0YWJsZSBzdHlsZT0nd2lkdGg6MTAwJSc+PHRib2R5Pjx0cj48dGggc3l0bGU9J3dpZHRoOjI1JSc+SW52b2ljZSBOby48L3RoPjx0ZCBzdHlsZT0nd2lkdGg6MjUlJz4xNjwvdGQ+PHRoIHN5dGxlPSd3aWR0aDoyNSUnPkRhdGU8L3RoPjx0ZCBzdHlsZT0nd2lkdGg6MjUlJz4wNi0wMi0yMDIxPC90ZD48L3RyPjx0cj48dGggc3l0bGU9J3dpZHRoOjI1JSc+VGFibGUvUm9vbTwvdGg+PHRkIHN0eWxlPSd3aWR0aDoyNSUnPlRhYmxlLUE0PC90ZD48dGggc3l0bGU9J3dpZHRoOjI1JSc+VGltZTwvdGg+PHRkIHN0eWxlPSd3aWR0aDoyNSUnPjAyOjA1IHBtPC90ZD48L3RyPjwvdGJvZHk+PHRib2R5Pjx0cj48dGggY2xhc3M9J3Nubyc+Uy5Oby48L3RoPjx0aCBjbGFzcz0ncGFydGljdWxhcnMnPlBhcnRpY3VsYXJzPC90aD48dGggY2xhc3M9J3ByaWNlJz5SYXRlPC90aD48dGggY2xhc3M9J3F0eSc+UXR5LjwvdGg+PHRoIGNsYXNzPSdhbW91bnQnPkFtb3VudDwvdGg+PC90cj48L3Rib2R5Pjx0Ym9keT48dHI+PHRkIGFsaWduPWNlbnRlcj4xPC90ZD48dGQgYWxpZ249Y2VudGVyPkNvbGQgQ29mZmVlPC90ZD48dGQgYWxpZ249Y2VudGVyPjgwPC90ZD48dGQgYWxpZ249Y2VudGVyPjI8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+MTYwLjAwPC90ZD48L3RyPjx0cj48dGQgYWxpZ249Y2VudGVyPjI8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+SG90IENvZmZlZTwvdGQ+PHRkIGFsaWduPWNlbnRlcj41MDwvdGQ+PHRkIGFsaWduPWNlbnRlcj4yPC90ZD48dGQgYWxpZ249Y2VudGVyPjEwMC4wMDwvdGQ+PC90cj48dHI+PHRkIGFsaWduPWNlbnRlcj4zPC90ZD48dGQgYWxpZ249Y2VudGVyPmtha2RpPC90ZD48dGQgYWxpZ249Y2VudGVyPjIwPC90ZD48dGQgYWxpZ249Y2VudGVyPjI8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+NDAuMDA8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9J3dpZHRoOiAyOTBweDsgZGlzcGxheTogZmxleDsgIGJvcmRlci1ib3R0b206IDFweCBkYXNoZWQgYmxhY2snPjxkaXYgc3R5bGU9J3dpZHRoOiAxNjRweDsnPjxpbWcgc3JjPSdkaXN0L2ltZy90aGFua3lvdS5wbmcnIHN0eWxlPSd3aWR0aDo1MCU7cGFkZGluZzogMTBweDsnIGFsdD0nJz48L2Rpdj48ZGl2IHN0eWxlPSd3aWR0aDogMTI2cHg7Jz48dGFibGUgc3R5bGU9J3dpZHRoOiAxMDAlOyc+PHRmb290Pjx0cj48dGQgY2xhc3M9J3RvdGFsZm9vdCc+VG90YWw8L3RkPjx0ZCBjbGFzcz0ndG90YW1vdW50Jz4zMDA8L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ndG90YWxmb290Jz5DaGFyZ2U8L3RkPjx0ZCBjbGFzcz0ndG90YW1vdW50Jz4yMDwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSd0b3RhbGZvb3QnPk5ldCBBbW91bnQ8L3RkPjx0ZCBjbGFzcz0ndG90YW1vdW50JyBzdHlsZT0nYm9yZGVyLXRvcDogMXB4IGRhc2hlZCBibGFjayc+MzIwPC90ZD48L3RyPjwvdGZvb3Q+PC90YWJsZT48L2Rpdj48L2Rpdj48cD5QYXltZW50IE1vZGUgOiBDYXNoPC9wPjxwPk9yZGVyIFRha2VuIEJ5IDogYWRtaW48L3A+PHA+SGF2ZSBhIG5pY2UgRGF5PGJyPlRlY2hubyBCdWRkaWVzIElUIFNvbHV0aW9ucyArOTEgNjI2MTYyODg0ODwvcD48L2Rpdj48L2JvZHk+PC9odG1sPg==', 'admin', 1, '2021-02-06 08:36:01'),
(339, '17', 'Table-1', 11, 520, 30, 550, 'Cash', 'PCFET0NUWVBFIGh0bWw+PGh0bWwgbGFuZz0nZW4nPjxoZWFkPjxtZXRhIGNoYXJzZXQ9J1VURi04Jz48bWV0YSBuYW1lPSd2aWV3cG9ydCcgY29udGVudD0nd2lkdGg9ZGV2aWNlLXdpZHRoLCBpbml0aWFsLXNjYWxlPTEuMCc+PG1ldGEgaHR0cC1lcXVpdj0nWC1VQS1Db21wYXRpYmxlJyBjb250ZW50PSdpZT1lZGdlJz48dGl0bGU+UmVjZWlwdCBleGFtcGxlPC90aXRsZT48L2hlYWQ+PGJvZHkgc3R5bGU9J2hlaWdodDoyOTBweDt3aWR0aDo0MDBweCc+PGRpdiBjbGFzcz0ndGlja2V0Jz48aW1nIHNyYz0nLi4vaW1hZ2VzL2JpbGwtaGVhZC1idy5wbmcnIGFsdD0nTG9nbycgc3R5bGU9J2hlaWdodDoxMjBweDt3aWR0aDo0MDBweCc+PHA+R1NUIElOIDogMjNBQk5QSjgwMzREMlpVPC9wPjx0YWJsZSBzdHlsZT0nd2lkdGg6MTAwJSc+PHRib2R5Pjx0cj48dGggc3l0bGU9J3dpZHRoOjI1JSc+SW52b2ljZSBOby48L3RoPjx0ZCBzdHlsZT0nd2lkdGg6MjUlJz4xNzwvdGQ+PHRoIHN5dGxlPSd3aWR0aDoyNSUnPkRhdGU8L3RoPjx0ZCBzdHlsZT0nd2lkdGg6MjUlJz4wNi0wMi0yMDIxPC90ZD48L3RyPjx0cj48dGggc3l0bGU9J3dpZHRoOjI1JSc+VGFibGUvUm9vbTwvdGg+PHRkIHN0eWxlPSd3aWR0aDoyNSUnPlRhYmxlLTE8L3RkPjx0aCBzeXRsZT0nd2lkdGg6MjUlJz5UaW1lPC90aD48dGQgc3R5bGU9J3dpZHRoOjI1JSc+MDI6MTkgcG08L3RkPjwvdHI+PC90Ym9keT48dGJvZHk+PHRyPjx0aCBjbGFzcz0nc25vJz5TLk5vLjwvdGg+PHRoIGNsYXNzPSdwYXJ0aWN1bGFycyc+UGFydGljdWxhcnM8L3RoPjx0aCBjbGFzcz0ncHJpY2UnPlJhdGU8L3RoPjx0aCBjbGFzcz0ncXR5Jz5RdHkuPC90aD48dGggY2xhc3M9J2Ftb3VudCc+QW1vdW50PC90aD48L3RyPjwvdGJvZHk+PHRib2R5Pjx0cj48dGQgYWxpZ249Y2VudGVyPjE8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+Q29sZCBDb2ZmZWU8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+ODA8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+MzwvdGQ+PHRkIGFsaWduPWNlbnRlcj4yNDAuMDA8L3RkPjwvdHI+PHRyPjx0ZCBhbGlnbj1jZW50ZXI+MjwvdGQ+PHRkIGFsaWduPWNlbnRlcj5Ib3QgQ29mZmVlPC90ZD48dGQgYWxpZ249Y2VudGVyPjUwPC90ZD48dGQgYWxpZ249Y2VudGVyPjQ8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+MjAwLjAwPC90ZD48L3RyPjx0cj48dGQgYWxpZ249Y2VudGVyPjM8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+a2FrZGk8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+MjA8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+NDwvdGQ+PHRkIGFsaWduPWNlbnRlcj44MC4wMDwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBzdHlsZT0nd2lkdGg6IDI5MHB4OyBkaXNwbGF5OiBmbGV4OyAgYm9yZGVyLWJvdHRvbTogMXB4IGRhc2hlZCBibGFjayc+PGRpdiBzdHlsZT0nd2lkdGg6IDE2NHB4Oyc+PGltZyBzcmM9Jy4uL2Rpc3QvaW1nL3RoYW5reW91LnBuZycgc3R5bGU9J3dpZHRoOjUwJTtwYWRkaW5nOiAxMHB4OycgYWx0PScnPjwvZGl2PjxkaXYgc3R5bGU9J3dpZHRoOiAxMjZweDsnPjx0YWJsZSBzdHlsZT0nd2lkdGg6IDEwMCU7Jz48dGZvb3Q+PHRyPjx0ZCBjbGFzcz0ndG90YWxmb290Jz5Ub3RhbDwvdGQ+PHRkIGNsYXNzPSd0b3RhbW91bnQnPjUyMDwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSd0b3RhbGZvb3QnPkNoYXJnZTwvdGQ+PHRkIGNsYXNzPSd0b3RhbW91bnQnPjMwPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9J3RvdGFsZm9vdCc+TmV0IEFtb3VudDwvdGQ+PHRkIGNsYXNzPSd0b3RhbW91bnQnIHN0eWxlPSdib3JkZXItdG9wOiAxcHggZGFzaGVkIGJsYWNrJz41NTA8L3RkPjwvdHI+PC90Zm9vdD48L3RhYmxlPjwvZGl2PjwvZGl2PjxwPlBheW1lbnQgTW9kZSA6IENhc2g8L3A+PHA+T3JkZXIgVGFrZW4gQnkgOiBoYXJzaDwvcD48cD5IYXZlIGEgbmljZSBEYXk8YnI+VGVjaG5vIEJ1ZGRpZXMgSVQgU29sdXRpb25zICs5MSA2MjYxNjI4ODQ4PC9wPjwvZGl2PjwvYm9keT48L2h0bWw+', 'harsh', 5, '2021-02-06 08:50:07'),
(340, '18', 'Table-1', 9, 450, 50, 500, 'Card', 'PCFET0NUWVBFIGh0bWw+PGh0bWwgbGFuZz0nZW4nPjxoZWFkPjxtZXRhIGNoYXJzZXQ9J1VURi04Jz48bWV0YSBuYW1lPSd2aWV3cG9ydCcgY29udGVudD0nd2lkdGg9ZGV2aWNlLXdpZHRoLCBpbml0aWFsLXNjYWxlPTEuMCc+PG1ldGEgaHR0cC1lcXVpdj0nWC1VQS1Db21wYXRpYmxlJyBjb250ZW50PSdpZT1lZGdlJz48dGl0bGU+UmVjZWlwdCBleGFtcGxlPC90aXRsZT48L2hlYWQ+PGJvZHkgc3R5bGU9J2hlaWdodDoyOTBweDt3aWR0aDo0MDBweCc+PGRpdiBjbGFzcz0ndGlja2V0Jz48aW1nIHNyYz0nLi4vaW1hZ2VzL2JpbGwtaGVhZC1idy5wbmcnIGFsdD0nTG9nbycgc3R5bGU9J2hlaWdodDoxMjBweDt3aWR0aDo0MDBweCc+PHA+R1NUIElOIDogMjNBQk5QSjgwMzREMlpVPC9wPjx0YWJsZSBzdHlsZT0nd2lkdGg6MTAwJSc+PHRib2R5Pjx0cj48dGggc3l0bGU9J3dpZHRoOjI1JSc+SW52b2ljZSBOby48L3RoPjx0ZCBzdHlsZT0nd2lkdGg6MjUlJz4xODwvdGQ+PHRoIHN5dGxlPSd3aWR0aDoyNSUnPkRhdGU8L3RoPjx0ZCBzdHlsZT0nd2lkdGg6MjUlJz4wNi0wMi0yMDIxPC90ZD48L3RyPjx0cj48dGggc3l0bGU9J3dpZHRoOjI1JSc+VGFibGUvUm9vbTwvdGg+PHRkIHN0eWxlPSd3aWR0aDoyNSUnPlRhYmxlLTE8L3RkPjx0aCBzeXRsZT0nd2lkdGg6MjUlJz5UaW1lPC90aD48dGQgc3R5bGU9J3dpZHRoOjI1JSc+MDI6MjQgcG08L3RkPjwvdHI+PC90Ym9keT48dGJvZHk+PHRyPjx0aCBjbGFzcz0nc25vJz5TLk5vLjwvdGg+PHRoIGNsYXNzPSdwYXJ0aWN1bGFycyc+UGFydGljdWxhcnM8L3RoPjx0aCBjbGFzcz0ncHJpY2UnPlJhdGU8L3RoPjx0aCBjbGFzcz0ncXR5Jz5RdHkuPC90aD48dGggY2xhc3M9J2Ftb3VudCc+QW1vdW50PC90aD48L3RyPjwvdGJvZHk+PHRib2R5Pjx0cj48dGQgYWxpZ249Y2VudGVyPjE8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+Q29sZCBDb2ZmZWU8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+ODA8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+MzwvdGQ+PHRkIGFsaWduPWNlbnRlcj4yNDAuMDA8L3RkPjwvdHI+PHRyPjx0ZCBhbGlnbj1jZW50ZXI+MjwvdGQ+PHRkIGFsaWduPWNlbnRlcj5Ib3QgQ29mZmVlPC90ZD48dGQgYWxpZ249Y2VudGVyPjUwPC90ZD48dGQgYWxpZ249Y2VudGVyPjM8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+MTUwLjAwPC90ZD48L3RyPjx0cj48dGQgYWxpZ249Y2VudGVyPjM8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+a2FrZGk8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+MjA8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+MzwvdGQ+PHRkIGFsaWduPWNlbnRlcj42MC4wMDwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBzdHlsZT0nd2lkdGg6IDI5MHB4OyBkaXNwbGF5OiBmbGV4OyAgYm9yZGVyLWJvdHRvbTogMXB4IGRhc2hlZCBibGFjayc+PGRpdiBzdHlsZT0nd2lkdGg6IDE2NHB4Oyc+PGltZyBzcmM9J3RoYW5reW91LnBuZycgc3R5bGU9J3dpZHRoOjUwJTtwYWRkaW5nOiAxMHB4OycgYWx0PScnPjwvZGl2PjxkaXYgc3R5bGU9J3dpZHRoOiAxMjZweDsnPjx0YWJsZSBzdHlsZT0nd2lkdGg6IDEwMCU7Jz48dGZvb3Q+PHRyPjx0ZCBjbGFzcz0ndG90YWxmb290Jz5Ub3RhbDwvdGQ+PHRkIGNsYXNzPSd0b3RhbW91bnQnPjQ1MDwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSd0b3RhbGZvb3QnPkNoYXJnZTwvdGQ+PHRkIGNsYXNzPSd0b3RhbW91bnQnPjUwPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9J3RvdGFsZm9vdCc+TmV0IEFtb3VudDwvdGQ+PHRkIGNsYXNzPSd0b3RhbW91bnQnIHN0eWxlPSdib3JkZXItdG9wOiAxcHggZGFzaGVkIGJsYWNrJz41MDA8L3RkPjwvdHI+PC90Zm9vdD48L3RhYmxlPjwvZGl2PjwvZGl2PjxwPlBheW1lbnQgTW9kZSA6IENhcmQ8L3A+PHA+T3JkZXIgVGFrZW4gQnkgOiBoYXJzaDwvcD48cD5IYXZlIGEgbmljZSBEYXk8YnI+VGVjaG5vIEJ1ZGRpZXMgSVQgU29sdXRpb25zICs5MSA2MjYxNjI4ODQ4PC9wPjwvZGl2PjwvYm9keT48L2h0bWw+', 'harsh', 5, '2021-01-29 08:54:13'),
(341, '19', 'Room-16', 10, 500, 10, 510, 'Cash', 'PCFET0NUWVBFIGh0bWw+PGh0bWwgbGFuZz0nZW4nPjxoZWFkPjxtZXRhIGNoYXJzZXQ9J1VURi04Jz48bWV0YSBuYW1lPSd2aWV3cG9ydCcgY29udGVudD0nd2lkdGg9ZGV2aWNlLXdpZHRoLCBpbml0aWFsLXNjYWxlPTEuMCc+PG1ldGEgaHR0cC1lcXVpdj0nWC1VQS1Db21wYXRpYmxlJyBjb250ZW50PSdpZT1lZGdlJz48dGl0bGU+UmVjZWlwdCBleGFtcGxlPC90aXRsZT48L2hlYWQ+PGJvZHkgc3R5bGU9J2hlaWdodDoyOTBweDt3aWR0aDo0MDBweCc+PGRpdiBjbGFzcz0ndGlja2V0Jz48aW1nIHNyYz0nLi4vaW1hZ2VzL2JpbGwtaGVhZC1idy5wbmcnIGFsdD0nTG9nbycgc3R5bGU9J2hlaWdodDoxMjBweDt3aWR0aDo0MDBweCc+PHA+R1NUIElOIDogMjNBQk5QSjgwMzREMlpVPC9wPjx0YWJsZSBzdHlsZT0nd2lkdGg6MTAwJSc+PHRib2R5Pjx0cj48dGggc3l0bGU9J3dpZHRoOjI1JSc+SW52b2ljZSBOby48L3RoPjx0ZCBzdHlsZT0nd2lkdGg6MjUlJz4xOTwvdGQ+PHRoIHN5dGxlPSd3aWR0aDoyNSUnPkRhdGU8L3RoPjx0ZCBzdHlsZT0nd2lkdGg6MjUlJz4wNi0wMi0yMDIxPC90ZD48L3RyPjx0cj48dGggc3l0bGU9J3dpZHRoOjI1JSc+VGFibGUvUm9vbTwvdGg+PHRkIHN0eWxlPSd3aWR0aDoyNSUnPlJvb20tMTY8L3RkPjx0aCBzeXRsZT0nd2lkdGg6MjUlJz5UaW1lPC90aD48dGQgc3R5bGU9J3dpZHRoOjI1JSc+MDM6MjAgcG08L3RkPjwvdHI+PC90Ym9keT48dGJvZHk+PHRyPjx0aCBjbGFzcz0nc25vJz5TLk5vLjwvdGg+PHRoIGNsYXNzPSdwYXJ0aWN1bGFycyc+UGFydGljdWxhcnM8L3RoPjx0aCBjbGFzcz0ncHJpY2UnPlJhdGU8L3RoPjx0aCBjbGFzcz0ncXR5Jz5RdHkuPC90aD48dGggY2xhc3M9J2Ftb3VudCc+QW1vdW50PC90aD48L3RyPjwvdGJvZHk+PHRib2R5Pjx0cj48dGQgYWxpZ249Y2VudGVyPjE8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+SG90IENvZmZlZTwvdGQ+PHRkIGFsaWduPWNlbnRlcj41MDwvdGQ+PHRkIGFsaWduPWNlbnRlcj40PC90ZD48dGQgYWxpZ249Y2VudGVyPjIwMC4wMDwvdGQ+PC90cj48dHI+PHRkIGFsaWduPWNlbnRlcj4yPC90ZD48dGQgYWxpZ249Y2VudGVyPkNvbGQgQ29mZmVlPC90ZD48dGQgYWxpZ249Y2VudGVyPjgwPC90ZD48dGQgYWxpZ249Y2VudGVyPjM8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+MjQwLjAwPC90ZD48L3RyPjx0cj48dGQgYWxpZ249Y2VudGVyPjM8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+a2FrZGk8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+MjA8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+MzwvdGQ+PHRkIGFsaWduPWNlbnRlcj42MC4wMDwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBzdHlsZT0nd2lkdGg6IDI5MHB4OyBkaXNwbGF5OiBmbGV4OyAgYm9yZGVyLWJvdHRvbTogMXB4IGRhc2hlZCBibGFjayc+PGRpdiBzdHlsZT0nd2lkdGg6IDE2NHB4Oyc+PGltZyBzcmM9J3RoYW5reW91LnBuZycgc3R5bGU9J3dpZHRoOjUwJTtwYWRkaW5nOiAxMHB4OycgYWx0PScnPjwvZGl2PjxkaXYgc3R5bGU9J3dpZHRoOiAxMjZweDsnPjx0YWJsZSBzdHlsZT0nd2lkdGg6IDEwMCU7Jz48dGZvb3Q+PHRyPjx0ZCBjbGFzcz0ndG90YWxmb290Jz5Ub3RhbDwvdGQ+PHRkIGNsYXNzPSd0b3RhbW91bnQnPjUwMDwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSd0b3RhbGZvb3QnPkNoYXJnZTwvdGQ+PHRkIGNsYXNzPSd0b3RhbW91bnQnPjEwPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9J3RvdGFsZm9vdCc+TmV0IEFtb3VudDwvdGQ+PHRkIGNsYXNzPSd0b3RhbW91bnQnIHN0eWxlPSdib3JkZXItdG9wOiAxcHggZGFzaGVkIGJsYWNrJz41MTA8L3RkPjwvdHI+PC90Zm9vdD48L3RhYmxlPjwvZGl2PjwvZGl2PjxwPlBheW1lbnQgTW9kZSA6IENhc2g8L3A+PHA+T3JkZXIgVGFrZW4gQnkgOiBoYXJzaDwvcD48cD5IYXZlIGEgbmljZSBEYXk8YnI+VGVjaG5vIEJ1ZGRpZXMgSVQgU29sdXRpb25zICs5MSA2MjYxNjI4ODQ4PC9wPjwvZGl2PjwvYm9keT48L2h0bWw+', 'harsh', 5, '2021-02-06 09:50:39'),
(342, '20', 'Table-A3', 13, 870, 30, 900, 'UPI', 'PCFET0NUWVBFIGh0bWw+PGh0bWwgbGFuZz0nZW4nPjxoZWFkPjxtZXRhIGNoYXJzZXQ9J1VURi04Jz48bWV0YSBuYW1lPSd2aWV3cG9ydCcgY29udGVudD0nd2lkdGg9ZGV2aWNlLXdpZHRoLCBpbml0aWFsLXNjYWxlPTEuMCc+PG1ldGEgaHR0cC1lcXVpdj0nWC1VQS1Db21wYXRpYmxlJyBjb250ZW50PSdpZT1lZGdlJz48dGl0bGU+UmVjZWlwdCBleGFtcGxlPC90aXRsZT48L2hlYWQ+PGJvZHkgc3R5bGU9J2hlaWdodDoyOTBweDt3aWR0aDo0MDBweCc+PGRpdiBjbGFzcz0ndGlja2V0Jz48aW1nIHNyYz0nLi4vaW1hZ2VzL2JpbGwtaGVhZC1idy5wbmcnIGFsdD0nTG9nbycgc3R5bGU9J2hlaWdodDoxMjBweDt3aWR0aDo0MDBweCc+PHA+R1NUIElOIDogMjNBQk5QSjgwMzREMlpVPC9wPjx0YWJsZSBzdHlsZT0nd2lkdGg6MTAwJSc+PHRib2R5Pjx0cj48dGggc3l0bGU9J3dpZHRoOjI1JSc+SW52b2ljZSBOby48L3RoPjx0ZCBzdHlsZT0nd2lkdGg6MjUlJz4yMDwvdGQ+PHRoIHN5dGxlPSd3aWR0aDoyNSUnPkRhdGU8L3RoPjx0ZCBzdHlsZT0nd2lkdGg6MjUlJz4wNi0wMi0yMDIxPC90ZD48L3RyPjx0cj48dGggc3l0bGU9J3dpZHRoOjI1JSc+VGFibGUvUm9vbTwvdGg+PHRkIHN0eWxlPSd3aWR0aDoyNSUnPlRhYmxlLUEzPC90ZD48dGggc3l0bGU9J3dpZHRoOjI1JSc+VGltZTwvdGg+PHRkIHN0eWxlPSd3aWR0aDoyNSUnPjAzOjQ0IHBtPC90ZD48L3RyPjwvdGJvZHk+PHRib2R5Pjx0cj48dGggY2xhc3M9J3Nubyc+Uy5Oby48L3RoPjx0aCBjbGFzcz0ncGFydGljdWxhcnMnPlBhcnRpY3VsYXJzPC90aD48dGggY2xhc3M9J3ByaWNlJz5SYXRlPC90aD48dGggY2xhc3M9J3F0eSc+UXR5LjwvdGg+PHRoIGNsYXNzPSdhbW91bnQnPkFtb3VudDwvdGg+PC90cj48L3Rib2R5Pjx0Ym9keT48dHI+PHRkIGFsaWduPWNlbnRlcj4xPC90ZD48dGQgYWxpZ249Y2VudGVyPkNvbGQgQ29mZmVlPC90ZD48dGQgYWxpZ249Y2VudGVyPjg1PC90ZD48dGQgYWxpZ249Y2VudGVyPjg8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+NjgwLjAwPC90ZD48L3RyPjx0cj48dGQgYWxpZ249Y2VudGVyPjI8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+SG90IENvZmZlZTwvdGQ+PHRkIGFsaWduPWNlbnRlcj41MDwvdGQ+PHRkIGFsaWduPWNlbnRlcj4zPC90ZD48dGQgYWxpZ249Y2VudGVyPjE1MC4wMDwvdGQ+PC90cj48dHI+PHRkIGFsaWduPWNlbnRlcj4zPC90ZD48dGQgYWxpZ249Y2VudGVyPmtha2RpPC90ZD48dGQgYWxpZ249Y2VudGVyPjIwPC90ZD48dGQgYWxpZ249Y2VudGVyPjI8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+NDAuMDA8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9J3dpZHRoOiAyOTBweDsgZGlzcGxheTogZmxleDsgIGJvcmRlci1ib3R0b206IDFweCBkYXNoZWQgYmxhY2snPjxkaXYgc3R5bGU9J3dpZHRoOiAxNjRweDsnPjxpbWcgc3JjPSd0aGFua3lvdS5wbmcnIHN0eWxlPSd3aWR0aDo1MCU7cGFkZGluZzogMTBweDsnIGFsdD0nJz48L2Rpdj48ZGl2IHN0eWxlPSd3aWR0aDogMTI2cHg7Jz48dGFibGUgc3R5bGU9J3dpZHRoOiAxMDAlOyc+PHRmb290Pjx0cj48dGQgY2xhc3M9J3RvdGFsZm9vdCc+VG90YWw8L3RkPjx0ZCBjbGFzcz0ndG90YW1vdW50Jz44NzA8L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ndG90YWxmb290Jz5DaGFyZ2U8L3RkPjx0ZCBjbGFzcz0ndG90YW1vdW50Jz4zMDwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSd0b3RhbGZvb3QnPk5ldCBBbW91bnQ8L3RkPjx0ZCBjbGFzcz0ndG90YW1vdW50JyBzdHlsZT0nYm9yZGVyLXRvcDogMXB4IGRhc2hlZCBibGFjayc+OTAwPC90ZD48L3RyPjwvdGZvb3Q+PC90YWJsZT48L2Rpdj48L2Rpdj48cD5QYXltZW50IE1vZGUgOiBVUEk8L3A+PHA+T3JkZXIgVGFrZW4gQnkgOiBoYXJzaDwvcD48cD5IYXZlIGEgbmljZSBEYXk8YnI+VGVjaG5vIEJ1ZGRpZXMgSVQgU29sdXRpb25zICs5MSA2MjYxNjI4ODQ4PC9wPjwvZGl2PjwvYm9keT48L2h0bWw+', 'harsh', 5, '2021-02-06 10:14:26'),
(343, '21', 'Table-A1', 2, 130, 20, 150, 'Card', 'PCFET0NUWVBFIGh0bWw+PGh0bWwgbGFuZz0nZW4nPjxoZWFkPjxtZXRhIGNoYXJzZXQ9J1VURi04Jz48bWV0YSBuYW1lPSd2aWV3cG9ydCcgY29udGVudD0nd2lkdGg9ZGV2aWNlLXdpZHRoLCBpbml0aWFsLXNjYWxlPTEuMCc+PG1ldGEgaHR0cC1lcXVpdj0nWC1VQS1Db21wYXRpYmxlJyBjb250ZW50PSdpZT1lZGdlJz48dGl0bGU+UmVjZWlwdCBleGFtcGxlPC90aXRsZT48L2hlYWQ+PGJvZHkgc3R5bGU9J2hlaWdodDoyOTBweDt3aWR0aDo0MDBweCc+PGRpdiBjbGFzcz0ndGlja2V0Jz48aW1nIHNyYz0nLi4vaW1hZ2VzL2JpbGwtaGVhZC1idy5wbmcnIGFsdD0nTG9nbycgc3R5bGU9J2hlaWdodDoxMjBweDt3aWR0aDo0MDBweCc+PHA+R1NUIElOIDogMjNBQk5QSjgwMzREMlpVPC9wPjx0YWJsZSBzdHlsZT0nd2lkdGg6MTAwJSc+PHRib2R5Pjx0cj48dGggc3l0bGU9J3dpZHRoOjI1JSc+SW52b2ljZSBOby48L3RoPjx0ZCBzdHlsZT0nd2lkdGg6MjUlJz4yMTwvdGQ+PHRoIHN5dGxlPSd3aWR0aDoyNSUnPkRhdGU8L3RoPjx0ZCBzdHlsZT0nd2lkdGg6MjUlJz4wNi0wMi0yMDIxPC90ZD48L3RyPjx0cj48dGggc3l0bGU9J3dpZHRoOjI1JSc+VGFibGUvUm9vbTwvdGg+PHRkIHN0eWxlPSd3aWR0aDoyNSUnPlRhYmxlLUExPC90ZD48dGggc3l0bGU9J3dpZHRoOjI1JSc+VGltZTwvdGg+PHRkIHN0eWxlPSd3aWR0aDoyNSUnPjA5OjMzIHBtPC90ZD48L3RyPjwvdGJvZHk+PHRib2R5Pjx0cj48dGggY2xhc3M9J3Nubyc+Uy5Oby48L3RoPjx0aCBjbGFzcz0ncGFydGljdWxhcnMnPlBhcnRpY3VsYXJzPC90aD48dGggY2xhc3M9J3ByaWNlJz5SYXRlPC90aD48dGggY2xhc3M9J3F0eSc+UXR5LjwvdGg+PHRoIGNsYXNzPSdhbW91bnQnPkFtb3VudDwvdGg+PC90cj48L3Rib2R5Pjx0Ym9keT48dHI+PHRkIGFsaWduPWNlbnRlcj4xPC90ZD48dGQgYWxpZ249Y2VudGVyPkNvbGQgQ29mZmVlPC90ZD48dGQgYWxpZ249Y2VudGVyPjgwPC90ZD48dGQgYWxpZ249Y2VudGVyPjE8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgODA8L3RkPjwvdHI+PHRyPjx0ZCBhbGlnbj1jZW50ZXI+MjwvdGQ+PHRkIGFsaWduPWNlbnRlcj5Ib3QgQ29mZmVlPC90ZD48dGQgYWxpZ249Y2VudGVyPjUwPC90ZD48dGQgYWxpZ249Y2VudGVyPjE8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgNTA8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9J3dpZHRoOiAyOTBweDsgZGlzcGxheTogZmxleDsgIGJvcmRlci1ib3R0b206IDFweCBkYXNoZWQgYmxhY2snPjxkaXYgc3R5bGU9J3dpZHRoOiAxNjRweDsnPjxpbWcgc3JjPSd0aGFua3lvdS5wbmcnIHN0eWxlPSd3aWR0aDo1MCU7cGFkZGluZzogMTBweDsnIGFsdD0nJz48L2Rpdj48ZGl2IHN0eWxlPSd3aWR0aDogMTI2cHg7Jz48dGFibGUgc3R5bGU9J3dpZHRoOiAxMDAlOyc+PHRmb290Pjx0cj48dGQgY2xhc3M9J3RvdGFsZm9vdCc+VG90YWw8L3RkPjx0ZCBjbGFzcz0ndG90YW1vdW50Jz4xMzA8L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ndG90YWxmb290Jz5DaGFyZ2U8L3RkPjx0ZCBjbGFzcz0ndG90YW1vdW50Jz4yMDwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSd0b3RhbGZvb3QnPk5ldCBBbW91bnQ8L3RkPjx0ZCBjbGFzcz0ndG90YW1vdW50JyBzdHlsZT0nYm9yZGVyLXRvcDogMXB4IGRhc2hlZCBibGFjayc+MTUwPC90ZD48L3RyPjwvdGZvb3Q+PC90YWJsZT48L2Rpdj48L2Rpdj48cD5QYXltZW50IE1vZGUgOiBDYXJkPC9wPjxwPk9yZGVyIFRha2VuIEJ5IDogaGFyc2g8L3A+PHA+SGF2ZSBhIG5pY2UgRGF5PGJyPlRlY2hubyBCdWRkaWVzIElUIFNvbHV0aW9ucyArOTEgNjI2MTYyODg0ODwvcD48L2Rpdj48L2JvZHk+PC9odG1sPg==', 'harsh', 5, '2021-02-06 16:03:24'),
(344, '22', 'Table-A2', 10, 345, 15, 360, 'UPI', 'PCFET0NUWVBFIGh0bWw+PGh0bWwgbGFuZz0nZW4nPjxoZWFkPjxtZXRhIGNoYXJzZXQ9J1VURi04Jz48bWV0YSBuYW1lPSd2aWV3cG9ydCcgY29udGVudD0nd2lkdGg9ZGV2aWNlLXdpZHRoLCBpbml0aWFsLXNjYWxlPTEuMCc+PG1ldGEgaHR0cC1lcXVpdj0nWC1VQS1Db21wYXRpYmxlJyBjb250ZW50PSdpZT1lZGdlJz48dGl0bGU+UmVjZWlwdCBleGFtcGxlPC90aXRsZT48L2hlYWQ+PGJvZHkgc3R5bGU9J2hlaWdodDoyOTBweDt3aWR0aDo0MDBweCc+PGRpdiBjbGFzcz0ndGlja2V0Jz48aW1nIHNyYz0naW1hZ2VzL2JpbGwtaGVhZC1idy5wbmcnIGFsdD0nTG9nbycgc3R5bGU9J2hlaWdodDoxMjBweDt3aWR0aDo0MDBweCc+PHA+R1NUIElOIDogMjNBQk5QSjgwMzREMlpVPC9wPjx0YWJsZSBzdHlsZT0nd2lkdGg6MTAwJSc+PHRib2R5Pjx0cj48dGggc3l0bGU9J3dpZHRoOjI1JSc+SW52b2ljZSBOby48L3RoPjx0ZCBzdHlsZT0nd2lkdGg6MjUlJz4yMjwvdGQ+PHRoIHN5dGxlPSd3aWR0aDoyNSUnPkRhdGU8L3RoPjx0ZCBzdHlsZT0nd2lkdGg6MjUlJz4wNi0wMi0yMDIxPC90ZD48L3RyPjx0cj48dGggc3l0bGU9J3dpZHRoOjI1JSc+VGFibGUvUm9vbTwvdGg+PHRkIHN0eWxlPSd3aWR0aDoyNSUnPlRhYmxlLUEyPC90ZD48dGggc3l0bGU9J3dpZHRoOjI1JSc+VGltZTwvdGg+PHRkIHN0eWxlPSd3aWR0aDoyNSUnPjEwOjMwIHBtPC90ZD48L3RyPjwvdGJvZHk+PHRib2R5Pjx0cj48dGggY2xhc3M9J3Nubyc+Uy5Oby48L3RoPjx0aCBjbGFzcz0ncGFydGljdWxhcnMnPlBhcnRpY3VsYXJzPC90aD48dGggY2xhc3M9J3ByaWNlJz5SYXRlPC90aD48dGggY2xhc3M9J3F0eSc+UXR5LjwvdGg+PHRoIGNsYXNzPSdhbW91bnQnPkFtb3VudDwvdGg+PC90cj48L3Rib2R5Pjx0Ym9keT48dHI+PHRkIGFsaWduPWNlbnRlcj4xPC90ZD48dGQgYWxpZ249Y2VudGVyPkNvbGQgQ29mZmVlPC90ZD48dGQgYWxpZ249Y2VudGVyPjgwPC90ZD48dGQgYWxpZ249Y2VudGVyPjE8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+ODA8L3RkPjwvdHI+PHRyPjx0ZCBhbGlnbj1jZW50ZXI+MjwvdGQ+PHRkIGFsaWduPWNlbnRlcj5Ib3QgQ29mZmVlPC90ZD48dGQgYWxpZ249Y2VudGVyPjUwPC90ZD48dGQgYWxpZ249Y2VudGVyPjE8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+NTA8L3RkPjwvdHI+PHRyPjx0ZCBhbGlnbj1jZW50ZXI+MzwvdGQ+PHRkIGFsaWduPWNlbnRlcj5rYWtkaTwvdGQ+PHRkIGFsaWduPWNlbnRlcj4yMDwvdGQ+PHRkIGFsaWduPWNlbnRlcj4yPC90ZD48dGQgYWxpZ249Y2VudGVyPjQwLjAwPC90ZD48L3RyPjx0cj48dGQgYWxpZ249Y2VudGVyPjQ8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+S2FqdSBLYXRsaTwvdGQ+PHRkIGFsaWduPWNlbnRlcj41MDwvdGQ+PHRkIGFsaWduPWNlbnRlcj4xPC90ZD48dGQgYWxpZ249Y2VudGVyPjUwPC90ZD48L3RyPjx0cj48dGQgYWxpZ249Y2VudGVyPjU8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+UG90YXRvIFBhcmF0aGE8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+MjU8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+NTwvdGQ+PHRkIGFsaWduPWNlbnRlcj4xMjUuMDA8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9J3dpZHRoOiAyOTBweDsgZGlzcGxheTogZmxleDsgIGJvcmRlci1ib3R0b206IDFweCBkYXNoZWQgYmxhY2snPjxkaXYgc3R5bGU9J3dpZHRoOiAxNjRweDsnPjxpbWcgc3JjPSdkaXN0L2ltZy90aGFua3lvdS5wbmcnIHN0eWxlPSd3aWR0aDo1MCU7cGFkZGluZzogMTBweDsnIGFsdD0nJz48L2Rpdj48ZGl2IHN0eWxlPSd3aWR0aDogMTI2cHg7Jz48dGFibGUgc3R5bGU9J3dpZHRoOiAxMDAlOyc+PHRmb290Pjx0cj48dGQgY2xhc3M9J3RvdGFsZm9vdCc+VG90YWw8L3RkPjx0ZCBjbGFzcz0ndG90YW1vdW50Jz4zNDU8L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ndG90YWxmb290Jz5DaGFyZ2U8L3RkPjx0ZCBjbGFzcz0ndG90YW1vdW50Jz4xNTwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSd0b3RhbGZvb3QnPk5ldCBBbW91bnQ8L3RkPjx0ZCBjbGFzcz0ndG90YW1vdW50JyBzdHlsZT0nYm9yZGVyLXRvcDogMXB4IGRhc2hlZCBibGFjayc+MzYwPC90ZD48L3RyPjwvdGZvb3Q+PC90YWJsZT48L2Rpdj48L2Rpdj48cD5QYXltZW50IE1vZGUgOiBVUEk8L3A+PHA+T3JkZXIgVGFrZW4gQnkgOiBhZG1pbjwvcD48cD5IYXZlIGEgbmljZSBEYXk8YnI+VGVjaG5vIEJ1ZGRpZXMgSVQgU29sdXRpb25zICs5MSA2MjYxNjI4ODQ4PC9wPjwvZGl2PjwvYm9keT48L2h0bWw+', 'admin', 1, '2021-02-06 17:01:05'),
(345, '23', 'Room-427', 15, 590, 10, 600, 'Card', 'PCFET0NUWVBFIGh0bWw+PGh0bWwgbGFuZz0nZW4nPjxoZWFkPjxtZXRhIGNoYXJzZXQ9J1VURi04Jz48bWV0YSBuYW1lPSd2aWV3cG9ydCcgY29udGVudD0nd2lkdGg9ZGV2aWNlLXdpZHRoLCBpbml0aWFsLXNjYWxlPTEuMCc+PG1ldGEgaHR0cC1lcXVpdj0nWC1VQS1Db21wYXRpYmxlJyBjb250ZW50PSdpZT1lZGdlJz48dGl0bGU+UmVjZWlwdCBleGFtcGxlPC90aXRsZT48L2hlYWQ+PGJvZHkgc3R5bGU9J2hlaWdodDoyOTBweDt3aWR0aDo0MDBweCc+PGRpdiBjbGFzcz0ndGlja2V0Jz48aW1nIHNyYz0naW1hZ2VzL2JpbGwtaGVhZC1idy5wbmcnIGFsdD0nTG9nbycgc3R5bGU9J2hlaWdodDoxMjBweDt3aWR0aDo0MDBweCc+PHA+R1NUIElOIDogMjNBQk5QSjgwMzREMlpVPC9wPjx0YWJsZSBzdHlsZT0nd2lkdGg6MTAwJSc+PHRib2R5Pjx0cj48dGggc3l0bGU9J3dpZHRoOjI1JSc+SW52b2ljZSBOby48L3RoPjx0ZCBzdHlsZT0nd2lkdGg6MjUlJz4yMzwvdGQ+PHRoIHN5dGxlPSd3aWR0aDoyNSUnPkRhdGU8L3RoPjx0ZCBzdHlsZT0nd2lkdGg6MjUlJz4wNi0wMi0yMDIxPC90ZD48L3RyPjx0cj48dGggc3l0bGU9J3dpZHRoOjI1JSc+VGFibGUvUm9vbTwvdGg+PHRkIHN0eWxlPSd3aWR0aDoyNSUnPlJvb20tNDI3PC90ZD48dGggc3l0bGU9J3dpZHRoOjI1JSc+VGltZTwvdGg+PHRkIHN0eWxlPSd3aWR0aDoyNSUnPjEwOjM0IHBtPC90ZD48L3RyPjwvdGJvZHk+PHRib2R5Pjx0cj48dGggY2xhc3M9J3Nubyc+Uy5Oby48L3RoPjx0aCBjbGFzcz0ncGFydGljdWxhcnMnPlBhcnRpY3VsYXJzPC90aD48dGggY2xhc3M9J3ByaWNlJz5SYXRlPC90aD48dGggY2xhc3M9J3F0eSc+UXR5LjwvdGg+PHRoIGNsYXNzPSdhbW91bnQnPkFtb3VudDwvdGg+PC90cj48L3Rib2R5Pjx0Ym9keT48dHI+PHRkIGFsaWduPWNlbnRlcj4xPC90ZD48dGQgYWxpZ249Y2VudGVyPkNvbGQgQ29mZmVlPC90ZD48dGQgYWxpZ249Y2VudGVyPjgwPC90ZD48dGQgYWxpZ249Y2VudGVyPjM8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMjQwPC90ZD48L3RyPjx0cj48dGQgYWxpZ249Y2VudGVyPjI8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+SG90IENvZmZlZTwvdGQ+PHRkIGFsaWduPWNlbnRlcj41MDwvdGQ+PHRkIGFsaWduPWNlbnRlcj4zPC90ZD48dGQgYWxpZ249Y2VudGVyPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDE1MDwvdGQ+PC90cj48dHI+PHRkIGFsaWduPWNlbnRlcj4zPC90ZD48dGQgYWxpZ249Y2VudGVyPmtha2RpPC90ZD48dGQgYWxpZ249Y2VudGVyPjIwPC90ZD48dGQgYWxpZ249Y2VudGVyPjU8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMTAwPC90ZD48L3RyPjx0cj48dGQgYWxpZ249Y2VudGVyPjQ8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+UG90YXRvIFBhcmF0aGE8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+MjU8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+NDwvdGQ+PHRkIGFsaWduPWNlbnRlcj4xMDAuMDA8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9J3dpZHRoOiAyOTBweDsgZGlzcGxheTogZmxleDsgIGJvcmRlci1ib3R0b206IDFweCBkYXNoZWQgYmxhY2snPjxkaXYgc3R5bGU9J3dpZHRoOiAxNjRweDsnPjxpbWcgc3JjPSdkaXN0L2ltZy90aGFua3lvdS5wbmcnIHN0eWxlPSd3aWR0aDo1MCU7cGFkZGluZzogMTBweDsnIGFsdD0nJz48L2Rpdj48ZGl2IHN0eWxlPSd3aWR0aDogMTI2cHg7Jz48dGFibGUgc3R5bGU9J3dpZHRoOiAxMDAlOyc+PHRmb290Pjx0cj48dGQgY2xhc3M9J3RvdGFsZm9vdCc+VG90YWw8L3RkPjx0ZCBjbGFzcz0ndG90YW1vdW50Jz41OTA8L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ndG90YWxmb290Jz5DaGFyZ2U8L3RkPjx0ZCBjbGFzcz0ndG90YW1vdW50Jz4xMDwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSd0b3RhbGZvb3QnPk5ldCBBbW91bnQ8L3RkPjx0ZCBjbGFzcz0ndG90YW1vdW50JyBzdHlsZT0nYm9yZGVyLXRvcDogMXB4IGRhc2hlZCBibGFjayc+NjAwPC90ZD48L3RyPjwvdGZvb3Q+PC90YWJsZT48L2Rpdj48L2Rpdj48cD5QYXltZW50IE1vZGUgOiBDYXJkPC9wPjxwPk9yZGVyIFRha2VuIEJ5IDogYWRtaW48L3A+PHA+SGF2ZSBhIG5pY2UgRGF5PGJyPlRlY2hubyBCdWRkaWVzIElUIFNvbHV0aW9ucyArOTEgNjI2MTYyODg0ODwvcD48L2Rpdj48L2JvZHk+PC9odG1sPg==', 'admin', 1, '2021-02-06 17:05:03'),
(346, '24', 'Table-B4', 5, 310, 20, 330, 'Cash', 'PCFET0NUWVBFIGh0bWw+PGh0bWwgbGFuZz0nZW4nPjxoZWFkPjxtZXRhIGNoYXJzZXQ9J1VURi04Jz48bWV0YSBuYW1lPSd2aWV3cG9ydCcgY29udGVudD0nd2lkdGg9ZGV2aWNlLXdpZHRoLCBpbml0aWFsLXNjYWxlPTEuMCc+PG1ldGEgaHR0cC1lcXVpdj0nWC1VQS1Db21wYXRpYmxlJyBjb250ZW50PSdpZT1lZGdlJz48dGl0bGU+UmVjZWlwdCBleGFtcGxlPC90aXRsZT48L2hlYWQ+PGJvZHkgc3R5bGU9J2hlaWdodDoyOTBweDt3aWR0aDo0MDBweCc+PGRpdiBjbGFzcz0ndGlja2V0Jz48aW1nIHNyYz0naW1hZ2VzL2JpbGwtaGVhZC1idy5wbmcnIGFsdD0nTG9nbycgc3R5bGU9J2hlaWdodDoxMjBweDt3aWR0aDo0MDBweCc+PHA+R1NUIElOIDogMjNBQk5QSjgwMzREMlpVPC9wPjx0YWJsZSBzdHlsZT0nd2lkdGg6MTAwJSc+PHRib2R5Pjx0cj48dGggc3l0bGU9J3dpZHRoOjI1JSc+SW52b2ljZSBOby48L3RoPjx0ZCBzdHlsZT0nd2lkdGg6MjUlJz4yNDwvdGQ+PHRoIHN5dGxlPSd3aWR0aDoyNSUnPkRhdGU8L3RoPjx0ZCBzdHlsZT0nd2lkdGg6MjUlJz4wNi0wMi0yMDIxPC90ZD48L3RyPjx0cj48dGggc3l0bGU9J3dpZHRoOjI1JSc+VGFibGUvUm9vbTwvdGg+PHRkIHN0eWxlPSd3aWR0aDoyNSUnPlRhYmxlLUI0PC90ZD48dGggc3l0bGU9J3dpZHRoOjI1JSc+VGltZTwvdGg+PHRkIHN0eWxlPSd3aWR0aDoyNSUnPjExOjA5IHBtPC90ZD48L3RyPjwvdGJvZHk+PHRib2R5Pjx0cj48dGggY2xhc3M9J3Nubyc+Uy5Oby48L3RoPjx0aCBjbGFzcz0ncGFydGljdWxhcnMnPlBhcnRpY3VsYXJzPC90aD48dGggY2xhc3M9J3ByaWNlJz5SYXRlPC90aD48dGggY2xhc3M9J3F0eSc+UXR5LjwvdGg+PHRoIGNsYXNzPSdhbW91bnQnPkFtb3VudDwvdGg+PC90cj48L3Rib2R5Pjx0Ym9keT48dHI+PHRkIGFsaWduPWNlbnRlcj4xPC90ZD48dGQgYWxpZ249Y2VudGVyPkNvbGQgQ29mZmVlPC90ZD48dGQgYWxpZ249Y2VudGVyPjgwPC90ZD48dGQgYWxpZ249Y2VudGVyPjI8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+MTYwLjAwPC90ZD48L3RyPjx0cj48dGQgYWxpZ249Y2VudGVyPjI8L3RkPjx0ZCBhbGlnbj1jZW50ZXI+SG90IENvZmZlZTwvdGQ+PHRkIGFsaWduPWNlbnRlcj41MDwvdGQ+PHRkIGFsaWduPWNlbnRlcj4zPC90ZD48dGQgYWxpZ249Y2VudGVyPjE1MC4wMDwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBzdHlsZT0nd2lkdGg6IDI5MHB4OyBkaXNwbGF5OiBmbGV4OyAgYm9yZGVyLWJvdHRvbTogMXB4IGRhc2hlZCBibGFjayc+PGRpdiBzdHlsZT0nd2lkdGg6IDE2NHB4Oyc+PGltZyBzcmM9J2Rpc3QvaW1nL3RoYW5reW91LnBuZycgc3R5bGU9J3dpZHRoOjUwJTtwYWRkaW5nOiAxMHB4OycgYWx0PScnPjwvZGl2PjxkaXYgc3R5bGU9J3dpZHRoOiAxMjZweDsnPjx0YWJsZSBzdHlsZT0nd2lkdGg6IDEwMCU7Jz48dGZvb3Q+PHRyPjx0ZCBjbGFzcz0ndG90YWxmb290Jz5Ub3RhbDwvdGQ+PHRkIGNsYXNzPSd0b3RhbW91bnQnPjMxMDwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSd0b3RhbGZvb3QnPkNoYXJnZTwvdGQ+PHRkIGNsYXNzPSd0b3RhbW91bnQnPjIwPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9J3RvdGFsZm9vdCc+TmV0IEFtb3VudDwvdGQ+PHRkIGNsYXNzPSd0b3RhbW91bnQnIHN0eWxlPSdib3JkZXItdG9wOiAxcHggZGFzaGVkIGJsYWNrJz4zMzA8L3RkPjwvdHI+PC90Zm9vdD48L3RhYmxlPjwvZGl2PjwvZGl2PjxwPlBheW1lbnQgTW9kZSA6IENhc2g8L3A+PHA+T3JkZXIgVGFrZW4gQnkgOiBhZG1pbjwvcD48cD5IYXZlIGEgbmljZSBEYXk8YnI+VGVjaG5vIEJ1ZGRpZXMgSVQgU29sdXRpb25zICs5MSA2MjYxNjI4ODQ4PC9wPjwvZGl2PjwvYm9keT48L2h0bWw+', 'admin', 1, '2021-02-06 17:39:34');

-- --------------------------------------------------------

--
-- Table structure for table `room_info`
--

CREATE TABLE `room_info` (
  `id` int(11) NOT NULL,
  `room_name` varchar(20) NOT NULL,
  `item` varchar(50) NOT NULL,
  `qty` int(11) NOT NULL,
  `unit_price` double NOT NULL,
  `total_price` double NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_info`
--

INSERT INTO `room_info` (`id`, `room_name`, `item`, `qty`, `unit_price`, `total_price`, `date`) VALUES
(16, 'Take Away', 'Cold Coffee', 1, 80, 80, '2021-02-01'),
(17, 'Take Away', 'Hot Coffee', 1, 50, 50, '2021-02-01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_info`
--

CREATE TABLE `tbl_info` (
  `id` int(11) NOT NULL,
  `tbl_name` varchar(20) NOT NULL,
  `item` varchar(50) NOT NULL,
  `qty` int(11) NOT NULL,
  `unit_price` double NOT NULL,
  `total_price` double NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_info`
--
ALTER TABLE `room_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_info`
--
ALTER TABLE `tbl_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth`
--
ALTER TABLE `auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=347;

--
-- AUTO_INCREMENT for table `room_info`
--
ALTER TABLE `room_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_info`
--
ALTER TABLE `tbl_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;