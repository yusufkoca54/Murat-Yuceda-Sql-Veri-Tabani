/*left join nedir
SQL de Left Join komutu iki tabloyu birle�tirmek i�in kullan�l�r. Bu Join ifadesinde soldaki tablonun t�m kay�tlar� sorguda getirilir. Sa�daki tablonun da Join �art�yla 

uyu�an kay�tlar� getirilir

right join nedir

SQL de Right Join komutu iki tabloyu birle�tirmek i�in kullan�l�r. Bu Join ifadesinde sa�daki tablonun t�m kay�tlar� sorguda getirilir. soldaki tablonun da Join �art�yla 

uyu�an kay�tlar�n� getirilir

full join nedir


SQL de Full Join komutu iki tabloyu birle�tirmek i�in kullan�l�r. Bu Join ifadesinde soldaki tablonun t�m kay�tlar� ile soldaki tablonun yani birle�tirilen tablonun t�m 

kay�tlar� getirilir

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


