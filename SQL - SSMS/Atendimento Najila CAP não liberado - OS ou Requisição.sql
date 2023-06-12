select * from ContasPagar_RequisicaoProdutos where ContasPagar_RequisicaoProdutos.CodRequisicao = 1330108
--insert ContasPagar_RequisicaoProdutos values
--(1361912,	1330107,	1516.68,	12461,	'CG',	'2023-05-11 15:24:27.000', null, null, null, nul
--insert ContasPagar_RequisicaoProdutos values
--(1361913,	1330107,	1516.68,	12461,	'CG',	'2023-05-11 15:24:27.000', null, null, null, null)

select * from ContasPagar_RequisicaoProdutos where CodContasPagar in (1361905, 1361907, 1361908)
--insert ContasPagar_RequisicaoProdutos values
--(1361907,	1330106,	900.39,	12461,	'CG',	'2023-05-11 15:24:59.000',	NULL,	NULL,	NULL,	NULL)
--insert ContasPagar_RequisicaoProdutos values
--(1361908,	1330106,	900.39,	12461,	'CG',	'2023-05-11 15:24:59.000',	NULL,	NULL,	NULL,	NULL)

select IndicadorRequisicao, * from ContasPagar where CodContasPagar = 1361918
--update ContasPagar set IndicadorRequisicao = 'S' where CodContasPagar = 1361918
select * from ContasPagar_RequisicaoProdutos where ContasPagar_RequisicaoProdutos.CodRequisicao = 1330108
--insert ContasPagar_RequisicaoProdutos values
--(1361918,	1330108,	619.26,	12461,	'CG',	'2023-05-11 15:23:54.000',	NULL,	NULL,	NULL,	NULL)

--07/06/2023
select IndicadorRequisicao, CodRequisicao, * from ContasPagar where CodContasPagar = 1361942
--update ContasPagar set IndicadorRequisicao = 'S' where CodContasPagar = 1361944
--update ContasPagar set IndicadorOS = 'S' where CodContasPagar = 1361944
select IndicadorRequisicao, CodOrdemServico, CodRequisicao,* from ContasPagar where CodContasPagar = 1361941

select * from ContasPagar_RequisicaoProdutos where ContasPagar_RequisicaoProdutos.CodRequisicao = 1330113
--insert ContasPagar_RequisicaoProdutos values
--(1361942,	1330113,	163.88,	12461,	'CG',	'2023-05-11 15:21:34.000',	NULL,	NULL,	NULL,	NULL)
--insert ContasPagar_RequisicaoProdutos values
--(1361943,	1330113,	163.88,	12461,	'CG',	'2023-05-11 15:21:34.000',	NULL,	NULL,	NULL,	NULL)
--insert ContasPagar_RequisicaoProdutos values
--(1361944,	1330113,	163.88,	12461,	'CG',	'2023-05-11 15:21:34.000',	NULL,	NULL,	NULL,	NULL)

--update ContasPagar_RequisicaoProdutos set ValorRelacionado = 163.88 where CodContasPagar = 1361942 and CodRequisicao = 1330113
--update ContasPagar_RequisicaoProdutos set ValorRelacionado = 163.88 where CodContasPagar = 1361943 and CodRequisicao = 1330113

select * from ContasPagar_OrdemServico where CodOS = 1085752

--insert ContasPagar_OrdemServico values
--(1361942,	1085752,	675.15,	12461,	'CG',	'2023-05-11 15:21:50.000',	NULL,	NULL,	NULL)
--insert ContasPagar_OrdemServico values
--(1361943,	1085752,	675.15,	12461,	'CG',	'2023-05-11 15:21:50.000',	NULL,	NULL,	NULL)
--insert ContasPagar_OrdemServico values
--(1361944,	1085752,	675.15,	12461,	'CG',	'2023-05-11 15:21:50.000',	NULL,	NULL,	NULL)

select IndicadorRequisicao, IndicadorOS, * from ContasPagar_log where CodContasPagar = 1361941
select IndicadorRequisicao, IndicadorOS, * from ContasPagar_log where CodContasPagar = 1361942
select IndicadorRequisicao, IndicadorOS, * from ContasPagar_log where CodContasPagar = 1361943
select IndicadorRequisicao, IndicadorOS, * from ContasPagar_log where CodContasPagar = 1361944


select * from ContasPagar_RequisicaoProdutos where ContasPagar_RequisicaoProdutos.CodRequisicao = 1332067
--insert ContasPagar_RequisicaoProdutos values
--(1365439,	1332067,	840.00,	12461,	'CG',	'2023-06-03 11:40:37.000',	NULL,NULL,NULL,NULL)
--update ContasPagar set IndicadorRequisicao = 'S' where CodContasPagar = 1365439


select Situacao,* from ContasPagar where CodContasPagar = 1339414

select * from RelacaoFretes where CodRelacaoFrete = 1088678
select * from RelacaoFretes_log where CodRelacaoFrete = 1088678 order by DataLog desc
select * from ValoresRelacaoFretes where CodRelacaoFrete = 1088678
select * from ValoresRelacaoFretes_log where CodRelacaoFrete = 1088678
select * from ContasPagar where CodContasPagar = 1356244
select ValorDocumento, Situacao,* from ContasPagar_log where CodContasPagar = 1356244
select  * from ConhecimentosRelacaoFretes_log where CodRelacaoFrete = 1088678 order by DataLog desc
select * from ConhecimentosRelacaoFretes where CodRelacaoFrete = 1088678