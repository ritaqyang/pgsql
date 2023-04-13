SELECT URL , COUNT (*) numevaluations 
FROM Evaluation
GROUP BY URL
HAVING COUNT(*) >= ALL (SELECT COUNT(*)
			FROM Evaluation 
			GROUP BY URL)
ORDER BY URL;
