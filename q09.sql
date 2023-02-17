
SELECT DISTINCT E.url
FROM Evaluation E
WHERE E.url NOT IN (SELECT E.url
                    FROM Evaluation E
                    WHERE E.email != 'x@a.ca')
ORDER BY 1
;