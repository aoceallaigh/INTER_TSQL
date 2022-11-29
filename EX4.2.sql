WITH BourneCourse AS (
SELECT CourseRunID, Startdate
FROM dbo.Trainer AS t
	INNER JOIN dbo.CourseRun AS cr
		ON t.TrainerID = cr.TrainerID
WHERE TrainerName = 'Jason Bourne')

SELECT * FROM BourneCourse