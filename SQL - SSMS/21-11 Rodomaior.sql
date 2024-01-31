--SELECT OE.CIOT
--FROM 
--	ConhecimentosTransporte C 
--		INNER JOIN OrdemEmbarque OE ON OE.NumOrdemEmbarque = C.CodOrdemEmbarque 
--WHERE 
		--ISNULL(OE.CIOT, '') <> 'PAMCARY'

	--	AND 		C.Sequencial = 40000036424

	SELECT COUNT(*) AS Registros 
	FROM 
		OrdemEmbarque 
	WHERE
		NumOrdemEmbarque = 4037968 
		AND ISNULL(ValorPedagioSemParar, 0) > 0 
		AND ISNULL(RotaSemParar, 'NULL') <> 'NULL'

SELECT ValorPedagioSemParar,RotaSemParar,  * FROM OrdemEmbarque WHERE NumOrdemEmbarque = 4037968 AND ISNULL(ValorPedagioSemParar, 0) > 0 AND ISNULL(RotaSemParar, 'NULL') <> 'NULL'
--Limpar a Roteirzação--
SELECT CodOrdemEmbarque,CIOT, Pedagio,* from ConhecimentosTransporte where NumConhecto = 189099   and CodUF = 'SP' 
--UPDATE ConhecimentosTransporte set Pedagio = 276.60 where Sequencial = 40000036424 -- 276.60
SELECT EmpresaValePedagio, NumCartaoValePedagio, RotaSemParar,ValorPedagioSemParar, EixosSemParar FROM OrdemEmbarque WHERE NumOrdemEmbarque = 4037968
--update OrdemEmbarque set EmpresaValePedagio = 'Roadcard Instituição de Pag.' , NumCartaoValePedagio = 4417812012265713, RotaSemParar = 1, ValorPedagioSemParar = 276.60  where  NumOrdemEmbarque = 4037968 
--update OrdemEmbarque set EmpresaValePedagio = NULL , NumCartaoValePedagio = NULL, RotaSemParar = NULL, ValorPedagioSemParar =NULL  where  NumOrdemEmbarque = 4037968 
--update OrdemEmbarque set  RotaSemParar = 1, ValorPedagioSemParar = 276.60  where  NumOrdemEmbarque = 4037968 