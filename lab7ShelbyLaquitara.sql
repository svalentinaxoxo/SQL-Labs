--Shelby Laquitara
--Lab 7 09/29/2015

--1. --use student table
SELECT course_no, description, revenue AS "Total Revenue per Course"
FROM student.course c
LEFT OUTER JOIN student.course_revenue r
ON c.course_no = r.course_no;

--2.
SELECT course_no, description, revenue
FROM student.course c
RIGHT OUTER JOIN student.course_revenue r
ON c.course_no = r.course_no;

--3. Display all courses that had revenue
SELECT course_no, description, revenue
FROM student.course c
JOIN STUDENT.COURSE_REVENUE r
ON c.course_no = r.course_no;

--4. Display the average course fee
SELECT avg(course_fee) AS "Average Cost per Course"
FROM student.course_revenue;

--5. 
SELECT description, cost, prerequisite
FROM student.course
WHERE(PREREQUISITE BETWEEN 25 AND 80) And (COST > 1100);

--6. Display the number of courses by cost 
SELECT cost, course_no As "Total Courses"
FROM student.course;

--7. 
SELECT course_no, description
FROM student.course
WHERE COURSE_NO < 10 AND > 16;

--8. Use the dual table
SELECT sysdate As "Formatted Today's Date"
FROM Dual;

--9.
SELECT sysdate As "Formatted Today's Date"
FROM Dual;

--10.
SELECT sysdate As "Formatted Today's Date"
FROM Dual;

--11. -Use student table 
SELECT max(cost) as "Highest Cost"
FROM student.course;

--12. format results of problem 11
SELECT (max(cost)) As "Highest Cost"
FROM student.course;

--13. 
SELECT salary as
FROM student.employee;

--14.
SELECT max(salary) + min(salary) As "Min plus Max"
FROM student.employee;

--15. use the IN operator 
SELECT employe_id, name, title
FROM student.employee:

--16.
SELECT As last_name "Sounds like Archer"
FROM student.student;

--17.
