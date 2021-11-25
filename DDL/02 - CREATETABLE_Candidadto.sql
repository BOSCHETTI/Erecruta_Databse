
CREATE TABLE [dbo].[Candidato](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](200) NOT NULL,
	[Email] [varchar](20) NOT NULL,
	[Celular] [varchar](50) NULL,
	[Linkedin] [varchar](150) NULL,
	[Curriculun] [varbinary](max) NULL,
	[Classificacao] [int] NULL,
	[EstadoId] [bigint] NULL,
	[CidadeId] [bigint] NULL,
	[Regiao] [varchar](40) NULL,
	[Observacao] [varchar](max) NULL,
	[Situacao] [bit] NULL,
	[OportunidadeId] [int] NOT NULL,
 CONSTRAINT [PK_Candidato] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Candidato]  WITH CHECK ADD  CONSTRAINT [FK_Candidato_Oportunidade] FOREIGN KEY([OportunidadeId])
REFERENCES [dbo].[Oportunidade] ([Id])
GO

ALTER TABLE [dbo].[Candidato] CHECK CONSTRAINT [FK_Candidato_Oportunidade]
GO


