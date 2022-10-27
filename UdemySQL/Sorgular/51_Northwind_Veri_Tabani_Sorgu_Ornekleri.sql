select * from Products

select * from Products where CategoryID=1

select * from Products where CategoryID=(select CategoryID from Categories
where CategoryName='seafood') and  UnitsInStock>20 and
SupplierID=(select SupplierID from Suppliers where city='osaka')

create procedure test1
as
select * from Orders where EmployeeID in(select EmployeeID from Employees where
city='london') and ShipVia=3 and ShipCountry='france'

exec test1







