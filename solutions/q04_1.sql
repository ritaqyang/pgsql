SELECT DISTINCT title, L.URL
FROM Topics T, Links L, WebPages W 
WHERE T.topicid = L.topicid
  AND L.URL = W.URL
  AND T.name = 'computer science'
ORDER BY L.URL;
