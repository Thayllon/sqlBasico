use cadastro;

#add coluna na tabela
alter table pessoas add column cursopreferido int;

#add chave estrangeira na coluna criada e referenciando outra tabela 
alter table pessoas add foreign key (cursopreferido) references cursos(idcursos);

#atualizando cadastro adionando valor no novo campo com a chave primaria de outra tabela
update pessoas set cursopreferido = '5' where id = '1';

select nome, cursopreferido from pessoas;

#fazendo um INNER JOIN entre duas tabelas e trazendo resultados que as duas compartilham
select pessoas.nome, cursos.nome, cursos.ano from pessoas inner join cursos on cursos.idcursos = pessoas.cursopreferido;

#fazendo um LEFT OUTER JOIN trazendo os dados compartilhados e depois trazendo o restante da tabela da esquerda
select p.nome, c.nome, c.ano from pessoas as p left outer join cursos as c on c.idcursos = p.cursopreferido;

#fazendo um RIGHT OUTER JOIN trazendo os dados compartilhados e depois trazendo o restante da tabela da direita 
select p.nome, c.nome, c.ano from pessoas as p right outer join cursos as c on c.idcursos = p.cursopreferido;

select * from cursos;
select * from pessoas;   

describe cursos;
describe pessoas;