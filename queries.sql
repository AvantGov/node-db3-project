-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT "ProductName", "CategoryName" FROM "Product"

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT "Order"."ShipVia", "Order"."Id" FROM "Order"
JOIN "Shipper" ON "Order"."ShipVia" = "Shipper"."Id"
WHERE "OrderDate" < 2012-08-09;
-- use of the reserved word order does nto allow this query to work 

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT "Product"."ProductName" , "OrderDetail"."Quantity" FROM "OrderDetail"
JOIN "Product" ON "OrderDetail"."ProductId" = "Product"."Id"
WHERE "OrderId" = 10251;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT 
"Order"."Id" AS "Order_Id",
"Customer"."CompanyName" AS "Company_Name",
"Employee"."LastName" AS "Employee_LastName"
FROM "Order"
JOIN "Customer" ON "Order"."CustomerId" = "Customer"."Id"
JOIN "Employee" ON "Order"."EmployeeId" = "Employee"."Id"
