# Select queries
SELECT * FROM F1.Driver WHERE age > 27;
SELECT * FROM F1.Driver WHERE country = 'GBR';
SELECT COUNT(*) FROM F1.Driver;
SELECT team AS constru FROM F1.Driver;

# Joins
SELECT * FROM F1.Driver
LEFT JOIN F1.Constructor ON Driver.team_id = Constructor.id;

SELECT * FROM F1.Driver
RIGHT JOIN F1.Constructor ON Driver.team_id = Constructor.id;

SELECT * FROM F1.Driver
LEFT JOIN F1.Constructor ON Driver.team_id = Constructor.id
WHERE Constructor.id is NULL;

SELECT * FROM F1.Driver
RIGHT JOIN F1.Constructor ON Driver.team_id = Constructor.id
WHERE Constructor.id is NULL;

SELECT * FROM F1.Driver
INNER JOIN F1.Constructor ON Driver.team_id = Constructor.id;

SELECT * FROM F1.Driver
LEFT JOIN F1.Constructor ON Driver.team_id = Constructor.id
UNION
SELECT * FROM F1.Driver
RIGHT JOIN F1.Constructor ON Driver.team_id = Constructor.id;

SELECT * FROM F1.Driver
LEFT JOIN F1.Constructor ON Driver.team_id = Constructor.id
WHERE Constructor.id is NULL
UNION
SELECT * FROM F1.Driver
RIGHT JOIN F1.Constructor ON Driver.team_id = Constructor.id
WHERE Driver.team_id is NULL;
