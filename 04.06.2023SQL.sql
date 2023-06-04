--SELECT GETDATE() as [eski tip]
--SELECT convert(varchar, getdate(), 104) As [yeni tip]

--SELECT * FROM Kisiler;
--SELECT * FROM Kisiler WHERE KisiAd = 'Ali'
--SELECT KisiSoyad FROM Kisiler WHERE KisiAd = 'Yeþim'
--SELECT * FROM Kisiler WHERE KisiSoyad LIKE '% '
--SELECT KisiID FROM Kisiler WHERE KisiSoyad LIKE '%A%'

--select * from WissenBright.dbo.Person
--select * from Person
--select * from Person WHERE PersonID = '1'
--select * from Person where PersonCity like '%an%'

--SELECT * FROM Kisiler AS K 
--INNER JOIN Person AS P ON (K.KisiID = P.PersonID)

--SELECT * FROM Kisiler AS K 
--LEFT JOIN Person AS P ON (K.KisiID = P.PersonID)

SELECT * FROM Kisiler AS K 
LEFT JOIN Person AS P ON (K.KisiID = P.PersonID)
LEFT JOIN Yemek Y ON (K.KisiID = Y.YemekID)

SELECT * FROM Yemek AS Y 
LEFT JOIN Kisiler K ON (Y.YemekID = K.KisiID)

SELECT * FROM Kisiler AS A
RIGHT JOIN Yemek AS Y ON (A.KisiID = Y.YemekID)