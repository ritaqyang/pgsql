SELECT AVG(numlinks) AS avgnumlinks
FROM
    (SELECT L.topicid, COUNT(*) AS numlinks
     FROM Links L
     GROUP BY L.topicid) numlinkstable



SELECT L.topicid, COUNT(*) AS numlinks
FROM Links L
GROUP BY L.topicid