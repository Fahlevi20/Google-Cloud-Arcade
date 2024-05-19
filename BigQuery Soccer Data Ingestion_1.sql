SELECT
  (firstName || ' ' || lastName) AS player,
  birthArea.name AS birthArea,
height
from
`soccer.players`
where
role.name = 'Defender'
order by
height desc
limit 5
