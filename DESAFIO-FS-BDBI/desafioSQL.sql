CREATE DATABASE bancodedados;

USE bancodedados;

CREATE TABLE funcionario(
	education INT, ## nivel de escolaridade
	educationfield VARCHAR(40), ## campo de estudo
	employeenum INT PRIMARY KEY ## id do funcionario
);

CREATE TABLE dadosfunc( ## dados do funcionario
	nome VARCHAR(20),
	idade INT,
    employeenum INT,
	FOREIGN KEY (employeenum) REFERENCES funcionario(employeenum),
	dpmt VARCHAR(40) PRIMARY KEY ## departamento, chave primaria
);

CREATE TABLE trabalho(
	stndhours INT, ##standard hours
	businesstravel VARCHAR(20),
	attrition TINYINT ##atrito, tipo boolean
);

ALTER TABLE dadosfunc ADD COLUMN gender VARCHAR(10);

INSERT INTO funcionario
VALUES
(3, 'Development Engineering', 1),
(3, 'Publicity and Advertising', 2),
(4, 'Design', 3);

INSERT INTO dadosfunc
VALUES
('Thais', 21, 1, 'Research and Development', 'Female'),
('Marcus', 22, 2, 'Sales', 'Male'),
('Agnes', 25, 3, 'Marketing', 'Female');

INSERT INTO trabalho
VALUES
(80, 'Travel_Frequently', 0),
(90, 'Travel_Frequently', 1),
(70, 'Travel_Rarely', 0);

SELECT * FROM funcionario;
SELECT * FROM dadosfunc;
SELECT * FROM trabalho;