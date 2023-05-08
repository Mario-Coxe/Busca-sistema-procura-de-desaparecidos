-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 19-Dez-2022 às 19:07
-- Versão do servidor: 10.1.38-MariaDB
-- versão do PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portalcoxe`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `adddress` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL,
  `AdminEmailId` varchar(255) NOT NULL,
  `Is_Active` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `Is_Active`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', '$2y$12$ZxI1OoZne5H7qBM/6gixieSYm329vXZQz9JecHSxBlPpl8vLLWS.e', 'busca59@gmail.com', 1, '2022-01-20 17:51:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` char(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext,
  `Description` longtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'Portal Coxe', '<h3><b>MissÃ£o</b></h3><h5><span style=\"font-weight: 600;\">&nbsp; &nbsp;</span> &nbsp; &nbsp; <font face=\"Times New Roman\">A nossa MissÃ£o Ã© atingir o maior nÃºmero de pessoas e ajudar desenvolvedores(programadores) e amantes de tecnolÃ³gia a terem um portal que possa lhes trazer estes conhecimentos e as melhores novidades de TI de maneira rÃ¡pida, eficaz e eficiÃªnte. </font></h5><h5><font face=\"Times New Roman\">&nbsp;&nbsp;&nbsp;&nbsp;Este portal se dedica a publiÃ§Ã£o de conteÃºdos relacionados a ProgramaÃ§Ã£o , TecnolÃ³gias tanto a nÃ­vel nacional quanto internacional, este site foi criado por MÃ¡rio Coxe, de nacionalidade Angolana visando trazer informaÃ§Ãµes credÃ­veis e tutorias que muito vÃ£o ajudar os desenvolvidores Angolanos. Por este motivo fale sobre ele com Amigos, FamÃ­liares e colegas, Ajude a crescer!</font></h5><p><br></p><p><span style=\"font-family: &quot;Hind Madurai&quot;, sans-serif;\">Criando por:</span><span style=\"font-weight: 600; font-family: &quot;Hind Madurai&quot;, sans-serif;\">&nbsp; </span><span style=\"font-weight: 600;\"><font face=\"Times New Roman\"><a href=\"http://www.portalcoxe.ao/mariocoxe\" target=\"_blank\">MÃ¡rio Coxe</a></font></span></p><p><span style=\"font-family: &quot;Hind Madurai&quot;, sans-serif;\">NÃºmero de telefone</span><span style=\"font-weight: 600; font-family: &quot;Hind Madurai&quot;, sans-serif;\">:&nbsp;</span><b>+224 922723380</b></p><p><span style=\"font-family: &quot;Hind Madurai&quot;, sans-serif;\">Email</span><span style=\"font-weight: 600; font-family: &quot;Hind Madurai&quot;, sans-serif;\">: cox3site59@gmail.com</span></p>', '2018-06-30 18:01:03', '2022-12-19 17:36:30');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext,
  `PostImage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
