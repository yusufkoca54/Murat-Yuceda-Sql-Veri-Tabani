
--inner join iki tablo i�erisindeki ortak alanlar� birle�tirmek i�in kullan�l�r

select * FROM TBLNOTLAR
INNER JOIN TBLOGRENCILER
ON TBLOGRENCILER.OGRID=TBLNOTLAR.OGRENCI