SELECT L.url
FROM Topics T, Links L
WHERE  L.topicid = T.topicid AND T.name = 'computer science'
ORDER BY L.url ASC

