USE [ProjectMgmt]
GO

ALTER TABLE [dbo].[Databases] DROP CONSTRAINT [FK_Databases_Databases]
GO

/****** Object:  Table [dbo].[Databases]    Script Date: 2/10/2021 11:17:28 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Databases]') AND type in (N'U'))
DROP TABLE [dbo].[Databases]
GO

/****** Object:  Table [dbo].[Databases]    Script Date: 2/10/2021 11:17:28 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Databases](
	[DatabaseId] [int] NOT NULL,
	[DatabaseContainerId] [int] NULL,
	[DatabaseName] [nvarchar](1024) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Databases] PRIMARY KEY CLUSTERED 
(
	[DatabaseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Databases]  WITH CHECK ADD  CONSTRAINT [FK_Databases_Databases] FOREIGN KEY([DatabaseId])
REFERENCES [dbo].[Databases] ([DatabaseId])
GO

ALTER TABLE [dbo].[Databases] CHECK CONSTRAINT [FK_Databases_Databases]
GO


