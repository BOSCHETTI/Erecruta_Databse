UPDATE [dbo].[Candidato]
   SET [Nome] = @Nome
      ,[Email] = @Email
	  ,[Celular] = @Celular
      ,[Linkedin] = @Linkedin
      ,[Curriculun] = @Curriculun
      ,[Classificacao] = @Classificacao
      ,[EstadoId] = @EstadoId
      ,[CidadeId] = @CidadeId
      ,[Regiao] = @Regiao
      ,[Observacao] = @Observacao
      ,[Situacao] = @Situacao
      ,[OportunidadeId] = @OportunidadeId
      ,[EmpresaId] = @EmpresaId
 WHERE Id = @Id



