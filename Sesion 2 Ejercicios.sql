USE classicmodels;
#1
SELECT employeeNumber,lastName,firstName FROM employees WHERE firstName LIKE 'A%';
#2
SELECT employeeNumber,lastName,firstName FROM employees WHERE firstName LIKE '%on';
#3
SELECT employeeNumber,lastName,firstName FROM employees WHERE firstName LIKE '%on%';
#4
SELECT employeeNumber,lastName,firstName FROM employees WHERE firstName LIKE 'T_m';
#5
SELECT employeeNumber,lastName,firstName FROM employees WHERE firstName NOT LIKE 'B%';
#6
SELECT productCode,productName FROM products WHERE productCode LIKE '%_20%';
#7
SELECT orderNumber,count(*) AS total FROM orderdetails GROUP BY orderNumber;
#8
SELECT year(orderDate) AS year,count(*) AS orders FROM orders GROUP BY year(orderDate);
#9
SELECT lastName,firstName FROM employees WHERE officeCode IN (SELECT officeCode FROM offices WHERE country='USA');
#10
SELECT customerNumber,checkNumber,amount FROM payments WHERE amount=(SELECT max(amount) FROM payments);
#11
SELECT customerNumber,checkNumber,amount FROM payments WHERE amount>(SELECT avg(amount) FROM payments);
#12
SELECT customerName FROM customers WHERE customerNumber NOT IN (SELECT customerName FROM orders GROUP BY customerName);
#13
SELECT max(total),min(total),avg(total) FROM (SELECT sum(quantityOrdered) AS total FROM orderdetails GROUP BY orderNumber) AS orderTotal;
# Falta ejercicio 14
SELECT state FROM customers GROUP BY state;
SELECT customerNumber,count(*) AS total FROM orders GROUP BY customerNumber;