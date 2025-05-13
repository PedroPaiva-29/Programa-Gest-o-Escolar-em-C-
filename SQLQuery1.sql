USE [bdEscola]
GO
/****** Object:  Table [dbo].[Aluno]    Script Date: 12/05/2025 20:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aluno](
	[AlunoId] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](150) NOT NULL,
	[CPF] [nvarchar](14) NOT NULL,
	[Matricula] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Telefone] [nvarchar](20) NULL,
	[DataNascimento] [date] NULL,
	[Endereco] [nvarchar](255) NULL,
	[StatusAluno] [nvarchar](20) NOT NULL,
	[DataCadastro] [datetime2](3) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AlunoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Matricula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[CPF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Certificado]    Script Date: 12/05/2025 20:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Certificado](
	[CertificadoId] [int] IDENTITY(1,1) NOT NULL,
	[InscricaoId] [int] NOT NULL,
	[NumeroCertificado] [nvarchar](50) NOT NULL,
	[DataEmissao] [datetime2](3) NOT NULL,
	[QRCodeUrl] [nvarchar](255) NULL,
	[HashValidacao] [nvarchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[CertificadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[NumeroCertificado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[InscricaoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Coordenador]    Script Date: 12/05/2025 20:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coordenador](
	[CoordenadorId] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](150) NOT NULL,
	[CPF] [nvarchar](14) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Telefone] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[CoordenadorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[CPF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curso]    Script Date: 12/05/2025 20:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curso](
	[CursoId] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](150) NOT NULL,
	[Codigo] [nvarchar](50) NOT NULL,
	[Descricao] [text] NULL,
	[CargaHoraria] [int] NOT NULL,
	[Modalidade] [nvarchar](50) NOT NULL,
	[Trilha] [nvarchar](100) NULL,
	[PontosCAP] [int] NULL,
	[StatusCurso] [nvarchar](20) NOT NULL,
	[CoordenadorId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CursoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Frequencia]    Script Date: 12/05/2025 20:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Frequencia](
	[FrequenciaId] [int] IDENTITY(1,1) NOT NULL,
	[InscricaoId] [int] NOT NULL,
	[MateriaId] [int] NOT NULL,
	[DataAula] [date] NOT NULL,
	[Presente] [bit] NOT NULL,
	[Justificativa] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[FrequenciaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_Frequencia_Aluno_Materia_Data] UNIQUE NONCLUSTERED 
(
	[InscricaoId] ASC,
	[MateriaId] ASC,
	[DataAula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inscricao]    Script Date: 12/05/2025 20:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inscricao](
	[InscricaoId] [int] IDENTITY(1,1) NOT NULL,
	[AlunoId] [int] NOT NULL,
	[TurmaId] [int] NOT NULL,
	[DataInscricao] [datetime2](3) NOT NULL,
	[Status] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[InscricaoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_Inscricao_Aluno_Turma] UNIQUE NONCLUSTERED 
(
	[AlunoId] ASC,
	[TurmaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instrutor]    Script Date: 12/05/2025 20:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instrutor](
	[InstrutorId] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](150) NOT NULL,
	[CPF] [nvarchar](14) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Telefone] [nvarchar](20) NULL,
	[FormacaoAcademica] [nvarchar](200) NULL,
	[Especialidade] [nvarchar](150) NULL,
	[ValorHoraAula] [decimal](10, 2) NOT NULL,
	[StatusInstrutor] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[InstrutorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[CPF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 12/05/2025 20:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materia](
	[MateriaId] [int] IDENTITY(1,1) NOT NULL,
	[TurmaId] [int] NOT NULL,
	[InstrutorId] [int] NOT NULL,
	[Nome] [nvarchar](150) NOT NULL,
	[CargaHoraria] [int] NOT NULL,
	[PesoNota] [decimal](5, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[MateriaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_Materia_Turma_Nome] UNIQUE NONCLUSTERED 
(
	[TurmaId] ASC,
	[Nome] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nota]    Script Date: 12/05/2025 20:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nota](
	[NotaId] [int] IDENTITY(1,1) NOT NULL,
	[InscricaoId] [int] NOT NULL,
	[MateriaId] [int] NOT NULL,
	[ValorNota] [decimal](5, 2) NOT NULL,
	[DataLancamento] [datetime2](3) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NotaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_Nota_Aluno_Materia] UNIQUE NONCLUSTERED 
(
	[InscricaoId] ASC,
	[MateriaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Turma]    Script Date: 12/05/2025 20:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Turma](
	[TurmaId] [int] IDENTITY(1,1) NOT NULL,
	[CursoId] [int] NOT NULL,
	[Nome] [nvarchar](150) NOT NULL,
	[Codigo] [nvarchar](50) NOT NULL,
	[DataInicio] [date] NOT NULL,
	[DataFim] [date] NOT NULL,
	[Local] [nvarchar](150) NULL,
	[Modalidade] [nvarchar](50) NOT NULL,
	[NumeroVagas] [int] NOT NULL,
	[StatusTurma] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TurmaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Aluno] ADD  DEFAULT ('Ativo') FOR [StatusAluno]
GO
ALTER TABLE [dbo].[Aluno] ADD  DEFAULT (getdate()) FOR [DataCadastro]
GO
ALTER TABLE [dbo].[Certificado] ADD  DEFAULT (getdate()) FOR [DataEmissao]
GO
ALTER TABLE [dbo].[Curso] ADD  DEFAULT ((0)) FOR [PontosCAP]
GO
ALTER TABLE [dbo].[Curso] ADD  DEFAULT ('Ativo') FOR [StatusCurso]
GO
ALTER TABLE [dbo].[Inscricao] ADD  DEFAULT (getdate()) FOR [DataInscricao]
GO
ALTER TABLE [dbo].[Instrutor] ADD  DEFAULT ('Ativo') FOR [StatusInstrutor]
GO
ALTER TABLE [dbo].[Materia] ADD  DEFAULT ((1.0)) FOR [PesoNota]
GO
ALTER TABLE [dbo].[Nota] ADD  DEFAULT (getdate()) FOR [DataLancamento]
GO
ALTER TABLE [dbo].[Turma] ADD  DEFAULT ('Planejada') FOR [StatusTurma]
GO
ALTER TABLE [dbo].[Certificado]  WITH CHECK ADD FOREIGN KEY([InscricaoId])
REFERENCES [dbo].[Inscricao] ([InscricaoId])
GO
ALTER TABLE [dbo].[Curso]  WITH CHECK ADD FOREIGN KEY([CoordenadorId])
REFERENCES [dbo].[Coordenador] ([CoordenadorId])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Frequencia]  WITH CHECK ADD FOREIGN KEY([InscricaoId])
REFERENCES [dbo].[Inscricao] ([InscricaoId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Frequencia]  WITH CHECK ADD FOREIGN KEY([MateriaId])
REFERENCES [dbo].[Materia] ([MateriaId])
GO
ALTER TABLE [dbo].[Inscricao]  WITH CHECK ADD FOREIGN KEY([AlunoId])
REFERENCES [dbo].[Aluno] ([AlunoId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Inscricao]  WITH CHECK ADD FOREIGN KEY([TurmaId])
REFERENCES [dbo].[Turma] ([TurmaId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Materia]  WITH CHECK ADD FOREIGN KEY([InstrutorId])
REFERENCES [dbo].[Instrutor] ([InstrutorId])
GO
ALTER TABLE [dbo].[Materia]  WITH CHECK ADD FOREIGN KEY([TurmaId])
REFERENCES [dbo].[Turma] ([TurmaId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Nota]  WITH CHECK ADD FOREIGN KEY([InscricaoId])
REFERENCES [dbo].[Inscricao] ([InscricaoId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Nota]  WITH CHECK ADD FOREIGN KEY([MateriaId])
REFERENCES [dbo].[Materia] ([MateriaId])
GO
ALTER TABLE [dbo].[Turma]  WITH CHECK ADD FOREIGN KEY([CursoId])
REFERENCES [dbo].[Curso] ([CursoId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Aluno]  WITH CHECK ADD CHECK  (([StatusAluno]='Jubilado' OR [StatusAluno]='Desligado' OR [StatusAluno]='Formado' OR [StatusAluno]='Inativo' OR [StatusAluno]='Ativo'))
GO
ALTER TABLE [dbo].[Curso]  WITH CHECK ADD CHECK  (([CargaHoraria]>(0)))
GO
ALTER TABLE [dbo].[Curso]  WITH CHECK ADD CHECK  (([Modalidade]='Híbrido' OR [Modalidade]='EAD' OR [Modalidade]='Presencial'))
GO
ALTER TABLE [dbo].[Curso]  WITH CHECK ADD CHECK  (([PontosCAP]>=(0)))
GO
ALTER TABLE [dbo].[Curso]  WITH CHECK ADD CHECK  (([StatusCurso]='Encerrado' OR [StatusCurso]='Inativo' OR [StatusCurso]='Ativo' OR [StatusCurso]='Planejado'))
GO
ALTER TABLE [dbo].[Inscricao]  WITH CHECK ADD CHECK  (([Status]='Desligado' OR [Status]='Cancelada' OR [Status]='Reprovado' OR [Status]='Aprovado' OR [Status]='Cursando' OR [Status]='Confirmada' OR [Status]='Pendente'))
GO
ALTER TABLE [dbo].[Instrutor]  WITH CHECK ADD CHECK  (([StatusInstrutor]='Inativo' OR [StatusInstrutor]='Ativo'))
GO
ALTER TABLE [dbo].[Instrutor]  WITH CHECK ADD CHECK  (([ValorHoraAula]>=(0)))
GO
ALTER TABLE [dbo].[Materia]  WITH CHECK ADD CHECK  (([CargaHoraria]>(0)))
GO
ALTER TABLE [dbo].[Materia]  WITH CHECK ADD CHECK  (([PesoNota]>=(0)))
GO
ALTER TABLE [dbo].[Nota]  WITH CHECK ADD CHECK  (([ValorNota]>=(0) AND [ValorNota]<=(10.00)))
GO
ALTER TABLE [dbo].[Turma]  WITH CHECK ADD  CONSTRAINT [CHK_DatasTurma] CHECK  (([DataFim]>=[DataInicio]))
GO
ALTER TABLE [dbo].[Turma] CHECK CONSTRAINT [CHK_DatasTurma]
GO
ALTER TABLE [dbo].[Turma]  WITH CHECK ADD CHECK  (([Modalidade]='Híbrido' OR [Modalidade]='EAD' OR [Modalidade]='Presencial'))
GO
ALTER TABLE [dbo].[Turma]  WITH CHECK ADD CHECK  (([NumeroVagas]>=(0)))
GO
ALTER TABLE [dbo].[Turma]  WITH CHECK ADD CHECK  (([StatusTurma]='Cancelada' OR [StatusTurma]='Concluída' OR [StatusTurma]='Em Andamento' OR [StatusTurma]='Inscrições Abertas' OR [StatusTurma]='Planejada'))
GO