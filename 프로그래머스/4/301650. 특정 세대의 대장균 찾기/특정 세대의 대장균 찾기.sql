WITH RECURSIVE ED AS (
    SELECT ID AS ID
         , 0 AS PARENT
         , 1 AS GENERATION
      FROM ECOLI_DATA
     WHERE PARENT_ID IS NULL
    UNION ALL
    SELECT ED2.ID
         , ED2.PARENT_ID
         , GENERATION + 1 AS GENERATION
      FROM ECOLI_DATA ED2
      JOIN ED AS ED1 ON ED2.PARENT_ID = ED1.ID
)
SELECT ID
  FROM ED
 WHERE ED.GENERATION = 3
 ORDER BY ID