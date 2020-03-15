use cadastro;

alter table pessoas add column profissao varchar(10); #adicionando coluna

alter table pessoas drop column profissao; #apagando coluna

alter table pessoas add column profissao varchar(10) after nome; #adicionando a coluna após NOME
 
alter table pessoas add column profissao varchar(10) first; #adicionando coluna como a primeira

alter table pessoas modify column profissao varchar(20); #alterando o tipo primitivo da coluna

alter table pessoas change column profissao prof varchar(20); #renomeando nome da coluna

alter table pessoa rename to pessoas; #renomear nome tabela

create table if not exists cursos(
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totaulas int unsigned,
ano year default '2020'
) default charset = utf8;

alter table cursos add column idcursos int first; 

alter table cursos add primary key(idcursos); #adicionando como chave primaria a tabela
alter table cursos rename to curso;

select * from pessoas;

select * from cursos;