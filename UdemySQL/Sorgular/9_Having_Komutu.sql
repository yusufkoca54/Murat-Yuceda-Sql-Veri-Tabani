/*

SQL Having Kullan�m�

Sql de Having komutu select sorgusundan d�nen de�erleri filtrelemek i�in kullan�l�r. Max, Min, like, Count gibi komutlarla da birlikte kullan�labilir. Having komutu 

a�a��daki gibi kullan�l�r.

*/

-- Toplamda ��renci �ehir Say�lar� 2 olan ��rencileri Getir
select OGRSEHIR,COUNT(*)AS 'SAYI' FROM TBLOGRENCILER GROUP BY OGRSEHIR HAVING COUNT(*)=2


SELECT OGRKULUP,COUNT (*) FROM TBLOGRENCILER GROUP BY OGRKULUP HAVING COUNT(*)=3

select * from tblnotlar

select DURUM, count (*) AS 'GE�ENLER' from TBLNOTLAR GROUP BY DURUM HAVING DURUM=1

select DURUM, count (*) AS 'KALANLAR' from TBLNOTLAR GROUP BY DURUM HAVING DURUM=0







