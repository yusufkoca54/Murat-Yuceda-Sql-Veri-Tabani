/*

Delete eylemi yani silme i�leminde hangi veriyi silmeye �al���yorsan�z silinen veriyi tespit etmek i�in deleted denen tablodan faydalan�r�z.

*/


CREATE TRIGGER AZALT
ON TBLURUN -- HANG� TABLODA �ALI� TBL�R�N TABLOSUNDA
AFTER DELETE -- NE ZAMAN �ALI� S�LME ��LEM�NDEN SONRA
AS
DECLARE @STOKSAYI INT
SELECT @STOKSAYI=STOK FROM deleted -- S�L�NEN �R�N�N STOK DE�ER�N� ALACAK

UPDATE TBLSTOK SET TOPLAMURUN = TOPLAMURUN-@STOKSAYI





-- TBL �R�N TABLOSUNDAN  TOST MAK�NASI �S�ML� �R�N� S�LD�K

DELETE FROM TBLURUN WHERE AD= 'TOST MAK�NASI'


-- TBL�R�N TABLOSUNA ELLE VER� G�R��� YAPMI� OLDUK

INSERT into TBLURUN (AD,ALISFIYAT,SATISFIYAT,STOK,DURUM,KATEGORI) VALUES ('MIXER',80,90,25,1,3)