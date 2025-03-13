select first_name, last_name, salary, HR, performances.year from players
JOIN salaries on players.id = salaries.player_id
JOIN performances on players.id = performances.player_id
where salaries.year = performances.year
order by players.id, performances.year desc, HR desc, salary desc;


