USE [ProjectMgmt]
GO

ALTER TABLE [dbo].[Files] DROP CONSTRAINT [FK_Files_SourceId]
GO

/****** Object:  Table [dbo].[Files]    Script Date: 2/10/2021 11:41:46 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Files]') AND type in (N'U'))
DROP TABLE [dbo].[Files]
GO

/****** Object:  Table [dbo].[Files]    Script Date: 2/10/2021 11:41:46 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Files](
	[FileId] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [nvarchar](1024) NULL,
	[SourceId] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[SHAHash] [nvarchar](max) NULL,
 CONSTRAINT [PK_Files] PRIMARY KEY CLUSTERED 
(
	[FileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Files]  WITH CHECK ADD  CONSTRAINT [FK_Files_SourceId] FOREIGN KEY([SourceId])
REFERENCES [dbo].[FileSources] ([SourceId])
GO

ALTER TABLE [dbo].[Files] CHECK CONSTRAINT [FK_Files_SourceId]
GO


