

SELECT W.url, W.title
FROM Webpages W
WHERE W.url IN(SELECT E.url
               FROM Evaluation E
               WHERE E.email = 'x@a.ca'
               INTERSECT
               SELECT E.url
               FROM Evaluation E
               WHERE E.email = 'a@x.ca')
ORDER BY W.url ASC