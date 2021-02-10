USE [ProjectMgmt]
GO

ALTER TABLE [dbo].[DatabaseContainer] DROP CONSTRAINT [FK_DatabaseContainer_DatabaseTypeLookup]
GO

/****** Object:  Table [dbo].[DatabaseContainer]    Script Date: 2/10/2021 11:17:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DatabaseContainer]') AND type in (N'U'))
DROP TABLE [dbo].[DatabaseContainer]
GO

/****** Object:  Table [dbo].[DatabaseContainer]    Script Date: 2/10/2021 11:17:03 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DatabaseContainer](
	[DatabaseContainerId] [int] IDENTITY(1,1) NOT NULL,
	[DatabaseContainerName] [nvarchar](1024) NULL,
	[IsFile] [bit] NULL,
	[DatabaseContainerPath] [nvarchar](max) NULL,
	[IsLocal] [bit] NULL,
	[DatabaseTypeId] [int] NULL,
 CONSTRAINT [PK_DatabaseContainer] PRIMARY KEY CLUSTERED 
(
	[DatabaseContainerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[DatabaseContainer]  WITH CHECK ADD  CONSTRAINT [FK_DatabaseContainer_DatabaseTypeLookup] FOREIGN KEY([DatabaseTypeId])
REFERENCES [dbo].[DatabaseTypeLookup] ([DatabaseTypeId])
GO

ALTER TABLE [dbo].[DatabaseContainer] CHECK CONSTRAINT [FK_DatabaseContainer_DatabaseTypeLookup]
GO


