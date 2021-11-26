SELECT [Id]
      ,[Nome]
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
      ,[EmpresaId]
  FROM [dbo].[Candidato]
  WHERE Id = 1
	AND OportunidadeId = @OportunidadeId

