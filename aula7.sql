select distinct nascimento from pessoas; #recebo os valores que são diferentes

select nascimento, count(*) from pessoas group by nascimento; #alem de pegar os valores que se repetem, recebo tb quantos se repetem

select nacionalidade, count(*), sexo from pessoas where nacionalidade = 'argentina' group by sexo;
select nacionalidade, count(*), sexo from pessoas where nacionalidade = 'argentina' group by sexo having count(*) > 4;

#buscando por nacionalidade e agrupando qtd de cada  
select nacionalidade, count(*) from pessoas group by nacionalidade order by count(*) desc; 

#buscando por nacionalidade e trazendo grupos que tem mais ou 2 cadastros
select nacionalidade, count(*) from pessoas group by nacionalidade having count(*) >= 2 ; 

select sexo, count(id) from pessoas group by sexo;#EX1
select sexo, count(*) from pessoas where nascimento < '1960-01-01' group by sexo;#EX2
select nacionalidade, count(*) from pessoas where nacionalidade != 'Brasil' group by nacionalidade having count(*) > 3;#EX3

select altura, count(*) from pessoas where peso > '90' and altura > (select avg(altura) from pessoas) group by altura;#EX4

select altura,count(*) from pessoas where peso > '90' group by altura having altura > (select avg(altura)from pessoas);#EX4 outra forma de fazer

select * from pessoas;
select * from cursos;