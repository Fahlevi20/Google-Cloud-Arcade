SELECT
date
from `bigquery-public-data.covid19_open_data.covid19_open_data`

WHERE country_name = 'Italy' AND cumulative_deceased>8000
order by date
limit 1
