--Part 1

SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE table_name = 'jobs';


--Part 2
SELECT * FROM techjobs.employers
where Location = "St. Louis City";

--Part 3
SELECT s.Name, s.Description 
FROM techjobs.skills AS s
INNER JOIN techjobs.jobskills AS js 
ON s.id = js.SkillId 
INNER JOIN techjobs.jobs AS j
ON js.JobId = j.id
ORDER BY  Name, Description ;
