USE [ProjectMgmt]
GO

/****** Object:  Table [dbo].[TaskTypeLookup]    Script Date: 2/10/2021 2:06:57 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TaskTypeLookup]') AND type in (N'U'))
DROP TABLE [dbo].[TaskTypeLookup]
GO

/****** Object:  Table [dbo].[TaskTypeLookup]    Script Date: 2/10/2021 2:06:57 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TaskTypeLookup](
	[TaskTypeId] [int] NOT NULL,
	[Name] [nvarchar](1024) NULL,
 CONSTRAINT [PK_TaskTypeLookup] PRIMARY KEY CLUSTERED 
(
	[TaskTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


