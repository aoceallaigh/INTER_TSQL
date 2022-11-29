CREATE VIEW dbo.courselist AS
SELECT c.CourseName, c.CourseID, v.VendorID
FROM Course AS c
CROSS JOIN Vendor as v 
GO

SELECT * FROM dbo.courselist