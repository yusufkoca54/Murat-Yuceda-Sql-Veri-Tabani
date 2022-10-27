select upper('merhaba')as 'sütun'-- upper la merhaba yý büyük yazdýrdýk


select upper (ograd) AS 'öðrenci adý',upper (OGRSOYAD) as 'soyad' from TBLOGRENCILER -- tbl öðrenciler tablosundaki adý ve soyadý büyük harfe dönüþtürdük upper ile

select lower (OGRSEHIR) 'öðrenci sehir' from TBLOGRENCILER -- lower ile öðrencinin sehrini küçük harfe dönüþtürdük


-- soru sehri adana ve biliþim kulubünde olan öðrencilerin adýný büyük soyadýný küçük harfle getiren sorguyu yazýnýz aþaðýda yazdým 


SELECT upper (OGRAD) as 'öðrenci adý',lower (OGRSOYAD) as 'öðrenci soyad'  FROM TBLOGRENCILER WHERE OGRSEHIR='Adana' and 
OGRKULUP=(SELECT KULUPID FROM TBLKULUPLER WHERE KULUPAD='Biliþim')