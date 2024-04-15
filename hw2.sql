--Вывести данные о товарах (проекция: название, ценасоскидкой0.5процента) по убыванию цены.

SELECT
ProductName, price, price *.995 as 'price down'
FROM Products
Order by Price DESC

--Вывести товары в диапазоне цены от 50 до 200 EUR (проекция: название, ценаснаценкой30процентов) по возрастанию цены.

SELECT
ProductName, price, price *1.3 as 'price up'
FROM Products
WHERE
Price BETWEEN 50 AND 200
Order by Price ASC

--Вывести всех клиентов, кроме тех, что из USA и UK.
SELECT CustomerName, Country
FROM Customers
WHERE
NOT Country IN ("UK", 'USA')

--Вывести товары из категорий 2 и 5 (проекция: всеимеющиесяполя, ценавдолларах)

SELECT ProductID, ProductName, SupplierID, CategoryID, Unit, Price * 1.8 as 'Price(USD)'
FROM Products
WHERE
CategoryID IN (2, 5)