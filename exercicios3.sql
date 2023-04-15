use cadastro;
describe pessoas;
describe cursos;

alter table pessoas add column cursoescolhido int;

alter table pessoas add foreign key (cursoescolhido) references cursos(idcurso);

update pessoas set cursoescolhido = '5' where id = '1'; 
update pessoas set cursoescolhido = '8' where id = '2'; 
update pessoas set cursoescolhido = '4' where id = '3'; 

select * from cursos; 
select * from pessoas; 

select p.nome, p.cursoescolhido, c.nome from pessoas as p
join cursos as c
on p.cursoescolhido = c.idcurso
order by p.nome;