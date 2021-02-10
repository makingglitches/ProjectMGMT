USE [ProjectMgmt]
GO

ALTER TABLE [dbo].[DataSetRelationships] DROP CONSTRAINT [FK_DataSetRelationships_Datasets1]
GO

ALTER TABLE [dbo].[DataSetRelationships] DROP CONSTRAINT [FK_DataSetRelationships_Datasets]
GO

/****** Object:  Table [dbo].[DataSetRelationships]    Script Date: 2/10/2021 11:29:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DataSetRelationships]') AND type in (N'U'))
DROP TABLE [dbo].[DataSetRelationships]
GO

/****** Object:  Table [dbo].[DataSetRelationships]    Script Date: 2/10/2021 11:29:03 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DataSetRelationships](
	[FirstDataSetId] [int] NOT NULL,
	[SecondDataSetId] [int] NOT NULL,
	[RelationShipDescription] [nvarchar](max) NULL,
 CONSTRAINT [PK_DataSetRelationships] PRIMARY KEY CLUSTERED 
(
	[FirstDataSetId] ASC,
	[SecondDataSetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[DataSetRelationships]  WITH CHECK ADD  CONSTRAINT [FK_DataSetRelationships_Datasets] FOREIGN KEY([FirstDataSetId])
REFERENCES [dbo].[Datasets] ([DatasetId])
GO

ALTER TABLE [dbo].[DataSetRelationships] CHECK CONSTRAINT [FK_DataSetRelationships_Datasets]
GO

ALTER TABLE [dbo].[DataSetRelationships]  WITH CHECK ADD  CONSTRAINT [FK_DataSetRelationships_Datasets1] FOREIGN KEY([SecondDataSetId])
REFERENCES [dbo].[Datasets] ([DatasetId])
GO

ALTER TABLE [dbo].[DataSetRelationships] CHECK CONSTRAINT [FK_DataSetRelationships_Datasets1]
GO


