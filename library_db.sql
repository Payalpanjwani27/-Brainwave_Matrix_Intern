-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2025 at 04:35 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `author_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`author_id`, `name`) VALUES
(1, 'J.K. Rowling'),
(2, 'George Orwell'),
(3, 'General Manoj Mukund Naravane'),
(4, '	Manorama Mishra'),
(5, 'Robert C. Martin'),
(6, 'Herbert Schildt'),
(7, 'Dafydd Stuttard'),
(8, 'Jon Erickson'),
(9, 'Aurélien Géron '),
(10, ' Eric Ries'),
(11, 'James Clear'),
(12, ' Paulo Coelho');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `isbn` varchar(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `title`, `author_id`, `category_id`, `publisher_id`, `isbn`, `quantity`) VALUES
(1, 'Harry Potter', 1, 1, 1, '978-0747532743', 5),
(2, '1984', 2, 1, 1, '978-0451524935', 3),
(3, 'Four Stars of Destiny', 3, 1, 2, '978-0747', 7),
(4, 'Sanskriti ke Ayaam', 4, 2, 1, '97858225', 2),
(5, 'Clean Code', 5, 4, 3, '978-074723897', 7),
(6, 'Java:The Complete Reference', 6, 5, 4, '978-0451524902', 3),
(7, 'The Web Application Hacker’s Handbook', 7, 6, 5, '358-074723897', 10),
(8, 'Hacking: The Art of Exploitation', 8, 7, 6, '978-071233897', 5),
(9, 'Hands-On Machine Learning with Scikit-Learn, Keras, and TensorFlow', 9, 8, 7, '978-074724987', 1),
(10, 'The Lean Startup', 10, 9, 8, '978-074752849', 9),
(11, 'Atomic Habits', 11, 10, 9, '978-0450022211', 7),
(12, 'The Alchemist', 12, 11, 10, '978-0044558877', 10);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(1, 'Fiction'),
(2, 'Science'),
(3, 'History'),
(4, 'Software Development'),
(5, 'Programming (Java) '),
(6, 'Cybersecurity, Ethical Hacking '),
(7, 'Hacking, Security '),
(8, 'Machine Learning, AI'),
(9, 'Entrepreneurship, Business'),
(10, 'Self-Improvement, Productivity'),
(11, 'Fiction, Inspirational');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `member_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`member_id`, `name`, `email`, `phone`, `address`) VALUES
(1, 'Rohit Dhote', 'rohitdhote2@gmail.com', '1234567890', 'New York, USA'),
(2, 'Diva Gurbani', 'divagurbani5@gmail.com.com', '9876543210', 'London, UK'),
(3, 'Priya Raut', 'priyaraut1@gmail.com', '9424952787', 'Nagpur, IN'),
(4, 'Vihana Gurdev', 'gurdevvihana4@gmail.com', '9876742581', 'Pune, IN'),
(5, ' Anjali Rajpal', 'rajpalanjali08@gmail.com', '7445009988', 'France, USA'),
(6, 'Nilesh Panjwani', 'panjwaninilesh04@gmail.com', '9874561222', 'New York, USA'),
(7, 'Sharnam Morani', 'sharnam22@gmail.com', '9876542871', 'London, UK'),
(9, 'Dhurva Morani', 'moranidhurva09@gmail.com', '9834228516', 'Chinndwara, MP'),
(10, 'Sanjana Nagwani', 'nagwanisanjana8@gmail.com', '9876549842', 'Amravati, IN');

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `publisher_id` int(11) NOT NULL,
  `publisher_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`publisher_id`, `publisher_name`) VALUES
(1, 'Penguin Books'),
(2, 'HarperCollins'),
(3, 'Pearson'),
(4, 'McGraw Hill'),
(5, 'Wiley'),
(6, 'No Starch Press'),
(7, 'O Reilly Media'),
(8, 'Crown Publishing'),
(9, 'Avery (Penguin Random House)'),
(10, 'HarperOne');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` int(11) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `borrow_date` date NOT NULL,
  `return_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `book_id`, `member_id`, `borrow_date`, `return_date`) VALUES
(1, 1, 1, '2025-03-09', '2025-04-02'),
(2, 4, 2, '2025-03-19', '2025-03-29'),
(3, 2, 3, '2025-03-19', '2025-03-26'),
(4, 4, 2, '2025-03-19', '2025-03-24'),
(5, 2, 3, '2025-03-19', '2025-03-30'),
(6, 5, 4, '2025-03-19', '2025-03-30'),
(7, 4, 2, '2025-03-19', '2025-03-31'),
(8, 2, 3, '2025-03-19', '2025-04-01'),
(9, 5, 4, '2025-03-19', '2025-03-02'),
(10, 8, 5, '2025-03-19', '2025-03-03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`),
  ADD UNIQUE KEY `isbn` (`isbn`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `publisher_id` (`publisher_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`member_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`publisher_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `member_id` (`member_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `publisher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`),
  ADD CONSTRAINT `books_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`),
  ADD CONSTRAINT `books_ibfk_3` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`publisher_id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`),
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
