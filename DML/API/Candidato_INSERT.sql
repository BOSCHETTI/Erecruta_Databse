INSERT INTO [dbo].[Candidato]
           ([Nome]
           ,[Email]
           ,[Celular]
           ,[Linkedin]
           ,[Curriculun]
           ,[Classificacao]
           ,[EstadoId]
           ,[CidadeId]
           ,[Regiao]
           ,[Observacao]
           ,[Situacao]
           ,[OportunidadeId]
           ,[EmpresaId])
     VALUES
           (@Nome
           ,@Email
           ,@Celular
           ,@Linkedin
           ,@Curriculun
           ,@Classificacao
           ,@EstadoId
           ,@CidadeId
           ,@Regiao
           ,@Observacao
           ,@Situacao
           ,@OportunidadeId
           ,@EmpresaId)
GO


