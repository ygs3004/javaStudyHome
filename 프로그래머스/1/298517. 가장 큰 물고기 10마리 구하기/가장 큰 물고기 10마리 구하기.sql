SELECT FI.ID
     , FI.LENGTH
  FROM FISH_INFO FI
 ORDER BY FI.LENGTH DESC, FI.ID
 LIMIT 10;