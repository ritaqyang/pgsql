SELECT W.URL, W.title 
FROM WebPages W, Links L 
WHERE W.URL = L.URL 
GROUP BY W.URL, W.title 
HAVING COUNT (*) >1 
ORDER BY W.URL;