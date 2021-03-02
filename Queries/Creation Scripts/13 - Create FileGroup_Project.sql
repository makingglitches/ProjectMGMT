USE [ProjectMgmt]
GO

ALTER TABLE [dbo].[FileGroup_Project] DROP CONSTRAINT [FK_FileGroup_Project_Projects]
GO

ALTER TABLE [dbo].[FileGroup_Project] DROP CONSTRAINT [FK_FileGroup_Project_FileGroups]
GO

/****** Object:  Table [dbo].[FileGroup_Project]    Script Date: 2/10/2021 11:46:01 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FileGroup_Project]') AND type in (N'U'))
DROP TABLE [dbo].[FileGroup_Project]
GO

/****** Object:  Table [dbo].[FileGroup_Project]    Script Date: 2/10/2021 11:46:01 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FileGroup_Project](
	[FileGroupId] [int] NOT NULL,
	[ProjectId] [int] NOT NULL,
 CONSTRAINT [PK_FileGroup_Project] PRIMARY KEY CLUSTERED 
(
	[FileGroupId] ASC,
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FileGroup_Project]  WITH CHECK ADD  CONSTRAINT [FK_FileGroup_Project_FileGroups] FOREIGN KEY([FileGroupId])
REFERENCES [dbo].[FileGroups] ([FileGroupId])
GO

ALTER TABLE [dbo].[FileGroup_Project] CHECK CONSTRAINT [FK_FileGroup_Project_FileGroups]
GO

ALTER TABLE [dbo].[FileGroup_Project]  WITH CHECK ADD  CONSTRAINT [FK_FileGroup_Project_Projects] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Projects] ([ProjectId])
GO

ALTER TABLE [dbo].[FileGroup_Project] CHECK CONSTRAINT [FK_FileGroup_Project_Projects]
GO


