/*
SQL View Kullan�m�
SQL view nedir,view kullan�m� amac�, view �ifreleme, order by, view insert gibi konular� yaz�m�z�n i�erisinde bulabilirsiniz. Sql view bize yeni bir sanal tablo 

olu�turmam�z� sa�layan sql komutudur. Sql view sorgu s�re�lerini k�saltmak, yetkinliklerin kontrol�, verileri kar��la�t�rmak, birden fazla tablodan �ekilen verilerin 

tek bir tabloda kullan�lmas�n� sa�lamak gibi projelerimizde i�imize yarayabilecek bu durumlar i�in kullan�l�r. 

View kullan�m�nda yapamayaca��m�z k�s�tlamalar

1-View ler Stored procedure ler gibi d��ar�dan parametre almazlar.
2-View ler i�erisinde insert, update, delete gibi sql deyimleri kullan�lmaz.
3-View ler i�erisinde ORDER BY ifadesi kullan�lmaz.
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

 

