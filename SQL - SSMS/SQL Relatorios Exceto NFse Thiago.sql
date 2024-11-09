--Guarda a SQL para quando precisar mexer nesse relatório novamente! toda vez é um parto pra arrumar essa SQL:

SELECT TipoConhecimento, SituacaoConhecto, CodFilialComissao, ModeloDocumento, serieconhecto, * 
FROM ConhecimentosTransporte 
WHERE numconhecto = 2400117 
  AND coduf = 'SP' 
  AND (ISNULL(TipoConhecimento, '') <> 'Substituído' 
       OR (ISNULL(TipoConhecimento, '') = 'Substituído' AND SituacaoConhecto = 'Faturado'))
  AND (SituacaoConhecto = 'Emitido' OR SituacaoConhecto = 'Faturado')
  AND ISNULL(TipoConhecimento, '') <> 'Substituto Contábil'
  AND DataEmissao >= CONVERT(datetime, '01/08/2024 00:00:00', 103) 
  AND DataEmissao <= CONVERT(datetime, '31/08/2024 23:59:29', 103) 
  --AND CodFilialComissao = 'RPR' 
  AND (ModeloDocumento <> 'Recibo' OR SerieConhecto = 'RC')

SELECT TOP (1)* from PedidosFrete 
SELECT TOP (1)* from PedidosFrete_log 