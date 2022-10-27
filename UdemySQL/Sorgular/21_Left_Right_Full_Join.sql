/*left join nedir
SQL de Left Join komutu iki tabloyu birleþtirmek için kullanýlýr. Bu Join ifadesinde soldaki tablonun tüm kayýtlarý sorguda getirilir. Saðdaki tablonun da Join þartýyla 

uyuþan kayýtlarý getirilir

right join nedir

SQL de Right Join komutu iki tabloyu birleþtirmek için kullanýlýr. Bu Join ifadesinde saðdaki tablonun tüm kayýtlarý sorguda getirilir. soldaki tablonun da Join þartýyla 

uyuþan kayýtlarýný getirilir

full join nedir


SQL de Full Join komutu iki tabloyu birleþtirmek için kullanýlýr. Bu Join ifadesinde soldaki tablonun tüm kayýtlarý ile soldaki tablonun yani birleþtirilen tablonun tüm 

kayýtlarý getirilir

*/


select * from TBLNOTLAR
left join TBLOGRENCILER
on TBLOGRENCILER.OGRID=TBLNOTLAR.OGRENCI

select * from TBLNOTLAR
right join TBLOGRENCILER
on TBLOGRENCILER.OGRID=TBLNOTLAR.OGRENCI


select * from TBLNOTLAR
full join TBLOGRENCILER
on TBLOGRENCILER.OGRID=TBLNOTLAR.OGRENCI


