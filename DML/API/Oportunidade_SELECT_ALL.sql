SELECT [Id]
      ,[Titulo]
      ,[Empresa]
      ,[DataHoraCriacao]
      ,[EstadoId]
      ,[CidadeId]
      ,[Regiao]
      ,[Remuneracao]
      ,[Regime]
      ,[Posicao]
      ,[JobDescrition]
      ,[Situacao]
  FROM [dbo].[Oportunidade]
  WHERE Situacao = 1