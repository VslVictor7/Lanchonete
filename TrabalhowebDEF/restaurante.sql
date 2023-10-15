-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29/05/2023 às 23:32
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `restaurante`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `id` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `senha` varchar(150) NOT NULL,
  `cpf` varchar(150) NOT NULL,
  `telefone` int(15) NOT NULL,
  `datanascimento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cadastro`
--

INSERT INTO `cadastro` (`id`, `nome`, `email`, `senha`, `cpf`, `telefone`, `datanascimento`) VALUES
(14, 'aaaaaa', 'Teste@gmail.com', '143624571', '21546724572', 2147483647, '0000-00-00'),
(29, '34513451', '13451345', '134513245625y', '21354612361', 1346513613, '6136-04-13'),
(30, '34513451', '13451345', '134513245625y', '21354612361', 1346513613, '6136-04-13'),
(31, '34513451', '13451345', '134513245625y', '21354612361', 1346513613, '6136-04-13'),
(32, '34513451', '13451345', '134513245625y', '21354612361', 1346513613, '6136-04-13'),
(33, '634563634', '3463453', '662346346', '62346346', 346346, '3455-05-24'),
(34, 'Victor Santos Lima', 'Testedeemail@gmail.com', 'Teste123', '12312312312', 2147483647, '1232-03-12'),
(35, '', 'Testedeemail@gmail.com', '123', '123', 123, '0000-00-00'),
(36, '', 'Testedeemail234234@gmail.com', '123234234', '123424242', 12334245, '0000-00-00'),
(37, 'ewrqwertqw', 'qertqertqtr', 'qertq5656', 'q56yyq5y425', 2147483647, '2004-03-10'),
(38, 'jimmy', 'jimmy@teste.com', 'teste345', '53624564567', 2147483647, '7643-03-12'),
(39, 'teste', 'oi32', 'oi328', '24235125265', 2147483647, '2004-03-10'),
(40, 'yh4e5g', 'gergerg', 'gwrt234t2', '34556636362', 2147483647, '2005-04-03'),
(41, 'ai', 'ai', 'a9', '53459203497', 2147483647, '3005-05-04');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cadastro`
--
ALTER TABLE `cadastro`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastro`
--
ALTER TABLE `cadastro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
