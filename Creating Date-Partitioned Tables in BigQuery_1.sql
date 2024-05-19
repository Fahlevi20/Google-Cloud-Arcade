select distinct
  fullVisitorId,
  date,
  city,
  pageTitle
from `data-to-insights.ecommerce.all_sessions_raw`
where date = '20170708'
limit 5
