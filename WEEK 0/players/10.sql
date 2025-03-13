write SQL query to answer a question of your choice. This query should:
Make use of AS to rename a column
Involve at least condition, using WHERE
Sort by at least one column using ORDER BY





select last_name as "final in 2023" from players 
where "final_game" like '2023%' 
order by last_name;

