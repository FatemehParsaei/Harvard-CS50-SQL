select year, round(AVG(salary), 2) as "average salary" from salaries
group by year
order by year desc;
