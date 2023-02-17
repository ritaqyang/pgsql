SELECT DISTINCT L.url
FROM Links L
WHERE L.topicid IN (SELECT T.topicid
                    FROM Topics T
                    WHERE T.name = 'computer science')
ORDER BY 1
;



