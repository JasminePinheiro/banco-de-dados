select * from gafanhotos
where sexo = 'F';

select * from gafanhotos
where nascimento between '2000-01-01' and '2015-12-31';

select * from gafanhotos
where profissao = 'Programador' and sexo = 'M'; 

select * from gafanhotos
where sexo = 'F' and nacionalidade = 'Brasil' and nome like 'j%'; 

select nome, nacionalidade from gafanhotos
where sexo = 'M' and nome like '%silva%' and peso < 100 and nacionalidade != 'Brasil'; 

select  max(altura) from gafanhotos
where sexo = 'M' and nacionalidade = 'Brasil';

select avg(peso) from gafanhotos;

select min(peso) from gafanhotos
where sexo = 'F' and nascimento between '1990-01-01' and '2000-12-31' and nacionalidade != 'Brasil';

select count(*) from gafanhotos
where sexo = 'F' and altura > '1.90';