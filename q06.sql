

SELECT DISTINCT E.url
FROM Evaluation E
WHERE E.evaldate < '2017-01-01'


SELECT W.url, W.title
FROM Webpages W
WHERE W.url NOT IN (SELECT DISTINCT E.url
                    FROM Evaluation E
                    WHERE E.evaldate < '2017-01-01')
ORDER BY 1
;