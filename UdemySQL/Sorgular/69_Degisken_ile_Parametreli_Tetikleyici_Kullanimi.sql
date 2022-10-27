/*

Trigger kelime anlamý olarak tetikleyici demektir. Trigger, SQL'de bir sorgu çalýþtýrdýðýmýzda, baþka bir sorgunun çalýþmasýný saðlamak için yazýlan koddur. 

Mesela bir tablodan kayýt sildiðimizde, baþka bir tablodan onunla ilgili bir kaydýn silinmesi için kullanabiliriz.

*/




-- TBLÜRÜN TABLOSUNA HER ÜRÜN EKLEDÝÐÝMÝZDE TBLSTOKTAKÝ STOK SAYISINIDA ARTTIRMIÞ OLUYORUZ BU TETÝKLEYÝCÝ ÝLE

CREATE TRIGGER ARTTIR
ON TBLURUN        --HANGÝ TABLODA ÇALIÞACAK
AFTER INSERT -- NE ZAMAN ÇALIÞACAK INSERT ÝÞLEMÝNDEN SONRA
AS
DECLARE @STOKSAYI INT
SELECT @STOKSAYI=STOK FROM inserted --ÜZERÝNDE ÇALIÞMIÞ OLDUÐUM TABLODA BULUNAN STOK SAYISI SÜTÜNUNDAKÝ DEÐERÝ @STOKSAYI ÝSÝMLÝ DEÐÝÞKENÝME ATA
UPDATE TBLSTOK SET TOPLAMURUN+=@STOKSAYI