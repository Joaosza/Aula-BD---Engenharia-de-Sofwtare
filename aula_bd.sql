DROP DATABASE IF EXISTS teste;
CREATE DATABASE teste;

USE teste;

CREATE TABLE pessoa (
Pessoaid int,
nome varchar(250),
cpf int(11),
telefone int(50)

);

CREATE TABLE estado(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL UNIQUE,
sigla CHAR(2) NOT NULL UNIQUE,
ativo  CHAR(1) NOT NULL DEFAULT 'S'
);

INSERT INTO estado(id, nome, sigla, ativo)
VALUE (NULL, 'PARANÁ','PR', 'S');

SELECT id, nome, sigla, ativo FROM estado;