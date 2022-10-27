



create procedure URUNGETIR
AS
SELECT URUNAD,URUNSTOK,URUNMARKA FROM TBLURUNLER


EXEC URUNGETIR




-- Burda parametreli prosedur kullanarak deðer adýndan bir deðiþken tanýmladýk ve ona buzdolabý deðerini atadýk ve sorgulamasý sýrasýnda bize sadece buzdolabýný getirdi

ALTER procedure URUNGETIR
@Deger varchar(50)='BUZDOLABI'
AS
SELECT URUNAD,URUNSTOK,URUNMARKA FROM TBLURUNLER WHERE URUNAD=@Deger


EXEC URUNGETIR



-- burda yine baþka bir kullaným daha yapýyoruz çalýþtýrma olarak kullandýgýmýz exec urungetirin yanýna deðer ismimi deðiþtiriyoruz

ALTER procedure URUNGETIR
@Deger varchar(50)='BUZDOLABI'
AS
SELECT URUNAD,URUNSTOK,URUNMARKA FROM TBLURUNLER WHERE URUNAD=@Deger


EXEC URUNGETIR @deger='Çamaþýr makinasý'




-- stok sayýsý 10 dan büyük olan ürünleri getiren prosedur


create procedure ONDANBUYUK
AS 
SELECT * FROM TBLURUNLER WHERE URUNSTOK>10

EXEC ONDANBUYUK
