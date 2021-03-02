USE [ProjectMgmt]
GO

ALTER TABLE [dbo].[SourceRepository] DROP CONSTRAINT [FK_SourceRepository_VCSTypeLookup]
GO

/****** Object:  Table [dbo].[SourceRepository]    Script Date: 2/10/2021 1:15:45 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SourceRepository]') AND type in (N'U'))
DROP TABLE [dbo].[SourceRepository]
GO

/****** Object:  Table [dbo].[SourceRepository]    Script Date: 2/10/2021 1:15:45 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SourceRepository](
	[RepoId] [int] NOT NULL,
	[RepositoryName] [nvarchar](1024) NULL,
	[Description] [nvarchar](max) NULL,
	[RemoteURL] [nvarchar](max) NULL,
	[VCSTypeId] [int] NULL,
 CONSTRAINT [PK_SourceRepository] PRIMARY KEY CLUSTERED 
(
	[RepoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[SourceRepository]  WITH CHECK ADD  CONSTRAINT [FK_SourceRepository_VCSTypeLookup] FOREIGN KEY([VCSTypeId])
REFERENCES [dbo].[VCSTypeLookup] ([TypeId])
GO

ALTER TABLE [dbo].[SourceRepository] CHECK CONSTRAINT [FK_SourceRepository_VCSTypeLookup]
GO


