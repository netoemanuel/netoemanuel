use LONTANO


exec VerificaCTe 830000066271

blk

WTF 862   -- SELECT CodVeiculo, MesAno FROM OrigemDadosItensAcerto INNER JOIN AcertoViagem on Sequencial = SeqAcerto WHERE CodOrigemDados = 2583115 and (CodTipoMovAcerto = 15 or CodTipoMovAcerto = 18 or CodTipoMovAcerto = 34 or CodTipoMovAcerto = 10 or CodTipoMovAcerto = 9) and Marcador = 'X'
KILL 694  --SELECT DISTINCT ContasPagar.*, Fornecedores.RazaoSocial AS RazaoSocial, ComboBox_Financeiro.Descricao AS TipoContasPagar, ComboBox_Financeiro1.Descricao AS TipoCobranca FROM ContasPagar INNER JOIN FiliaisAgencias ON ContasPagar.CodFilialOrigem = FiliaisAgencias.CodFilial INNER JOIN FiliaisAgencias FiliaisAgencias1 ON ContasPagar.CodFilialPagto = FiliaisAgencias1.CodFilial INNER JOIN Fornecedores ON ContasPagar.CodFornecedor = Fornecedores.CodFornecedor INNER JOIN Moedas ON ContasPagar.CodMoeda = Moedas.CodMoeda INNER JOIN ComboBox_Financeiro ON ContasPagar.CodTipoContasPagar = ComboBox_Financeiro.Codigo AND ComboBox_Financeiro.NomeComboBox = 'cboTipoContasPagar' INNER JOIN ComboBox_Financeiro ComboBox_Financeiro1 ON ContasPagar.CodTipoCobranca = ComboBox_Financeiro1.Codigo AND ComboBox_Financeiro1.NomeComboBox = 'cboTipoCobranca' INNER JOIN ComboBox_Financeiro ComboBox_Financeiro2 ON ContasPagar.CodTipoDocumento = ComboBox_Financeiro2.Codigo AND ComboBox_Financeiro2.NomeComboBox = 'cboTipoDocumento' LEFT OUTER JOIN PlanoContasDespesa ON ContasPagar.CodTipoDespesa = PlanoContasDespesa.CodTipoDespesa LEFT OUTER JOIN DespesasContasPagar ON DespesasContasPagar.CodContasPagar = ContasPagar.CodContasPagar LEFT OUTER JOIN NotasFiscaisContasPagar ON ContasPagar.CodContasPagar = NotasFiscaisContasPagar.CodContasPagar ORDER BY ContasPagar.DataVencimento DESC

exec MonitoraMDFe 84025854

select Historico,* from ContasPagar where CodContasPagar = 1769202 
select Historico,* from ContasPagar_Log where CodContasPagar = 1769202 

SELECT COUNT(*) AS Registros FROM Lontano_GSe.dbo.NFSe WHERE Sequencial = 3184511 AND SituacaoProtocolo = 4
SELECT * FROM Lontano_GSe.dbo.NFSe WHERE Sequencial = 3184511 AND SituacaoProtocolo = 4

select * from Motoristas_Veiculos where CodColaborador <> null

select * from Colaboradores C 
join Programas p on C.CodColaborador = codp



select * from Usuarios where NomeUsuario like '%isaack%'

SELECT CodMotorista,NomeColaborador 
FROM Motoristas_Veiculos 
LEFT JOIN Colaboradores ON Colaboradores.CodColaborador = Motoristas_Veiculos.CodColaborador 
WHERE CodVeiculo = 67666 and DataCadastro = (SELECT Max(DataCadastro) FROM Motoristas_Veiculos WHERE CodVeiculo = 67666)

select ValorNF,SeguroAverbado,GRIS_NaoDescontado,* from ConhecimentosTransporte where NumConhecto = 614190 and  CodUF = 'GO'  
--UPDATE ConhecimentosTransporte set ValorNF = 84837.90, SeguroAverbado = 42.41, GRIS_NaoDescontado = 66.17 where Sequencial = 310000096338


select CodMotorista,CodFornecedor, CodVeiculo,* from ConhecimentosTransporte where NumConhecto = 17051 and  CodUF = 'PA'  --1105876	/1000001/10733
--UPDATE ConhecimentosTransporte set CodMotorista = 1000039,CodFornecedor = 1000096, CodVeiculo = 114593 where Sequencial = 10000023649


-------------------------------------------------------------------------------------------------------------------------------------------------------

select Status,* from LONTANO_GSe.dbo.Eventos_CTe where Sequencial_CTe = 310000096322

exec VerificaCTe 150000020865

exec VerificaCTe 310000096322

select status, * from LONTANO_GSe.dbo.Eventos_CTe where Sequencial_CTe = 810000010588
select status, * from LONTANO_GSe.dbo.Eventos_CTe where Status = 0
--UPDATE LONTANO_GSe.dbo.Eventos_CTe set Status = 5 where Sequencial_CTe = 810000010588
exec VerificaCTe 810000010588


select * from Usuarios where NomeUsuario like '%anne%'
SELECT * FROM PermissoesAcesso WHERE  (CodPrograma = 'frmConLogArquivos')

select TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto = 701642 and  CodUF = 'MT' 
--UPDATE ConhecimentosTransporte set TarifaFreteMotorista = 2590.60 where Sequencial = 20000151328
