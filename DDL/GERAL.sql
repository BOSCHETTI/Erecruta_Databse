USE [Erecruta]
GO
/****** Object:  Table [dbo].[Candidato]    Script Date: 31/10/2021 13:39:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
/****** Object:  Table [dbo].[Nivel]    Script Date: 31/10/2021 13:39:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nivel](
	[Id] [char](2) NOT NULL,
	[Decricao] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Nivel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Oportunidade]    Script Date: 31/10/2021 13:39:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oportunidade](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [varchar](200) NULL,
	[Empresa] [varchar](100) NULL,
	[DataHoraCriacao] [datetime] NULL,
	[EstadoId] [bigint] NULL,
	[CidadeId] [bigint] NULL,
	[Regiao] [varchar](40) NULL,
	[Remuneracao] [varchar](80) NULL,
	[Regime] [char](2) NULL,
	[Posicao] [char](2) NULL,
	[JobDescrition] [varchar](max) NULL,
	[Situacao] [bit] NULL,
 CONSTRAINT [PK_Oportunidade] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OportunidadeNivel]    Script Date: 31/10/2021 13:39:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
ALTER TABLE [dbo].[Candidato]  WITH CHECK ADD  CONSTRAINT [FK_Candidato_Oportunidade] FOREIGN KEY([OportunidadeId])
REFERENCES [dbo].[Oportunidade] ([Id])
GO
ALTER TABLE [dbo].[Candidato] CHECK CONSTRAINT [FK_Candidato_Oportunidade]
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
