
--Customer Review Analysis:

--What is the average rating of products in each department?
  SELECT DISTINCT(Department_Name), AVG(rating) AS Average_rating
  FROM [SQL.project].dbo.[Womens Clothing E-Commerce Reviews]
  WHERE department_name is not null
  GROUP BY Department_Name;

--How many products have a rating of 5, and what are their class names?
  SELECT DISTINCT(Class_Name), Rating
  FROM [SQL.project].dbo.[Womens Clothing E-Commerce Reviews]
  WHERE Rating = 5;

--Identify the top 5 products with the highest positive feedback count.
  SELECT TOP 5 Class_name, Positive_feedback_count
  FROM [SQL.project].dbo.[Womens Clothing E-Commerce Reviews]
  ORDER BY Positive_feedback_count DESC;