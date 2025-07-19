-- Most popular item

SELECT
`Item Purchased`,
count(`Customer ID`) as items_purchased
FROM project_3.shopping_trends_updated
group by 1
order by 2 desc
-- Limit 20
;