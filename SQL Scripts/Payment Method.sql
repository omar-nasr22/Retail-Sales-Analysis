

SELECT `Payment Method`,count(`Customer ID`) as purchase_count

 FROM project_3.shopping_trends_updated
 group by 1
 order by 2 desc
 ;