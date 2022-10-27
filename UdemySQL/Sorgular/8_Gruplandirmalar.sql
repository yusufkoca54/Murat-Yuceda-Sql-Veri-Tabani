/*

SQL Group By Kullanýmý

Sql de Group By komutu select sorgusundan dönen deðerleri bir veya daha fazla sütuna göre gruplamak için kullanýlýr. Genellikle COUNT, MAX, MIN, SUM, AVG komutlarý ile 

birlikte kullanýlýr. Sql Group By komutunun kullaným þekli aþaðýdaki gibidir.

*/


select * from TBLOGRENCILER

SELECT OGRSEHIR,COUNT(*) AS 'TOPLAM' FROM TBLOGRENCILER GROUP BY OGRSEHIR

SELECT OGRCINSIYET,COUNT (*) AS 'TOPLAM' FROM TBLOGRENCILER GROUP BY OGRCINSIYET

SELECT DURUM ,COUNT (*) AS 'TOPLAM GEÇEN KALAN OGRENCÝ SAYISI' FROM TBLNOTLAR GROUP BY DURUM


select ogrkulup ,COUNT (*) as 'Kulup Sayýlarý' from TBLOGRENCILER group by OGRKULUP

SELECT MAX(OGRKULUP) FROM TBLOGRENCILER



