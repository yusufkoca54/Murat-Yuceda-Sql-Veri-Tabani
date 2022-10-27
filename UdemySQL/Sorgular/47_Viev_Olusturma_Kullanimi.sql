/*
SQL View Kullanýmý
SQL view nedir,view kullanýmý amacý, view þifreleme, order by, view insert gibi konularý yazýmýzýn içerisinde bulabilirsiniz. Sql view bize yeni bir sanal tablo 

oluþturmamýzý saðlayan sql komutudur. Sql view sorgu süreçlerini kýsaltmak, yetkinliklerin kontrolü, verileri karþýlaþtýrmak, birden fazla tablodan çekilen verilerin 

tek bir tabloda kullanýlmasýný saðlamak gibi projelerimizde iþimize yarayabilecek bu durumlar için kullanýlýr. 

View kullanýmýnda yapamayacaðýmýz kýsýtlamalar

1-View ler Stored procedure ler gibi dýþarýdan parametre almazlar.
2-View ler içerisinde insert, update, delete gibi sql deyimleri kullanýlmaz.
3-View ler içerisinde ORDER BY ifadesi kullanýlmaz.
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

 

