SELECT * 
FROM Students 
WHERE YEAR(EnrollmentDate) = 2023;

SELECT *
FROM Students
WHERE Email LIKE '%gmail.com';

SELECT COUNT(*) AS TotalStudents FROM Students;


SELECT * 
FROM Students 
WHERE DateOfBirth BETWEEN '2000-01-01' AND '2005-12-31';

SELECT * 
FROM Students 
ORDER BY LastName DESC;

SELECT s.FirstName, s.LastName, c.CourseName 
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
JOIN Courses c ON e.CourseID = c.CourseID;

SELECT s.FirstName, s.LastName, c.CourseName 
FROM Students s
LEFT JOIN Enrollments e ON s.StudentID = e.StudentID
LEFT JOIN Courses c ON e.CourseID = c.CourseID;

SELECT c.CourseName 
FROM Courses c
LEFT JOIN Enrollments e ON c.CourseID = e.CourseID
WHERE e.StudentID IS NULL;

SELECT c.CourseName, COUNT(e.StudentID) AS StudentCount
FROM Courses c
LEFT JOIN Enrollments e ON c.CourseID = e.CourseID
GROUP BY c.CourseName;


