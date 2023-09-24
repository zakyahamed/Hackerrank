/*
Enter your query here.
*/
SELECT t1.hacker_id, t1.name
FROM hackers AS t1
JOIN submissions AS t2 ON t1.hacker_id = t2.hacker_id
JOIN challenges AS t3 ON t3.challenge_id = t2.challenge_id
JOIN difficulty AS t4 ON t4.difficulty_level = t3.difficulty_level
WHERE t4.score = t2.score
GROUP BY t1.hacker_id,t1.name
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC,t1.hacker_id ASC

/*
Solution by Zaky Ahamed
*/