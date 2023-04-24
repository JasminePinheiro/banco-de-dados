/* ------------------------------------------- Exercício 4 a,b ------------------------------------------*/
DROP DATABASE usuarios;
CREATE DATABASE usuarios
DEFAULT CHARACTER SET UTF8 # reconhece acentuações
DEFAULT COLLATE UTF8_GENERAL_CI;

CREATE TABLE projetos (
	id INT NOT NULL AUTO_INCREMENT,
	titulo VARCHAR (45),
	data DATE,
	url VARCHAR (100),
	PRIMARY KEY (id)
);
drop table projetos;

INSERT INTO projetos 
(titulo, url, data)
VALUES 
('Teste1' , 'teste.com.br', '2017-01-20');

CREATE TABLE usuario (
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR (45),
	email VARCHAR (45),
	senha VARCHAR (45),
	PRIMARY KEY (id)
);

INSERT INTO usuario 
(nome, email, senha)
VALUES 
('Jasmine', 'Teste' , '123');

CREATE TABLE comentarios (
	id INT NOT NULL AUTO_INCREMENT,
	comentario TEXT,
	data DATE,
    id_usuario INT,
    id_projeto INT,
	PRIMARY KEY (id),
	FOREIGN KEY (id_usuario) REFERENCES usuario(id),
	FOREIGN KEY (id_projeto) REFERENCES projetos(id)
);
drop table comentarios;
INSERT INTO comentarios 
(comentario, data)
VALUES 
('Comentario Teste' , '2017-01-28'),
('Comentario Teste2' , '2017-01-28'),
('Comentario Teste3' , '2017-01-28');


CREATE TABLE likes_por_projeto (
    id_usuario INT,
    id_projeto INT,
	FOREIGN KEY (id_projeto) REFERENCES projetos(id),
	FOREIGN KEY (id_usuario) REFERENCES usuario(id)
);

CREATE TABLE likes_por_comentario (
    id_usuario INT,
    id_comentario INT,
	FOREIGN KEY (id_usuario) REFERENCES usuario(id),
    FOREIGN KEY (id_comentario) REFERENCES comentarios(id)
);

SELECT * FROM comentarios; 
SELECT * FROM usuario; 
SELECT * FROM projetos; 

DELIMITER $
CREATE DEFINER = CURRENT_USER TRIGGER `usuarios`.`comentarios_AFTER_INSERT` AFTER INSERT ON `comentarios` FOR EACH ROW
BEGIN
UPDATE comentarios
SET comentarios = comentarios - NEW.comentarios
WHERE id = NEW.id_comentario;
END;
DELIMITER;

CREATE TRIGGER trigger_likes
AFTER INSERT ON likes_por_projeto
FOR EACH ROW
BEGIN
  DECLARE likes_count INT;
  SELECT COUNT(*) INTO likes_count FROM likes_por_projeto WHERE id_projeto = NEW.id_projeto;
  IF likes_count = 1000 THEN
    INSERT INTO projeto_mais_popular (id_projeto) VALUES (NEW.id_projeto);
  END IF;
END;






