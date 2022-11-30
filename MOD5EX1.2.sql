USE QATSQLPLUS
DECLARE @TotalDelegates INT = 0
SELECT @TotalDelegates = COUNT(*)
	FROM dbo.Delegate
PRINT @TotalDelegateS