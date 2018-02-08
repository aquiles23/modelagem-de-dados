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
USE detran;

DELETE from INFRACAO;
DELETE FROM VEICULO;
DELETE FROM LOCAL;
DELETE FROM PROPRIETARIO;
DELETE FROM AGENTE;