SELECT DISTINCT E.url
FROM Evaluation E
WHERE E.email = 'x@a.ca'
EXCEPT
SELECT DISTINCT E.url
FROM Evaluation E
WHERE E.email != 'x@a.ca'
ORDER BY 1
;