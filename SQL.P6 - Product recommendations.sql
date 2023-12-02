
--Product Recommendations:

--How many recommended and not recommended products are there in each division?
  SELECT DISTINCT(Division_name), COUNT(1) as Recommended_products_count
  FROM [SQL.project].dbo.[Womens Clothing E-Commerce Reviews]
  WHERE Recommended_IND = 1 and Division_Name is not null
  GROUP BY Division_Name;

  SELECT DISTINCT(Division_name), COUNT(1) as Not_Recommended_products_count
  FROM [SQL.project].dbo.[Womens Clothing E-Commerce Reviews]
  WHERE Recommended_IND = 0 and Division_Name is not null
  GROUP BY Division_Name;

--What is the distribution of ratings for recommended vs. not recommended products?
  SELECT Rating,
  COUNT(CASE WHEN Recommended_IND = 1 THEN 1 END) AS RecommendedCount,
  COUNT(CASE WHEN Recommended_IND = 0 THEN 1 END) AS NotRecommendedCount
  FROM [SQL.project].dbo.[Womens Clothing E-Commerce Reviews]
  GROUP BY Rating
  ORDER BY Rating;