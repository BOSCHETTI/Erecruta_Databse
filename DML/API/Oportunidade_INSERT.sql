
INSERT INTO [dbo].[Oportunidade]
           ([Titulo]
           ,[Empresa]
           ,[DataHoraCriacao]
           ,[EstadoId]
           ,[CidadeId]
           ,[Regiao]
           ,[Remuneracao]
           ,[Regime]
           ,[Posicao]
           ,[JobDescrition]
           ,[Situacao])
     VALUES
           (@Titulo
           ,@Empresa
           ,@DataHoraCriacao
           ,@EstadoId
           ,@CidadeId
           ,@Regiao
           ,@Remuneracao
           ,@Regime
           ,@Posicao
           ,@JobDescrition
           ,@Situacao)

