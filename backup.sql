-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.32-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para tech_solutions
CREATE DATABASE IF NOT EXISTS `tech_solutions` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `tech_solutions`;

-- Copiando estrutura para tabela tech_solutions.departamentos
CREATE TABLE IF NOT EXISTS `departamentos` (
  `id_departamento` int(11) NOT NULL AUTO_INCREMENT,
  `nome_departamento` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela tech_solutions.departamentos: ~10 rows (aproximadamente)
INSERT INTO `departamentos` (`id_departamento`, `nome_departamento`) VALUES
	(1, 'Recursos Humanos'),
	(2, 'Tecnologia da Informação'),
	(3, 'Marketing'),
	(4, 'Financeiro'),
	(5, 'Operações'),
	(6, 'Jurídico'),
	(7, 'Vendas'),
	(8, 'Pesquisa e Desenvolvimento'),
	(9, 'Suporte Técnico'),
	(10, 'Logística');

-- Copiando estrutura para tabela tech_solutions.funcionarioprojetos
CREATE TABLE IF NOT EXISTS `funcionarioprojetos` (
  `id_funcionario` int(11) NOT NULL,
  `id_projeto` int(11) NOT NULL,
  `data_atribuicao` date DEFAULT NULL,
  PRIMARY KEY (`id_funcionario`,`id_projeto`),
  KEY `id_projeto` (`id_projeto`),
  CONSTRAINT `funcionarioprojetos_ibfk_1` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionarios` (`id_funcionario`),
  CONSTRAINT `funcionarioprojetos_ibfk_2` FOREIGN KEY (`id_projeto`) REFERENCES `projetos` (`id_projeto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela tech_solutions.funcionarioprojetos: ~30 rows (aproximadamente)
INSERT INTO `funcionarioprojetos` (`id_funcionario`, `id_projeto`, `data_atribuicao`) VALUES
	(1, 1, '2023-01-15'),
	(1, 2, '2023-02-20'),
	(2, 2, '2023-03-10'),
	(2, 3, '2023-04-05'),
	(3, 3, '2023-05-10'),
	(3, 4, '2023-06-15'),
	(4, 1, '2023-07-20'),
	(4, 5, '2023-08-25'),
	(5, 1, '2023-09-01'),
	(5, 2, '2023-09-15'),
	(6, 2, '2023-10-01'),
	(6, 3, '2023-10-15'),
	(7, 3, '2023-11-01'),
	(7, 4, '2023-11-15'),
	(8, 4, '2023-12-01'),
	(8, 5, '2023-12-15'),
	(9, 1, '2023-01-10'),
	(9, 2, '2023-02-12'),
	(10, 3, '2023-03-14'),
	(10, 5, '2023-04-16'),
	(11, 4, '2023-05-18'),
	(12, 5, '2023-06-20'),
	(13, 1, '2023-07-22'),
	(14, 2, '2023-08-24'),
	(15, 3, '2023-09-26'),
	(16, 4, '2023-10-28'),
	(17, 5, '2023-11-30'),
	(18, 1, '2023-01-15'),
	(19, 2, '2023-02-20'),
	(20, 3, '2023-03-10');

-- Copiando estrutura para tabela tech_solutions.funcionarios
CREATE TABLE IF NOT EXISTS `funcionarios` (
  `id_funcionario` int(11) NOT NULL AUTO_INCREMENT,
  `primeiro_nome` varchar(50) DEFAULT NULL,
  `sobrenome` varchar(50) DEFAULT NULL,
  `id_departamento` int(11) DEFAULT NULL,
  `data_contratacao` date DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_funcionario`),
  KEY `fk_departamento` (`id_departamento`),
  CONSTRAINT `fk_departamento` FOREIGN KEY (`id_departamento`) REFERENCES `departamentos` (`id_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela tech_solutions.funcionarios: ~20 rows (aproximadamente)
INSERT INTO `funcionarios` (`id_funcionario`, `primeiro_nome`, `sobrenome`, `id_departamento`, `data_contratacao`, `salario`) VALUES
	(1, 'João', 'Silva', 1, '2015-06-23', 5000.00),
	(2, 'Maria', 'Oliveira', 2, '2016-09-12', 4500.00),
	(3, 'Carlos', 'Santos', 3, '2017-03-18', 4700.00),
	(4, 'Ana', 'Costa', 4, '2018-05-14', 5300.00),
	(5, 'Pedro', 'Pereira', 5, '2019-02-20', 4100.00),
	(6, 'Lucas', 'Martins', 6, '2020-09-30', 6000.00),
	(7, 'Camila', 'Souza', 7, '2021-07-01', 4700.00),
	(8, 'Fernanda', 'Lima', 8, '2017-10-10', 4800.00),
	(9, 'Bruno', 'Ferreira', 9, '2022-08-15', 4500.00),
	(10, 'Gabriel', 'Ribeiro', 10, '2016-11-11', 7000.00),
	(11, 'Juliana', 'Mendes', 1, '2015-04-18', 5200.00),
	(12, 'Felipe', 'Gomes', 2, '2019-12-01', 4600.00),
	(13, 'Paula', 'Araujo', 3, '2017-01-12', 4900.00),
	(14, 'Renato', 'Silveira', 4, '2021-03-19', 6500.00),
	(15, 'Larissa', 'Monteiro', 5, '2020-05-21', 6000.00),
	(16, 'Thiago', 'Barbosa', 6, '2018-09-09', 5500.00),
	(17, 'Leandro', 'Farias', 7, '2016-12-25', 4600.00),
	(18, 'Ricardo', 'Moura', 8, '2020-08-12', 4200.00),
	(19, 'Tatiane', 'Almeida', 9, '2021-11-05', 6100.00),
	(20, 'Jorge', 'Batista', 10, '2019-03-15', 5200.00),
	(21, 'Pedro', 'Lopes', 6, '2024-10-24', 8000.00),
	(22, 'Maria', 'Fernanda', 2, '2024-10-23', 2000.00);

-- Copiando estrutura para tabela tech_solutions.projetos
CREATE TABLE IF NOT EXISTS `projetos` (
  `id_projeto` int(11) NOT NULL AUTO_INCREMENT,
  `nome_projeto` varchar(100) DEFAULT NULL,
  `orcamento` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`id_projeto`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela tech_solutions.projetos: ~5 rows (aproximadamente)
INSERT INTO `projetos` (`id_projeto`, `nome_projeto`, `orcamento`) VALUES
	(1, 'Sistema de Gestão', 20000.00),
	(2, 'Aplicativo Mobile', 30000.00),
	(3, 'Expansão de Infraestrutura', 15000.00),
	(4, 'Reestruturação Organizacional', 25000.00),
	(5, 'Automação de Processos', 40000.00);

-- Copiando estrutura para tabela tech_solutions.salarios
CREATE TABLE IF NOT EXISTS `salarios` (
  `id_funcionario` int(11) DEFAULT NULL,
  `data_salario` date DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  KEY `id_funcionario` (`id_funcionario`),
  CONSTRAINT `salarios_ibfk_1` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionarios` (`id_funcionario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela tech_solutions.salarios: ~60 rows (aproximadamente)
INSERT INTO `salarios` (`id_funcionario`, `data_salario`, `salario`) VALUES
	(1, '2022-10-01', 4800.00),
	(1, '2022-05-01', 4700.00),
	(1, '2021-12-01', 4500.00),
	(2, '2022-10-01', 4300.00),
	(2, '2022-05-01', 4200.00),
	(2, '2021-12-01', 4100.00),
	(3, '2022-10-01', 4500.00),
	(3, '2022-05-01', 4400.00),
	(3, '2021-12-01', 4300.00),
	(4, '2022-10-01', 5100.00),
	(4, '2022-05-01', 5000.00),
	(4, '2021-12-01', 4900.00),
	(5, '2022-10-01', 4000.00),
	(5, '2022-05-01', 3900.00),
	(5, '2021-12-01', 3800.00),
	(6, '2022-10-01', 5800.00),
	(6, '2022-05-01', 5700.00),
	(6, '2021-12-01', 5600.00),
	(7, '2022-10-01', 4500.00),
	(7, '2022-05-01', 4400.00),
	(7, '2021-12-01', 4300.00),
	(8, '2022-10-01', 4700.00),
	(8, '2022-05-01', 4600.00),
	(8, '2021-12-01', 4500.00),
	(9, '2022-10-01', 6900.00),
	(9, '2022-05-01', 6800.00),
	(9, '2021-12-01', 6700.00),
	(10, '2022-10-01', 5100.00),
	(10, '2022-05-01', 5000.00),
	(10, '2021-12-01', 4900.00),
	(11, '2022-10-01', 4500.00),
	(11, '2022-05-01', 4400.00),
	(11, '2021-12-01', 4300.00),
	(12, '2022-10-01', 4900.00),
	(12, '2022-05-01', 4800.00),
	(12, '2021-12-01', 4700.00),
	(13, '2022-10-01', 6400.00),
	(13, '2022-05-01', 6300.00),
	(13, '2021-12-01', 6200.00),
	(14, '2022-10-01', 5900.00),
	(14, '2022-05-01', 5800.00),
	(14, '2021-12-01', 5700.00),
	(15, '2022-10-01', 5400.00),
	(15, '2022-05-01', 5300.00),
	(15, '2021-12-01', 5200.00),
	(16, '2022-10-01', 4300.00),
	(16, '2022-05-01', 4200.00),
	(16, '2021-12-01', 4100.00),
	(17, '2022-10-01', 6000.00),
	(17, '2022-05-01', 5900.00),
	(17, '2021-12-01', 5800.00),
	(18, '2022-10-01', 5800.00),
	(18, '2022-05-01', 5700.00),
	(18, '2021-12-01', 5600.00),
	(19, '2022-10-01', 5100.00),
	(19, '2022-05-01', 5000.00),
	(19, '2021-12-01', 4900.00),
	(20, '2022-10-01', 6800.00),
	(20, '2022-05-01', 6700.00),
	(20, '2021-12-01', 6600.00);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
