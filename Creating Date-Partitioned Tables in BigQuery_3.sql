CREATE OR REPLACE TABLE ecommerce.partition_by_day
 PARTITION BY date_formatted
options(
  description ='a table partitioned by date'
) as
select distinct
parse_date("%Y%m%d", date) as date_formatted,
fullvisitorId
from `data-to-insights.ecommerce.all_sessions_raw`
