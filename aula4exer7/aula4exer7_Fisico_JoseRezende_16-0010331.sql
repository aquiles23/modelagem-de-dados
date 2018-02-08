-- --------            << FUI >>            ------------ --
--                                                                   --
--                    SCRIPT DE CRIACAO (DDL)                        --
--                                                                   --
-- Data Criacao ...........: 12/10/2017                              --
-- Autor(es) ..............: José Aquiles Guedes de Rezende          --
-- Banco de Dados .........: MySQL                                   --
-- Banco de Dados(nome) ...: fui                                     --
--                                                                   --
-- Data Ultima Alteracao ..: 12/10/2017                              --
--    + Criacao nova tabela                                          --
--                                                                   --
-- PROJETO => 1 Base de Dados                                        --
--         => 7 Tabelas                                              --
--                                                                   --
-- ----------------------------------------------------------------- --
CREATE DATABASE fui;
use fui;

CREATE TABLE DEPARTAMENTO (
nome varchar(64) not null,
matriculaGerente integer not null,
numeroDepartamento integer not null,
numeroProjeto integer null,
CONSTRAINT numeroDepPK PRIMARY KEY (numeroDepartamento)
);

CREATE TABLE LOCALIZACAO (
rua varchar(30) not null,
bairro varchar(30) not null,
numeroResidencial integer not null,
numeroDepartamento integer not null,
CONSTRAINT numeroDepFK FOREIGN KEY(numeroDepartamento) REFERENCES DEPARTAMENTO (numeroDepartamento),
CONSTRAINT enderecoPK PRIMARY KEY(rua,bairro,numeroResidencial)
);

CREATE TABLE PROJETO (
numeroProjeto integer not null,
nome varchar(30) not null,
rua varchar(30) not null,
bairro varchar(30) not null,
numeroResidencial integer NOT null,
CONSTRAINT numeroProjPK PRIMARY key (numeroProjeto),
CONSTRAINT enderecoFK FOREIGN KEY(rua,bairro,numeroResidencial) REFERENCES LOCALIZACAO (rua,bairro,numeroResidencial)
);

ALTER TABLE DEPARTAMENTO
ADD CONSTRAINT numeroProjFK FOREIGN KEY(numeroProjeto) REFERENCES PROJETO (numeroProjeto);



CREATE TABLE EMPREGADO (
salario float not null,
matricula integer not null,
dataNascimento date not null,
nome varchar(64) not null,
sexo varchar(1) not null,
rua varchar(30)  null,
bairro VARCHAR(30) NULL,
numeroResidencial INTEGER null,
CONSTRAINT matriculaPK PRIMARY KEY(matricula),
CONSTRAINT enderecoFK1 FOREIGN KEY (rua,bairro,numeroResidencial) REFERENCES LOCALIZACAO (rua,bairro,numeroResidencial)
);

CREATE TABLE DEPENDENTE (
nome varchar(64) not null,
sexo varchar(1) not null,
dataNascimento date not null,
tipoDependencia varchar(30) not null,
matricula integer not null,
CONSTRAINT matriculaFK FOREIGN KEY(matricula) REFERENCES EMPREGADO (matricula)
);


CREATE TABLE pertence (
numeroDepartamento integer not null,
matricula integer not null,
CONSTRAINT numeroDepPK1 FOREIGN KEY(numeroDepartamento) REFERENCES DEPARTAMENTO (numeroDepartamento),
CONSTRAINT matriculaFK1 FOREIGN KEY(matricula) REFERENCES EMPREGADO (matricula)
);

CREATE TABLE realiza (
cargaHoraria time not null,
surpevisor varchar(64) not null,
numeroProjeto integer not null,
matricula integer not null,
CONSTRAINT numeroProjFK1 FOREIGN KEY(numeroProjeto) REFERENCES PROJETO (numeroProjeto),
CONSTRAINT matriculaFK2 FOREIGN KEY (matricula) REFERENCES EMPREGADO (matricula),
CONSTRAINT realizaPK PRIMARY KEY (numeroProjeto,matricula)
);