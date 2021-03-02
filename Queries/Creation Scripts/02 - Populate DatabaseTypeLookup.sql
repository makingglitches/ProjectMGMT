USE [ProjectMgmt]
GO

INSERT INTO [dbo].[DatabaseTypeLookup]
           ([TypeName]
           ,[TypeFilterString]
           ,[IsFile]
           ,[MultiplePerContainer])
     VALUES
           
		   ('JSON','*.json',1,1),
		   ('XML','*.xml',1,0),
		   ('SQL Server','',0,1),
		   ('MySql','',0,1),
		   ('Dbase','',1,0)
		   
		   
		  
GO


