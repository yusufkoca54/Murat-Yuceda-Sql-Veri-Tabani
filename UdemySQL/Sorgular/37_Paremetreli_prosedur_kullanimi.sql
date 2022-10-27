



create procedure URUNGETIR
AS
SELECT URUNAD,URUNSTOK,URUNMARKA FROM TBLURUNLER


EXEC URUNGETIR




-- Burda parametreli prosedur kullanarak de�er ad�ndan bir de�i�ken tan�mlad�k ve ona buzdolab� de�erini atad�k ve sorgulamas� s�ras�nda bize sadece buzdolab�n� getirdi

ALTER procedure URUNGETIR
@Deger varchar(50)='BUZDOLABI'
AS
SELECT URUNAD,URUNSTOK,URUNMARKA FROM TBLURUNLER WHERE URUNAD=@Deger


EXEC URUNGETIR



-- burda yine ba�ka bir kullan�m daha yap�yoruz �al��t�rma olarak kulland�g�m�z exec urungetirin yan�na de�er ismimi de�i�tiriyoruz

ALTER procedure URUNGETIR
@Deger varchar(50)='BUZDOLABI'
AS
SELECT URUNAD,URUNSTOK,URUNMARKA FROM TBLURUNLER WHERE URUNAD=@Deger


EXEC URUNGETIR @deger='�ama��r makinas�'




-- stok say�s� 10 dan b�y�k olan �r�nleri getiren prosedur


create procedure ONDANBUYUK
AS 
SELECT * FROM TBLURUNLER WHERE URUNSTOK>10

EXEC ONDANBUYUK
