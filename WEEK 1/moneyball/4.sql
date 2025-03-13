select first_name, last_name, salary from players
JOIN salaries ON players.id = salaries.player_id
where salaries.year = 2001
order by salary, first_name, last_name, players.id
limit 50;
