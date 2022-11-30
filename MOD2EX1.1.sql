SELECT VendorName, PhoneNumber
FROM Vendor

SELECT TrainerName, PhoneNumber
FROM Trainer

SELECT 'Vendor' as ContactType, VendorName, PhoneNumber
FROM Vendor
UNION
SELECT 'Trainer' AS ContactType,TrainerName, PhoneNumber
FROM Trainer