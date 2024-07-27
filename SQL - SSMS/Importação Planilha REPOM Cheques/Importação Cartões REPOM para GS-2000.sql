--------------------------------------------------------
-- Importação dos CARTÕES REPOM:
--------------------------------------------------------

-- 1 -> Copiar a planilha para \\SRVBD01\EDI
-- 1 -> Alterar nome para Cartões REPOM RODOMAIOR 00-00-2024.xlsx

-- 2 -> Conferir Sequência dos Cartões e obter os números do primeiro e do último:
select MIN(p.Codigo_Envelope), MAX(p.Codigo_Envelope), (MAX(p.Codigo_Envelope)-MIN(p.Codigo_Envelope)+1) 
FROM OPENROWSET('Microsoft.ACE.OLEDB.12.0','Excel 8.0;DATABASE=C:\EDI\REPOM RODOMAIOR 19-07-2024.xlsx','SELECT * FROM [Planilha3$A1:E10000]') P
where p.Codigo_Envelope is not null

-- 3 -> Cadastrar um novo Talão de Cheques na CG-105 e obter o Sequencial dele.

-- 4 -> Inserir os dados da planilha na tabela TalaoCheques_REPOM, conforme abaixo
--insert into TalaoCheques_REPOM
select 'CG', 105    --> Conta da REPOM na Rodomaior
     , 8          --> Sequencial do Talão cadastrado na etapa 3.
     , P.Codigo_Envelope, P.Codigo_Cartao, P.ID_Lote, P.Data_Vencimento --> campos da planilha da REPOM
FROM OPENROWSET('Microsoft.ACE.OLEDB.12.0','Excel 8.0;DATABASE=C:\EDI\REPOM RODOMAIOR 19-07-2024.xlsx','SELECT * FROM [Planilha3$A1:E10000]') P
where p.Codigo_Envelope is not null

--RODOMAIOR TRANSPORTES LTDA_PEDIDOS SOLICITADOS EM MAIO_24