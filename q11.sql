SELECT L.url
FROM Links L
GROUP BY L.url
HAVING COUNT(DISTINCT L.topicid) > 1

SELECT W.url, W.title
FROM Webpages W
WHERE W.url IN (SELECT L.url
                FROM Links L
                GROUP BY L.url
                HAVING COUNT(DISTINCT L.topicid) > 1)
ORDER BY 1
;