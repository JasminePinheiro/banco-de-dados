create database cadastro 
default character set utf8 #reconhece acentuações
default collate utf8_general_ci;
/*latin1_general_ci: Não há distinção entre letras maiúsculas e minúsculas. Buscando por “teste”, registros como “Teste” ou “TESTE” serão retornados.*/

create table pessoas(
	id int not null auto_increment,
	nome varchar(30) not null, # not null (campo obrigatório)
    nascimento date,
    sexo enum ('M', 'F'), 	# só serão aceitos apenas esses dois caracteres
    peso decimal (5, 2),	# serão aceitos 5 números. Sendo que 2 números ficaram depois da vírgula
    altura decimal (3, 2),  # serão aceitos 3 números no total. Sendo que 2 números ficaram depois da vírgula
    nacionalidade varchar(20), # se ninguém digitar nada por padrão será brasileiro    
	primary key (id)
) default charset = utf8;

insert into pessoas # insere valores na tabela
(nome, nascimento, sexo, peso, altura, nacionalidade) # o id está como auto incremento, então precisa digitar nenhuma informação
values
('Jasmine', '2002-01-14', 'F', '57.0', '1.60', 'Brasileira'),
('Pamela', '2002-01-14', 'F', '57.0', '1.60', 'Brasileira'),
('João', '2008-01-14', 'M', '60.0', '1.60', 'Brasieliro'),
('Ana', '2005-01-14', 'F', '45.0', '1.68', 'Brasielira'); 
use cadastro;
select * from pessoas; # lista todos os dados da tabela
#describe pessoas; or #desc pessoas; # # mostra os campos das tabelas 

