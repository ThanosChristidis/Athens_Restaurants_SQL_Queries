-- table nomnom
SELECT * FROM nomnom;

--select distinct neighborhood s
SELECT DISTINCT neighborhood FROM nomnom;


--select distinct cuisine types
SELECT DISTINCT cuisine FROM nomnom;


--select chinese cuisine
SELECT * FROM nomnom
WHERE cuisine = 'Chinese';


--Return all the restaurants with reviews of 4 and above.
SELECT * FROM nomnom
WHERE review >= 4;


--Return all the restaurants that are Italian and at least three dollars.
SELECT * FROM nomnom
WHERE cuisine = 'Italian' AND price = '%$$$%';


--I can't remember the exact name of a restaurant he went to but it contains the word ‘meatball’ in it.
SELECT * FROM nomnom
WHERE name LIKE '%meatball%';


--Find all the close by spots in Peiraeus, Peristeri or Alimos.
SELECT * FROM nomnom
WHERE neighborhood IN ('Peiraeus', 'Peristeri', 'Alimos');


--Find all the health grade pending restaurants (empty values).
SELECT * FROM nomnom
WHERE health IS NULL;

--Create a Top 10 Restaurants Ranking based on review s.
SELECT TOP 10 * FROM nomnom
ORDER BY review DESC;

--Use a CASE statement to change the rating system to:
--review > 4.5 is Extraordinary
--review > 4 is Excellent
--review > 3 is Good
--review > 2 is Fair
--Everything else is Poor

SELECT name,
 CASE
  WHEN review > 4.5 THEN 'Extraordinary'
  WHEN review > 4 THEN 'Excellent'
  WHEN review > 3 THEN 'Good'
  WHEN review > 2 THEN 'Fair'
  ELSE 'Poor'
 END AS 'Review'
FROM nomnom;

