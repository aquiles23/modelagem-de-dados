-- --------            << DETRAN >>            ------------ --
--                                                                   --
--                    SCRIPT DE CRIACAO (DDL)                        --
--                                                                   --
-- Data Criacao ...........: 13/10/2017                              --
-- Autor(es) ..............: José Aquiles Guedes de Rezende          --
-- Banco de Dados .........: MySQL                                   --
-- Banco de Dados(nome) ...: detran                                  --
--                                                                   --
--                                                                   --
-- PROJETO => 1 Base de Dados                                        --
--         => 5 Tabelas                                              --
--                                                                   --
-- ----------------------------------------------------------------- --

CREATE DATABASE detran;

use detran;

CREATE TABLE AGENTE (
matricula bigint(8) not null,
dataContratacao date not null,
nome varchar(64) not null,
CONSTRAINT matriculaPK PRIMARY key (matricula)
);



CREATE TABLE PROPRIETARIO (
cpf bigint(11) not null,
nome varchar(64) not null,
sexo char(1) not null,
bairro varchar(32) not null,
cidade varchar(32) not null,
estado varchar(16) not null,
dataNascimento date not null,
rua varchar(30) null,
numero integer not null,
quadra varchar(15) not null,
CONSTRAINT cpfPK PRIMARY key (cpf)
);

CREATE TABLE LOCAL (
codLocal integer not null,
latitude DOUBLE not null,
longitude DOUBLE not null,
velocidadePermitida integer(5) NULL,
CONSTRAINT localPK PRIMARY KEY(codLocal)
);

CREATE TABLE VEICULO (
placa varchar(7) not null,
chassi varchar(17) not null,
ano int(4) not null,
cor varchar(16) not null,
idModelo int(6) not null,
idCategoria int(2) not null,
cpf bigint(11) not null,
CONSTRAINT placaPK PRIMARY key(placa),
CONSTRAINT cpfFK FOREIGN KEY(cpf) REFERENCES PROPRIETARIO (cpf)
);

CREATE TABLE INFRACAO (
hora time not null,
data date not null,
tipo integer not null,
valor float not null,
velocidadeAferida integer(5) not null,
codInfracao bigint not null,
placa varchar(7) not null,
matricula bigint(8) not null,
codLocal integer not null,
CONSTRAINT codInfraPK PRIMARY key(codInfracao),
CONSTRAINT placaFK FOREIGN KEY(placa) REFERENCES VEICULO (placa),
CONSTRAINT matriculaFK FOREIGN KEY(matricula) REFERENCES AGENTE (matricula),
CONSTRAINT codLocalFK FOREIGN key (codLocal) REFERENCES LOCAL (codLocal)
);