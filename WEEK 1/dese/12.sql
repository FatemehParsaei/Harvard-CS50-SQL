
A parent asks you for advice on finding the best public school districts in Massachusetts. 
In 12.sql, write a SQL query to find public school districts with above-average per-pupil 
expenditures and an above-average percentage of teachers rated “exemplary”. 
Your query should return the districts’ names, along with their per-pupil expenditures 
and percentage of teachers rated exemplary. Sort the results first by 
the percentage of teachers rated exemplary (high to low), 
then by the per-pupil expenditure (high to low).





select districts.name, expenditures.per_pupil_expenditure, staff_evaluations.exemplary from districts

JOIN expenditures ON expenditures.district_id = districts.id

JOIN staff_evaluations ON staff_evaluations.district_id = districts.id

WHERE districts.type = "Public School District" 
AND per_pupil_expenditure >= (
    select AVG(per_pupil_expenditure) from expenditures
) 
and exemplary >= (
    select AVG(exemplary) from staff_evaluations
)

order by exemplary desc, per_pupil_expenditure desc
;
