USE [ProjectMgmt]
GO

ALTER TABLE [dbo].[Datasets] DROP CONSTRAINT [FK_Datasets_Databases]
GO

/****** Object:  Table [dbo].[Datasets]    Script Date: 2/10/2021 11:23:15 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Datasets]') AND type in (N'U'))
DROP TABLE [dbo].[Datasets]
GO

/****** Object:  Table [dbo].[Datasets]    Script Date: 2/10/2021 11:23:15 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Datasets](
	[DatasetId] [int] NOT NULL,
	[DatasetName] [nvarchar](1024) NULL,
	[Description] [nvarchar](max) NULL,
	[DatabaseId] [int] NULL,
 CONSTRAINT [PK_Datasets] PRIMARY KEY CLUSTERED 
(
	[DatasetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Datasets]  WITH CHECK ADD  CONSTRAINT [FK_Datasets_Databases] FOREIGN KEY([DatabaseId])
REFERENCES [dbo].[Databases] ([DatabaseId])
GO

ALTER TABLE [dbo].[Datasets] CHECK CONSTRAINT [FK_Datasets_Databases]
GO

