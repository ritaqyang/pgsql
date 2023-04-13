SELECT DISTINCT URL
FROM Evaluation
WHERE grade = 'good' OR grade = 'ok'
ORDER BY URL;
