SELECT d.DelegateID, d.DelegateName, d.CompanyName, jb.StartDate
FROM dbo.Delegate as d
	INNER JOIN dbo.DelegateAttendance as da
	ON d.DelegateID = da.DelegateID
	INNER JOIN (
					SELECT cr.CourseRunID, cr.StartDate
FROM dbo.Trainer as t
	INNER JOIN dbo.CourseRun as cr
	on t.TrainerID = cr.TrainerID

	WHERE TrainerName = 'Jason Bourne') as jb
	ON da.CourseRunID = jb.CourseRunID