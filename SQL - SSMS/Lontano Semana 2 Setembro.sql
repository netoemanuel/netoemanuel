SELECT * FROM ContasPagar where CodContasPagar = 3003732

SELECT * FROM ContasPagas where CodContasPagar = 3003732 -- 555.00
--UPDATE ContasPagas SET ValorTotalPago =  558.72 where CodContasPagar = 3003732

SELECT * from MovimentacaoBancaria where CodMovBancaria = 1014937 --2519.39
--UPDATE MovimentacaoBancaria SET ValorMovimento = (ValorMovimento  + 3.72) where CodMovBancaria = 1014937 


select * from TalaoCheques where CodFilial = 'cg' and CodContaBancaria = 1 and TipoTalao = 'Formulário' and SeqTalao = 21 --Em Uso / 15
--UPDATE TalaoCheques set SituacaoTalao = 'Concluído', QtdeCheques = 0 where CodFilial = 'cg' and CodContaBancaria = 1 and SeqTalao = 21

SELECT * FROM ConhecimentosTransporte where NumConhecto = 640746  and CodUF = 'GO'

EXEC VerificaCTe 50000019825
EXEC Grava_CTe 50000019825
--UPDATE LONTANO_GSe.dbo.CTe SET Status = 0 where Sequencial = 50000019825


EXEC VerificaCTe 730000135821
EXEC VerificaCTe 260000025289
SELECT * from LONTANO_GSe.dbo.CTe where Sequencial = 730000135821
SELECT * from LONTANO_GSe.dbo.CTe where Sequencial = 260000025289

--15240800036859591900559300000059241373002850
--15240800036859591900559300000059241373002850
--15240800036859591900559300000059241373002850


select * from Usuarios where CodFilial = 'RDN' and SituacaoUsuario = 'A'


select * from ConhecimentosTransporte where NumConhecto = 640897 and CodUF = 'GO'

EXEC VerificaCTe 280000183966
--UPDATE LONTANO_GSe.dbo.CTe SET Status = 0 where Sequencial = 280000183966
--exec Grava_CTe 870000009076

--DELETE FROM LONTANO_GSe.dbo.CTe_log WHERE ID = 22980545 AND Sequencial = 280000183966


select TOP(100) * from LONTANO_GSe.dbo.tblLog_operacao order BY DT_Hs desc

SELECT TOP (10)* from LONTANO_GSe.dbo.CTe  order BY  DataCriacao desc
EXEC VerificaCTe 640000066928


select ctrc.Sequencial,ctrc.NumConhecto,ctrc.CodUF,cte.Status,* from conhecimentostransporte ctrc inner join LONTANO_GSe.dbo.cte cte on cte.Sequencial = ctrc.Sequencial where ctrc.TipoConhecimento = 'Substituto' and ctrc.CodUF = 'MT' order by ctrc.DataCriacao desc

SELECT * from LONTANO_GSe.dbo.AuditDBLog where Objeto like'%CTE%' order BY DataHora desc


select top(100) ctrc.sequencial, cte.Sequencial, ctrc.NumConhecto
from conhecimentostransporte ctrc
left join LONTANO_GSe.dbo.CTe cte on cte.sequencial = ctrc.sequencial
where ctrc.coduf = 'MT' 
	and ctrc.serieconhecto = '0' 
order by ctrc.numconhecto desc


--exec Grava_CTe 870000009076

--exec grava_cte 100000083452
--exec grava_cte 20000156570
--exec grava_cte 10000025313
--exec grava_cte 10000025312
--exec grava_cte 480000007141
--exec grava_cte 20000156569
--exec grava_cte 730000135855
--exec grava_cte 730000135854
--exec grava_cte 260000025714


SELECT * from Veiculos where PlacaVeiculo = 'QAM-3754'
select CodVeiculo,* from ConhecimentosTransporte_log where NumConhecto in (729705,709706)  and CodUF = 'MT' and SerieConhecto = '0'  --  437609 / 103103
--UPDATE ConhecimentosTransporte  set CodVeiculo = 103103 where NumConhecto in ( 709706)  and CodUF = 'MT' and SerieConhecto = '0'


select ModeloDocumento,* from PedidosFrete where CodPedidoFrete = 15004571 
--UPDATE  PedidosFrete  set ModeloDocumento = 'CT-e' where CodPedidoFrete = 15004571 


select * from ConhecimentosTransporte where NumConhecto in (415098)  and CodUF = 'MG' and SerieConhecto = '0' 

EXEC VerificaCTe 530000169536


--caso tenha rejeição e o XML estiver ok e mesmo depois de reenviar ele continuar rejeitado cStat = 519
--Excluir e fazer novamente --Validar com Laércio
--cStat = 519 Caso Odeir 14/12/2020
--Após gerar o Cte com CFOP 6356 foi alterado o Tomador gerando a rejeição do CFOP. orientado a excluir e gerar novamente.
--odeir teve que excluir na ordem tambem e gerar tudo novamente devido continuar pegando o mesmo CFOP apos a exclusao.

select CodContasReceber, * from ContasReceber where NumDocumento = 'RO-075876'

SELECT * FROM ConhecimentosTransporte where Sequencial = 520000040514
EXEC VerificaCTe 520000040514
--UPDATE LONTANO_GSe.dbo.CTe SET Status = 0 where Sequencial = 520000040514
--exec Grava_CTe 520000040514


SELECT CodFilialCCusto AS CodFilial, CodCentroCusto, DescCentroCusto, ValorDespesa AS Valor 
FROM MovimentosDespesas WHERE CodMovCaixa = 101757430 AND ClassifDespesa = '1.04.003.001' AND TipoCentroCusto   = 'Agenciadora de Cargas' AND CodFilialCcusto IN (SELECT CodFilial FROM FiliaisParamDespRecFilial WHERE NumCol = (SELECT NumCol FROM ParamDespRecFilial WHERE Titulo = 'Reg Água Boa')) AND Competencia BETWEEN '08/01/2024 00:00:00' AND '08/31/2024 23:59:29' AND CodContasPagar = 1867756


SELECT CodFilialCCusto AS CodFilial, CodCentroCusto, DescCentroCusto, ValorDespesa AS Valor FROM MovimentosDespesas 
WHERE CodMovCaixa = 101757430 AND ClassifDespesa = '1.04.003.001' AND TipoCentroCusto = 'Agenciadora de Cargas' AND CodFilialCcusto IN (SELECT CodFilial FROM FiliaisParamDespRecFilial WHERE NumCol = (SELECT NumCol FROM ParamDespRecFilial WHERE Titulo = 'Reg Água Boa')) AND Competencia BETWEEN '08/01/2024 00:00:00' AND '08/31/2024 23:59:29' AND CodContasPagar = 1867756



SELECT CodFilialCCusto AS CodFilial, CodCentroCusto, DescCentroCusto, ValorDespesa AS Valor FROM MovimentosDespesas WHERE CodMovCaixa = 101757430 AND ClassifDespesa = '1.04.003.001'


SELECT CodFilialCCusto AS CodFilial, CodCentroCusto, DescCentroCusto, ValorDespesa AS Valor FROM MovimentosDespesas WHERE CodMovCaixa = 101767011 AND ClassifDespesa = '1.04.003.001' AND TipoCentroCusto = 'Agenciadora de Cargas' AND CodFilialCcusto IN (SELECT CodFilial FROM FiliaisParamDespRecFilial WHERE NumCol = (SELECT NumCol FROM ParamDespRecFilial WHERE Titulo = 'Reg Água Boa')) AND Competencia BETWEEN '08/01/2024 00:00:00' AND '08/31/2024 23:59:29' AND CodContasPagar = 1967509



