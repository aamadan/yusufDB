-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2022 at 06:39 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27




/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: maqaaxi
--

-- --------------------------------------------------------

--
-- Table structure for table cart
--

CREATE TABLE cart (
 id bigserial NOT NULL,
 magaca  varchar(200) NOT NULL,
 price decimal(18,2) NOT NULL,
 image varchar(200) NOT NULL,
 email varchar(200) NOT NULL,
 quantity  INTEGER NOT NULL DEFAULT 1
) 

--
-- Dumping data for table cart
--

INSERT INTO cart (id, magaca, price, image, email, quantity) VALUES
(8, 'Pizza', '5.00', 'pizza.jpg', 'dfs@email.com', 2),
(9, 'barris', '5.00', 'baris doro.jpg', 'dfs@email.com', 2),
(10, 'Pizza', '5.00', 'pizza.jpg', 'dfs@email.com', 2),
(11, 'barris', '5.00', 'baris doro.jpg', 'dfs@email.com', 2),
(23, 'barris', '5.00', 'baris doro.jpg', '\"yaxye@yaxye\"', 2),
(25, 'barris', '5.00', 'baris doro.jpg', '\"yaxye@yaxye\"', 2),
(26, 'Pizza', '10.00', 'pizza.jpg', '\"sumayo@sumayo.com\"', 2),
(27, 'barris', '5.00', 'baris doro.jpg', 'yaxye@yaxye', 2),
(28, 'barris', '5.00', 'baris doro.jpg', '\"sumayo@sumayo.com\"', 2),
(29, 'barris', '5.00', 'baris doro.jpg', '\"y@y.com\"', 2),
(30, 'Pizza', '10.00', 'pizza.jpg', '\"y@y.com\"', 2),
(31, 'Pizza 2', '19.00', '7.jpg', '\"y@y.com\"', 3),
(32, 'barris', '5.00', 'baris doro.jpg', '\"n@n.com\"', 2),
(33, 'Pizza', '10.00', 'pizza.jpg', '\"n@n.com\"', 2),
(34, 'Pizza 2', '19.00', '7.jpg', '\"n@n.com\"', 3);

-- --------------------------------------------------------

--
-- Table structure for table cusordered
--

CREATE TABLE cusordered (
  id bigserial NOT NULL,
  magac varchar(200) NOT NULL,
  telephone varchar(200) NOT NULL,
  ciwaan varchar(200) NOT NULL
);

--
-- Dumping data for table cusordered
--

INSERT INTO cusordered (id, magac, telephone, ciwaan) VALUES
(9, 'nuur ali xasan', '7895645', 'hodan');

-- --------------------------------------------------------

--
-- Table structure for table customers
--

CREATE TABLE customers (
  id bigserial NOT NULL,
  magac varchar(200) NOT NULL,
  ciwaan varchar(200) NOT NULL,
  telephone varchar(200) NOT NULL,
  email varchar(200) NOT NULL,
  password varchar(200) NOT NULL
);

--
-- Dumping data for table customers
--

INSERT INTO customers (id, magac, ciwaan, telephone, email, password) VALUES
(4, 'Yusuf', 'Hodan', '908908', 'dfs@email.com', '4554'),
(6, 'Nuur', 'hodan', '5566', 'dd@f.com', '54545'),
(7, 'Faarax', 'Hodan', '5456456', 'ff@ff.com', '4456465465'),
(8, 'Sumayo Shukri Hilowle', 'Hodan', '0617374848', 'sumayo@sumayo.com', '7788'),
(9, 'Yaxye Yuunis Mustaf', 'Hodan', '5963266633', 'yaxye@yaxye', '5522'),
(10, 'Sumayo', 'hodan', '08979798', 'y@y.com', '5533'),
(11, 'nuur', 'hodan', '989089', 'n@n.com', '123456'),
(12, 'xuseen', 'hodan', '8878', 'j@j', '2233');

-- --------------------------------------------------------

--
-- Table structure for table fulfilledcus
--

CREATE TABLE fulfilledcus (
  id bigserial NOT NULL,
  magac varchar(200) NOT NULL,
  telepphone varchar(200) NOT NULL
); 

--
-- Dumping data for table fulfilledcus
--

INSERT INTO fulfilledcus (id, magac, telepphone) VALUES
(4, 'Samiira Nuur Xasan', '4545655545'),
(5, 'Shukri Nuur Axmed', '5454231354');

-- --------------------------------------------------------

--
-- Table structure for table fulfilledorderes
--

CREATE TABLE fulfilledorderes (
  id bigserial NOT NULL,
  magac varchar(200) NOT NULL,
  quantity INTEGER NOT NULL,
  price decimal(18,2) NOT NULL,
  email varchar(200) NOT NULL,
  cusName varchar(200) NOT NULL,
  image varchar(200) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table orders
--

CREATE TABLE orders (
  id bigserial NOT NULL,
  magac varchar(200) NOT NULL,
  quantity INTEGER NOT NULL,
  price decimal(18,2) NOT NULL,
  email varchar(200) NOT NULL,
  cusName varchar(200) NOT NULL,
  image varchar(200) NOT NULL
); 

--
-- Dumping data for table orders
--

INSERT INTO orders (id, magac, quantity, price, email, cusName, image) VALUES
(1, 'Pizza', 1, '10.00', '\"sumayo@sumayo.com\"', 'Samiira Nuur Xasan', 'pizza.jpg'),
(2, 'barris', 1, '5.00', '\"sumayo@sumayo.com\"', 'Samiira Nuur Xasan', 'baris doro.jpg'),
(3, 'Pizza', 1, '10.00', '\"y@y.com\"', 'Shukri Nuur Axmed', 'pizza.jpg'),
(4, 'Pizza 2', 1, '19.00', '\"y@y.com\"', 'Shukri Nuur Axmed', '7.jpg'),
(5, 'barris', 1, '5.00', '\"y@y.com\"', 'Shukri Nuur Axmed', 'baris doro.jpg'),
(6, 'Pizza', 2, '10.00', '\"n@n.com\"', 'nuur ali xasan', 'pizza.jpg'),
(7, 'barris', 2, '5.00', '\"n@n.com\"', 'nuur ali xasan', 'baris doro.jpg'),
(8, 'Pizza 2', 3, '19.00', '\"n@n.com\"', 'nuur ali xasan', '7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table products
--

CREATE TABLE products (
  id bigserial NOT NULL,
  magac varchar(200) NOT NULL,
  price decimal(18,2) NOT NULL,
  quantity INTEGER NOT NULL,
  description varchar(200) NOT NULL,
  image varchar(200) NOT NULL
); 

--
-- Dumping data for table products
--

INSERT INTO products (id, magac, price, quantity, description, image) VALUES
(1, 'barris', '5.00', 52, 'fjsalkdfjlksd', 'baris doro.jpg'),
(2, 'Pizza', '10.00', 5, 'pizza aad u mac', 'pizza.jpg'),
(3, 'Pizza 2', '19.00', 300, 'pizza aad u mac', '7.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table cart
--
ALTER TABLE cart
  ADD PRIMARY KEY (id);

--
-- Indexes for table cusordered
--
ALTER TABLE cusordered
  ADD PRIMARY KEY (id);

--
-- Indexes for table customers
--
ALTER TABLE customers
  ADD PRIMARY KEY (id);

--
-- Indexes for table fulfilledcus
--
ALTER TABLE fulfilledcus
  ADD PRIMARY KEY (id);

--
-- Indexes for table fulfilledorderes
--
ALTER TABLE fulfilledorderes
  ADD PRIMARY KEY (id);

--
-- Indexes for table orders
--
ALTER TABLE orders
  ADD PRIMARY KEY (id);

--
-- Indexes for table products
--
ALTER TABLE products
  ADD PRIMARY KEY (id);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table cart
--
ALTER TABLE cart
  MODIFY id bigserial NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
  
  -- example
  ALTER TABLE cart ALTER COLUMN  id bigserial NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table cusordered
--
ALTER TABLE cusordered
  MODIFY id bigserial(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table customers
--
ALTER TABLE customers
  MODIFY id bigserial(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table fulfilledcus
--
ALTER TABLE fulfilledcus
  MODIFY id bigserial(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table fulfilledorderes
--
ALTER TABLE fulfilledorderes
  MODIFY id bigserial(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table orders
--
ALTER TABLE orders
  MODIFY id bigserial(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table products
--
ALTER TABLE products
  MODIFY id bigserial(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
