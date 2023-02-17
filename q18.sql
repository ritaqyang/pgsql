SELECT E.url, COUNT(*) AS numevaluations
FROM Evaluation E
GROUP BY E.url

SELECT *
FROM Evaluation


SELECT *
FROM
    (SELECT E.url, COUNT(*) AS numevaluations
     FROM Evaluation E
     GROUP BY E.url)temp


WITH temp(url, numevluations) AS
    (SELECT E.url, COUNT(*) AS numevaluations
     FROM Evaluation E
     GROUP BY E.url)
SELECT *
FROM temp
WHERE temp.numevluations = (SELECT MAX(temp.numevluations)
                            FROM temp)
ORDER BY url ASC
