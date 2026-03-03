CREATE TABLE `usuario` (
  `cpf` varchar(255) PRIMARY KEY,
  `nome` varchar(255) COMMENT 'Nome de usuario'
);

CREATE TABLE `conta` (
  `banco` int,
  `agencia` int,
  `num_conta` int,
  `cpf` varchar(255),
  `nome_agencia` varchar(255) COMMENT 'Nome da agência',
  PRIMARY KEY (`banco`, `agencia`, `num_conta`, `cpf`)
);

ALTER TABLE `conta` ADD FOREIGN KEY (`cpf`) REFERENCES `usuario` (`cpf`);
