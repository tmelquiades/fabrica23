CREATE DATABASE desafio;

USE desafio;

## 1) crie 3 tabelas com 3-5 colunas, no minimo 3 tipos diferentes de variaveis no total
CREATE TABLE compras(
	tipodecliente VARCHAR(20),
    valordacompra FLOAT,
    formadepagamento VARCHAR(20)
);

CREATE TABLE escola(
	disciplina VARCHAR(30),
    qtdealunos INT,
    turno VARCHAR(10)
);

CREATE TABLE brasileirao(
	clube VARCHAR(20),
    vitorias INT,
    derrotas INT
);

## 2) adicione uma nova coluna em cada tabela
ALTER TABLE compras ADD COLUMN itens int;

ALTER TABLE escola ADD COLUMN prof VARCHAR(20);

ALTER TABLE brasileirao ADD COLUMN empates INT;

## 3) insira dados nas colunas de cada tabela
INSERT INTO compras
VALUES
('regular', 322.50, 'cartao', 8),
('promocional', 85.90, 'dinheiro', 3),
('regular', 66.44, 'cartao', 2);

INSERT INTO escola
VALUES
('matematica', 30, 'manha', 'jurema'),
('historia', 25, 'tarde', 'nicacio'),
('biologia', 32, 'manha', 'hipocrites');

INSERT INTO brasileirao
VALUES
('palmeiras', 23, 3, 12),
('internacional', 20, 5, 13),
('fluminense', 21, 10 ,7);

## 4) remova uma coluna de cada tabela
ALTER TABLE compras DROP COLUMN tipodecliente;

ALTER TABLE escola DROP COLUMN turno;

ALTER TABLE brasileirao DROP COLUMN empates;

## 5) mostre o conteudo de cada tabela
SELECT * FROM compras;

SELECT * FROM escola;

SELECT * FROM brasileirao;

## 6) mostre o conteudo de cada tabela utilizando alguma condicao especifica
SELECT * FROM compras WHERE formadepagamento = 'cartao';

SELECT disciplina, qtdealunos FROM escola;

SELECT clube, vitorias FROM brasileirao;

## 7) baixe um arquivo csv do kaggle e importe-o para o mySQL. em seguida, mostre o conteudo da tabela

SELECT * FROM desafio.pokemon;