SELECT L.topicid, COUNT(*) AS numlinks
FROM Links L
GROUP BY L.topicid
ORDER BY L.topicid