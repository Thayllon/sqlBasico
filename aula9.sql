use cadastro;
 
create table pessoa_assiste_curso (
id int not null auto_increment,
   data date,
   idpessoa int,
   idcurso int,
   primary key (id),
   foreign key (idpessoa) references pessoas(id),
   foreign key (idcurso) references cursos(idcursos)
) default charset = utf8;
 
insert into pessoa_assiste_curso values (default, '2018-02-15', '1', '3');

#O MAIS CONFUSO - JOIN COM DUAS TABELAS**
select p.nome, c.nome from pessoas as p 
inner join pessoa_assiste_curso as a on p.id = a.idpessoa 
#inner join cursos as c on c.idcursos = a.idcurso
order by p.nome;

#CONSEGUI 16:37 SHOW FALTAVA WHERE MULIRO DISSE AND *PAGOU BIZU ERRADO  registro-207
#TESTE PARA TRAZER OS QUE NÃO TEM CURSO CADASTRADO
select * from pessoas as p left join pessoa_assiste_curso as a on p.id = a.idpessoa where a.idpessoa is null;

delete from pessoa_assiste_curso where id = 6;

select * from pessoa_assiste_curso order by idpessoa;
select * from pessoas;
select * from cursos;