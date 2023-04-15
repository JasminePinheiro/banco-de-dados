create database cadatro2
default character set utf8
default collate utf8_general_ci;

create table pessoas2 (
	id int not null auto_increment,
	nome varchar(20) not null,
    nascimento date,
	sexo enum('M', 'F', 'O'),
    peso decimal(5,2),
    altura decimal(3,1),
    nacionalidade varchar(20) default 'Brasil', 
    primary key (id)
) default charset utf8;


