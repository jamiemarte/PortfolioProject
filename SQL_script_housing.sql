SELECT MIN(sale_price), MAX(sale_price) 
	FROM [Housing Data].[dbo].[housing_data]

SELECT sale_price FROM [dbo].[housing_data]
ORDER BY sale_price

SELECT COUNT (*) 
 FROM [Housing Data].[dbo].[housing_data]
WHERE sale_price = 0

--Remove zeros 

DELETE FROM [Housing Data].[dbo].[housing_data]
WHERE sale_price= 0

--Categorize column 

SELECT DISTINCT	
	COUNT (tax_class)
	FROM [Housing Data].[dbo].[housing_data]
	GROUP BY tax_class

SELECT tax_class, CASE
	WHEN tax_class = 1 THEN 'Residential'
	WHEN tax_class = 2 THEN 'Residential'
	WHEN tax_class = 3 THEN 'Commercial'
	WHEN tax_class = 4 THEN 'Commercial'
END
FROM [Housing Data].[dbo].[housing_data]

