
/*WAITFOR DELAY sql sorgusunu belirtti�imiz s�re boyunca ge� �al��t�rmak i�in kullan�l�r. Yani sorgu �al��ma zaman�n� ertelemek i�in Waitfor delay kullanabiliriz. Waitfor

delay veya time ile birlikte kullan�labilir.*/


WAITFOR DELAY '00:00:07'

SELECT * FROM TBLURUNLER


WAITFOR DELAY '00:00:05'
insert into TBLKATEGORI (KATEGORIAD) values ('D��ER')
select * from TBLKATEGORI

