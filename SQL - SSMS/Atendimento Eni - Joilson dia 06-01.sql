-- Atendimento Eni MDF-e grupo
--select CodOrdemEmbarque, * from ConhecimentosTransporte where NumConhecto = 168881 and CodUF = 'ms'
--exec VerificaCTe 90000017536
--exec MonitoraMDFe 9019163

----update RODOMAIOR_GSe.dbo.MDFe set Status = 0 where CodManifestoCarga = 440392 
--select * from RODOMAIOR_GSe. dbo.CTe_log where Sequencial = 90000017536
----delete from RODOMAIOR_GSe. dbo.CTe_log where ID in (5171222,5171221)

-- Atendimento Joilson Grupo 06/01/2022

select * from Rotas where CodRota = 17718   -- cidade não encontrada ; Poxoreo/MT -> Primavera do Leste/MT
--update rotas set DescricaoRota = 'Poxoréu/MT -> Primavera do Leste/MT' where CodRota = 17718
select * from Cidades where CodCidade = 42510
--UPDATE Cidades SET NomeCidade = 'Poxoréu' where CodCidade = 42510

SELECT * FROM RODOMAIOR_GSe.dbo.Cidades_e WHERE CodCidade = 42510
--update RODOMAIOR_GSe.dbo.Cidades_e set NomeMunicipioIBGE = 'Poxoréu' where CodCidade = 42510


--17718, 18167, 18167, 18168, 162522

select * from Rotas where CodRota = 162522   -- Poxoréu
--update rotas set DescricaoRota = 'Poxoréu/MT -> Sao Francisco do Sul/SC' where CodRota = 162522


SELECT * FROM ConhecimentosTransporte WHERE CodUF = 'MT' AND NumConhecto = 1 and SerieConhecto = 'NE'
SELECT * FROM ConhecimentosTransporte WHERE (NumConhecto = 22384) AND (SituacaoConhecto <> 'Cancelado') AND (ModeloDocumento <> 'CT-e')

select * from Usuarios where NomeUsuario like '%Joilson%'








