create database loja;

create table cliente(
	cpf int(11) not null,
    nome varchar(50) not null,
    nascimento date not null,
    primary key(cpf)
);

create table fidelidade(
	cpf_cliente int(11) not null,
    bonus numeric(4,2) not null,
    primary key(cpf_cliente),
    constraint fk_cliente_fidelidade foreign key(cpf_cliente) references cliente(cpf)    
);

create table artigo(
	id int(5) auto_increment not null,
    descricao varchar(50) not null,
    preco numeric(3,2) not null,
    quant int(3) not null,
    primary key(id)
);

create table compra(
	data_venda date not null,
    valor numeric(4,2) not null,
    cpf_cliente int(11) not null,
    id_artigo int(5) not null,
    constraint fk_cliente_compra foreign key(cpf_cliente) references cliente(cpf),
    constraint fk_artigo_compra foreign key(id_artigo) references artigo(id)
);

create table pedido(
	id_artigo int(5) not null,
    data_pedido date not null,
    quant int(3) not null,
    primary key(id_artigo),
    constraint fk_artigo_pedido foreign key(id_artigo) references artigo(id)    
);

create table log_operacoes(
	data_log date not null,
    operacao varchar(50) not null
);
