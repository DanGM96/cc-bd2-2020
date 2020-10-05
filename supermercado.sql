create database supermercado;

create table produtos(
	cod_barras int(10) not null,
    marca varchar(20) not null,
    quant int(4) not null,
    primary key(cod_barras)
);

create table fornecedor(
	codigo int(4) not null,
    nome varchar(50) not null,
    telefone int(11) not null,
    primary key(codigo)
);

alter table produtos add column valor numeric(3,2);

alter table fornecedor change telefone celular int(11);
