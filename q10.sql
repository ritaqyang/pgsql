
SELECT W.url, W.title
FROM Webpages W
WHERE W.url IN (SELECT DISTINCT L.url
                FROM Links L, Links L2
                WHERE L.url = L2.url AND L.topicid != L2.topicid)
ORDER BY W.url ASC