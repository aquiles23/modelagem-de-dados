-- --------            << Farmacia >>            ------------ --
--                                                                   --
--                    SCRIPT DE CRIACAO (DML)                        --
--                                                                   --
-- Data Criacao ...........: 25/10/2017                              --
-- Autor(es) ..............: José Aquiles Guedes de Rezende          --
-- Banco de Dados .........: MySQL                                   --
-- Banco de Dados(nome) ...: aula7exer2Evolucao1                              --
--                                                                   --
--                                                                   --
-- PROJETO => 1 Base de Dados                                        --
--         => 8 Tabelas                                              --
--                                                                   --
-- ----------------------------------------------------------------- --
use aula7exer2Evolucao1;

insert into RECEITA VALUES(1,"2017-09-02",9999999);
insert into VENDA VALUES("2017-09-03",1234,"roberto",8,50.00,2.00,1);
INSERT INTO FORNECEDOR VALUES(2222225,"ricardo",73555280,10,"conjunto p");
INSERT INTO FORNECEDOR VALUES(2222222,"richard",73555290,103,"conjunto h");
INSERT INTO PRODUTO VALUES(2222222,"shampoo x",21,"plastico",500,6.25);
INSERT INTO PERFUMARIA VALUES("shampoo","rosas",21);
INSERT INTO PRODUTO VALUES(2222225,"dipirona",22,"aluminio",500,1.50);
INSERT into MEDICAMENTO VALUES("10 elemento f e 9 elemento g","branca",22,1);
insert into vai VALUES(1234,21);
INSERT into telefone VALUES(99999999999,2222225);

insert into RECEITA VALUES(2,"2017-09-06",9999998);
insert into VENDA VALUES("2017-09-07",1235,"manuel",1,1.50,2.00,2);
INSERT INTO FORNECEDOR VALUES(2222240,"larissa",73555285,104,"conjunto f");
INSERT INTO FORNECEDOR VALUES(2222230,"emanoela",73555295,105,"conjunto j");
INSERT INTO PRODUTO VALUES(2222222,"sabonete y",23,"plastico",500,4.00);
INSERT INTO PERFUMARIA VALUES("sabonete","rosas",23);
INSERT INTO PRODUTO VALUES(2222225,"paracetamol",24,"aluminio",500,1.50);
INSERT into MEDICAMENTO VALUES("10 elemento n e 9 elemento g","branca",24,2);
insert into vai VALUES(1235,24);
INSERT into telefone VALUES(99999999998,2222225);

insert into RECEITA VALUES(3,"2017-09-01",9999298);
insert into VENDA(data,notaFiscal,cliente,quantidade,precoTotal,imposto) VALUES("2017-09-07",1236,"manuel",1,4.00,2.00);
INSERT INTO FORNECEDOR VALUES(2222241,"gustavo",73565285,1042,"conjunto n");
INSERT INTO FORNECEDOR VALUES(2222231,"leodenor",73855295,1052,"conjunto m");
INSERT INTO PRODUTO VALUES(2222241,"perfume z",25,"vidro",500,4.00);
INSERT INTO PERFUMARIA VALUES("perfume","rosas",25);
INSERT INTO PRODUTO VALUES(2222231,"ritalina",26,"aluminio",500,5.00);
INSERT into MEDICAMENTO VALUES("17 elemento a e 20 elemento g","preta",26,3);
insert into vai VALUES(1236,25);
INSERT into telefone VALUES(99999999997,2222241);
