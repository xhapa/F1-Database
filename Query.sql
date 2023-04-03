#Group by
SELECT country, COUNT(*) AS country_quantity FROM F1.Driver
GROUP BY country;
SELECT fastest_lap, COUNT(*) AS fastest_lap_quantity FROM F1.Results
GROUP BY fastest_lap;
SELECT monthname(date) AS month_race, COUNT(*) AS total FROM F1.Race
GROUP BY monthname(date);
SELECT monthname(date), country, COUNT(*) AS race_by_country_mon FROM F1.Race
GROUP BY country ,monthname(date);

#Order by and having
SELECT country, COUNT(*) AS country_quantity FROM F1.Driver
GROUP BY country
ORDER BY country_quantity DESC
LIMIT 6;

SELECT country, team_id, COUNT(*) AS country_quantity FROM F1.Driver
GROUP BY country, team_id
HAVING team_id > 2
ORDER BY country_quantity DESC;
