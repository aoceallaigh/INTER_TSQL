CREATE FUNCTION udr_inddelegatedays(@DelegateID AS INT)
	RETURNS TABLE
	AS
	RETURN (
		SELECT @DelegateID AS DelegateID, COUNT(*) AS DelegateCourses , SUM(cr.DurationDays) as DelegateDays
			FROM Delegate as d
				INNER JOIN 
			DelegateAttendance as da
			ON d.DelegateID = da.DelegateID
				INNER JOIN CourseRun as cr
			ON da.CourseRunID = cr.CourseRunID
			WHERE d.DelegateID = @DelegateID)
GO
SELECT * FROM udr_inddelegatedays(1)