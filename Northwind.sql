use Northwind;

--1. Select all the rows from the "Customers" table.
-- SELECT * FROM Customers

--2. Get distinct countries from the Customers table.
-- SELECT DISTINCT Country FROM Customers

--3. Get all the rows from the table Customers where the Customer’s ID starts with “BL”.
-- SELECT * FROM Customers
-- WHERE CHARINDEX('BL', CustomerID) > 0

--4. Get the first 100 records of the orders table. DISCUSS: Why would you do this? What else would you likely need to include in this query?
-- SELECT TOP 100 * FROM Orders

--5. Get all customers that live in the postal codes 1010, 3012, 12209, and 05023.
-- SELECT * FROM Customers
-- WHERE PostalCode = '1010' OR PostalCode = '3012' OR PostalCode = '12209' OR PostalCode = '05023'

--6. Get all orders where the ShipRegion is not equal to NULL.
-- SELECT * FROM Orders
-- WHERE ShipRegion != 'NULL'

--7. Get all customers ordered by the country, then by the city.
-- SELECT * FROM Customers
-- ORDER BY Country, City

--8. Add a new customer to the customers table. You can use whatever values.
-- INSERT INTO Customers(CustomerID, CompanyName, ContactName, City)
-- VALUES ('WILFR', 'Grand Circus', 'Wilfredo Pacheco', 'Detroit')
-- SELECT * FROM Customers

--9. Update all ShipRegion to the value ‘EuroZone’ in the Orders table, where the ShipCountry is equal to France.
-- UPDATE Orders
-- SET ShipRegion = 'EuroZone'
-- WHERE ShipCountry = 'France'
-- SELECT * FROM Orders

--10. Delete all orders from OrderDetails that have quantity of 1.
-- DELETE FROM [Order Details]
-- WHERE Quantity = 1
-- SELECT * FROM [Order Details]

--11. Find the CustomerID that placed order 10290 (orders table).
-- SELECT CustomerID FROM Orders
-- WHERE OrderID = '10290'

--12. Join the orders table to the customers table.
-- SELECT * FROM Customers
-- INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID

--13. Get employees’ firstname for all employees who report to no one.
-- SELECT FirstName FROM Employees
-- WHERE ReportsTo IS Null

--14. Get employees’ firstname for all employees who report to Andrew.
-- SELECT FirstName From Employees
-- Where ReportsTo = 2
-- WHERE (SELECT EmployeeID FROM Employees WHERE ReportsTo is NULL);-------------