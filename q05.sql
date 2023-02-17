SELECT W.url, W.title
FROM Webpages W
WHERE W.title IN (SELECT T.name
                  FROM Topics T
                  WHERE T.topicid IN (SELECT L.topicid
                                      FROM Links L
                                      WHERE L.url = W.url))
ORDER BY 1
;

SELECT W.url, W.title,T.name
FROM Webpages W, Topics T, Links L
WHERE W.url = L.url AND L.topicid = T.topicid

WITH temp(url, websitetitle, topicname) AS
    (SELECT W.url, W.title,T.name
     FROM Webpages W, Topics T, Links L
     WHERE W.url = L.url AND L.topicid = T.topicid)
SELECT temp.url, temp.websitetitle AS title
FROM temp
WHERE temp.websitetitle = temp.topicname
ORDER BY 1
;
