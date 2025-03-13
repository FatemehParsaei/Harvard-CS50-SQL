select sum(H) as "total hits", teams.name from performances
JOIN teams on performances.team_id = teams.id
where performances.year = 2001
group by teams.id
order by "total hits" desc
limit 5;
