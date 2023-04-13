SELECT W.URL, W.title
FROM Webpages W
WHERE W.URL NOT IN (SELECT E.URL
		    FROM Evaluation E
                    WHERE E.evaldate <= '2006-12-31')
ORDER BY W.URL;
