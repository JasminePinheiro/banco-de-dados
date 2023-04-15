use cadastro;
create table if not exists cursos (
	nome varchar(30) not null unique,
    decricao text, # text serve para textos logos, da para colocar varios valores
    carga int unsigned, # unsigned = sem sinal ( ou seja a gente não vai aceitar cargas negativas
    totaulas int,
    ano year default '2023' # se não for inserido o ano  vai ser cadstrado o ano 2023

) default charset = utf8;

desc cursos;

drop table cursos; 

alter table  cursos
add column idcursos int first;

alter table cursos
add primary key (idcursos);

select * from cursos; 