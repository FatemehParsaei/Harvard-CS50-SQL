select first_name, last_name from (

    select first_name, last_name, id from (select first_name, last_name, players.id as id from performances

    join players on players.id = performances.player_id

    join salaries on salaries.player_id = players.id and performances.year = salaries.year

    where performances.year = 2001 and H > 0

    order by salary/H
    limit 10
)

    

intersect



    select first_name, last_name, id from (select first_name, last_name, players.id as id from performances

    join players on players.id = performances.player_id

    join salaries on salaries.player_id = players.id and performances.year = salaries.year

    where performances.year = 2001 and RBI > 0
    order by salary/RBI

    limit 10)

)

order by id;
