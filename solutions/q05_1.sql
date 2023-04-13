SELECT DISTINCT W.title, W.URL 
FROM Topics T, Links L, WebPages W 
WHERE T.topicid = L.topicid
  AND L.URL = W.URL
  AND T.name = W.title 
ORDER BY W.URL;
