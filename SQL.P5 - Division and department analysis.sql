
--Division and Department Analysis:

--Which division has the highest average rating for its products?
  SELECT DISTINCT(Division_Name), AVG(Rating) as Average_rating
  FROM [SQL.project].dbo.[Womens Clothing E-Commerce Reviews]
  WHERE Division_Name is not null
  GROUP BY Division_Name;

  SELECT Division_Name, AVG(CONVERT(FLOAT, Rating)) AS AverageRating
  FROM [SQL.project].dbo.[Womens Clothing E-Commerce Reviews]
  WHERE Division_Name IS NOT NULL
  GROUP BY Division_Name;

--Determine the most reviewed department and class names.
  SELECT TOP 5 Department_Name, Class_Name, COUNT(Review_text) as Reviewed
  FROM [SQL.project].dbo.[Womens Clothing E-Commerce Reviews]
  GROUP BY Department_Name, Class_Name
  ORDER BY Reviewed DESC;