/*

SQL Group By Kullan�m�

Sql de Group By komutu select sorgusundan d�nen de�erleri bir veya daha fazla s�tuna g�re gruplamak i�in kullan�l�r. Genellikle COUNT, MAX, MIN, SUM, AVG komutlar� ile 

birlikte kullan�l�r. Sql Group By komutunun kullan�m �ekli a�a��daki gibidir.

*/


select * from TBLOGRENCILER

SELECT OGRSEHIR,COUNT(*) AS 'TOPLAM' FROM TBLOGRENCILER GROUP BY OGRSEHIR

SELECT OGRCINSIYET,COUNT (*) AS 'TOPLAM' FROM TBLOGRENCILER GROUP BY OGRCINSIYET

SELECT DURUM ,COUNT (*) AS 'TOPLAM GE�EN KALAN OGRENC� SAYISI' FROM TBLNOTLAR GROUP BY DURUM


select ogrkulup ,COUNT (*) as 'Kulup Say�lar�' from TBLOGRENCILER group by OGRKULUP

SELECT MAX(OGRKULUP) FROM TBLOGRENCILER



