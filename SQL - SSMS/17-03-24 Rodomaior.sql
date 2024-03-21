	select * from ConhecimentosTransporte where NumConhecto = 51336 and CodUF = 'MT'
--exec RODOMAIOR_GSe.dbo.GeraMDFeViagem_ESP 53006592,12451, 'CG'
select * from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 530000005327

exec MonitoraMDFe 53006592


select TipoConhecimento,SeguroAverbado,* 
from ConhecimentosTransporte
where NumConhecto IN(77994,77995,48916,110043,110609,110612) and SerieConhecto = 0 and CodUF in ('GO', 'MT', 'MG') and TipoConhecimento = 'Substituto'

select IndComplementoSubstituicao,* from OrdemEmbarque where NumOrdemEmbarque in (75010704,75010740,75010742,66024947,66024948,53006140)
select IndComplementoSubstituicao,* from OrdemEmbarque where IndComplementoSubstituicao is not null
select IndComplementoSubstituicao,* from OrdemEmbarque_log where NumOrdemEmbarque in (75010704,75010740,75010742,66024947,66024948,53006140)


	EXEC AutorizacaoCaramuru 71001568

blk
select  top (50)* from CaramuruControle order by DataCriacao desc 


select * from Veiculos where PlacaVeiculo ='ATL1E39'


select CodVeiculo,* from OrdemEmbarque where NumOrdemEmbarque = 37007245  -- 144148
--UPDATE OrdemEmbarque set CodVeiculo = 369059 where NumOrdemEmbarque = 37007245


exec MonitoraMDFe 37007245

--744 Rejeição: O tipo de transportador deve ser ETC ou CTC quando informado CNPJ do proprietário do veículo de tração
--Caso de a rejeição abaixo apenas alterar o campo "tpTransp" para 1 ou 3--
--update Rodomaior_GSe.dbo.MDFe set tpTransp = 3,status = 0  where CodManifestoCarga = 645278

--delete from RODOMAIOR_GSe.dbo.mdfe where Sequencial in (580303,580302,580300)

use RODOMAIOR