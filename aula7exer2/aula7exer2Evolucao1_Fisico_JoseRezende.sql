-- --------            << Farmacia >>            ------------ --
--                                                                   --
--                    SCRIPT DE CRIACAO (DDL)                        --
--                                                                   --
-- Data Criacao ...........: 25/10/2017                              --
-- Autor(es) ..............: José Aquiles Guedes de Rezende          --
-- Banco de Dados .........: MySQL                                   --
-- Banco de Dados(nome) ...: aula7exerEvolucao1                      --
--                                                                   --
--                                                                   --
-- PROJETO => 1 Base de Dados                                        --
--         => 8 Tabelas                                              --
--                                                                   --
-- ----------------------------------------------------------------- --
CREATE DATABASE IF NOT EXISTS aula7exer2Evolucao1;
use aula7exer2Evolucao1;

CREATE TABLE IF NOT EXISTS RECEITA (
idReceita int not null,
data date not null,
crm bigint not null,
CONSTRAINT receitaPK PRIMARY key(idReceita)
);

CREATE TABLE IF NOT EXISTS VENDA (
data date,
notaFiscal int not null,
cliente varchar(64) not null,
quantidade int not null,
precoTotal float not null,
imposto float not null,
idReceita int null,
CONSTRAINT receitaFK FOREIGN KEY(idReceita) REFERENCES RECEITA (idReceita),
CONSTRAINT vendaPK PRIMARY key(notaFiscal)
);

CREATE TABLE IF NOT EXISTS FORNECEDOR (
cgc bigint not null,
nome varchar(64) not null,
cep bigint(8) not null,
lote int not null,
complemento varchar(100) null,
CONSTRAINT fornecedorPK PRIMARY key (cgc)
);

CREATE TABLE IF NOT EXISTS PRODUTO (
cgc bigint not null,
nome varchar(64) not null,
codigoControle int not null,
embalagem varchar(30) not null,
estoque int not null,
preco float not null,
CONSTRAINT produtoPK PRIMARY key (codigoControle),
CONSTRAINT fornecedorFK FOREIGN key (cgc) REFERENCES FORNECEDOR(cgc)
);

CREATE TABLE IF NOT EXISTS PERFUMARIA (
tipo varchar(30) not null,
fragancia varchar(30) not null,
codigoControle int not null,
CONSTRAINT produtoFK FOREIGN key(codigoControle) REFERENCES PRODUTO(codigoControle)
);


CREATE TABLE IF NOT EXISTS telefone (
telefone bigint(11) not null,
cgc bigint not null,
CONSTRAINT fornecedorFK1 FOREIGN KEY(cgc) REFERENCES FORNECEDOR (cgc)
);

CREATE TABLE IF NOT EXISTS MEDICAMENTO (
formula varchar(100) not null,
tarja varchar(30) not null,
codigoControle int not null,
idReceita int not null,
CONSTRAINT produtoFK1 FOREIGN KEY(codigoControle) REFERENCES PRODUTO (codigoControle),
CONSTRAINT receitaFK1 FOREIGN KEY(idReceita) REFERENCES RECEITA (idReceita)
);

CREATE TABLE IF NOT EXISTS vai (
notaFiscal int not null,
codigoControle int not null,
CONSTRAINT vendaFK FOREIGN KEY(notaFiscal) REFERENCES VENDA (notaFiscal),
CONSTRAINT produtoFK2 FOREIGN KEY(codigoControle) REFERENCES PRODUTO (codigoControle)
);
