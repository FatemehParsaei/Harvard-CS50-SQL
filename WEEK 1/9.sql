select teams.name, round(AVG(salary), 2) as "average salary" from teams
JOIN salaries ON teams.id = salaries.team_id
where salaries.year = 2001
group by teams.id
order by "average salary"
limit 5;
