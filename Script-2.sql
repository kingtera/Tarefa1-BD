create table tb_cidade(
	id					int,
	nome				varchar(30) not null,
	
	constraint 	pk_id_cidade primary key (id)
);

create table tb_associacao_profissional(
	id					int,
	idCidade 			int,
	nome				varchar(30) not null,
	descricao 			varchar(40) not null,
	
	foreign key (idCidade) references tb_cidade(id),
	
	constraint pk_id_associacao_profissional primary key (id)
);

create table tb_projeto(
	id					int,
	idCidade			int,
	nome				varchar(30) not null,
	descricao 			varchar(40) not null,
	
	foreign key (idCidade) references tb_cidade(id),
	
	constraint pk_id_projeto primary key (id)
);

create table tb_funcionario(
	id					int,
	idCidadeReside		int,
	idCidadeTrabalha 	int,
	nome				varchar(30) not null,
	salario 			numeric(9,2) not null,
	
	foreign key (idCidadeReside) references tb_cidade(id),
	foreign key (idCidadeTrabalha) references tb_cidade(id),
	
	constraint pk_id_funcionario primary key (id)
);

--Testes
insert into tb_cidade values(1, 'Presidente Prudente');
insert into tb_cidade values(2, 'Uberlandia');
insert into tb_associacao_profissional values(1,1,'Comerciantes','grupo de todos os comerciantes');
insert into tb_projeto values(1,1,'SAS', 'fazemos software para outras empresas');
insert into tb_funcionario values(1,2,1,'Eduardo', 30000.00);

select * from tb_cidade;
select * from tb_funcionario;
select * from tb_associacao_profissional;
select * from tb_projeto;