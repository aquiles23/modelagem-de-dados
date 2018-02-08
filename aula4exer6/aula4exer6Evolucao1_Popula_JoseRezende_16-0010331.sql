-- --------            << DETRAN >>            ------------ --
--                                                                   --
--                    SCRIPT DE CRIACAO (DML)                        --
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

use detran;

insert into AGENTE values (00012222,"2016-02-29","alexandre");
insert into PROPRIETARIO values(99999999999,"eustacio","m","limoeiro","palmas","tocantins","1980-03-12","rua wagner piau",111,"quadra 8");
insert into LOCAL values (01,-15.3,20.9,50);
insert into VEICULO values ("jjj1234","lksdsdfj8i88",2012,"branco","000006","02",99999999999);
insert into INFRACAO values ("11:30","2017-09-21",33,100.00,80,55,"jjj1234",00012222,01);

insert into AGENTE values (00012223,"2010-02-20","artur");
insert into PROPRIETARIO values(99999999998,"milena","f","setor sul","gama","df","1980-03-30","rua do senai",102,"quadra 6");
insert into LOCAL values (15,-17.3,18.9,50);
insert into VEICULO values ("jjg1234","lksdsdfj8i89",2012,"preto","000006","02",99999999998);
insert into INFRACAO values ("20:00","2017-09-21",33,100.00,80,70,"jjg1234",00012223,15);

insert into AGENTE values (00012225,"2011-02-20","alana");
insert into PROPRIETARIO values(99999999988,"paulo","m","setor sul","gama","df","1980-03-30","rua do senai",108,"quadra 6");
insert into LOCAL values (12,-17.3,17.0,60);
insert into VEICULO values ("jgg1234","fksdsdfj8e89",2015,"preto","000020","02",99999999988);
insert into INFRACAO values ("20:00","2017-10-10",35,20.00,60,05,"jgg1234",00012225,12);