with deaths_by_states as (
SELECT subregion1_name as state, sum(cumulative_deceased) as death_count 
FROM `bigquery-public-data.covid19_open_data.covid19_open_data` where country_name="United States of America" and date='2020-04-20' and subregion1_name is NOT NULL 
group by subregion1_name ) 
select count(*) as count_of_states from deaths_by_states where death_count > 250
