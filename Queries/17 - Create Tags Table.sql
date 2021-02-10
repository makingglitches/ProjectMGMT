USE [ProjectMgmt]
GO

ALTER TABLE [dbo].[Tags] DROP CONSTRAINT [DF_Tags_MajorTag]
GO

/****** Object:  Table [dbo].[Tags]    Script Date: 2/10/2021 12:02:59 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tags]') AND type in (N'U'))
DROP TABLE [dbo].[Tags]
GO

/****** Object:  Table [dbo].[Tags]    Script Date: 2/10/2021 12:02:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Tags](
	[TagId] [int] IDENTITY(1,1) NOT NULL,
	[MajorTag] [bit] NOT NULL,
	[TagName] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Tags] ADD  CONSTRAINT [DF_Tags_MajorTag]  DEFAULT ((0)) FOR [MajorTag]
GO


