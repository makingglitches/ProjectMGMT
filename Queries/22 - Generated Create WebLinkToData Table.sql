USE [ProjectMgmt]
GO

-- this code was generated by script 21, drop the table and constraints manually first

 
CREATE TABLE [dbo].[WebLinkToData](
	[LinkId] [int] NOT NULL,
DatabaseContainerId int null,
DatabaseId int null,
DatabaseTypeId int null,
DatasetId int null,
FileGroupId int null,
FileId int null,
ProjectId int null,
SourceId int null,
TagId int null,
CONSTRAINT [PK_WebLinkToData] PRIMARY KEY CLUSTERED 
(
	[LinkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
 
GO
 
ALTER TABLE [dbo].[WebLinkToData]  WITH CHECK ADD  CONSTRAINT [FK_WebLinkToData_WebLinks] FOREIGN KEY([LinkId])
REFERENCES [dbo].[WebLinks] ([LinkId])
ALTER TABLE [dbo].[WebLinkToData] CHECK CONSTRAINT [FK_WebLinkToData_WebLinks]
ALTER TABLE [dbo].[WebLinkToData]  WITH CHECK ADD  CONSTRAINT [FK_WebLinkToData_DatabaseContainer_DatabaseContainerId]  FOREIGN KEY([DatabaseContainerId]) references [dbo].[DatabaseContainer](DatabaseContainerId)
 ALTER TABLE [dbo].[WebLinkToData] CHECK CONSTRAINT [FK_WebLinkToData_DatabaseContainer_DatabaseContainerId]
ALTER TABLE [dbo].[WebLinkToData]  WITH CHECK ADD  CONSTRAINT [FK_WebLinkToData_Databases_DatabaseId]  FOREIGN KEY([DatabaseId]) references [dbo].[Databases](DatabaseId)
 ALTER TABLE [dbo].[WebLinkToData] CHECK CONSTRAINT [FK_WebLinkToData_Databases_DatabaseId]
ALTER TABLE [dbo].[WebLinkToData]  WITH CHECK ADD  CONSTRAINT [FK_WebLinkToData_DatabaseTypeLookup_DatabaseTypeId]  FOREIGN KEY([DatabaseTypeId]) references [dbo].[DatabaseTypeLookup](DatabaseTypeId)
 ALTER TABLE [dbo].[WebLinkToData] CHECK CONSTRAINT [FK_WebLinkToData_DatabaseTypeLookup_DatabaseTypeId]
ALTER TABLE [dbo].[WebLinkToData]  WITH CHECK ADD  CONSTRAINT [FK_WebLinkToData_Datasets_DatasetId]  FOREIGN KEY([DatasetId]) references [dbo].[Datasets](DatasetId)
 ALTER TABLE [dbo].[WebLinkToData] CHECK CONSTRAINT [FK_WebLinkToData_Datasets_DatasetId]
ALTER TABLE [dbo].[WebLinkToData]  WITH CHECK ADD  CONSTRAINT [FK_WebLinkToData_FileGroups_FileGroupId]  FOREIGN KEY([FileGroupId]) references [dbo].[FileGroups](FileGroupId)
 ALTER TABLE [dbo].[WebLinkToData] CHECK CONSTRAINT [FK_WebLinkToData_FileGroups_FileGroupId]
ALTER TABLE [dbo].[WebLinkToData]  WITH CHECK ADD  CONSTRAINT [FK_WebLinkToData_Files_FileId]  FOREIGN KEY([FileId]) references [dbo].[Files](FileId)
 ALTER TABLE [dbo].[WebLinkToData] CHECK CONSTRAINT [FK_WebLinkToData_Files_FileId]
ALTER TABLE [dbo].[WebLinkToData]  WITH CHECK ADD  CONSTRAINT [FK_WebLinkToData_Projects_ProjectId]  FOREIGN KEY([ProjectId]) references [dbo].[Projects](ProjectId)
 ALTER TABLE [dbo].[WebLinkToData] CHECK CONSTRAINT [FK_WebLinkToData_Projects_ProjectId]
ALTER TABLE [dbo].[WebLinkToData]  WITH CHECK ADD  CONSTRAINT [FK_WebLinkToData_FileSources_SourceId]  FOREIGN KEY([SourceId]) references [dbo].[FileSources](SourceId)
 ALTER TABLE [dbo].[WebLinkToData] CHECK CONSTRAINT [FK_WebLinkToData_FileSources_SourceId]
ALTER TABLE [dbo].[WebLinkToData]  WITH CHECK ADD  CONSTRAINT [FK_WebLinkToData_Tags_TagId]  FOREIGN KEY([TagId]) references [dbo].[Tags](TagId)
 ALTER TABLE [dbo].[WebLinkToData] CHECK CONSTRAINT [FK_WebLinkToData_Tags_TagId]
 
GO
 
  ALTER TABLE [dbo].[WebLinkToData] add constraint [UN_LinkId_DatabaseContainer_DatabaseContainerId] unique (LinkId,DatabaseContainerId)
 ALTER TABLE [dbo].[WebLinkToData] add constraint [UN_LinkId_Databases_DatabaseId] unique (LinkId,DatabaseId)
 ALTER TABLE [dbo].[WebLinkToData] add constraint [UN_LinkId_DatabaseTypeLookup_DatabaseTypeId] unique (LinkId,DatabaseTypeId)
 ALTER TABLE [dbo].[WebLinkToData] add constraint [UN_LinkId_Datasets_DatasetId] unique (LinkId,DatasetId)
 ALTER TABLE [dbo].[WebLinkToData] add constraint [UN_LinkId_FileGroups_FileGroupId] unique (LinkId,FileGroupId)
 ALTER TABLE [dbo].[WebLinkToData] add constraint [UN_LinkId_Files_FileId] unique (LinkId,FileId)
 ALTER TABLE [dbo].[WebLinkToData] add constraint [UN_LinkId_Projects_ProjectId] unique (LinkId,ProjectId)
 ALTER TABLE [dbo].[WebLinkToData] add constraint [UN_LinkId_FileSources_SourceId] unique (LinkId,SourceId)
 ALTER TABLE [dbo].[WebLinkToData] add constraint [UN_LinkId_Tags_TagId] unique (LinkId,TagId)
 
GO
 

