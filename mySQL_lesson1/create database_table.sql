create database athena_student;

create table athena_student.course (
id int auto_increment primary key, 
name varchar(255) not null,
lecture varchar(255),
start_time date,
end_time date, 
room int, 
created_at datetime, 
updated_at datetime
);
 
create table athena_student.student (
id int auto_increment primary key, 
full_name varchar(255) not null, 
phone_number varchar(255), 
birth_day date, 
created_at datetime, 
updated_at datetime
);

create table athena_student.student_course (
id int auto_increment primary key, 
student_id int not null,
course_id int not null, 
fee double, 
created_at datetime, 
updated_at datetime, 
FOREIGN KEY (student_id) REFERENCES student(id), 
FOREIGN KEY (course_id) REFERENCES course(id)
);