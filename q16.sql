SELECT T.topicid, L.url
FROM Topics T FULL OUTER JOIN Links L
ON T.topicid = L.topicid



SELECT topicid, COALESCE(COUNT(url))
FROM(SELECT T.topicid, L.url
     FROM Topics T FULL OUTER JOIN Links L
     ON T.topicid = L.topicid)urlinfo
GROUP BY topicid
ORDER BY topicid ASC

