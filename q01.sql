
SELECT DISTINCT W.url
FROM Webpages W, Evaluation E
WHERE W.url = E.url AND (E.grade = 'good' OR E.grade = 'ok')
ORDER BY 1
;