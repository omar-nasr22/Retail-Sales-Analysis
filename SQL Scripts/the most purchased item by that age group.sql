-- What is the most popular age group served?
-- Find the most purchased item by that age group

-- With age_data as(
SELECT

	Case
     when Age between 18 and 31 then '18-31'
     when Age between 32 and 45 then '32-45'
     when Age between 46 and 59 then '46-59'
     when Age between 60 and 70 then '60-70'
	end as age_groups,
    `Item Purchased`,
    -- `Customer ID`,
    count(`Customer ID`) as client_count


FROM project_3.shopping_trends_updated
Group by 1,2
Having age_groups = '46-59'
 Order by 3 desc
# -- )
;