drop table if exists ##temp_table;
create table ##temp_table
(
	[Db_Name] varchar(1000),
	[Object_Type] varchar(250),
	[Object_Name] varchar(500),
	[Object_definition] nvarchar(max),
	[cnt] int,
	[Search] nvarchar(max)
	)


Declare @SQL_Execute bit = 1;
Declare @SQL_Table_to_insert_into varchar(2000) = '##temp_table' --Needs to be fully defined 
declare @SQL_Table_creation nvarchar(max) = N'
Create table <TABLENAME>'
declare @SQL_Table_const varchar(100) = '<TABLENAME>'
Declare @SQL_ROUTINE_SEARCH_Condition varchar(2000) = '';
Declare @SQL_TABLE_SEARCH_Condition varchar(2000) = '';
declare @advancedSearch as nvarchar(max) = N'	outer apply ( 
		select 
			sum(u.cnt) as cnt,
			string_agg(u.[Search], '', '') as [Search]
		from ( 
			select 1 as cnt, ''rm00101'' as [Search] 
			where lower(obj.[Object_definition]) like ''%rm00101%'' 
			union all 
			select 1 as cnt, ''rm00201'' as [Search]  
			where lower(obj.[Object_definition]) like ''%rm00201%''   ) as u ) as search
	where search.cnt > 0';
			
drop table if exists #database_queries;
select
	Rank() OVER (ORder BY d.name asc ) as [RowID],
	d.name as [DataBase],
	N'
Select * from (
SELECT 
	' + quotename(NAME, '''') + ' as [Db_Name], 
	o.ROUTINE_TYPE collate SQL_Latin1_General_CP1_CI_AS as [Object_Type],
	o.SPECIFIC_NAME collate SQL_Latin1_General_CP1_CI_AS as [Object_Name],
	o.ROUTINE_DEFINITION collate SQL_Latin1_General_CP1_CI_AS as [Object_definition]
FROM ' + quotename(NAME, '') + '.INFORMATION_SCHEMA.ROUTINES as o
UNION
SELECT
	'+ QUOTENAME(NAME, '''') + ' as [Db_Name],
	''Table'' as [Object_Type],
	t.TABLE_NAME collate SQL_Latin1_General_CP1_CI_AS  as [Object_Name],
	o.[ROUTINE_DEFINITION] as [Object_definition]
from '+ QUOTENAME(NAME, '') + '.INFORMATION_SCHEMA.TABLES as t
	cross apply (select stuff(( select '', '' + c.[COLUMN_NAME] + '' as '' + c.[DATA_TYPE] 
								from '+ QUOTENAME(NAME, '') + '.[INFORMATION_SCHEMA].[COLUMNS] as c
								where c.[TABLE_NAME] = t.[TABLE_NAME] for xml path('''')
								),1,2,''Columns: '') as [ROUTINE_DEFINITION] ) as o 
UNION
select
	'+ QUOTENAME(NAME, '''') + ' as [Db_Name],
	''Synonym'' as [Object_Type],
	s.[name] collate SQL_Latin1_General_CP1_CI_AS as [Object_Name],
	s.[base_object_name] collate SQL_Latin1_General_CP1_CI_AS as [Object_definition]
from '+QUOTENAME(NAME, '')+'.sys.synonyms as s ) as obj
'+ @advancedSearch as [Query]
into #database_queries
from sys.databases d
where d.state = 0

declare @RowID int = 1;
declare @DataBase varchar(2000) = '';
declare @SQLQuery nvarchar(max) = '';

declare db_cursor cursor for
select
	[RowID],
	[DataBase],
	[Query]
from #database_queries

open db_cursor
fetch next from db_cursor into @RowID, @DataBase, @SQLQuery
while @@FETCH_STATUS = 0
begin
	select
		@RowID = [RowID],
		@DataBase = [DataBase],
		@SQLQuery = [Query] 
	from #database_queries where RowID = @RowID	
	
			print '';
	print cast(@RowID as varchar(100)) + ' - ' + @DataBase

	if @SQL_Table_to_insert_into <> ''
		begin
			set @SQLQuery = 'insert into ' + @SQL_Table_to_insert_into + '
' + @SQLQuery 
		end

	if @SQL_Execute = 1
		begin
			execute (@SQLQuery)
		end
	else
		begin
			print @SQLQuery
		end

	fetch next from db_cursor into @RowID, @DataBase, @SQLQuery
end

close db_cursor
DEALLOCATE db_cursor

select * from ##temp_table
select * from #database_queries

DECLARE @bcpCommand VARCHAR(1000);

SET @bcpCommand = 'bcp "SELECT * FROM ##temp_table" queryout "C:\justinpo_testbed\DataDump\SearchQuery_rm00101_rm00201.csv" -c -t, -T -S ' + @@SERVERNAME;

PRINT @bcpCommand;
EXEC xp_cmdshell @bcpCommand;