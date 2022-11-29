SELECT *
	FROM dbo.VendorCourseDateDelegateCount

SELECT *,
	Rank() OVER (PARTITION BY VendorName ORDER BY NumberDelegates DESC)
		AS LeaguePos_Rank
	FROM dbo.VendorCourseDateDelegateCount
GO

With RankedCourses AS(
SELECT *,
	Rank() OVER (PARTITION BY VendorName ORDER BY NumberDelegates DESC)
		AS LeaguePos
	FROM dbo.VendorCourseDateDelegateCount)
	SELECT VendorName, CourseName, NumberDelegates
		FROM RankedCourses
	WHERE LeaguePos = 1
GO

SELECT VendorName, CourseName, NumberDelegates
FROM (
SELECT *,
	Rank() OVER (PARTITION BY VendorName ORDER BY NumberDelegates DESC)
		AS LeaguePos_Rank
	FROM dbo.VendorCourseDateDelegateCount
) as DT
WHERE LeaguePos_Rank = 1
GO

