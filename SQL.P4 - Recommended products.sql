
--Recommended Products:

--What is the average rating of recommended products compared to not recommended?
  SELECT Recommended_IND, AVG(CAST(Rating AS FLOAT)) AS Average_Rating
  FROM [SQL.project].dbo.[Womens Clothing E-Commerce Reviews]
  GROUP BY Recommended_IND;

--Analyze the relationship between positive feedback count and product recommendation.
  SELECT Positive_feedback_count, 
  COUNT(CASE WHEN Recommended_IND = 1 THEN 1 END) AS Positive,
  COUNT(CASE WHEN Recommended_IND = 0 THEN 1 END) AS Negative
  FROM [SQL.project].dbo.[Womens Clothing E-Commerce Reviews]
  GROUP BY Positive_feedback_count
  ORDER BY Positive_feedback_count