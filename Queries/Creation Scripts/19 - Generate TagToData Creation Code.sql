USE [ProjectMgmt]
GO

-- so they think they're hiding things
-- that bitch that walked in walked in previously and kicked me out
-- then she didnt walk in and ick me out
-- then some group of people with that addition walked in with their twisted kids
-- and now its a group of weird ass young adults that have replaced all the original fools
-- and they stole this code each time afterwards.

declare @ColumnList nvarchar(max)
declare @FKText nvarchar(max)
declare @index int

select @index=1

select @FKText='ALTER TABLE [dbo].[TagToData]  WITH CHECK ADD  CONSTRAINT [FK_TagToData_Tags] FOREIGN KEY([TagId])
REFERENCES [dbo].[Tags] ([TagId])\n'
select @FKText='ALTER TABLE [dbo].[TagToData] CHECK CONSTRAINT [FK_TagToData_Tags]\n'

select @ColumnList='CREATE TABLE [dbo].[TagToData](\n	[TagId] [int] NOT NULL,\n'

declare @Ids as table( id int identity(1,1), tablename nvarchar(max) not null, columnname nvarchar(max) not null)

insert into @Ids(tablename,columnname)
select tc.TABLE_NAME,
	   --tc.CONSTRAINT_NAME, 
	   kcu.COLUMN_NAME  from
(select tb.TABLE_NAME,tc.CONSTRAINT_NAME from INFORMATION_SCHEMA.TABLES tb
inner join INFORMATION_SCHEMA.TABLE_CONSTRAINTS tc
on tc.TABLE_NAME = tb.TABLE_NAME
inner join INFORMATION_SCHEMA.KEY_COLUMN_USAGE kcu
on kcu.CONSTRAINT_NAME = tc.CONSTRAINT_NAME
where tc.CONSTRAINT_TYPE='PRIMARY KEY'
and tb.TABLE_NAME<>'Tags' and tb.TABLE_NAME<>'TagToData'
group by tb.TABLE_NAME,tc.CONSTRAINT_NAME
having count(*)=1) as tc
inner join INFORMATION_SCHEMA.KEY_COLUMN_USAGE kcu
on kcu.CONSTRAINT_NAME=tc.CONSTRAINT_NAME


select * from @ids


declare @tabname nvarchar(max)
declare @colname nvarchar(max)
declare @constrname nvarchar(max)

while (@index < (select max(id) from @Ids)+1)
begin

	select @tabname = tablename, 
		   @colname = columnname,
		   @constrname = '[FK_TagToData_'+tablename+'_'+columnname+']' from @Ids where id = @index
	

	select @ColumnList=@ColumnList+
	@colname + ' int null,\n'

	select @FKText = @FKText+'ALTER TABLE [dbo].[TagToData]  WITH CHECK ADD  CONSTRAINT '+@constrname+' '+
	@tabname+'_'+@colname+'] FOREIGN KEY(['+@colname+']) references [dbo].['+@tabname+
	'].['+@colname+']\n'

	select @FKText = @FKText+' ALTER TABLE [dbo].[TagToData] CHECK CONSTRAINT '+@constrname+'\n'
	 

	select @index = @index+1
end

select @ColumnList = @ColumnList+'CONSTRAINT [PK_TagToData] PRIMARY KEY CLUSTERED 
(
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]'

select @ColumnList = REPLACE(@columnlist,'\n',char(13)+char(10))
select @FKText = REPLACE(@FKText, '\n', char(13)+char(10))

select @ColumnList
select @FKText

print @ColumnList
print @FKText