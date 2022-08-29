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

CREATE TABLE produto(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL UNIQUE,
preco_custo DOUBLE NOT NULL UNIQUE,
preco_venda DOUBLE NOT NULL UNIQUE,
ativo VARCHAR(255) NOT NULL DEFAULT 'S'
);

INSERT INTO produto(id, nome, preco_custo, preco_venda, ativo) VALUE(NULL, 'maconha', '10','5', 'S');
INSERT INTO produto(id, nome, preco_custo, preco_venda, ativo) VALUE(NULL, 'coca', '100','15', 'S');
INSERT INTO produto(id, nome, preco_custo, preco_venda, ativo) VALUE(NULL, 'crack', '150','25', 'S');

SELECT id, nome, preco_custo, preco_venda, ativo FROM produto;
