/*
    1. Mostre o customerName, phone, lastName, firstName, city e phone, filtrando os customers que moram na cidade NYC. Tabelas customer, employees e offices.
    2. Mostre os campos productName, productDescription, quantityOrdered, priceEach, sendo que para a primeira tabela todos os registros devem ser apresentados.
    3. Mostre os campos lastName, firstName, city,phone, state, country, sendo que para a segunda tabela todos os registros devem ser apresentados. Tabelas eemployees e offices.
    4. Mostre todos os campos da tabela products e productlines com todos os registros de ambas as tabelas.
 */
# 1
SELECT
    C.customerName,
    C.phone,
    E.lastName,
    E.firstName,
    C.city,
    O.phone AS officePhone
FROM
    customers AS C
    INNER JOIN employees AS E ON C.salesRepEmployeeNumber = E.employeeNumber
    INNER JOIN offices AS O ON O.officeCode = E.officeCode
WHERE
    C.city = 'NYC';

# 2
SELECT
    P.productName,
    P.productDescription,
    OD.quantityOrdered,
    OD.priceEach
FROM
    products AS P
    LEFT JOIN orderdetails AS OD ON P.productCode = OD.productCode;

# 3
SELECT
    E.lastName,
    E.firstName,
    O.city,
    O.phone,
    O.state,
    O.country
FROM
    employees AS E
    RIGHT JOIN offices AS O ON O.officeCode = E.officeCode;

# 4
SELECT
    *
FROM
    products AS P
    CROSS JOIN productlines AS LP ON P.productLine = LP.productLine;