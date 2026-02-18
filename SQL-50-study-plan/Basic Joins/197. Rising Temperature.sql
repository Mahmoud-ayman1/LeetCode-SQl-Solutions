select A.id 
from 
Weather as A inner join Weather as B 
on
 datediff (A.recordDate , B.recordDate) = 1 
 where 
 A.temperature > B.temperature 
