SELECT topicid , COUNT (*) numlinks
FROM Links
GROUP by topicid
HAVING COUNT(*) <> 0 
ORDER BY topicid;
