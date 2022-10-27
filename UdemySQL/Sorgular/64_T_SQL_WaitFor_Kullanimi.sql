
/*WAITFOR DELAY sql sorgusunu belirttiðimiz süre boyunca geç çalýþtýrmak için kullanýlýr. Yani sorgu çalýþma zamanýný ertelemek için Waitfor delay kullanabiliriz. Waitfor

delay veya time ile birlikte kullanýlabilir.*/


WAITFOR DELAY '00:00:07'

SELECT * FROM TBLURUNLER


WAITFOR DELAY '00:00:05'
insert into TBLKATEGORI (KATEGORIAD) values ('DÝÐER')
select * from TBLKATEGORI

