
--Impact of Division and Department:

--Analyze if certain divisions or departments have a higher impact on positive feedback counts.
  SELECT Department_Name, Division_Name, AVG(Positive_Feedback_Count) as AvgFeedbackCount
  FROM [SQL.project].dbo.[Womens Clothing E-Commerce Reviews]
  WHERE Department_Name is not null and Division_Name is not null
  GROUP BY Department_Name, Division_Name
  ORDER BY AvgFeedbackCount DESC;
  
--Explore the distribution of ratings within each division.
  SELECT Division_Name, Rating_Review, AVG(CONVERT(FLOAT, Rating)) as AvgRating
  FROM (SELECT DISTINCT(Division_Name),
  CASE WHEN Rating BETWEEN 3 AND 5 THEN 'High_in_Demand'
  ELSE 'Not_in_demand' END AS Rating_Review, Rating
  FROM [SQL.project].dbo.[Womens Clothing E-Commerce Reviews]
  WHERE Division_Name is not null) AS Ratings
  GROUP BY Division_Name, Rating_Review;




Select * From [SQL.project].dbo.[Womens Clothing E-Commerce Reviews];