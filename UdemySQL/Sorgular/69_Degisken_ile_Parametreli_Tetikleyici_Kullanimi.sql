/*

Trigger kelime anlam� olarak tetikleyici demektir. Trigger, SQL'de bir sorgu �al��t�rd���m�zda, ba�ka bir sorgunun �al��mas�n� sa�lamak i�in yaz�lan koddur. 

Mesela bir tablodan kay�t sildi�imizde, ba�ka bir tablodan onunla ilgili bir kayd�n silinmesi i�in kullanabiliriz.

*/




-- TBL�R�N TABLOSUNA HER �R�N EKLED���M�ZDE TBLSTOKTAK� STOK SAYISINIDA ARTTIRMI� OLUYORUZ BU TET�KLEY�C� �LE

CREATE TRIGGER ARTTIR
ON TBLURUN        --HANG� TABLODA �ALI�ACAK
AFTER INSERT -- NE ZAMAN �ALI�ACAK INSERT ��LEM�NDEN SONRA
AS
DECLARE @STOKSAYI INT
SELECT @STOKSAYI=STOK FROM inserted --�ZER�NDE �ALI�MI� OLDU�UM TABLODA BULUNAN STOK SAYISI S�T�NUNDAK� DE�ER� @STOKSAYI �S�ML� DE���KEN�ME ATA
UPDATE TBLSTOK SET TOPLAMURUN+=@STOKSAYI