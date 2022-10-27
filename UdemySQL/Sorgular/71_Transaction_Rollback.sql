/*

Transaction bir veya daha fazla SQL ifadesini bir bütün olarak düþünen ve baþarýlý olmasý halinde SQL ifadelerini kalýcý olarak istenilen deðiþikliði 

uygulayan veya hata olmasý halinde deðiþiklik yapmadan verileri ayný þekilde korunmasýný saðlayan iþlemdir.


ÝÞLEMÝ GERÝ ALMA ROLLBACK TRANSACTÝON NEDÝR?

Rollback, Yapýlan iþlemleri geri alýr. Örneðin bir tablodaki verileri DELETE, UPDATE, INSERT gibi iþlemler yapýlýrken ROLLBACK ile iþlemi geri alýr. Peki bu

bize ne fayda saðlayacak? Bazý tablolarda Triggers bulunur DDL veri iþlemi yaparken hata alýnabilir bu sefer hangileri hata aldýðýný hangileri iþlem

yapýldýðýný ayýrt etmek zor olabiliyor.

*/



BEGIN TRANSACTION
INSERT INTO TBLKATEGORI (AD) VALUES ('TV')
INSERT INTO TBLKATEGORI (AD) VALUES ('HALI')
SELECT * FROM TBLKATEGORI -- EKLEME ÝÞLEMÝ YAPTIKTAN SONRA BANA TABLONUN SON HALÝNÝ GÖSTER
ROLLBACK -- SONRA ROLLBACK BU ÝÞLEMÝ ÝPTAL ET



