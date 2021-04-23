use AdventureWorks2017
go

select * from Sales.SalesOrderHeader;

select [SalesOrderID],[OrderDate],[TotalDue]
from Sales.SalesOrderHeader
where OrderDate BETWEEN '2011-09-01' AND'2011-09-30' AND TotalDue > 3500;

select * from Person.Person

select [BusinessEntityID],[FirstName],[MiddleName],[LastName]
from Person.Person
order by LastName;

select * from Sales.SpecialOffer

select [SpecialOfferID],MaxQty - MinQty,[Description]
from Sales.SpecialOffer;

select [SalesOrderID],[OrderDate],[ShipDate],DATEDIFF(d,OrderDate,ShipDate) AS NumberOfDays
from Sales.SalesOrderHeader


select [CustomerID],[FirstName],[LastName]
from Sales.Customer INNER JOIN Person.Person on ;
