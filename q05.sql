SELECT W.url, W.title
FROM Webpages W
WHERE W.title IN (SELECT T.name
                  FROM Topics T
                WHERE T.topicid IN (SELECT L.topicid
                                        FROM Links L
                                        WHERE L.url = W.url))
ORDER BY W.url ASC

SELECT *
FROM Webpages W, Topics T, Links L
WHERE W.url = L.url AND L.topicid = T.topicid