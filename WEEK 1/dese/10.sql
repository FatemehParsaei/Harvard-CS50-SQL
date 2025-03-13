
In Massachusetts, school district expenditures are in part determined by 
local taxes on property (e.g., home) values. In 10.sql, write a SQL query 
to find the 10 public school districts with the highest per-pupil expenditures. 
Your query should return the names of the districts and the per-pupil expenditure for each.





select name, per_pupil_expenditure from "districts" 
JOIN "expenditures" ON "expenditures"."district_id" = "districts"."id"

where "type" = "Public School District"
order by per_pupil_expenditure desc limit 10;
