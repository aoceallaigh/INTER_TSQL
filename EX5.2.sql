SELECT * INTO #MICROSOFTLOCAL
	FROM dbo.Course WHERE VendorID = 2
SELECT * INTO ##MICROSOFTGLOBAL
	FROM dbo.Course WHERE VendorID = 2
GO

SELECT * 
	FROM #MICROSOFTLOCAL

SELECT * 
	FROM ##MICROSOFTGLOBAL