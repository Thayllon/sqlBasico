create database cadastro;

use cadastro;

create table pessoas (
nome varchar(30),
idade tinyint,
sexo char(1),
peso float,
altura float,
nascionalidade varchar(20)
);

describe pessoas;

drop database cadastro;