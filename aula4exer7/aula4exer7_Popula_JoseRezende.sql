
-- --------            << FUI >>            ------------ --
--                                                                   --
--                    SCRIPT DE CRIACAO (DML)                        --
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

INSERT into DEPARTAMENTO(nome,matriculaGerente,numeroDepartamento) VALUES ("ronaldo",111,222);
insert into LOCALIZACAO VALUES ("avenida augusta","asa norte",111,222);
INSERT into PROJETO VALUES (12,"usina nuclear","avenida augusta","asa norte",111);
insert into EMPREGADO VALUES (1000.00,1254,"1996-9-23","Ricardo","m","avenida augusta","asa norte",111);
insert into DEPENDENTE VALUES ("João","m","1999-8-12","assistente",1254);
INSERT into pertence VALUES(222,1254);
INSERT into realiza VALUES("30:00:00","newton",12,1254);