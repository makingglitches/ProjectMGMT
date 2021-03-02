USE [ProjectMgmt]
GO

ALTER TABLE [dbo].[DatasetColumns] DROP CONSTRAINT [FK_DatasetColumns_Datasets]
GO

/****** Object:  Table [dbo].[DatasetColumns]    Script Date: 2/10/2021 2:13:42 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DatasetColumns]') AND type in (N'U'))
DROP TABLE [dbo].[DatasetColumns]
GO

/****** Object:  Table [dbo].[DatasetColumns]    Script Date: 2/10/2021 2:13:42 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DatasetColumns](
	[ColumnId] [int] NOT NULL,
	[DatasetId] [int] NULL,
	[ColumnName] [nvarchar](1024) NULL,
	[ColumnType] [nvarchar](50) NULL,
	[DataLength] [int] NULL,
	[Precision] [int] NULL,
	[PrecisionDecimals] [int] NULL,
	[ColumnPos] [int] NULL,
 CONSTRAINT [PK_DatasetColumns] PRIMARY KEY CLUSTERED 
(
	[ColumnId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DatasetColumns]  WITH CHECK ADD  CONSTRAINT [FK_DatasetColumns_Datasets] FOREIGN KEY([DatasetId])
REFERENCES [dbo].[Datasets] ([DatasetId])
GO

ALTER TABLE [dbo].[DatasetColumns] CHECK CONSTRAINT [FK_DatasetColumns_Datasets]
GO


