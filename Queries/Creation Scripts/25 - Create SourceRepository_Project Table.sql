USE [ProjectMgmt]
GO

/****** Object:  Table [dbo].[SourceRepository_Project]    Script Date: 2/10/2021 1:32:40 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SourceRepository_Project]') AND type in (N'U'))
DROP TABLE [dbo].[SourceRepository_Project]
GO

/****** Object:  Table [dbo].[SourceRepository_Project]    Script Date: 2/10/2021 1:32:40 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SourceRepository_Project](
	[RepoId] [int] NULL,
	[ProjectId] [int] NULL
) ON [PRIMARY]
GO


