-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT "ProductName", "CategoryName" FROM "Product"

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT "OrderDetail"."OrderId", "Order"."ShipCountry" FROM "Order"
-- join on the shipper ID and the ship VIA but I am too tired to do that now 


-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.


-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
