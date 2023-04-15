desc pessoas;
desc clientes;
  
# trocando o nome da tabela 
alter table pessoas
rename to clientes; 


# adicionando profissão depois do campo nome
alter table pessoas
add column profissao varchar(10) after nome; # não existe before

# adcionando a coluna código na primeira posição 
alter table pessoas
add codigo int first; # a palavra  column  é opcional

# eliminando a coluna profissao
alter table pessoas
drop column profissao;

# eliminando a coluna codigo 
alter table pessoas
drop column codigo;

# adicionando profissão no final
alter table pessoas
add column profissao varchar(10); 
 
 # modificando o tamanho da campo 
alter table pessoas
modify column profissao varchar(20);

# alterando o nome do campo
alter table pessoas 
change column profissao prof varchar(20);

select * from pessoas; 
