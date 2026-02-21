select a.name, b.bonus
from 
employee as a left join bonus as b
on
a.empId = b.empId 
where
b.bonus is null or b.bonus < 1000
