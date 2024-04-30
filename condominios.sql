USE administradoraDB;

CREATE TABLE condominios (
idCondominios INT unsigned auto_increment NOT NULL,
nome_condominio varchar(100),

primary key (idCondominios)
);

CREATE TABLE unid_condominiais (
idUnidCondominiais INT unsigned auto_increment NOT NULL, 

primary key(idUnidCondominiais)
);

CREATE TABLE donos (
idDonos INT unsigned auto_increment NOT NULL,

primary key (idDonos)
);

CREATE TABLE unid_condominiais_proprietarios (
idUnidCondo_proprie INT unsigned auto_increment NOT NULL, 
CONSTRAINT unidCondo_fk foreign key (uniCondo) REFERENCES uni_condominiais (idUnidCondominiais),
CONSTRAINT uniProprie_fk foreign key (uniProprie) REFERENCES donos (idDonos),
primary key (idUnidCondo_proprie)
);

CREATE TABLE alugueis(
idAlugueis INT unsigned auto_increment NOT NULL,

primary key (idAlugueis)
);

CREATE TABLE inquilinos(
idInquilinos INT unsigned auto_increment NOT NULL, 

primary key (idInquilinos)
);
