USE [ProjectMgmt]
GO

ALTER TABLE [dbo].[TaskChanged] DROP CONSTRAINT [FK_TaskChanged_TaskTypeLookup]
GO

ALTER TABLE [dbo].[TaskChanged] DROP CONSTRAINT [FK_TaskChanged_Tasks]
GO

ALTER TABLE [dbo].[TaskChanged] DROP CONSTRAINT [DF_TaskChanged_ChangedOn]
GO

/****** Object:  Table [dbo].[TaskChanged]    Script Date: 2/10/2021 2:07:17 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TaskChanged]') AND type in (N'U'))
DROP TABLE [dbo].[TaskChanged]
GO

/****** Object:  Table [dbo].[TaskChanged]    Script Date: 2/10/2021 2:07:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TaskChanged](
	[ChangeId] [int] IDENTITY(1,1) NOT NULL,
	[TaskId] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[Name] [nvarchar](1024) NULL,
	[TaskTypeId] [int] NULL,
	[ChangedOn] [datetime] NULL,
	[AssignedTo] [int] NULL,
	[AssignedOn] [datetime] NULL,
 CONSTRAINT [PK_TaskChanged] PRIMARY KEY CLUSTERED 
(
	[ChangeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[TaskChanged] ADD  CONSTRAINT [DF_TaskChanged_ChangedOn]  DEFAULT (getutcdate()) FOR [ChangedOn]
GO

ALTER TABLE [dbo].[TaskChanged]  WITH CHECK ADD  CONSTRAINT [FK_TaskChanged_Tasks] FOREIGN KEY([TaskId])
REFERENCES [dbo].[Tasks] ([TaskId])
GO

ALTER TABLE [dbo].[TaskChanged] CHECK CONSTRAINT [FK_TaskChanged_Tasks]
GO

ALTER TABLE [dbo].[TaskChanged]  WITH CHECK ADD  CONSTRAINT [FK_TaskChanged_TaskTypeLookup] FOREIGN KEY([TaskTypeId])
REFERENCES [dbo].[TaskTypeLookup] ([TaskTypeId])
GO

ALTER TABLE [dbo].[TaskChanged] CHECK CONSTRAINT [FK_TaskChanged_TaskTypeLookup]
GO


