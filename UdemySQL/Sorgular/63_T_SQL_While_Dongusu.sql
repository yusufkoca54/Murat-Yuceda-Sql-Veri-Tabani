

-- D�ng� While
-- while

-- d�ng�ler i�erisinde while d�ng�s� kullan�l�yor sqlde

--while nedir = Tekrar Gerektiren Durumlarda Kullan�labilir



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
print '1 ile 10 aras�ndaki say�lar�n toplam�'
print '*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-'
print @toplam



--SELECT * FROM TBLURUNLER WHERE URUNAD  LIKE '%A�IK%'

-- a�a��da yazm�� oldugumuz sorguda kar oranlar� ortalamas� 450 yi ge�inceye kadar fiyatlar�m�za y�zde 10 zam yapt�k

while(SELECT AVG(URUNSATISFIYAT-URUNALISFIYAT) FROM TBLURUNLER WHERE KATEGORI = 2)<=450
begin
UPDATE TBLURUNLER SET URUNSATISFIYAT +=URUNSATISFIYAT*10/100
end
SELECT * FROM TBLURUNLER









-- a�a��da yazm�� oldugumuz sorguda urun stoklar� 120 � ge�ene kadar her �r�n�n stogunu birer birer artt�rd�k



while (select sum(urunstok) from TBLURUNLER)<=120
begin
update TBLURUNLER set URUNSTOK+=1 
end




