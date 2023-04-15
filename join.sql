use cadastro;
select nome, cursospreferidos from gafanhotos;
select nome, ano from cursos;

/* O inner join/join vai pegar a área que estão sendo refenciadas */
select g.nome, c.nome, c.ano from cursos as c # o AS estamos atribuindo um apelido C para cursos e G para gafanhotos
join gafanhotos as g # inner join == join 
on g.cursospreferidos = c.idcurso # fazendo junção entre tabelas
order by g.nome; # ordem alfabetica

/* right outer join vai mostrar todos os alunos, inclusive aqueles que não tem preferencia de cursos*/
select g.nome, c.nome, c.ano from cursos as c # o AS estamos atribuindo um apelido C para cursos e G para gafanhotos
right outer join gafanhotos as g #  right pq a palavra gafanhotos se encontra a direita
on g.cursospreferidos = c.idcurso # fazendo junção entre tabelas
order by g.nome; # ordem alfabetica


select g.nome, c.nome, c.ano from cursos as c 
left outer join gafanhotos as g # estou dando preferência em mostrar todos os cursos inclusive aqueles que nenhum aluno queria
on g.cursospreferidos = c.idcurso 
order by g.nome; 


/*
left outer join  == left join 
right outer join == right join 
inner join == join
*/