
/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/
SELECT
    CASE
        WHEN marks >= 70 THEN Name
        ELSE 'NULL'
    END AS Name,
    grade,
    marks 
FROM students 
JOIN grades ON students.marks BETWEEN grades.Min_Mark AND grades.Max_Mark
ORDER BY grade DESC, Name ASC,marks asc;

/*
Solution by Zaky Ahamed
*/