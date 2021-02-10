USE [ProjectMgmt]
GO

ALTER TABLE [dbo].[FileGroups] DROP CONSTRAINT [FK_FileGroups_FileGroups]
GO

/****** Object:  Table [dbo].[FileGroups]    Script Date: 2/10/2021 11:42:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FileGroups]') AND type in (N'U'))
DROP TABLE [dbo].[FileGroups]
GO

/****** Object:  Table [dbo].[FileGroups]    Script Date: 2/10/2021 11:42:15 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FileGroups](
	[FileGroupId] [int] IDENTITY(1,1) NOT NULL,
	[IsArchive] [bit] NULL,
	[FileGroupName] [nvarchar](1024) NULL,
	[FileGroupPath] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[SourceId] [int] NULL,
	[ParentFileGroupId] [int] NULL,
 CONSTRAINT [PK_FileGroups] PRIMARY KEY CLUSTERED 
(
	[FileGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[FileGroups]  WITH CHECK ADD  CONSTRAINT [FK_FileGroups_FileGroups] FOREIGN KEY([SourceId])
REFERENCES [dbo].[FileSources] ([SourceId])
GO

ALTER TABLE [dbo].[FileGroups] CHECK CONSTRAINT [FK_FileGroups_FileGroups]
GO


