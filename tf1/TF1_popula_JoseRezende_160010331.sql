-- --------            << tema 1 >>                     ------------ --
--                                                                   --
--                    SCRIPT DE CRIACAO (DML)                        --
--                                                                   --
-- Data Criacao ...........: 28/11/2017                              --
-- Autor(es) ..............: José Aquiles Guedes de Rezende          --
-- Banco de Dados .........: MySQL                                   --
-- Banco de Dados(nome) ...: tema1                                   --
--                                                                   --
-- Data Ultima Alteracao ..: 28/11/2017                              --
--                                                                   --
-- PROJETO => 1 Base de Dados                                        --
--         => 13 Tabelas                                              --
--                                                                   --
-- ----------------------------------------------------------------- --
use tema1;

insert into CIDADE(quantidadeHabitante,nome,estado) VALUES(10000,"Belem","PA");
INSERT into HOTEL(razaoSocial, nomeFantasia, totalQuarto, estrela) values("jose g. augusto","hotel rio belo",40, 2);
INSERT INTO PONTO_TURISTICO(cep, bairro, quadra, lote,descricao, idCidade, nome) values(72440899, "vila linda", "quadra 3", 108,"venha conhecer as pegadas dos grandes dinossauros que pisaram em belem há muito tempo atrás e eram o topo da cadeia alimentar da época", 1, "parque dos dinossauros");
INSERT INTO PONTO_TURISTICO(cep, bairro, quadra, lote,descricao, idCidade, nome) values(72440896, "vila velha", "quadra 5", 100,"Igreja construida no periodo colonial que era utilizada para a catequizar indios", 1, "nossa senhora de belem");
INSERT INTO PONTO_TURISTICO(cep, bairro, quadra, lote,descricao, idCidade, nome) values(72440894, "setor leste", "quadra 2", 109,"boa musica e diversão na casa de show alto rio", 1, "alto rio");
INSERT INTO RESTAURANTE(precoMedio, nome, tipo, idPontoTuristico) values(15.00,"alto rio", "comida tipica",3);
insert into ENDERECO(cep,bairro, quadra, lote, idHotel) values(75992233,"vila linda", "quadra 9",166, 1);
insert into MUSEU values(12,"2001-09-09",1);
INSERT INTO IGREJA values("barroco","1700-09-23",2);
INSERT INTO CASA_SHOW values("18:00","segunda",3);
INSERT INTO FUNDADOR(profissao,nacionalidade,nome,dataNascimento) values("arqueologo","brasileiro","Tadeu de Sousa Ramos", "1980-08-30");
INSERT into fundou values(1,1);
insert into QUARTO values(10,300,"quatro camas",1);
insert into tem values(1,1);
insert into possui values(1,1);


insert into CIDADE(quantidadeHabitante,nome,estado) VALUES(10000,"Salvador","BA");
INSERT into HOTEL(razaoSocial, nomeFantasia, totalQuarto, estrela) values("felipe antonio luso","hotel praia linda",80, 2);
INSERT INTO PONTO_TURISTICO(cep, bairro, quadra, lote,descricao, idCidade, nome) values(72440400, "pelourinho", "quadra 3", 107,"um museu onde pode ser visto e aprender como foi realizado o descobrimento do brasil", 2, "museu do descobrimento");
INSERT INTO PONTO_TURISTICO(cep, bairro, quadra, lote,descricao, idCidade, nome) values(72440430, "centro", "quadra 5", 100,"igreja com belos vitrais e belas esculturas de santos", 2, "nossa senhora de salvador");
INSERT INTO PONTO_TURISTICO(cep, bairro, quadra, lote,descricao, idCidade, nome) values(72440410, "orla do farol", "quadra 2", 109,"lugar para se escutar o melhor do axé", 2, "axé bahia");
INSERT INTO RESTAURANTE(precoMedio, nome, tipo, idHotel) values(40.00,"alto mar", "comida gourmet",2);
insert into ENDERECO(cep,bairro, quadra, lote, idHotel) values(75992399,"orla norte", "quadra 10",167, 2);
insert into MUSEU values(15,"2000-09-09",4);
INSERT INTO IGREJA values("barroco","1750-09-23",5);
INSERT INTO CASA_SHOW values("18:00","segunda",6);
INSERT INTO FUNDADOR(profissao,nacionalidade,nome,dataNascimento) values("historiador","brasileiro","Ricardo de Souza", "1979-08-30");
INSERT into fundou values(2,4);
insert into QUARTO values(10,600,"cobertura",2);
insert into tem values(2,2);
insert into possui values(2,2);