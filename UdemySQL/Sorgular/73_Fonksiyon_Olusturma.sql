-- funksiyon olu�turma

select * from TBLURUN


select LEN (ad),ad from TBLURUN



-- kendimiz fonksiyon olu�turma


-- mevcut stoklar�n �zerine 25 stok daha eklesin

create function stokarttir(@adet int) -- parantez i�erisine parametrelerimizi tan�mlad�k
returns int -- geriye d�nce olan t�r int de�erinde de�er d�nd�r�yoruz
as
begin
return @adet+25
end

-- bu yazm�� oldugumuz fonksiyonu �al��t�rma

select * from TBLURUN -- tbl�r�n tablomuzu getirdik

select ad,stok,dbo.stokarttir(stok) from TBLURUN


-- �dev sorusu sto�un karek�k�n� al�p 3 le �arpma fonsiyonu

create function stokkarekok(@adet int)
returns int
as
begin
return  @adet*3
end

select SQRT(stok),dbo.stokkarekok(sqrt(stok)) from TBLURUN











