use cadastro;
select * from cursos;

describe cursos;

insert into cursos 
(idcursos, nome, decricao, carga, totaulas, ano)
values
('1', 'HTML4', 'CURSO DE HTML5', '40', '37', '2000'),
('2', 'ALGORITM', 'LÓGICA DE PROGRAMAÇÃO', '40', '10', '2000'),
('3', 'PGP', 'CURSO DE PHP', '45', '37', '2000');

select * from cursos;

# fazendo modificações nos dados 
update cursos # update = atualize
set nome = 'HTML5' # set = configure
where idcursos = '1'; #ecolher a linha onde está a informação

/*
modifique da tabela cursos
configurando o nome para HTML5
onde o idcurso é igual a 1
*/

update cursos
set nome = 'PHP', ano = '2015'
Where idcursos = '3'; # de preferêcia use chave primária

update cursos
set nome = 'ALGORITMO', carga = '40', ano = '2015'
where idcursos = '2'
limit 1; 

/* 
*	Por questão de segurança vamos limitar apenas uma única linha essa alteção, porém não é obrigatório, já que colocamos 
*	no where uma chave primaria 
*	limit 1;
 */

update cursos
set ano = '2050', carga = '500'
where ano = ' 2015';


/*
*	O padrão do MYSQL WORKBENCH é modificar ou seja usar o comando update apenas em uma única linha, 
*	atribuido no where a chave primária. Caso  queira alterar várias linhas de uma vez é só ir em: 
*	EDIT -> PREFERENCES -> SQL EDITOR -> desmarque o quadradinho do SAFES UPDATES -> OK -> RECONNECT TO DBMS
*/

