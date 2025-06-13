/*
 Approach Explanation
 
 Query:
 SELECT st.student_id, st.student_name, sub.subject_name, COUNT(ex.subject_name) AS attended_exams
 FROM Students AS st
 CROSS JOIN Subjects AS sub
 LEFT JOIN Examinations AS ex USING (student_id, subject_name)
 GROUP BY st.student_id, st.student_name, sub.subject_name
 ORDER BY st.student_id, sub.subject_name;
 
 Step 1: Students Table
 +------------+--------------+
 | student_id | student_name |
 +------------+--------------+
 | 1          | Alice        |
 | 2          | Bob          |
 | 13         | John         |
 | 6          | Alex         |
 
 Step 2: Subjects Table
 +--------------+
 | subject_name |
 +--------------+
 | Math         |
 | Physics      |
 | Programming  |
 
 Step 3: CROSS JOIN (Students × Subjects)
 Generates all possible student–subject combinations (4 x 3 = 12 rows):
 +------------+--------------+--------------+
 | student_id | student_name | subject_name |
 +------------+--------------+--------------+
 | 1          | Alice        | Math         |
 | 1          | Alice        | Physics      |
 | 1          | Alice        | Programming  |
 | 2          | Bob          | Math         |
 | 2          | Bob          | Physics      |
 | 2          | Bob          | Programming  |
 | 13         | John         | Math         |
 | 13         | John         | Physics      |
 | 13         | John         | Programming  |
 | 6          | Alex         | Math         |
 | 6          | Alex         | Physics      |
 | 6          | Alex         | Programming  |
 
 Step 4: LEFT JOIN with Examinations USING (student_id, subject_name)
 This matches actual exam records (if any) with above rows.
 If no match is found (e.g. Alex never gave any exam), exam columns are NULL.
 
 Example for Alice:
 +------------+--------------+--------------+------------------+
 | student_id | student_name | subject_name | ex.subject_name  |
 +------------+--------------+--------------+------------------+
 | 1          | Alice        | Math         | Math             |
 | 1          | Alice        | Math         | Math             |
 | 1          | Alice        | Math         | Math             |
 | 1          | Alice        | Physics      | Physics          |
 | 1          | Alice        | Physics      | Physics          |
 | 1          | Alice        | Programming  | Programming      |
 
 Example for Alex:
 +------------+--------------+--------------+------------------+
 | student_id | student_name | subject_name | ex.subject_name  |
 +------------+--------------+--------------+------------------+
 | 6          | Alex         | Math         | NULL             |
 | 6          | Alex         | Physics      | NULL             |
 | 6          | Alex         | Programming  | NULL             |
 
 Step 5: GROUP BY and COUNT(ex.subject_name)
 We group by student and subject, and count only non-null exam records.
 
 Final Output:
 +------------+--------------+--------------+------------------+
 | student_id | student_name | subject_name | attended_exams   |
 +------------+--------------+--------------+------------------+
 | 1          | Alice        | Math         | 3                |
 | 1          | Alice        | Physics      | 2                |
 | 1          | Alice        | Programming  | 1                |
 | 2          | Bob          | Math         | 1                |
 | 2          | Bob          | Physics      | 0                |
 | 2          | Bob          | Programming  | 1                |
 | 13         | John         | Math         | 1                |
 | 13         | John         | Physics      | 1                |
 | 13         | John         | Programming  | 1                |
 | 6          | Alex         | Math         | 0                |
 | 6          | Alex         | Physics      | 0                |
 | 6          | Alex         | Programming  | 0                |
 
 Important Notes:
 - Use COUNT(ex.subject_name) to avoid counting NULLs (only counts real exams).
 - COUNT(*) or COUNT(sub.subject_name) will wrongly return 1 even for students with no exams.
 - LEFT JOIN keeps unmatched rows (e.g., Alex), which is useful for full attendance reports.
 - CROSS JOIN + LEFT JOIN + COUNT(ex.col) is a common pattern for "all possibilities + what actually happened".
 
 This question is tricky because NULLs still create rows in LEFT JOIN and COUNT(*) includes them unless filtered carefully.
 */
SELECT
    st.student_id,
    st.student_name,
    sub.subject_name,
    COUNT(ex.student_id) AS attended_exams
FROM
    Students AS st
    CROSS JOIN Subjects AS sub
    LEFT JOIN Examinations AS ex USING (student_id, subject_name)
GROUP BY
    st.student_id,
    st.student_name,
    sub.subject_name
ORDER BY
    st.student_id,
    sub.subject_name