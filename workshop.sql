CREATE DATABASE workshop;

USE workshop;

CREATE TABLE imersionista(
	RGM INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    idade INT,
    periodo INT,
    curso VARCHAR(40) 
);
SELECT * FROM imersionista;

CREATE TABLE monitor(
	RGM INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    idade INT,
    periodo INT,
    curso VARCHAR(40)
);
SELECT * FROM monitor;

CREATE TABLE localizacao(
	id INT AUTO_INCREMENT PRIMARY KEY,
    cidade VARCHAR(50),
    estado VARCHAR(2),
    loc VARCHAR(20),
    bloco CHAR NOT NULL,
    sala VARCHAR(20) NOT NULL
);
SELECT * FROM localizacao;

CREATE TABLE imersao(
	id INT AUTO_INCREMENT,
    dia DATE NOT NULL,
    topico VARCHAR(40) NOT NULL,
	id_localizacao INT,
    RGM_monitor INT,
    RGM_imersionista INT,
    
    PRIMARY KEY (id, id_localizacao, RGM_monitor, RGM_imersionista),
    
    FOREIGN KEY(id_localizacao) REFERENCES localizacao(id),
    FOREIGN KEY(RGM_monitor) REFERENCES monitor(RGM),
    FOREIGN KEY(RGM_imersionista) REFERENCES imersionista(RGM)
);
SELECT * FROM imersao;

SELECT dia, topico, RGM_monitor FROM imersao;
SELECT RGM, periodo, curso FROM imersionista;

INSERT INTO localizacao VALUES (1, 'JP', 'PB', 'Unipê', 'I', 'LAB11');

SELECT * FROM localizacao;
SELECT * FROM localizacao WHERE estado = 'PB';
SELECT * FROM localizacao WHERE estado = 'SP';

## DROP TABLE imersao;
## DROP DATABASE workshop;
ALTER TABLE imersao ADD tempo CHAR(40);
SELECT * FROM imersao;
ALTER TABLE imersao DROP COLUMN tempo;

INSERT INTO localizacao 
VALUES 
(10, 'JP', 'PB', 'Unipê', 'I', 'LAB06'),
(2, 'JP', 'PB', 'Unipê', 'I', 'LAB07'),
(4, 'JP', 'PB', 'Unipê', 'I', 'LAB08'),
(3, 'JP', 'PB', 'Unipê', 'I', 'LAB03'),
(6, 'JP', 'PB', 'Unipê', 'I', 'LAB04'),
(5, 'JP', 'PB', 'Unipê', 'I', 'LAB11'),
(7, 'JP', 'PB', 'Unipê', 'I', 'LAB10'),
(8, 'JP', 'PB', 'Unipê', 'I', 'LAB09'),
(9, 'JP', 'PB', 'Unipê', 'I', 'LAB05');

INSERT INTO monitor
(RGM, nome, idade, periodo, curso)
VALUES 
(123456, 'Hermano Neto', '21', '4', 'CC'),
(123457, 'Daniel ', '26', '3', 'CC'),
(123458, 'Elaine', '30', '7', 'CC'),
(123459, 'Julio', '26', '8', 'CC');

SELECT * FROM monitor;

INSERT INTO imersionista 
(RGM, nome, idade, periodo, curso)
VALUES 
(123460, 'Jorge Neto', '42', '7', 'SI'),
(123461, 'Marcelo Queiroga', '18', '6', 'SI'),
(123462, 'Pedro paulo', '22', '5', 'CC'),
(123463, 'Jonas esticado', '52', '5', 'CC'),
(123464, 'Maria Eduarda', '22', '1', 'CC');

SELECT * FROM imersionista;

INSERT INTO imersao 
(dia, topico, id_localizacao, RGM_monitor, RGM_imersionista)
VALUES 
('2023-03-27', 'GIT', 5, 123457, 123460),
('2023-03-28', 'Analise de dados', 5, 123457, 123460),
('2023-03-29', 'SQL', 5, 123456, 123460),
('2023-03-30', 'Python', 5, 123459, 123460),
('2023-03-31', 'Power BI', 5, 123458, 123460),
('2023-03-28', 'GIT', 5, 123457, 123461),
('2023-03-29', 'Analise de dados', 5, 123457, 123461),
('2023-03-30', 'SQL', 5, 123456, 123461),
('2023-03-31', 'Python', 5, 123459, 123461),
('2023-03-29', 'SQL', 5, 123456, 123462),
('2023-03-27', 'GIT', 5, 123457, 123463),
('2023-03-28', 'Analise de dados', 5, 123457, 123463),
('2023-03-29', 'SQL', 5, 123456, 123463),
('2023-03-30', 'Python', 5, 123459, 123463),
('2023-03-31', 'Power BI', 5, 123458, 123463);

SELECT * FROM imersao;
SELECT * FROM imersao WHERE RGM_imersionista = 123460;
SELECT * FROM imersao WHERE RGM_imersionista = 123462;
SELECT * FROM imersao WHERE RGM_imersionista = 123464;
SELECT * FROM imersao WHERE topico = 'SQL';

SELECT * FROM ds_salaries;

ALTER TABLE ds_salaries RENAME COLUMN MyUnknownColumn TO id;
