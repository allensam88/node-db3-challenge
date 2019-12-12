-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT ProductName, CategoryName
FROM Product
JOIN Category on Product.CategoryId = Category.Id;


-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT [Order].Id, Shipper.CompanyName, [Order].OrderDate
FROM [Order]
JOIN Shipper on [Order].ShipVia = Shipper.Id
WHERE [Order].OrderDate < '2012-08-09';


-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT ProductName, Quantity
FROM OrderDetail
JOIN Product on OrderDetail.ProductId = Product.Id
WHERE OrderDetail.OrderId = 10251
ORDER BY ProductName;


-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT id as Order_ID, CompanyName as Customer, LastName as Employee
FROM [Order]
JOIN Customer on [Order].CustomerId = Customer.Id
JOIN Employee on [Order].EmployeeId = Employee.Id;


--Displays CategoryName and a new column called Count that shows how many products are in each category. Shows 9 records.
SELECT Category.CategoryName, COUNT(Product.ProductName) as Count FROM Category
JOIN Product ON Category.Id = Product.CategoryId
GROUP BY Category.CategoryName


--Display OrderID and a column called ItemCount that shows the total number of products placed on the order. Shows 196 records.
