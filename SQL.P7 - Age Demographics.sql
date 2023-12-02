
--Age Demographics:

--What is the average age of customers who provide reviews?
  SELECT AVG(Age) as Average_age
  FROM [SQL.project].dbo.[Womens Clothing E-Commerce Reviews]
  WHERE Review_Text is not null;

--Are there any specific age groups that tend to give higher ratings?
  SELECT Agegroup, AVG(CONVERT(FLOAT, Rating)) as Average_Rating
  FROM (SELECT Age, 
  CASE WHEN Age BETWEEN 0 AND 18 THEN 'Under 18'
  WHEN Age BETWEEN 19 AND 39 THEN '19-39'
  WHEN Age BETWEEN 40 AND 59 THEN '40-59'
  WHEN Age BETWEEN 60 AND 79 THEN '60-79'
  WHEN Age BETWEEN 80 AND 99 THEN '80-89'
  ELSE 'Unknown'
  END AS Agegroup, Rating
  FROM [SQL.project].dbo.[Womens Clothing E-Commerce Reviews]) as AgeGroups
  GROUP BY Agegroup
  ORDER BY Average_Rating DESC;
