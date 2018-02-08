-- --------            << Farmacia >>            ------------ --
--                                                                   --
--                    SCRIPT DE CRIACAO (DML)                        --
--                                                                   --
-- Data Criacao ...........: 02/11/2017                              --
-- Autor(es) ..............: José Aquiles Guedes de Rezende          --
-- Banco de Dados .........: MySQL                                   --
-- Banco de Dados(nome) ...: aula7exer2Evolucao1                     --
--                                                                   --
--                                                                   --
-- PROJETO => 1 Base de Dados                                        --
--         => 8 Tabelas                                              --
--                                                                   --
-- ----------------------------------------------------------------- --

use aula7exer2Evolucao1;

SELECT * from vai,PRODUTO,PERFUMARIA where vai.notaFiscal = 1236 AND (PRODUTO.codigoControle= PERFUMARIA.codigoControle) and (vai.codigoControle = PRODUTO.codigoControle) and (vai.codigoControle = PERFUMARIA.codigoControle);
INSERT INTO PRODUTO VALUES(2222222,"rexona",28,"aluminio",500,4.00);
INSERT INTO PERFUMARIA VALUES("desodorante","menta",28);
INSERT INTO PRODUTO VALUES(2222222,"axe",27,"aluminio",500,5.00);
INSERT INTO PERFUMARIA VALUES("desodorante","chocolate",27);
insert into vai VALUES(1236,28);
insert into vai VALUES(1236,27);
update VENDA set quantidade = 3, precoTotal = 13.00 where notaFiscal = 1236;
SELECT * from vai,PRODUTO,PERFUMARIA where vai.notaFiscal = 1236 AND (PRODUTO.codigoControle= PERFUMARIA.codigoControle) and (vai.codigoControle = PRODUTO.codigoControle and vai.codigoControle = PERFUMARIA.codigoControle);


SELECT * FROM FORNECEDOR, PRODUTO WHERE (FORNECEDOR.cgc = PRODUTO.cgc) and FORNECEDOR.cgc=2222222;


SELECT * FROM PRODUTO WHERE nome like("%a%");


SELECT * FROM VENDA WHERE data between "2017-09-01" and "2017-09-30";