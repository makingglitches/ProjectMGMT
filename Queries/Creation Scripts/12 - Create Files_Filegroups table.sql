USE [ProjectMgmt]
GO

ALTER TABLE [dbo].[Files_FileGroups] DROP CONSTRAINT [FK_Files_FileGroups_Files]
GO

ALTER TABLE [dbo].[Files_FileGroups] DROP CONSTRAINT [FK_Files_FileGroups_FileGroups]
GO

/****** Object:  Table [dbo].[Files_FileGroups]    Script Date: 2/10/2021 11:42:51 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Files_FileGroups]') AND type in (N'U'))
DROP TABLE [dbo].[Files_FileGroups]
GO

/****** Object:  Table [dbo].[Files_FileGroups]    Script Date: 2/10/2021 11:42:51 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Files_FileGroups](
	[FileId] [int] NOT NULL,
	[FileGroupId] [int] NOT NULL,
 CONSTRAINT [PK_Files_FileGroups] PRIMARY KEY CLUSTERED 
(
	[FileId] ASC,
	[FileGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Files_FileGroups]  WITH CHECK ADD  CONSTRAINT [FK_Files_FileGroups_FileGroups] FOREIGN KEY([FileGroupId])
REFERENCES [dbo].[FileGroups] ([FileGroupId])
GO

ALTER TABLE [dbo].[Files_FileGroups] CHECK CONSTRAINT [FK_Files_FileGroups_FileGroups]
GO

ALTER TABLE [dbo].[Files_FileGroups]  WITH CHECK ADD  CONSTRAINT [FK_Files_FileGroups_Files] FOREIGN KEY([FileId])
REFERENCES [dbo].[Files] ([FileId])
GO

ALTER TABLE [dbo].[Files_FileGroups] CHECK CONSTRAINT [FK_Files_FileGroups_Files]
GO


