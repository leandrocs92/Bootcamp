CREATE TABLE pessoas (
    id INT NOT NULL PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(30) NOT NULL,
    nascimento DATE
)

INSERT INTO pessoas (nome, nascimento) VALUES('Leandro', '1992/07/16')
INSERT INTO pessoas (nome, nascimento) VALUES('Tania', '1993/10/25')
INSERT INTO pessoas (nome, nascimento) VALUES('Wilson', '1988/05/09')

ALTER TABLE `pessoa` ADD `genero` VARCHAR(1) NOT NULL AFTER `nascimento`;

UPDATE pessoas SET genero='M' WHERE id='1' AND id='3';
UPDATE pessoas SET genero='F' WHERE id='2';


--phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 10-Abr-2021 às 15:21
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dio_mysql`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `canais`
--

CREATE TABLE `canais` (
  `id_canal` int(11) NOT NULL,
  `nome_canal` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `canais`
--

INSERT INTO `canais` (`id_canal`, `nome_canal`) VALUES
(1, 'React'),
(2, 'PHP'),
(3, 'CSS'),
(4, 'HTML');

-- --------------------------------------------------------

--
-- Estrutura da tabela `videos`
--

CREATE TABLE `videos` (
  `id_video` int(11) NOT NULL,
  `nome_video` varchar(100) NOT NULL,
  `autor_video` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `videos`
--

INSERT INTO `videos` (`id_video`, `nome_video`, `autor_video`) VALUES
(1, 'Login com React', 'React'),
(2, 'Componentes com React', 'React'),
(3, 'Listas com PHP', 'PHP'),
(4, 'Funções com PHP', 'PHP'),
(5, 'Páginas com HTML', 'HTML');

-- --------------------------------------------------------

--
-- Estrutura da tabela `videos_canais`
--

CREATE TABLE `videos_canais` (
  `id_canais_video` int(11) NOT NULL,
  `fk_canal` int(11) NOT NULL,
  `fk_video` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `videos_canais`
--

INSERT INTO `videos_canais` (`id_canais_video`, `fk_canal`, `fk_video`) VALUES
(1, 2, 4),
(2, 2, 3),
(3, 1, 1),
(4, 1, 2),
(5, 4, 5);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `canais`
--
ALTER TABLE `canais`
  ADD PRIMARY KEY (`id_canal`);

--
-- Índices para tabela `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id_video`);

--
-- Índices para tabela `videos_canais`
--
ALTER TABLE `videos_canais`
  ADD PRIMARY KEY (`id_canais_video`),
  ADD KEY `fk_canal` (`fk_canal`),
  ADD KEY `fk_video` (`fk_video`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `canais`
--
ALTER TABLE `canais`
  MODIFY `id_canal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `videos`
--
ALTER TABLE `videos`
  MODIFY `id_video` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `videos_canais`
--
ALTER TABLE `videos_canais`
  MODIFY `id_canais_video` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `videos_canais`
--
ALTER TABLE `videos_canais`
  ADD CONSTRAINT `fk_canal` FOREIGN KEY (`fk_canal`) REFERENCES `canais` (`id_canal`),
  ADD CONSTRAINT `fk_video` FOREIGN KEY (`fk_video`) REFERENCES `videos` (`id_video`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */

--UTILIZANDO JOIN EM SQL
SELECT * FROM videos_canais AS vc JOIN videos as v ON vc.fk_video = v.id_video
JOIN canais ASC c ON vc.fk_canal = c.id_canal

--NÃO TRARÁ NENHUM VALOR QUE RETORNA NULL
SELECT * FROM videos_canais AS vc INNER JOIN videos as v ON vc.fk_video = v.id_video INNER JOIN canais ASC c ON vc.fk_canal = c.id_canal

--TRARÁ TODOS OS VALORES, MESMO QUE NÃO TENHAM RELACIONAMENTOS
SELECT * FROM videos_canais AS vc LEFT OUTER JOIN videos as v ON vc.fk_video = v.id_video OUTER JOIN canais ASC c ON vc.fk_canal = c.id_canal

--UNION só pode ser usado para retornar valores de tabelas com mesma quantidades de linhas
SELECT vc.id_canal, vc.nome_canal FROM videos_canais AS vc LEFT OUTER JOIN videos as v ON vc.fk_video = v.id_video
UNION 
SELECT c.id_canal, c.nome_canal RIGHT OUTER JOIN canais ASC c ON vc.fk_canal = c.id_canal