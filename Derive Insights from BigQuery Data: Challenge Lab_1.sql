SELECT
sum(cumulative_confirmed) as total_cases_worldwide

FROM

`bigquery-public-data.covid19_open_data.covid19_open_data`

where
date= '2020-04-20'
