


create view view1
as
select orderid,CompanyName,firstname+' '+lastname as 'employee',orderdate,ShipName,ShipCity,ShipCountry from Orders
inner join Customers
on orders.CustomerID=Customers.CustomerID
inner join Employees
on orders.EmployeeID=Employees.EmployeeID

select * from view1

select * from Invoices