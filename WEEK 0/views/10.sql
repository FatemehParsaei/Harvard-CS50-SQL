write a SQL query to answer a question of your choice about the prints. The query should:
Make use of AS to rename a column
Involve at least one condition, using WHERE
Sort by at least one column, using ORDER BY




select "english_title" AS "maximum entropy" from views where "contrast" > 0.5 order by "entropy" desc limit 5;

