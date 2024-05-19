
SELECT * FROM ( 
SELECT subregion1_name as state, sum(cumulative_confirmed) as total_confirmed_cases 
FROM `bigquery-public-data.covid19_open_data.covid19_open_data` WHERE country_code="US" AND date='YYYY-MM-DD' AND subregion1_name is NOT NULL 
GROUP BY subregion1_name ORDER BY total_confirmed_cases DESC ) WHERE total_confirmed_cases > [confirmed cases]
