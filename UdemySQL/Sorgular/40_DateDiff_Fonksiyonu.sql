




-- datediff iki tarih aras�ndaki fark� g�steren fonksiyon

-- not dated�ff iki prametre almaktad�r ornek(select datediff(year '1.tarihi yaz (y�l.ay.gun)',2.tarihi yaz(y�l.ay.gun))


-- a�a��da yazm�� oldugumuz sorguda iki tarih aras�nda ka� y�l oldugunu g�steren sorguyu sorgulatm�� olduk




select DATEDIFF(year,'2010.10.25',GETDATE())







-- iki tarih aras�ndaki ge�en ay miktar�

select DATEDIFF(MONTH,'2010.06.14','2015.08.17')



-- TABLO �ZER�NDE YAZMI� OLDUGUMUZ BU SORGUDA 1 NOLU M��TER�N�N YAPDI�I ALI�VER��TEN BUG�NE GE�EN G�N SAYISI

select DATEDIFF(day,TARIH,GETDATE()) FROM TBLHAREKET WHERE MUSTERI = 1