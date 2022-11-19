/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 SELECT p.NAME as products, c.Name as category FROM products as p
 INNER JOIN categories as C on C.CategoryID = P.CategoryID
 WHERE c.NAME = 'Computers';
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 SELECT p.Name, p.Price, r.Rating from products as p
 INNER JOIN reviews as r ON r.ProductID = p.ProductID
 WHERE r.rating = 's';
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT e.FirstName, e.LastName, Sum(s.quantity) AS Total FROM sales as s
INNER JOIN employees as e ON e.EmployeeID = s.EmployeeID
GROUP BY e.EmployeeID
ORDER BY Total DESC
LIMIT 2;
/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT d.Name as 'Department Name', c.NAME as 'Category Name' from departments as d
INNER JOIN categories as c on c.DepartmentID = d.DepartmentID
WHERE c.Name = 'Appliances' or c.Name = 'Games';
/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
SELECT p.Name, Sum(s.Quantity) as 'Total Sold', Sum(s.Quantity = s.PricePerUnit) as 'Total Price'
FROM products as p
INNER JOIN sales as s on s.ProductID = p.ProductID
WHERE p.ProductID = 97;
SELECT * FROM sales where productID = 97;
/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT p.Name, r.Reviewer, r.Rating, r.Comment From products as p
INNER JOIN reviews as r on r.ProductID = p.ProductID
WHERE p.Product = '857' AND r.review = '1';
