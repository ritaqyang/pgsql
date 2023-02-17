SELECT COUNT(DISTINCT W.url)
FROM Webpages W

SELECT L.topicid
FROM Links L
GROUP BY L.topicid
HAVING COUNT(DISTINCT L.url)=0

SELECT T.topicid, T.name
FROM Topics T
WHERE T.topicid IN (SELECT L.topicid
                    FROM Links L
                    GROUP BY L.topicid
                    HAVING COUNT(DISTINCT L.url) = (SELECT COUNT(DISTINCT W.url)
                                                    FROM Webpages W))
ORDER BY T.topicid ASC

