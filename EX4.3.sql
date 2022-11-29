WITH BourneCourse AS (
SELECT CourseRunID, Startdate
FROM dbo.Trainer AS t
	INNER JOIN dbo.CourseRun AS cr
		ON t.TrainerID = cr.TrainerID
WHERE TrainerName = 'Jason Bourne')


SELECT d.DelegateID, d.DelegateName, d.CompanyName, jb.StartDate
FROM dbo.Delegate as d
	INNER JOIN dbo.DelegateAttendance as da
	ON d.DelegateID = da.DelegateID
	INNER JOIN BourneCourse as jb
	ON da.CourseRunID = jb.CourseRunID