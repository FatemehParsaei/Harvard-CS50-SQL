
In 13.sql, write a SQL query to answer a question you have about the data! The query should:

Involve at least one JOIN or subquery




select city, AVG(graduated) from schools

JOIN graduation_rates ON schools.id = graduation_rates.school_id

GROUP BY city;
