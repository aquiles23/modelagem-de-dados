-- --------            << tema 1 >>                     ------------ --
--                                                                   --
--                    SCRIPT DE CRIACAO (DDL)                        --
--                                                                   --
-- Data Criacao ...........: 22/11/2017                              --
-- Autor(es) ..............: José Aquiles Guedes de Rezende          --
-- Banco de Dados .........: MySQL                                   --
-- Banco de Dados(nome) ...: tema1                                   --
--                                                                   --
-- Data Ultima Alteracao ..: 22/11/2017                              --
--                                                                   --
-- PROJETO => 1 Base de Dados                                        --
--         => 4 Tabelas                                              --
--                                                                   --
-- ----------------------------------------------------------------- --
create DATABASE tema1;
use tema1;


CREATE TABLE CIDADE (
quantidadeHabitante int NOT NULL,
nome varchar(64) NOT NULL,
estado varchar(2) NOT NULL,
CONSTRAINT cidadePK PRIMARY KEY(nome,estado)
)ENGINE = InnoDB;

CREATE TABLE HOTEL (
razaoSocial varchar(64) not null,
nomeFantasia varchar(64) null,
totalQuarto int not null,
idHotel int not null,
estrela int(1) not null,
CONSTRAINT hotelPK PRIMARY key (idHotel)
)engine = InnoDB;

CREATE TABLE PONTO_TURISTICO (
idPontoTuristico int not null,
cep bigint(8) not null, 
bairro varchar(64) not null,
quadra varchar(20) not null,
lote int not null,
descricao text not null,
nomeCidade varchar(64) not null,
estado varchar(2) not null,
nome varchar(64) not null,
constraint cidadeFK FOREIGN KEY(nomeCidade, estado) REFERENCES CIDADE (nome, estado),
CONSTRAINT pontoTuristicoPK PRIMARY key (idPontoTuristico)
)engine = InnoDB;

CREATE TABLE RESTAURANTE (
precoMedio float not null,
nome varchar(64) not null,
idRestaurante int not null,
tipo varchar(64) not null,
idHotel int null,
idPontoTuristico int null,
CONSTRAINT hotelFK FOREIGN KEY(idHotel) REFERENCES HOTEL (idHotel),
CONSTRAINT restaurantePK PRIMARY key (idRestaurante),
CONSTRAINT pontoTuristicoFK FOREIGN key (idPontoTuristico) REFERENCES PONTO_TURISTICO(idPontoTuristico)
)engine = InnoDB;

CREATE TABLE ENDERECO (
cep bigint(8) not null,
bairro varchar(64) not null,
quadra varchar(20) not null,
lote int not null,
idRestaurante int null,
idHotel int null,
CONSTRAINT hotelFK1 FOREIGN KEY(idHotel) REFERENCES HOTEL (idHotel),
CONSTRAINT enderecoPK PRIMARY key(cep),
CONSTRAINT restauranteFK FOREIGN key(idRestaurante) references RESTAURANTE(idRestaurante)
)ENGINE = InnoDB;

CREATE TABLE MUSEU (
quantidadeSala int not null,
dataFundacao date not null,
idPontoTuristico int not null,
constraint museuFK FOREIGN key (idPontoTuristico) references PONTO_TURISTICO(idPontoTuristico)
)ENGINE = InnoDB;

CREATE TABLE IGREJA (
estilo varchar(30) not null,
dataConstrucao date not null,
idPontoTuristico int not null,
constraint igrejaFK FOREIGN key (idPontoTuristico) references PONTO_TURISTICO(idPontoTuristico)
)engine = InnoDB;



CREATE TABLE CASA_SHOW (
horarioInicio time not null,
diaFechamento varchar(20) not null,
idPontoTuristico int not null,
constraint casaShowFK FOREIGN key (idPontoTuristico) references PONTO_TURISTICO(idPontoTuristico
)engine=InnoDB;

CREATE TABLE FUNDADOR (
profissao varchar(30) not null,
dataObito date null,
nacionalidade varchar(64) not null,
nome varchar(64) not null,
dataNascimento date not null,
CONSTRAINT fundadorPK PRIMARY KEY(nome,dataNascimento)
)engine = InnoDB;

CREATE TABLE fundou (
nome varchar(64) not null,
dataNascimento date not null,
idPontoTuristico int not null,
CONSTRAINT fundadorFK FOREIGN KEY(nome,dataNascimento) REFERENCES FUNDADOR (nome,dataNascimento),
CONSTRAINT museuFK1 FOREIGN KEY(idPontoTuristico) REFERENCES MUSEU (idPontoTuristico)
)engine=InnoDB;

CREATE TABLE QUARTO (
quantidade int not null,
preco float not null,
tipo varchar(30) not null,
idHotel int not null,
CONSTRAINT hotelFK2 FOREIGN KEY(idHotel) REFERENCES HOTEL (idHotel)
)engine=InnoDB;

CREATE TABLE tem (
nome varchar(64) not null,
estado VARCHAR(2) not null,
idRestaurante int not null,
CONSTRAINT cidadeFK1 FOREIGN KEY(nome, estado) REFERENCES CIDADE (nome,estado),
CONSTRAINT restauranteFK1 FOREIGN KEY(idRestaurante) REFERENCES RESTAURANTE (idRestaurante)
)engine = InnoDB;

CREATE TABLE possui (
idHotel int not null,
nome varchar(64) not null,
estado VARCHAR(2) not null,
CONSTRAINT hotelFK3 FOREIGN KEY(idHotel) REFERENCES HOTEL (idHotel),
constraint cidadeFK2 FOREIGN KEY(nome,estado) REFERENCES CIDADE (nome,estado)
)engine= InnoDB;

