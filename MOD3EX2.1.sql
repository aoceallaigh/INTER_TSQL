SELECT *
	FROM dbo.VendorCourseDateDelegateCount

SELECT *,
	Rank() OVER (ORDER BY NumberDelegates DESC)
		AS LeaguePos_Rank,
	DENSE_RANK() OVER (ORDER BY NumberDelegates DESC)
		AS LeaguePos_Rank,
	ROW_NUMBER() OVER (ORDER BY NumberDelegates DESC)
		AS LeaguePos_Rank,
	NTILE(3) OVER (ORDER BY NumberDelegates DESC)
		AS LeaguePos_Rank
	FROM dbo.VendorCourseDateDelegateCount
GO