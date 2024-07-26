-- List all students enrolled in a specific course, along with their grades.
SELECT 
    s.student_account_id,
    s.fname,
    s.lname,
    g.grade
FROM 
    enrollment e
JOIN 
    student_account s ON e.student_account_id = s.student_account_id
JOIN 
    grade g ON e.student_account_id = g.student_account_id
WHERE 
    e.course_id = 1;

-- Calculate the average GPA of students in a specific major.
SELECT 
    AVG(g.grade) AS average_gpa
FROM 
    student_account sa
JOIN 
    grade g ON sa.student_account_id = g.student_account_id
WHERE 
    sa.program_id = 1



