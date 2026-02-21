select a.name
from
employee as a left join employee as b
on a.id = b.managerId
group by b.managerId
having count(b.managerId) >= 5
