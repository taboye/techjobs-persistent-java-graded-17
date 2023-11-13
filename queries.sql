--Part 1
--list the columns and their data types in the table as a SQL comment.
--Describe job;
Select * From job;

--Part 2
--write a query to list the names of the employers in St. Louis City.
Select name From employer
Where location = "St. Louis City";

--Part 3
--write the SQL statement to remove the job table.
Drop table job;

--Part 4
--write a query to return the names of all skills that are attached to jobs in alphabetical order
Select * From skill
INNER JOIN job_skills ON skill.id = job_skills.skills_id
Where job_skills.jobs_id IS NOT NULL
ORDER BY name ASC;
