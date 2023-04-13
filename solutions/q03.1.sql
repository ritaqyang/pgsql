SELECT DISTINCT URL
FROM Links L
WHERE topicid IN (SELECT topicid
		  FROM Topics
		  WHERE name = 'computer science')
ORDER BY URL;
