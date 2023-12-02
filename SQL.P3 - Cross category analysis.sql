
--Cross-Category Analysis:

--Explore relationships between department and class names with average ratings.
  SELECT Department_Name, Class_Name, AVG(Convert(float, Rating)) as Average_rating
  FROM [SQL.project].dbo.[Womens Clothing E-Commerce Reviews]
  GROUP BY Department_Name, Class_Name
  ORDER BY Average_rating desc;

--Are certain classes within a department more positively reviewed?
  SELECT Department_Name, 
  Class_Name, 
  AVG(CONVERT(FLOAT, Rating)) as Average_rating, 
  AVG(Positive_Feedback_Count) as AvgFeedbackCount
  FROM [SQL.project].dbo.[Womens Clothing E-Commerce Reviews]
  WHERE Department_Name is not null and Class_Name is not null
  GROUP BY Department_Name, Class_Name
  ORDER BY AvgFeedbackCount DESC;

 