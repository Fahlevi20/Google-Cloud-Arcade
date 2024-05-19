SELECT
  eventId,
  eventName,
  COUNT(id) AS numEvents
from
`soccer.events`
group by
eventId, eventName
order by
numEvents desc
