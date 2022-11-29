USE QATSQLPLUS
SELECT c.CourseName, c.CourseID, v.VendorID
FROM Course AS c
CROSS JOIN Vendor as v 
