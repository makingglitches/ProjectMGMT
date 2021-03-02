USE [ProjectMgmt]
GO

/****** Object:  Table [dbo].[DatabaseTypeLookup]    Script Date: 2/10/2021 11:17:16 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DatabaseTypeLookup]') AND type in (N'U'))
DROP TABLE [dbo].[DatabaseTypeLookup]
GO

/****** Object:  Table [dbo].[DatabaseTypeLookup]    Script Date: 2/10/2021 11:17:16 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DatabaseTypeLookup](
	[DatabaseTypeId] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](200) NULL,
	[TypeFilterString] [nchar](1024) NULL,
	[IsFile] [bit] NULL,
	[MultiplePerContainer] [bit] NULL,
 CONSTRAINT [PK_DatabaseTypeLookup] PRIMARY KEY CLUSTERED 
(
	[DatabaseTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


