/*
SQL View Kullanımı
SQL view nedir,view kullanımı amacı, view şifreleme, order by, view insert gibi konuları yazımızın içerisinde bulabilirsiniz. Sql view bize yeni bir sanal tablo 

oluşturmamızı sağlayan sql komutudur. Sql view sorgu süreçlerini kısaltmak, yetkinliklerin kontrolü, verileri karşılaştırmak, birden fazla tablodan çekilen verilerin 

tek bir tabloda kullanılmasını sağlamak gibi projelerimizde işimize yarayabilecek bu durumlar için kullanılır. 

View kullanımında yapamayacağımız kısıtlamalar

1-View ler Stored procedure ler gibi dışarıdan parametre almazlar.
2-View ler içerisinde insert, update, delete gibi sql deyimleri kullanılmaz.
3-View ler içerisinde ORDER BY ifadesi kullanılmaz.
*/



CREATE VIEW TEST1
AS
SELECT * FROM TBLKATEGORI


SELECT * FROM TEST1

ALTER VIEW TEST1
AS
SELECT * FROM TBLKATEGORI WHERE KATEGORIID<=4

SELECT * FROM TEST1


CREATE VIEW TEST7
AS
select MUSTERIAD,MUSTERISOYAD,PERSONELADSOYAD,ADET,TUTAR,TARIH from TBLHAREKET
inner join TBLMUSTERI
on TBLMUSTERI.MUSTERIID=TBLHAREKET.MUSTERI
inner join TBLPERSONEL
on TBLHAREKET.PERSONEL=TBLPERSONEL.PERSONELID


SELECT * FROM TEST7

 

