create database natacao;

create table endereco(
	id_end 		int(5) auto_increment			not null,
    rua 		varchar(100)	not null,
    bairro		varchar(50)		not null,
    num_casa 	int(5)			not null,
    cep			int(8)			not null,
    cidade		varchar(50)		not null,
    primary key(id_end)
);

create table pessoa(
	cpf 		int(11) 		not null,
	nome 		varchar(100) 	not null,
    dat_nasc	date			not null,
    tel			int(11)			not null,
    id_end		int(5)			not null,
    primary key(cpf),
    constraint fk_endereco_pessoa foreign key(id_end) references endereco(id_end)
);

create table professor(
	id_prof		int(5) auto_increment			not null,
    cpf			int(11)			not null,
    titulac		varchar(50)		not null,
    primary key(id_prof),
    constraint fk_pessoa_professor foreign key(cpf) references pessoa(cpf)
);

create table turma(
	id_turm		int(5) auto_increment			not null,
    num_alun	int(2)			not null,
    horario		time			not null,
    duracao		int(1)			not null,
    dat_inic	date			not null,
    dat_fin		date			not null,
    modalide	varchar(50)		not null,
	id_prof		int(5)			not null,
    primary key(id_turm),
	constraint fk_professor_turma foreign key(id_prof) references professor(id_prof)
);

create table aluno(
	id_matr		int(5) auto_increment			not null,
    cpf			int(11)			not null,
    dat_matr	date			not null,
    altura		float(3)		not null,
    id_turm		int(5)			not null,
    primary key(id_matr),
	constraint fk_pessoa_aluno foreign key(cpf) references pessoa(cpf),
	constraint fk_turma_aluno foreign key(id_turm) references turma(id_turm)
);

create table aula(
    dat_aula	date			not null,
    presec		bool			not null,
    id_turm		int(5)			not null,
	id_matr		int(5)			not null,
	constraint fk_turma_aula foreign key(id_turm) references turma(id_turm),
	constraint fk_aluno_aula foreign key(id_matr) references aluno(id_matr)
);

create table monitor(
    id_turm		int(5)			not null,
	id_matr		int(5)			not null,
	constraint fk_turma_monitor foreign key(id_turm) references turma(id_turm),
	constraint fk_aluno_monitor foreign key(id_matr) references aluno(id_matr)
);

#	Insira 3 alunos, 3 instrutores, 3 monitores e 3 turmas;
describe endereco;
insert into endereco(rua,bairro,num_casa,cep,cidade) values('Danzinho','Lagoa rosa 1',21,300082,'Marrocos');
insert into endereco(rua,bairro,num_casa,cep,cidade) values('Alvorada 2','Lagoa rosa 2',25,3005662,'Marrocos');
insert into endereco(rua,bairro,num_casa,cep,cidade) values('Bonifacinho 2','Nadim Derzial',300,3002823,'Marrocos');

insert into endereco(rua,bairro,num_casa,cep,cidade) values('Gridim','ilha da baleia',28,3000822,'Marrocos');
insert into endereco(rua,bairro,num_casa,cep,cidade) values('Kileer','ilha da baleia',45,3007682,'Marrocos');
insert into endereco(rua,bairro,num_casa,cep,cidade) values('Bonifacinho 3','Nadim Derzial 1',302,3002823,'Marrocos');

describe pessoa;
insert into pessoa(cpf,nome,dat_nasc,tel,id_end) values(012213454,'Burguete','1999-12-05',987654321,1);
insert into pessoa(cpf,nome,dat_nasc,tel,id_end) values(012215454,'Borguinho','1997-11-05',987655321,2);
insert into pessoa(cpf,nome,dat_nasc,tel,id_end) values(012215854,'Damzinho','1999-10-06',987654662,3);
insert into pessoa(cpf,nome,dat_nasc,tel,id_end) values(012513254,'Gezuis','1989-09-03',98765421,4);
insert into pessoa(cpf,nome,dat_nasc,tel,id_end) values(012713254,'Gustavao','1989-12-07',98754321,5);
insert into pessoa(cpf,nome,dat_nasc,tel,id_end) values(012315454,'Mike o Mike','1988-07-05',98784321,6);

describe professor;
insert into professor(cpf,titulac) values(012513254,'Mestre em historia');
insert into professor(cpf,titulac) values(012713254,'Bacharel em nado ninja');
insert into professor(cpf,titulac) values(012315454,'Doutorado em Deboismo');

describe turma;
insert into turma(num_alun,horario,duracao,dat_inic,dat_fin,modalide,id_prof) values(20,'09:00:00',2,'2006-04-01','2007-04-01','borboleta',1);
insert into turma(num_alun,horario,duracao,dat_inic,dat_fin,modalide,id_prof) values(22,'06:00:00',3,'2006-04-03','2007-04-03','cachorrinho',2);
insert into turma(num_alun,horario,duracao,dat_inic,dat_fin,modalide,id_prof) values(25,'09:00:00',2,'2006-04-09','2007-04-09','sicronizado',3);

describe aluno;
insert into aluno(cpf,dat_matr,altura,id_turm) values(012213454,'2004-01-01',1.79,1);
insert into aluno(cpf,dat_matr,altura,id_turm) values(012215454,'2004-01-02',1.60,2);
insert into aluno(cpf,dat_matr,altura,id_turm) values(012215854,'2004-01-06',1.49,3);

describe aula;
insert into aula(dat_aula,presec,id_turm,id_matr) values('2006-04-01',1,1,1);
insert into aula(dat_aula,presec,id_turm,id_matr) values('2006-04-03',0,2,2);
insert into aula(dat_aula,presec,id_turm,id_matr) values('2006-04-09',1,3,3);

describe monitor;
insert into monitor(id_turm,id_matr) value(1,1);
insert into monitor(id_turm,id_matr) value(2,2);
insert into monitor(id_turm,id_matr) value(3,3);

#	Altere o nome dos 3 monitores e a turma que eles realizam suas monitorias;

describe pessoa;
update pessoa set nome='Joaquina Feniks' where cpf=012213454;
update pessoa set nome='B S2 L' where cpf=012215454;
update pessoa set nome='Wllissinho' where cpf=012215854;

describe monitor;
update monitor set id_turm=2 where id_matr=1;
update monitor set id_turm=3 where id_matr=2;
update monitor set id_turm=1 where id_matr=3;
