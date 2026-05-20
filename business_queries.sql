-- Restaurant Sales Analysis Using SQL
-- 1.Total Sales
SELECT SUM(Total_Sale)
FROM sales;

-- 2. Top Selling Items
SELECT Item_Name, SUM(Total_Sale)
FROM sales
GROUP BY Item_Name
ORDER BY SUM(Total_Sale) DESC
LIMIT 10;

-- 3.Sales by Category
SELECT Category, SUM(Total_Sale)
FROM sales
GROUP BY Category;

-- 4.Payment Method Distribution
SELECT Payment_Method, COUNT(*)
FROM sales
GROUP BY Payment_Method;

-- 5.Highest Sales Day
SELECT Day_Name, SUM(Total_Sale) AS Total_Revenue
FROM sales
GROUP BY Day_Name
ORDER BY Total_Revenue DESC;

-- 6.Peak Sales Hour
SELECT Hour, SUM(Total_Sale) AS Total_Revenue
FROM sales
GROUP BY Hour
ORDER BY Total_Revenue DESC;

-- 7.Sales by Dine Type
SELECT Dine_Type, SUM(Total_Sale) AS Revenue
FROM sales
GROUP BY Dine_Type
ORDER BY Revenue DESC;

-- 8.Average Order Value
SELECT AVG(Total_Sale) AS Average_Order_Value
FROM sales;