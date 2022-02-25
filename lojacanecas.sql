-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25-Fev-2022 às 01:33
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `lojacanecas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `canecas`
--

CREATE TABLE `canecas` (
  `id` int(10) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cor` varchar(10) DEFAULT NULL,
  `quantidade` int(100) DEFAULT NULL,
  `valor` double(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `canecas`
--

INSERT INTO `canecas` (`id`, `nome`, `cor`, `quantidade`, `valor`) VALUES
(1, 'Caneca do batman', 'Branca', 5, 20.00);

-- --------------------------------------------------------

--
-- Estrutura da tabela `quadros`
--

CREATE TABLE `quadros` (
  `id` int(10) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cor` varchar(10) DEFAULT NULL,
  `quantidade` int(100) DEFAULT NULL,
  `valor` double(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `quadros`
--

INSERT INTO `quadros` (`id`, `nome`, `cor`, `quantidade`, `valor`) VALUES
(1, 'Quadro de Gato', 'Bege', 2, 30.00);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `canecas`
--
ALTER TABLE `canecas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `quadros`
--
ALTER TABLE `quadros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `canecas`
--
ALTER TABLE `canecas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `quadros`
--
ALTER TABLE `quadros`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
