USE [ProjectMgmt]
GO

ALTER TABLE [dbo].[FileGroupToData] DROP CONSTRAINT [FK_FileGroupToData_FileGroups]
GO

ALTER TABLE [dbo].[FileGroupToData] DROP CONSTRAINT [FK_FileGroupToData_Datasets]
GO

ALTER TABLE [dbo].[FileGroupToData] DROP CONSTRAINT [FK_FileGroupToData_Databases]
GO

ALTER TABLE [dbo].[FileGroupToData] DROP CONSTRAINT [FK_FileGroupToData_DatabaseContainer]
GO

/****** Object:  Table [dbo].[FileGroupToData]    Script Date: 2/10/2021 12:02:38 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FileGroupToData]') AND type in (N'U'))
DROP TABLE [dbo].[FileGroupToData]
GO

/****** Object:  Table [dbo].[FileGroupToData]    Script Date: 2/10/2021 12:02:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FileGroupToData](
	[FileGroupId] [int] NOT NULL,
	[DatabaseId] [int] NOT NULL,
	[DataContainerId] [int] NOT NULL,
	[DatasetId] [int] NOT NULL,
 CONSTRAINT [PK_FileGroupToData] PRIMARY KEY CLUSTERED 
(
	[FileGroupId] ASC,
	[DatabaseId] ASC,
	[DataContainerId] ASC,
	[DatasetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FileGroupToData]  WITH CHECK ADD  CONSTRAINT [FK_FileGroupToData_DatabaseContainer] FOREIGN KEY([DataContainerId])
REFERENCES [dbo].[DatabaseContainer] ([DatabaseContainerId])
GO

ALTER TABLE [dbo].[FileGroupToData] CHECK CONSTRAINT [FK_FileGroupToData_DatabaseContainer]
GO

ALTER TABLE [dbo].[FileGroupToData]  WITH CHECK ADD  CONSTRAINT [FK_FileGroupToData_Databases] FOREIGN KEY([DatabaseId])
REFERENCES [dbo].[Databases] ([DatabaseId])
GO

ALTER TABLE [dbo].[FileGroupToData] CHECK CONSTRAINT [FK_FileGroupToData_Databases]
GO

ALTER TABLE [dbo].[FileGroupToData]  WITH CHECK ADD  CONSTRAINT [FK_FileGroupToData_Datasets] FOREIGN KEY([DatasetId])
REFERENCES [dbo].[Datasets] ([DatasetId])
GO

ALTER TABLE [dbo].[FileGroupToData] CHECK CONSTRAINT [FK_FileGroupToData_Datasets]
GO

ALTER TABLE [dbo].[FileGroupToData]  WITH CHECK ADD  CONSTRAINT [FK_FileGroupToData_FileGroups] FOREIGN KEY([FileGroupId])
REFERENCES [dbo].[FileGroups] ([FileGroupId])
GO

ALTER TABLE [dbo].[FileGroupToData] CHECK CONSTRAINT [FK_FileGroupToData_FileGroups]
GO


