SELECT AVG(numlinks) AS avgnumlinks
FROM
    (SELECT L.topicid, COUNT(*) AS numlinks
     FROM Links L
     GROUP BY L.topicid) temp
;



SELECT L.topicid, COUNT(*) AS numlinks
FROM Links L
GROUP BY L.topicid