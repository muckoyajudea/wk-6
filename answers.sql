-- ==========================
-- Question 1 🧑‍💼
-- Get employee details (firstName, lastName, email) and officeCode
-- Using INNER JOIN between employees and offices on officeCode
-- ==========================
SELECT e.firstName, e.lastName, e.email, e.officeCode
FROM employees e
INNER JOIN offices o
    ON e.officeCode = o.officeCode;


-- ==========================
-- Question 2 🛍️
-- Get productName, productVendor, and productLine
-- Using LEFT JOIN between products and productlines on productLine
-- ==========================
SELECT p.productName, p.productVendor, pl.productLine
FROM products p
LEFT JOIN productlines pl
    ON p.productLine = pl.productLine;


-- ==========================
-- Question 3 📦
-- Retrieve first 10 orders (orderDate, shippedDate, status, customerNumber)
-- Using RIGHT JOIN between customers and orders on customerNumber
-- ==========================
SELECT o.orderDate, o.shippedDate, o.status, o.customerNumber
FROM customers c
RIGHT JOIN orders o
    ON c.customerNumber = o.customerNumber
LIMIT 10;
