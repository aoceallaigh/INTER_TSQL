SELECT cr.CourseRunID, cr.StartDate
FROM dbo.Trainer as t
	INNER JOIN dbo.CourseRun as cr
	on t.TrainerID = cr.TrainerID

	WHERE TrainerName = 'Jason Bourne'