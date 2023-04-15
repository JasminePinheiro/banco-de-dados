use cadastro;

# apagando uma unica linha
delete from cursos
where idcursos = '2';

# vai apagar todas as informações da tabela
truncate cursos; 

select * from cursos
