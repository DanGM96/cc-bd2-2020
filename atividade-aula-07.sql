/*
    1. Mostre os nomes dos empregados que fizeram vendas a clientes que moram nos Estados Unidos e efetivaram o pagamento anterior a 06-12-2004.
    2. Apresente todos os nomes dos produtos, excluindo apenas o produto que teve a menor quantidade encomendada.
    3. Retorne todos AS ordens de pedido que tiveram produtos com preço de venda abaixo de $ 50.00.
    4. Exiba todos os clientes que realizaram pedidos do produto "1969 Ford Falcon".
*/
# 1
SELECT E.firstName, E.lastName 
FROM employees AS E 
JOIN (
    SELECT * 
    FROM customers 
    WHERE country = "USA"
) AS C ON E.employeeNumber = C.salesRepEmployeeNumber 
JOIN (
    SELECT * 
    FROM payments 
    WHERE paymentDate < "2004-12-06"
) AS P ON C.customerNumber = P.customerNumber 
GROUP BY E.firstName, E.lastName;

# 2
SELECT P.productName 
FROM products AS P
JOIN orderdetails AS OD ON OD.productCode = P.productCode 
WHERE OD.quantityOrdered > any (
    SELECT quantityOrdered 
    FROM orderdetails
) 
GROUP BY productName;

# 3
SELECT O.orderNumber 
FROM orders AS O
JOIN orderdetails AS OD ON OD.orderNumber = O.orderNumber 
JOIN (
    SELECT * 
    FROM products 
    WHERE MSRP < 50.00
) AS P ON P.productCode = OD.productCode 
GROUP BY orderNumber;

# 4
SELECT C.customerName 
FROM customers AS C
JOIN orders AS O ON C.customerNumber = O.customerNumber 
JOIN orderdetails AS OD ON OD.orderNumber = O.orderNumber 
JOIN (
    SELECT * 
    FROM products 
    WHERE productName LIKE "1969 Ford Falcon"
) AS P ON P.productCode = OD.productCode 
GROUP BY customerName;
