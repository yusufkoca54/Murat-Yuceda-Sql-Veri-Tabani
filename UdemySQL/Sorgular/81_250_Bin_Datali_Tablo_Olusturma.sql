

create table TABLO1
(
ID INT IDENTITY (1,1),
AD VARCHAR(20)
)

-- TABLO 1 �N ���NE 250 B�N TANE VER� G�NDERME
DECLARE @SAYAC INT=1
WHILE @SAYAC<250001
BEGIN -- BANA B�R �NSERT ��LEM� GER�EKLE�T�RECEKS�N
INSERT TABLO1
SELECT 'Kitap' + CAST(@SAYAC as varchar(20)) -- alfabetik bir veriyi say�sal bir veriyle beraber kulland���m�zdan dolay� cast(d�n���me) ihityac�m�z var
set @SAYAC=@SAYAC+1 -- her defas�nda sayac=saya�+1 olsun
end -- end ile d�ng�m�z� tamamlad�k

select COUNT(*) from TABLO1