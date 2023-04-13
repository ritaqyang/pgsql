SELECT topicid , count (*) numlinks
FROM Links
GROUP BY topicid 
UNION
SELECT topicid , 0
FROM Topics
WHERE topicid NOT IN (SELECT topicid FROM Links)
ORDER BY 1;
