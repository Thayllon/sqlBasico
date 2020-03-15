use cadastro;

insert into pessoas 
(id, nome, nascimento, sexo, peso, altura, nascionalidade)
values
(default, 'José', '1985-09-12', 'M', '100', '1.85', 'Argentina');


insert into pessoas values
(default, 'João', '1985-09-12', 'M', '80.5', '1.95', 'Angola'),
(default, 'Marta', '1985-09-12', 'F', '55.5', '1.65', 'Brasil');

delete from pessoas where id = 11;

select * from pessoas;

describe pessoas;