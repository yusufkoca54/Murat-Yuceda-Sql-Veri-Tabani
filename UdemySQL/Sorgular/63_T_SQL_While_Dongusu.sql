

-- Döngü While
-- while

-- döngüler içerisinde while döngüsü kullanýlýyor sqlde

--while nedir = Tekrar Gerektiren Durumlarda Kullanýlabilir



declare @sayac int

set @sayac=1

while @sayac<=5
begin
print 'merhaba sql dersleri'
set @sayac=@sayac+1
end



declare @i int
set @i=1
while @i<=10
begin
print @i
set @i=@i+1
end


declare @toplam int, @sayac int

set @sayac=1
set @toplam=0
while (@sayac<=10)
begin
set @toplam = @toplam+@sayac
set @sayac+=1
end
print '1 ile 10 arasýndaki sayýlarýn toplamý'
print '*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-'
print @toplam



--SELECT * FROM TBLURUNLER WHERE URUNAD  LIKE '%AÞIK%'

-- aþaðýda yazmýþ oldugumuz sorguda kar oranlarý ortalamasý 450 yi geçinceye kadar fiyatlarýmýza yüzde 10 zam yaptýk

while(SELECT AVG(URUNSATISFIYAT-URUNALISFIYAT) FROM TBLURUNLER WHERE KATEGORI = 2)<=450
begin
UPDATE TBLURUNLER SET URUNSATISFIYAT +=URUNSATISFIYAT*10/100
end
SELECT * FROM TBLURUNLER









-- aþaðýda yazmýþ oldugumuz sorguda urun stoklarý 120 ü geçene kadar her ürünün stogunu birer birer arttýrdýk



while (select sum(urunstok) from TBLURUNLER)<=120
begin
update TBLURUNLER set URUNSTOK+=1 
end




