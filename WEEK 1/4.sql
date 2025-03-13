Some cities have more public schools than others. In 4.sql, write a SQL query 
to find the 10 cities with the most public schools. Your query should return 
the names of the cities and the number of public schools within them, 
ordered from greatest number of public schools to least. If two cities have 
the same number of public schools, order them alphabetically.





select city, count("type") from schools where "type" like '%public%' 
GROUP BY "city" order by count("type") desc, city limit 10;
