SELECT L.topicid, COUNT(*) AS numlinks
FROM Links L
GROUP BY L.topicid
UNION
SELECT T.topicid, 0 AS numlinks
FROM Topics T
WHERE T.topicid NOT IN (SELECT DISTINCT L.topicid
                        FROM Links L)
ORDER BY 1
;


