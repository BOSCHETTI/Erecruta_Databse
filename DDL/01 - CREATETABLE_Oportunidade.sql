
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


