use ProjectMgmt
GO

-- ok so i can't think of any other classifications blow me !

truncate table dbo.TaskTypeLookup
GO

insert into dbo.TaskTypeLookup(Name)
values ('Feature Request'),
	   ('Bug Fix')
	