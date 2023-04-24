/* ------------------------------------------- Exercício 5 ------------------------------------------*/
CREATE DATABASE comunicado;
use comunicado; 
CREATE TABLE membros
(id INT AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
email VARCHAR(255),
dataNascimento DATE,
PRIMARY KEY (id));

CREATE TABLE lembrete
(id INT AUTO_INCREMENT,
membroId INT,
mensagem VARCHAR(255) NOT NULL,
PRIMARY KEY (id , membroId));