SELECT E.url
FROM Evaluation E
WHERE E.email = 'x@a.ca'
EXCEPT
SELECT E.url
FROM Evaluation E
WHERE E.email != 'x@a.ca'