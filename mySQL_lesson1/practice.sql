-- practice 1: 
select full_name , count(student.id) as "Classes" 
from student_course join student on student_course.student_id = student.id
group by student.id
having count(student_id) >= 1;

-- practice 2: 
select *from course 
where month(start_time) <= 10 and month(end_time) >=10;

-- practice 3: 
select *from student_course 
join student on student_course.student_id = student.id
where fee = 0;

-- practice 4: 
select name as "The fewest students" , count(student_id) as "Students" 
from course 
join student_course on student_course.student_id = course.id
group by course_id
order by count(student_id)
limit 1;

select name as "The most student" , count(student_id) as "Students" 
from course 
join student_course on student_course.student_id = course.id
group by course_id
order by count(student_id) desc 
limit 1

 



