/*
Enter your query here.
*/
SELECT 
    concat(name,'(',left(occupation,1),')')
FROM OCCUPATIONS
ORDER BY name;

select concat('There are a total of ',count(occupation),' ', lower(occupation),'s.') from occupations
group by occupation
order by count(occupation),occupation;

/*
Solution by Zaky ahamed
*/