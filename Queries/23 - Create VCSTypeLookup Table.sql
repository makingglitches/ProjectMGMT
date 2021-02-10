USE [ProjectMgmt]
GO

/****** Object:  Table [dbo].[VCSTypeLookup]    Script Date: 2/10/2021 1:15:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VCSTypeLookup]') AND type in (N'U'))
DROP TABLE [dbo].[VCSTypeLookup]
GO

/****** Object:  Table [dbo].[VCSTypeLookup]    Script Date: 2/10/2021 1:15:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[VCSTypeLookup](
	[TypeId] [int] NOT NULL,
	[Name] [nvarchar](1024) NULL,
	[URL] [nvarchar](max) NULL,
 CONSTRAINT [PK_VCSTypeLookup] PRIMARY KEY CLUSTERED 
(
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


