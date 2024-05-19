select
date,
label,
(team1.score + team2.score) as totalGoals
from
`soccer.matches` Matches
left join
`soccer.competitions` Competitions on
matches.competitionId = Competitions.wyId
where status = 'Played' and

Competitions.name = 'Spanish first division'
order by
totalGoals desc, date desc
