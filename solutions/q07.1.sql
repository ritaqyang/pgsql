SELECT W.URL, W.title
FROM WebPages W
WHERE W.URL in (SELECT E1.URL FROM Evaluation E1 WHERE E1.email = 'x@a.ca'
                 INTERSECT
               SELECT E2.URL FROM Evaluation E2 WHERE E2.email = 'a@x.ca')
ORDER BY W.URL;
