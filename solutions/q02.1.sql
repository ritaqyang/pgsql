SELECT DISTINCT L.URL
FROM Topics T, Links L
WHERE T.topicid = L.topicid AND T.name = 'computer science'
ORDER BY L.URL;
