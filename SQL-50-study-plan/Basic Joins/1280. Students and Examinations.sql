select a.student_id, a.student_name, b.subject_name, coalesce(c.attended_exams,0) as attended_exams
from Students as a cross join subjects as b left  join (select student_id,subject_name , count(subject_name) as attended_exams 
from Examinations 
group by student_id,subject_name) as c
on 
a.student_id = c.student_id and b.subject_name = c.subject_name
order by a.student_id, b.subject_name
