USE[master]
GO
CREATE LOGIN [etl] with password=N'demopass',DEFAULT_DATABASE=[AdventureWorksDW2019], check_expiration=off,check_policy=off
go
use [AdventureWorksDW2019]
go
create user [etl] for login [etl]
go
use [AdventureWorksDW2019]
go
alter role [db_datareader] add member [etl]
go
USE[master]
go
grant connect sql to [etl]
go
