CREATE DATABASE ktm_project;

USE ktm_project;

SELECT * FROM ktm_sales LIMIT 10;

SELECT DISTINCT * FROM ktm_sales;

SET SQL_SAFE_UPDATES = 0;

UPDATE ktm_sales
SET Revenue = Units_Sold * Price;

SELECT *
FROM ktm_sales
WHERE City IS NULL OR Bike_Model IS NULL;

SELECT SUM(Revenue) AS Total_Revenue
FROM ktm_sales;

SELECT City, SUM(Revenue) AS Revenue
FROM ktm_sales
GROUP BY City
ORDER BY Revenue DESC;

SELECT Bike_Model, SUM(Units_Sold) AS Total_Sales
FROM ktm_sales
GROUP BY Bike_Model
ORDER BY Total_Sales DESC;

SELECT MONTH(Date) AS Month, SUM(Revenue) AS Revenue
FROM ktm_sales
GROUP BY MONTH(Date)
ORDER BY Month;

SELECT Sales_Executive, SUM(Revenue) AS Revenue
FROM ktm_sales
GROUP BY Sales_Executive
ORDER BY Revenue DESC;


