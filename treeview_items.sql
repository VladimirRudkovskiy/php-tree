SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `treeview_items`
--

CREATE TABLE IF NOT EXISTS `treeview_items` (
`id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `text` varchar(200) NOT NULL,
  `parent_id` varchar(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treeview_items`
--

INSERT INTO `treeview_items` (`id`, `name`, `text`, `parent_id`) VALUES
(1, 'task1', 'task1title', '0'),
(2, 'task2', 'task2title', '0'),
(3, 'task3', 'task1title3', '0'),
(4, 'task4', 'task2title4', '3'),
(5, 'task5', 'task1title4', '3'),
(6, 'task5', 'task2title5', '5'),
(7, 'task42', 'desc', '2'),
(8, 'task45', 'desc', '2'),
(9, 'task56', 'desc', '1'),
(10, 'task87', 'desc', '5'),
(11, 'task66', 'desc', '3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `treeview_items`
--
ALTER TABLE `treeview_items`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `treeview_items`
--
ALTER TABLE `treeview_items`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
