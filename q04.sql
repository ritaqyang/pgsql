SELECT W.url, W.title
FROM Webpages W
WHERE W.url IN (SELECT L.url
                FROM Links L
                WHERE L.topicid IN (SELECT T.topicid
                                    FROM Topics T
                                    WHERE T.name = 'computer science'))
ORDER BY W.url ASC