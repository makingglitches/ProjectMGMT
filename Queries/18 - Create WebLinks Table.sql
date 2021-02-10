USE [ProjectMgmt]
GO

/****** Object:  Table [dbo].[WebLinks]    Script Date: 2/10/2021 12:03:06 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WebLinks]') AND type in (N'U'))
DROP TABLE [dbo].[WebLinks]
GO

/****** Object:  Table [dbo].[WebLinks]    Script Date: 2/10/2021 12:03:06 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[WebLinks](
	[LinkId] [int] IDENTITY(1,1) NOT NULL,
	[URL] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_WebLinks] PRIMARY KEY CLUSTERED 
(
	[LinkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


