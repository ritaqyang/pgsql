SELECT URL
FROM Evaluation
  EXCEPT
SELECT URL
FROM Evaluation
WHERE email <> 'x@a.ca' 
ORDER BY 1;
