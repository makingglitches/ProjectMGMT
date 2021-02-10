USE [ProjectMgmt]
GO

ALTER TABLE [dbo].[DatabaseContainer_Project] DROP CONSTRAINT [FK_DatabaseContainer_Project_Projects]
GO

/****** Object:  Table [dbo].[DatabaseContainer_Project]    Script Date: 2/10/2021 11:20:13 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DatabaseContainer_Project]') AND type in (N'U'))
DROP TABLE [dbo].[DatabaseContainer_Project]
GO

/****** Object:  Table [dbo].[DatabaseContainer_Project]    Script Date: 2/10/2021 11:20:13 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DatabaseContainer_Project](
	[ProjectId] [int] NULL,
	[DatabaseContainerId] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DatabaseContainer_Project]  WITH CHECK ADD  CONSTRAINT [FK_DatabaseContainer_Project_Projects] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Projects] ([ProjectId])
GO

ALTER TABLE [dbo].[DatabaseContainer_Project] CHECK CONSTRAINT [FK_DatabaseContainer_Project_Projects]
GO


