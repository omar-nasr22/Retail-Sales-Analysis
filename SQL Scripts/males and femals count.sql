with total as (
SELECT 
		Gender,
        count(`Customer ID`) as client_count

FROM project_3.shopping_trends_updated
group by Gender
order by client_count desc
)
select
		sum(case when Gender = 'Male' then client_count else 0 end) count_male,
		sum(case when Gender = 'Female' then client_count else 0 end) count_female,
        
        round( sum(case when Gender = 'Male' then client_count else 0 end) /
        (sum(case when Gender = 'Male' then client_count else 0 end) +sum(case when Gender = 'Female' then client_count else 0 end))*100,2) pct_male,
        
          round( sum(case when Gender = 'Female' then client_count else 0 end) /
        (sum(case when Gender = 'Male' then client_count else 0 end) +sum(case when Gender = 'Female' then client_count else 0 end))*100,2) pct_female
from total
;