SELECT DISTINCT L.url
FROM Links L JOIN Topics T
ON L.topicid = T.topicid
WHERE T.name = 'computer science'
ORDER BY 1
;

