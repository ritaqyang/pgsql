SELECT T.topicid, L.url
FROM Topics T FULL OUTER JOIN Links L
ON T.topicid = L.topicid



SELECT topicid, COALESCE(COUNT(url)) AS numlinks
FROM(SELECT T.topicid, L.url
     FROM Topics T FULL OUTER JOIN Links L
     ON T.topicid = L.topicid)temp
GROUP BY topicid
ORDER BY 1
;

