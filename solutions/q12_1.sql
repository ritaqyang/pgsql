SELECT T.name, T.topicid 
FROM Topics T
WHERE NOT EXISTS (SELECT URL FROM WebPages
			EXCEPT
		 SELECT URL
		 FROM Links L
		 WHERE T.topicid = L.topicid)
ORDER BY T.topicid;
