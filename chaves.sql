use cadastro; 
describe gafanhotos;

alter table gafanhotos add column cursospreferidos int; # adiciona uma nova coluna no final da tabela

alter table gafanhotos add foreign key (cursospreferidos) references cursos(idcurso); # criando uma chave estrangeira referenciando o idcurso da tabela curso

select * from gafanhotos;

select * from cursos;

update gafanhotos set cursospreferidos = '6' where id = '1'; # o curso preferido do daniel é do id 6 ou seja o MySQL

update gafanhotos set cursospreferidos = '4' where id = '2'; # o curso preferido da talita é do id 4 ou seja o PHP
