select * from pessoas order by nome desc; # * serve para mostrar todas as colunas
select * from pessoas order by nome asc;
select id, nome, nascimento from pessoas;  # podemos escolher as colunas

select peso, altura from pessoas
where nome = 'jasmine' ;

select * from pessoas
where peso >= '57'; 

select * from cursos
where ano between '2016' and '2018'; # enttre dois parametros 

select * from cursos 
where ano in ('2016', '2018')  # apenas os dois paramertros escolhidos 
order by nome asc; 

select * from cursos
where nome like 'a%'; # todos os cursos que começam com a letra A

select * from cursos
where nome like '%a'; # todos os cursos que finalizam com a letra A

select * from cursos
where nome like '%a%'; # todos os cursos que no meio tem a letra A

select * from cursos
where nome like 'ph%p'; 

select distinct nacionalidade from gafanhotos # distinct evita nomes repetidos
order by nacionalidade; # ordem crescente

select count(*) from cursos # conta a quantidade de cursos
where carga > 40; 

select max(carga) from cursos; # maior carga entre os cursos

select min(carga) from cursos; # menor carga entre os cursos

select sum(totaulas) from cursos;

select avg(totaulas) from cursos 
where ano > 2017;

select carga, count(nome) from cursos
group by carga;  # vai fazer uma agrupamento dos registros por carga

select carga, totaulas from cursos
where totaulas = 30
group by carga;

select carga, count(nome) from cursos 
where totaulas = 30
group by carga;

select ano, count(nome) from cursos
group by ano
having count(nome) > 3
order by ano; 

select ano, count(*)  from cursos # contar a quantidade de cursos 
where totaulas > 30 # onde o total de aulas seja maior que 30
group by ano # fazer um agrupameto por ano
having ano > 2013 # dentro desse agrupamento o ano tem que ser maior que 2013
order by count(*) desc; # ordenar em ordem crescente

select avg(carga) from cursos; 

select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos); 


