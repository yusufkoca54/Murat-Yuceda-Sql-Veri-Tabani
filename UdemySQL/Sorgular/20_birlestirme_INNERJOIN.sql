
--inner join iki tablo içerisindeki ortak alanlarý birleþtirmek için kullanýlýr

select * FROM TBLNOTLAR
INNER JOIN TBLOGRENCILER
ON TBLOGRENCILER.OGRID=TBLNOTLAR.OGRENCI