

sp_executesql N'SELECT COUNT(*) FROM Person.Person';

DECLARE @sql_command NVARCHAR(MAX) = 'SELECT COUNT(*) FROM Person.Person';
EXEC sp_executesql @sql_command;

DECLARE @CMD NVARCHAR(MAX);
DECLARE @search_criteria NVARCHAR(1000);
SELECT @CMD = 'SELECT * FROM Person.Person WHERE Person.Person.LastName=';--+CONCAT(CHAR(39));
SELECT @search_criteria = CONCAT(CHAR(39),'Smith',CHAR(39));--'Smith"; SELECT * FROM sys.tables WHERE "" = "';
SELECT @CMD = @CMD + @search_criteria;
EXEC sp_executesql @CMD;
