SELECT NAME, SALARY FROM WORKER
GROUP BY NAME
HAVING SALARY IN (
   SELECT SALARY FROM WORKER
   ORDER BY SALARY DESC
   LIMIT 1
)