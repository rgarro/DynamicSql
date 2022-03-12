

sp_executesql N'SELECT COUNT(*) FROM Person.Person';

DECLARE @sql_command NVARCHAR(MAX) = 'SELECT COUNT(*) FROM Person.Person';
EXEC sp_executesql @sql_command;