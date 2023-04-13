SELECT AVG(topiccount) avgnumlinks
FROM
(
  SELECT topicid , COUNT (*) topiccount
  FROM Links
  GROUP BY topicid
  HAVING COUNT(*) <> 0 
)X;
