exec VerificaCTe 730000135911
--UPDATE LONTANO_GSe.dbo.CTe SET Status = 0 where Sequencial = 730000135911
--DELETE FROM LONTANO_GSe.dbo.CTe_log WHERE ID = 22986859 AND Sequencial = 730000135911



EXEC MonitoraMDFe 28188570
--delete FROM LONTANO_GSe.dbo.MDFe WHERE Sequencial = 1725709

SELECT * from RelacaoFretes where CodRelacaoFrete = 53012550 -- 16369.79
--UPDATE RelacaoFretes SET TotalRelacao = 27969.79 where CodRelacaoFrete = 53012550



---#21490 -- Erro ao cadastrar veículo - URGENTE
SELECT COUNT(*) AS Registros FROM ParametrosGerais WHERE SequenciaPlacasDenatran < 'U'
SELECT distinct (SequenciaPlacasDenatran)FROM ParametrosGerais WHERE SequenciaPlacasDenatran < 'v'
SELECT TOP (1) * FROM ParametrosGerais WHERE SequenciaPlacasDenatran < 'U'

--UPDATE  ParametrosGerais SET SequenciaPlacasDenatran = 'U' 

SELECT PlacaVeiculo,DataCriacao, * from Veiculos where PlacaVeiculo = 'UAI6-J21'


SELECT SerieConhecto,* from ConhecimentosTransporte where NumConhecto in ( 1760751, 1760750,209542) and CodUF = 'MT'
--UPDATE ConhecimentosTransporte SET SerieConhecto = '1' where Sequencial in (890000031253,890000031254)


select TarifaFreteMotorista, * from ConhecimentosTransporte where numConhecto in (3522, 3521) and CodUF = 'pr'

--DECLARE @ValorTarifa as float = 19.00
--update ConhecimentosTransporte set TarifaFreteMotorista = @ValorTarifa, TotalFreteMotorista = (@ValorTarifa * (QuantidadeSaida/1000)),
--ValorLiquidoFrete = (ValorTotalFrete-(@ValorTarifa * (QuantidadeSaida/1000))) 
--WHERE Sequencial = 640000065888


EXEC ConfereAjuste3Reais '2024-08-01', '2024-09-17 23:59', 'CONFERE'
EXEC ConfereAjuste3Reais '2024-08-01', '2024-08-31 23:59', 'AJUSTA'

select TipoDispositivoValePedagio,NumCartaoValePedagio,DataContratoValePedagio  from OrdemEmbarque where NumOrdemEmbarque = 25123961 -- 1 / 48009188
select TipoDispositivoValePedagio,NumCartaoValePedagio,DataContratoValePedagio  from OrdemEmbarque_log where NumOrdemEmbarque = 25123961 -- 1 / 48009188
--update OrdemEmbarque set TipoDispositivoValePedagio = 0, DataContratoValePedagio = '2025-01-01 00:00:00',EmpresaValePedagio = 'Banco Bradesco S/A' where NumOrdemEmbarque = 25123961


SELECT * from PedidosFrete where CodPedidoFrete in (89003041,89003043)

SELECT * FROM ConhecimentosTransporte where	NumConhecto IN (87360,87427) AND CodUF = 'MT' and SerieConhecto = 2
SELECT * FROM ConhecimentosTransporte_log where	NumConhecto IN (87360,87427) AND CodUF = 'MT' and SerieConhecto = 2

--ValorIRRFMotorista
--ValorRetidoINSS
--ValorRetidoSestSenat


SELECT Sequencial, CodVeiculo, CodMotorista, (CodUF + '-' + LTRIM(STR(NumConhecto))) AS CTRC, DataEmissao, SituacaoConhecto, TarifaFreteEmpresa, TarifaFreteMotorista, ValorAdiantamento, QuantidadeSaida, QuantidadeChegada, ValorTotalFrete, '' AS Tipo 
FROM ConhecimentosRodogrande WHERE (CodMotorista = 1090761) AND (DataEmissao BETWEEN '01/01/2010 00:00:00' AND '09/17/2024 23:59:29') ORDER BY DataEmissao

SELECT NumConhecto, CodUF,ConhecimentosTransporte.CodMotorista,NomeMotorista,ValorIRRFMotorista,ValorRetidoINSS,ValorRetidoSestSenat
 FROM ConhecimentosTransporte INNER JOIN Motoristas ON ConhecimentosTransporte.CodMotorista = Motoristas.CodMotorista WHERE (ConhecimentosTransporte.CodMotorista = 1090761) AND (ConhecimentosTransporte.DataEmissao BETWEEN '01/01/2010 00:00:00' AND '08/20/2024 23:59:29') ORDER BY ConhecimentosTransporte.Sequencial


 SELECT * from Rotas_log where CodRota = 112760 -- 2052
 --UPDATE Rotas SET DistanciaGoogleMaps = 2052 where CodRota = 112760 

 EXEC VerificaCTe 730000136030

 SELECT * from PermissoesAcesso WHERE CodUsuario IN (15342,15189)


 exec MASTER.dbo.ProcuraObjetos 'Lontano', 'O serviço fornecido é assegurado GMP+FSA', 'Tudo'
  exec MASTER.dbo.ProcuraObjetos 'Lontano_gse', 'O serviço fornecido é assegurado GMP+FSA', 'Tudo'


  select * from PermissoesAcesso_log where CodUsuario = 15342
  --UPDATE PermissoesAcesso SET TipoInclusao = 'N', TipoAlteracao = 'N',TipoExclusao = 'N',TipoConsulta ='S' where CodUsuario = 15342

  select * from ConhecimentosTransporte where NumConhecto = 730543 and CodUF = 'MT'
  exec MonitoraMDFe 50014027

  select * from RegistroAcessosSistema where CodUsuario = 13479 and DataCriacao > '2024-09-13 14:21:34.000'

  select * from Fornecedores where CodFornecedor = 1082600
  SELECT SituacaoFornecedor,* from Fornecedores_log where CodFornecedor = 1082600 ORDER BY DataLog desc

  select CodUsuarioCriacao,* from RelacaoFretes where CodRelacaoFrete = 53012500
  SELECT CodFornecedor, RazaoSocial FROM Fornecedores WHERE (CodFilial = 'UBL')
  SELECT CodFornecedor, RazaoSocial, SituacaoFornecedor,* FROM Fornecedores WHERE (CodFilial = 'UBL')
  SELECT CodFilial FROM FiliaisAgencias WHERE (TipoFilial = 'Matriz')




SELECT CodOrdemEmbarque,CIOT, Pedagio,* from ConhecimentosTransporte where NumConhecto = 414420  and CodUF = 'MG'
--UPDATE ConhecimentosTransporte set Pedagio = 276.60 where Sequencial = 40000036424 -- 276.60
SELECT EmpresaValePedagio, NumCartaoValePedagio, RotaSemParar,ValorPedagioSemParar, EixosSemParar FROM OrdemEmbarque WHERE NumOrdemEmbarque = 94061730 
--update OrdemEmbarque set  RotaSemParar = NULL, ValorPedagioSemParar = NULL  where  NumOrdemEmbarque = 94061730 
--update OrdemEmbarque set EmpresaValePedagio = 'Banco Bradesco S/A' , NumCartaoValePedagio = NULL, RotaSemParar = NULL, ValorPedagioSemParar = NULL  where  NumOrdemEmbarque = 94061730 

--EmpresaValePedagio	NumCartaoValePedagio	RotaSemParar	ValorPedagioSemParar
--Banco Bradesco S/A	4417812018370723	0	152.40

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MG' AND CTRC.Numconhecto = 414420                                   
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC


EXEC MonitoraMDFe 80030321 
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0 where Sequencial = 1728229

select * from Usuarios where NomeUsuario LIKE '%Demetrio%'-- 12475
select * from Usuarios where NomeUsuario LIKE '%Freitas%'-- 10277
select * from PermissoesAcesso where CodUsuario = 12475 and CodPrograma = 'VisualizarEmbarqSemRestricoes'

SELECT COUNT(*) AS Registros FROM PermissoesAcesso WHERE CodUsuario = 12475 AND CodPrograma = 'VisualizarEmbarqSemRestricoes' AND TipoEspecial = 'S'
SELECT COUNT(*) AS Registros FROM PermissoesAcesso WHERE CodUsuario = 10277 AND CodPrograma = 'VisualizarEmbarqSemRestricoes' AND TipoEspecial = 'S'

SELECT * FROM PermissoesAcesso WHERE CodUsuario = 12475 AND CodPrograma = 'VisualizarEmbarqSemRestricoes' AND TipoEspecial = 'S'
SELECT NomeUsuario,* FROM PermissoesAcesso
join Usuarios U ON U.CodUsuario = PermissoesAcesso.CodUsuario
WHERE 
 CodPrograma = 'VisualizarEmbarqSemRestricoes' AND TipoEspecial = 'S'


--SELECT CONVERT(DECIMAL(9,2), SUM(FretesNaoRecebidos + PerdasDanos + ImpostosSinistros + FranquiaSeguros + LimpezaCarretas )) AS Despesas From DespesasPerdasDanosRegiao WHERE Regiao =    AND Data BETWEEN '2024/09/01' AND '2024/09/01'


SELECT SituacaoConhecto,* from ConhecimentosTransporte where Sequencial = 190000038188
--UPDATE  ConhecimentosTransporte set SituacaoConhecto = 'Cancelado' where Sequencial = 190000038188

exec VerificaCTe 190000038188

SELECT SituacaoConhecto,* from ConhecimentosTransporte where NumConhecto = 441 and CodUF = 'SP'


SELECT TipoConhecimento,* from ConhecimentosTransporte where NumConhecto in (65444,65878) and CodUF = 'GO' and SerieConhecto = '2'

--UPDATE  ConhecimentosTransporte set TipoConhecimento = 'Complementado' where Sequencial in (30000161400)
--UPDATE  ConhecimentosTransporte set TipoConhecimento = 'Complemento' where Sequencial in (730000136053)


SELECT NumFormulario,CIOT,* from ConhecimentosTransporte where NumConhecto in (415749) and CodUF = 'MG' and SerieConhecto = '0'
SELECT CIOT, * from OrdemEmbarque where NumOrdemEmbarque = 27084328

select * from ConhecimentosTransporte CT
join OrdemEmbarque OE ON OE.NumOrdemEmbarque = CT.CodOrdemEmbarque
WHERE oe.CIOT = 'IRIOM' and CT.NumFormulario <> 0