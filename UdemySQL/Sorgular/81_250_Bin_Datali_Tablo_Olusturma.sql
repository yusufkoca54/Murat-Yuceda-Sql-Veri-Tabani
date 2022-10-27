

create table TABLO1
(
ID INT IDENTITY (1,1),
AD VARCHAR(20)
)

-- TABLO 1 ÝN ÝÇÝNE 250 BÝN TANE VERÝ GÖNDERME
DECLARE @SAYAC INT=1
WHILE @SAYAC<250001
BEGIN -- BANA BÝR ÝNSERT ÝÞLEMÝ GERÇEKLEÞTÝRECEKSÝN
INSERT TABLO1
SELECT 'Kitap' + CAST(@SAYAC as varchar(20)) -- alfabetik bir veriyi sayýsal bir veriyle beraber kullandýðýmýzdan dolayý cast(dönüþüme) ihityacýmýz var
set @SAYAC=@SAYAC+1 -- her defasýnda sayac=sayaç+1 olsun
end -- end ile döngümüzü tamamladýk

select COUNT(*) from TABLO1