SELECT DISTINCT W.title, W.URL
FROM WebPages W, Links L1, Links L2 
WHERE W.URL = L1.URL
  AND W.URL = L2.URL
  AND L1.topicid <> L2.topicid 
ORDER BY W.URL;
