#DATE-29/8/25
create database foreign_key;
use foreign_key;
CREATE TABLE students (
    student_id INT NOT NULL AUTO_INCREMENT, name VARCHAR(50) NOT NULL, age INT, PRIMARY KEY (student_id)
);

CREATE TABLE courses (course_id INT NOT NULL AUTO_INCREMENT, course_name VARCHAR(100) NOT NULL, PRIMARY KEY (course_id)
);

CREATE TABLE enrollments (enrollment_id INT NOT NULL AUTO_INCREMENT, student_id INT, course_id INT, enrollment_date DATE,
    PRIMARY KEY (enrollment_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

