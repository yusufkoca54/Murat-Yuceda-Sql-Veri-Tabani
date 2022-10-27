/*

SQL Having Kullanýmý

Sql de Having komutu select sorgusundan dönen deðerleri filtrelemek için kullanýlýr. Max, Min, like, Count gibi komutlarla da birlikte kullanýlabilir. Having komutu 

aþaðýdaki gibi kullanýlýr.

*/

-- Toplamda Öðrenci Þehir Sayýlarý 2 olan Öðrencileri Getir
select OGRSEHIR,COUNT(*)AS 'SAYI' FROM TBLOGRENCILER GROUP BY OGRSEHIR HAVING COUNT(*)=2


SELECT OGRKULUP,COUNT (*) FROM TBLOGRENCILER GROUP BY OGRKULUP HAVING COUNT(*)=3

select * from tblnotlar

select DURUM, count (*) AS 'GEÇENLER' from TBLNOTLAR GROUP BY DURUM HAVING DURUM=1

select DURUM, count (*) AS 'KALANLAR' from TBLNOTLAR GROUP BY DURUM HAVING DURUM=0







