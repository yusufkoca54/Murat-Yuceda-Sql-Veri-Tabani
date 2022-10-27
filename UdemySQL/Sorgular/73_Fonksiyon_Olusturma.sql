-- funksiyon oluþturma

select * from TBLURUN


select LEN (ad),ad from TBLURUN



-- kendimiz fonksiyon oluþturma


-- mevcut stoklarýn üzerine 25 stok daha eklesin

create function stokarttir(@adet int) -- parantez içerisine parametrelerimizi tanýmladýk
returns int -- geriye dönce olan tür int deðerinde deðer döndürüyoruz
as
begin
return @adet+25
end

-- bu yazmýþ oldugumuz fonksiyonu çalýþtýrma

select * from TBLURUN -- tblürün tablomuzu getirdik

select ad,stok,dbo.stokarttir(stok) from TBLURUN


-- ödev sorusu stoðun karekökünü alýp 3 le çarpma fonsiyonu

create function stokkarekok(@adet int)
returns int
as
begin
return  @adet*3
end

select SQRT(stok),dbo.stokkarekok(sqrt(stok)) from TBLURUN











