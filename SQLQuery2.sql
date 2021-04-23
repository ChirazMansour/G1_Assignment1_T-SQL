use AdventureWorks2017
go

select [SalesOrderID],[OrderDate],[TotalDue]
from Sales.SalesOrderHeader
where OrderDate BETWEEN '2011-09-01' AND'2011-09-30' AND TotalDue > 3500;


select [BusinessEntityID],[FirstName],[MiddleName],[LastName]
from Person.Person
order by LastName;


select [SpecialOfferID],MaxQty - MinQty,[Description]
from Sales.SpecialOffer;

select [SalesOrderID],[OrderDate],[ShipDate],DATEDIFF(d,OrderDate,ShipDate) AS NumberOfDays
from Sales.SalesOrderHeader


select FirstName, MiddleName, LastName, Prod.Name
from Sales.Customer AS C
INNER JOIN Person.Person AS P ON C.PersonID = P.BusinessEntityID
INNER JOIN Sales.SalesOrderHeader AS SOH ON C.CustomerID = SOH.CustomerID
INNER JOIN Sales.SalesOrderDetail AS SOD
ON SOH.SalesOrderID = SOD.SalesOrderID
INNER JOIN Production.Product AS Prod ON SOD.ProductID = Prod.ProductID;

