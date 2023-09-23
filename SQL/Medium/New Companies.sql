/*
Enter your query here.
*/
SELECT
    c.company_code,
    c.founder,
    COUNT(DISTINCT l.lead_manager_code) AS total_lead_managers,
    COUNT(DISTINCT s.senior_manager_code) AS total_senior_managers,
    COUNT(DISTINCT m.manager_code) AS total_managers,
    COUNT(DISTINCT e.employee_code) AS total_employees
FROM
    company AS c
JOIN
    lead_manager AS l ON c.company_code = l.company_code
JOIN
    senior_manager AS s ON l.lead_manager_code = s.lead_manager_code
JOIN
    manager AS m ON s.senior_manager_code = m.senior_manager_code
JOIN
    employee AS e ON m.manager_code = e.manager_code
GROUP BY
    c.company_code, c.founder
ORDER BY
    c.company_code ASC;

/*
Solution by Zaky Ahamed
*/    