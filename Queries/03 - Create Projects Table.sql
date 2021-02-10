USE [ProjectMgmt]
GO

ALTER TABLE [dbo].[Projects] DROP CONSTRAINT [FK_Projects_Projects]
GO

/****** Object:  Table [dbo].[Projects]    Script Date: 2/10/2021 11:16:50 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Projects]') AND type in (N'U'))
DROP TABLE [dbo].[Projects]
GO

/****** Object:  Table [dbo].[Projects]    Script Date: 2/10/2021 11:16:50 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Projects](
	[ProjectId] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NULL,
	[ProjectName] [nvarchar](500) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Projects] PRIMARY KEY CLUSTERED 
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Projects]  WITH CHECK ADD  CONSTRAINT [FK_Projects_Projects] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Projects] ([ProjectId])
GO

ALTER TABLE [dbo].[Projects] CHECK CONSTRAINT [FK_Projects_Projects]
GO


