use RODOMAIOR


--exec MonitoraMDFe 83004710
----UPDATE RODOMAIOR_GSe.dbo.mdfe set Status = 0 where Sequencial = 572894

--select IndDesabilitaCriticaANTT from Fornecedores where IndDesabilitaCriticaANTT <> 'N'


--select * from ConhecimentosTransporte where NumConhecto = 196491 and CodUF = 'MS' 
--exec VerificaCTe 920000001727
--exec VerificaCTe 70000017855

--select * from RODOMAIOR_GSe.dbo.Eventos_CTe where Sequencial_CTe = 70000017855
----UPDATE RODOMAIOR_GSe.dbo.Eventos_CTe set Status = 0 where Sequencial_CTe = 70000017855


--select * from Motoristas where CPF = '662.285.301-00'  --1089937
--select CodMotorista,* from OrdemEmbarque where NumOrdemEmbarque = 53006234 -- 1090504
----UPDATE OrdemEmbarque set CodMotorista = 1089937  where NumOrdemEmbarque = 53006234



select * from Programas where codprograma = 'frmAcertoViagem4'
select * from PermissoesAcesso where CodPrograma = 'frmAcertoViagem4' and CodUsuario = 10005

SELECT TOP(1) * FROM ValoresReferencia_TiposMovAcerto4 WHERE CodTipoMovAcerto = 2 AND DataReferencia <= '2039-12-01' ORDER BY DataReferencia DESC

select IndDesabilitaCriticaANTT from fornecedores where CodFornecedor = 41000283
select IndDesabilitaCriticaANTT from fornecedores where IndDesabilitaCriticaANTT <> 'N'
--UPDATE fornecedores set  IndDesabilitaCriticaANTT ='N' where IndDesabilitaCriticaANTT <> 'N'
select IndDesabilitaCriticaANTT from fornecedores where IndDesabilitaCriticaANTT = 'N'
--update fornecedores set IndDesabilitaCriticaANTT = 'N'



