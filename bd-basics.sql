create database iftm;	# Criar database
drop database iftm;		# Deletar database

# Criar tabela
create table tb1(
	cpf int(11) not null,
    nome varchar(50) not null,
    rg int(9) not null,
    primary key(cpf)
);

# Tabela com FOREIGN KEY
create table tb2(
	id int(5) not null,
    nome varchar(50) not null,
    cpf int(11) not null,
    primary key(id),
    constraint fk_tb1_tb2 foreign key(cpf) references tb1(cpf)
);

describe tb1; # Mostra a tabela
alter table tb1 add column nota numeric(2,1) not null;		# Adicionar coluna
alter table tb1 change nota media numeric(2,1) not null;	# Renomear coluna
alter table tb1 modify column nome varchar(100);			# Modificar coluna
alter table tb1 drop column media;							# Remover coluna
alter table tb1 rename to teste;							# Renomear tablea
alter table tb2 drop foreign key fk_tb1_tb2;				# Remover FOREIGN KEY
drop table teste;											# Deletar tabela, não funciona se outra tabela depender dela via FOREIGN KEY
drop table tb2;												# Deletar tabela
drop database iftm;											# Deletar database, não funciona se houver tabelas dentro

describe tb1;
