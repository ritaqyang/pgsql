SELECT T.topicid, COALESCE(num, 0) numlinks
FROM Topics T LEFT OUTER JOIN 
(
  SELECT topicid , count (*) num 
  FROM Links
  GROUP BY topicid
)X
ON T.topicid = X.topicid
ORDER BY 1;
