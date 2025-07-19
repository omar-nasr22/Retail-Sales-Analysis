-- what is the most and least popular category
SELECT 
	 Category,
     count(`Customer ID`) as client_count
 FROM project_3.shopping_trends_updated
 group by 1
 order by 2 desc
 ; 