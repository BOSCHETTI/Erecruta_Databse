UPDATE [dbo].[Oportunidade]
   SET [Titulo] = @Titulo
      ,[Empresa] = @Empresa
      ,[DataHoraCriacao] = @DataHoraCriacao
      ,[EstadoId] = @EstadoId
      ,[CidadeId] = @CidadeId
      ,[Regiao] = @Regiao
      ,[Remuneracao] = @Remuneracao
      ,[Regime] = @Regime
      ,[Posicao] = @Posicao
      ,[JobDescrition] = @JobDescrition
      ,[Situacao] = @Situacao
 WHERE Id =@Id


