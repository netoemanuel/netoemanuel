--VERIFICAR AS PERMISSÕES
SELECT PA.* 
FROM [dbo].[PermissoesAcesso] PA
JOIN dbo.Programas P ON PA.CodPrograma = P.CodPrograma
JOIN dbo.Sistemas S ON P.CodSistema = S.CodSistema
WHERE S.CodSistema IN (12,13,14,15,16,17,18,19,20,21) AND PA.CodUsuario in (10002)

--INSERT PORTAL
/*Insert Portal Serviços
INSERT INTO [dbo].[PermissoesAcesso]
           ([CodUsuario],[CodPrograma],[TipoInclusao],[TipoAlteracao],[TipoExclusao],[TipoConsulta],[TipoImprimir],[TipoEspecial]
           ,[CodUsuarioCriacao],[CodFilialCriacao],[DataCriacao])
     VALUES
		   ('991420','App_Dashboard','S','S','S','S','S','N', 10005,'CG',getdate())
*/

-- INSERT ACESSOS FRTOA

/*GESTÃO DA FROTA
INSERT INTO [dbo].[PermissoesAcesso]
           ([CodUsuario],[CodPrograma],[TipoInclusao],[TipoAlteracao],[TipoExclusao],[TipoConsulta],[TipoImprimir],[TipoEspecial]
           ,[CodUsuarioCriacao],[CodFilialCriacao],[DataCriacao])
     VALUES   	 
		  ('11665','App_GestaoFrota','N','N','N','S','N','N', 13573,'CG',getdate()),
	      ('11665','FRO_AcertoMotorista','S','S','S','S','S','S', 13573,'CG',getdate()),
		  ('11665','FRO_AcertoViagem','N','N','N','S','N','N', 13573,'CG',getdate()),		 
          ('11665','FRO_AcompanhamentoDiario','N','N','N','S','N','N', 13573,'CG',getdate()),		 
		  ('11665','FRO_Chamadas','N','N','N','S','N','N', 13573,'CG',getdate()),		 
		  ('11665','FRO_Clientes','N','N','N','S','N','N', 13573,'CG',getdate()),
		  ('11665','FRO_Fornecedores','N','N','N','S','N','N', 13573,'CG',getdate()),          
	      ('11665','FRO_Veiculos','N','N','N','S','N','N', 13573,'CG',getdate()),
		  ('11665','FRO_ParametroAcertoMotorista','N','N','N','S','N','N', 13573,'CG',getdate()),
		  ('11665','FRO_Motoristas','N','N','N','S','N','N', 13573,'CG',getdate())
 */

 -- na RDM NÃO TEM ESSES DOIS ACESSOS RETIRAR DO INSERT PARA GERAR OS NOVO ACESSO.
 ----FRO_AcompanhamentoDiario e FRO_Chamadas acessos rodrigo 13014 ou 10005 

--FRO_Veiculos
--FRO_ParametroAcertoMotorista
--FRO_Motoristas
--FRO_Fornecedores
--FRO_Clientes
--FRO_AcertoViagem
--FRO_AcertoMotorista