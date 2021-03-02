USE [ProjectMgmt]
GO

ALTER TABLE [dbo].[FileToData] DROP CONSTRAINT [FK_FileToData_Files]
GO

ALTER TABLE [dbo].[FileToData] DROP CONSTRAINT [FK_FileToData_Datasets]
GO

ALTER TABLE [dbo].[FileToData] DROP CONSTRAINT [FK_FileToData_Databases]
GO

ALTER TABLE [dbo].[FileToData] DROP CONSTRAINT [FK_FileToData_DatabaseContainer]
GO

/****** Object:  Table [dbo].[FileToData]    Script Date: 2/10/2021 12:02:46 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FileToData]') AND type in (N'U'))
DROP TABLE [dbo].[FileToData]
GO

/****** Object:  Table [dbo].[FileToData]    Script Date: 2/10/2021 12:02:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FileToData](
	[FileId] [int] NOT NULL,
	[DatabaseId] [int] NOT NULL,
	[DatasetId] [int] NOT NULL,
	[DatabaseContainerId] [int] NOT NULL,
 CONSTRAINT [PK_FileToData] PRIMARY KEY CLUSTERED 
(
	[FileId] ASC,
	[DatabaseId] ASC,
	[DatasetId] ASC,
	[DatabaseContainerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FileToData]  WITH CHECK ADD  CONSTRAINT [FK_FileToData_DatabaseContainer] FOREIGN KEY([DatabaseContainerId])
REFERENCES [dbo].[DatabaseContainer] ([DatabaseContainerId])
GO

ALTER TABLE [dbo].[FileToData] CHECK CONSTRAINT [FK_FileToData_DatabaseContainer]
GO

ALTER TABLE [dbo].[FileToData]  WITH CHECK ADD  CONSTRAINT [FK_FileToData_Databases] FOREIGN KEY([DatabaseId])
REFERENCES [dbo].[Databases] ([DatabaseId])
GO

ALTER TABLE [dbo].[FileToData] CHECK CONSTRAINT [FK_FileToData_Databases]
GO

ALTER TABLE [dbo].[FileToData]  WITH CHECK ADD  CONSTRAINT [FK_FileToData_Datasets] FOREIGN KEY([DatasetId])
REFERENCES [dbo].[Datasets] ([DatasetId])
GO

ALTER TABLE [dbo].[FileToData] CHECK CONSTRAINT [FK_FileToData_Datasets]
GO

ALTER TABLE [dbo].[FileToData]  WITH CHECK ADD  CONSTRAINT [FK_FileToData_Files] FOREIGN KEY([FileId])
REFERENCES [dbo].[Files] ([FileId])
GO

ALTER TABLE [dbo].[FileToData] CHECK CONSTRAINT [FK_FileToData_Files]
GO


