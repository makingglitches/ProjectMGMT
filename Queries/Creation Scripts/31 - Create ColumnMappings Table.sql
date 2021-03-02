USE [ProjectMgmt]
GO

ALTER TABLE [dbo].[ColumnMappings] DROP CONSTRAINT [FK_ColumnMappings_Datasets1]
GO

ALTER TABLE [dbo].[ColumnMappings] DROP CONSTRAINT [FK_ColumnMappings_Datasets]
GO

ALTER TABLE [dbo].[ColumnMappings] DROP CONSTRAINT [FK_ColumnMappings_DatasetColumns1]
GO

ALTER TABLE [dbo].[ColumnMappings] DROP CONSTRAINT [FK_ColumnMappings_DatasetColumns]
GO

/****** Object:  Table [dbo].[ColumnMappings]    Script Date: 2/10/2021 2:17:53 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ColumnMappings]') AND type in (N'U'))
DROP TABLE [dbo].[ColumnMappings]
GO

/****** Object:  Table [dbo].[ColumnMappings]    Script Date: 2/10/2021 2:17:53 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ColumnMappings](
	[SourceDatasetId] [int] NOT NULL,
	[DestinationDatasetId] [int] NOT NULL,
	[SourceColumnId] [int] NOT NULL,
	[DestinationColumnId] [int] NOT NULL,
 CONSTRAINT [PK_ColumnMappings] PRIMARY KEY CLUSTERED 
(
	[SourceDatasetId] ASC,
	[DestinationDatasetId] ASC,
	[SourceColumnId] ASC,
	[DestinationColumnId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ColumnMappings]  WITH CHECK ADD  CONSTRAINT [FK_ColumnMappings_DatasetColumns] FOREIGN KEY([SourceColumnId])
REFERENCES [dbo].[DatasetColumns] ([ColumnId])
GO

ALTER TABLE [dbo].[ColumnMappings] CHECK CONSTRAINT [FK_ColumnMappings_DatasetColumns]
GO

ALTER TABLE [dbo].[ColumnMappings]  WITH CHECK ADD  CONSTRAINT [FK_ColumnMappings_DatasetColumns1] FOREIGN KEY([DestinationColumnId])
REFERENCES [dbo].[DatasetColumns] ([ColumnId])
GO

ALTER TABLE [dbo].[ColumnMappings] CHECK CONSTRAINT [FK_ColumnMappings_DatasetColumns1]
GO

ALTER TABLE [dbo].[ColumnMappings]  WITH CHECK ADD  CONSTRAINT [FK_ColumnMappings_Datasets] FOREIGN KEY([SourceDatasetId])
REFERENCES [dbo].[Datasets] ([DatasetId])
GO

ALTER TABLE [dbo].[ColumnMappings] CHECK CONSTRAINT [FK_ColumnMappings_Datasets]
GO

ALTER TABLE [dbo].[ColumnMappings]  WITH CHECK ADD  CONSTRAINT [FK_ColumnMappings_Datasets1] FOREIGN KEY([DestinationDatasetId])
REFERENCES [dbo].[Datasets] ([DatasetId])
GO

ALTER TABLE [dbo].[ColumnMappings] CHECK CONSTRAINT [FK_ColumnMappings_Datasets1]
GO


