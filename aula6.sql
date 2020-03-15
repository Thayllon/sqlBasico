use cadastro;

insert into pessoas values 
(default, 'Ines', '1967-02-12', 'F', '68.3', '1.42', 'Argentina', ''),
(default, 'Francisca', '1963-06-10', 'F', '48.9', '1.92', 'Argentina', ''),
(default, 'Geraldo', '1954-07-26', 'M', '67.3', '1.52', 'Brasil', ''),
(default, 'Jaqueline', '1963-08-28', 'F', '69.5', '1.79', 'Grecia', ''),
(default, 'Josefa', '1934-06-10', 'F', '65.8', '1.98', 'Croacia', ''),
(default, 'Joana', '1963-12-16', 'F', '88.3', '1.52', 'Argentina', ''),
(default, 'Romario', '1966-10-30', 'M', '98.4', '1.85', 'Brasil', ''),
(default, 'Pedro', '1968-05-14', 'M', '62.3', '1.36', 'Brasil', ''),
(default, 'Mateus', '1963-08-13', 'M', '91.3', '1.97', 'Argentina', ''),
(default, 'Mario', '1979-07-26', 'M', '72.4', '1.95', 'Brasil', ''),
(default, 'Antonio', '1967-02-12', 'M', '98.3', '1.72', 'Brasil', ''),
(default, 'Benedito', '1963-06-10', 'M', '78.9', '1.92', 'Brasil', ''),
(default, 'Cassia', '1954-07-26', 'F', '67.3', '1.52', 'Brasil', '');

select * from pessoas order by nome; #trazendo os dados
select * from pessoas order by nome desc; #trazendo os dados de forma descendente Z > A 

select sexo, nome, nascionalidade from pessoas; #trazendo apenas os campos descritos e na ordem do comando

select nome, nascimento, nascionalidade from pessoas order by nome, nascionalidade;

select * from pessoas where nascimento < '1960' order by nome; #filtrando pelo ano de nascimento e ordenando os nomes

select nome, carga from cursos where ano = 2020 order by nome; #trazendo dados apenas de nome e carga, filtrando o nome e ordenando pelo nome

select * from cursos where ano between 2018 and 2020 order by totaulas desc, nome asc; #between = entre esse periodo

select * from cursos where ano in (2017, 2020) order by nome; # in = dentro desse periodo

select * from cursos where carga > 20 and totaulas < 40; #irá trazer se for true nos 2 filtros (and || E)
select * from cursos where carga < 20 or totaulas < 20; #irá trazer for for true em 1 dos 2 filtros (or || OU)

select * from pessoas where nascionalidade like 'B%' order by nome; #buscando por 'B' na consulta
select * from pessoas where nascionalidade like '%il' and sexo = 'F' order by nascimento;
select * from pessoas where nascionalidade not like '%n%' order by nascionalidade, nome; #buscando os que não tem 'n' na consulta
select * from pessoas where nascionalidade like '%i_' order by nascionalidade, nome; #exige na busca algum caractere apos o 'i'

select distinct nascionalidade from pessoas order by nascionalidade; #elimina valores repetidos
select count(*) from pessoas where nascionalidade like 'g%'; #conta quantos registros possui esse filtro atribuido
select max(altura) from pessoas; #mostra a maior altura de pessoas
select min(altura) from pessoas; #mostra a menor altura de pessoas
select sum(totaulas) from cursos; #mostra a soma todos os valores do campo 'totaulas'
select avg(totaulas) from cursos; #mostra a media de todos os valores do campo 'totaulas' 

alter table pessoas change column nascionalidade nacionalidade varchar(20); #trocando nome da coluna ERROR PORTUGUES

select nome from pessoas where sexo = 'F' order by nome; #EX1
select * from pessoas where nascimento > '1960' and nascimento < '1970' order by nascimento; #EX2
select nome from pessoas where nacionalidade = 'Brasil' and sexo = 'M'; #EX3
select * from pessoas where nacionalidade = 'Brasil' and nome like 'M%'; #EX4
select nome, nacionalidade from pessoas where sexo = 'M' and nome like '%a%' and nacionalidade != 'Brasil' and peso > '80' ;#EX5
select max(altura) from pessoas where sexo = 'M' and nacionalidade = 'Brasil'; #EX6
select avg(peso) from pessoas;#EX7
select min(peso) from pessoas where sexo = 'F' and nacionalidade != 'Brasil' and nascimento > '1960' and nascimento < '1970';#EX8
select count(*) from pessoas where sexo = 'F' and altura > '1.90'; #EX9
 
describe pessoas;
select * from pessoas;