USE [ProjectMgmt]
GO

ALTER TABLE [dbo].[Files_Project] DROP CONSTRAINT [FK_Files_Project_Projects]
GO

ALTER TABLE [dbo].[Files_Project] DROP CONSTRAINT [FK_Files_Project_Files]
GO

/****** Object:  Table [dbo].[Files_Project]    Script Date: 2/10/2021 11:47:55 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Files_Project]') AND type in (N'U'))
DROP TABLE [dbo].[Files_Project]
GO

/****** Object:  Table [dbo].[Files_Project]    Script Date: 2/10/2021 11:47:55 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Files_Project](
	[FileId] [int] NOT NULL,
	[ProjectId] [int] NOT NULL,
 CONSTRAINT [PK_Files_Project] PRIMARY KEY CLUSTERED 
(
	[FileId] ASC,
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Files_Project]  WITH CHECK ADD  CONSTRAINT [FK_Files_Project_Files] FOREIGN KEY([FileId])
REFERENCES [dbo].[Files] ([FileId])
GO

ALTER TABLE [dbo].[Files_Project] CHECK CONSTRAINT [FK_Files_Project_Files]
GO

ALTER TABLE [dbo].[Files_Project]  WITH CHECK ADD  CONSTRAINT [FK_Files_Project_Projects] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Projects] ([ProjectId])
GO

ALTER TABLE [dbo].[Files_Project] CHECK CONSTRAINT [FK_Files_Project_Projects]
GO


