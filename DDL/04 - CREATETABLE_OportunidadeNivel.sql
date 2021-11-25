
CREATE TABLE [dbo].[OportunidadeNivel](
	[NivelId] [char](2) NOT NULL,
	[OportunidadeId] [int] NOT NULL,
 CONSTRAINT [PK_OportunidadeNivel] PRIMARY KEY CLUSTERED 
(
	[NivelId] ASC,
	[OportunidadeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[OportunidadeNivel]  WITH CHECK ADD  CONSTRAINT [FK_OportunidadeNivel_Nivel] FOREIGN KEY([NivelId])
REFERENCES [dbo].[Nivel] ([Id])
GO

ALTER TABLE [dbo].[OportunidadeNivel] CHECK CONSTRAINT [FK_OportunidadeNivel_Nivel]
GO

ALTER TABLE [dbo].[OportunidadeNivel]  WITH CHECK ADD  CONSTRAINT [FK_OportunidadeNivel_Oportunidade] FOREIGN KEY([OportunidadeId])
REFERENCES [dbo].[Oportunidade] ([Id])
GO

ALTER TABLE [dbo].[OportunidadeNivel] CHECK CONSTRAINT [FK_OportunidadeNivel_Oportunidade]
GO


