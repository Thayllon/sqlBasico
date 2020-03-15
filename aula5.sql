use cadastro;

alter table curso rename to cursos;

insert into cursos value
('1', 'HTML5', 'Curso de HTML5', '40', '37', default), 
('2', 'CSS3', 'Curso de Curso de CSS3', '10', '9', 2017),
('3', 'PHP', 'Curo de PHP', '20', '15', default), 
('4', 'JavaScript', 'Curso de JavaScript', '30', '40', default),
('5', 'Java', 'Curso de Java', '40', '37', 2018);

insert into cursos value
('8', 'testes', 'teste', '1', '1', '1999');

update cursos set nome = 'HTML5' where idcursos = 1; #alterando o valor do campo nome do registro 1
update cursos set nome = 'PHP', ano = 2016 where idcursos = 3;
update cursos set ano = default where idcursos = 4;

delete from cursos where idcursos = 7 and 8; #deletando registro pelo id

truncate table cursos; #apaga todos os dados da tabela

show tables; #mostrar tabelas

show create table cursos; #mostra o comando feito para criar essa tabela
show create database cadastro; #mostra o comando feito para criar o banco

select * from cursos;