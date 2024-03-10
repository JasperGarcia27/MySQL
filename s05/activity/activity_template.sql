--===============================
--  MYSQL- CULMINATING ACTIVITY
--===============================

-- 1. Return the customerName of the customers who are from the Philippines
-- Solution Here:
SELECT customerName FROM customers WHERE country = "Philippines";

-- 2. Return the contactLastName and contactFirstName of customers with name "La Rochelle Gifts"
-- Solution Here:
SELECT contactLastName, contactFirstName FROM customers WHERE customerName = "La Rochelle Gifts";

-- 3. Return the product name and MSRP of the product named "The Titanic"
-- Solution Here:
SELECT productName, MSRP FROM products WHERE productName = "The Titanic";

-- 4. Return the first and last name of the employee whose email is "jfirrelli@classicmodelcars.com"
-- Solution Here:
SELECT firstName, lastName FROM employees WHERE email = "jfirrelli@classicmodelcars.com";

-- 5. Return the names of customers who have no registered state
-- Solution Here:
SELECT customerName FROM customers WHERE state IS NULL;

-- 6. Return the first name, last name, email of the employee whose last name is Patterson and first name is Steve
-- Solution Here:
SELECT firstName, lastName, email FROM employees WHERE lastName = "Patterson" AND firstName = "Steve";

-- 7. Return customer name, country, and credit limit of customers whose countries are NOT USA and whose credit limits are greater than 3000
-- Solution Here:
SELECT customerNumber, country, creditLimit FROM customers WHERE country != "USA" AND creditLimit > 3000;

-- 8. Return the customer numbers of orders whose comments contain the string 'DHL'
-- Solution Here:
SELECT customerNumber FROM orders WHERE comments LIKE "%DHL%";

-- 9. Return the product lines whose text description mentions the phrase 'state of the art'
-- Solution Here:
SELECT productLine FROM productlines WHERE textDescription LIKE "%state of the art%";

-- 10. Return the countries of customers without duplication
-- Solution Here:
SELECT DISTINCT country FROM customers;

-- 11. Return the statuses of orders without duplication
-- Solution Here:
SELECT DISTINCT status FROM orders;

-- 12. Return the customer names and countries of customers whose country is USA, France, or Canada
-- Solution Here:
SELECT customerName, country FROM customers WHERE country IN ("USA","France","Canada");

-- 13. Return the first name, last name, and office's city of employees whose offices are in Tokyo
-- Solution Here:
/*
Table1: offices (PK) officeCode(id)
Table2: employees (FK) officeCode
*/
SELECT firstName, lastName, city AS "office's city" FROM offices
        JOIN employees ON offices.officeCode = employees.officeCode
        WHERE city = "Tokyo";

-- 14. Return the customer names of customers who were served by the employee named "Leslie Thompson"
-- Solution Here:
/*
SELECT * FROM employees WHERE firstName = "Leslie" AND lastName = "Thompson"
employeeNumber = 1166
*/
SELECT customerName FROM customers WHERE salesRepEmployeeNumber = 1166;

-- 15. Return the product names and customer name of products ordered by "Baane Mini Imports"
-- Solution Here:
SELECT productName, customerName FROM customers
        JOIN orders ON customers.customerNumber = orders.customerNumber
        JOIN orderDetails ON orders.orderNumber = orderDetails.orderNumber
        JOIN products ON orderDetails.productCode = products.productCode
        WHERE customers.customerName = 'Baane Mini Imports';
        
-- 16. Return the number of customers in the UK
-- Solution Here:
SELECT COUNT(*) FROM customers WHERE country = "UK";

-- 17. Return the product name and quantity in stock of products that belong to the product line "planes" with stock quantities less than 1000
-- Solution Here:
SELECT productName, quantityInStock FROM products WHERE productLine = "Planes" AND quantityInStock < 1000;

-- 18. Show the customer's name with a phone number containing "+81".
-- Solution Here:
SELECT customerName, phone FROM customers WHERE phone LIKE "%+81%";

-- 19. Find all customers from US and display the customerNumber, customerName,, city, state, and country.
-- Solution Here:
SELECT customerNumber, customerName, city, state, country FROM customers WHERE country = "USA";

-- 20. Show the list of the customer's countries (without duplicates).
-- Solution Here:
SELECT DISTINCT country FROM customers;
