use SatisVeriTabani


if (10<5)

print 'merhaba'
else
print 'selam'


select * from TBLURUNLER


if(select sum(Urunstok)from TBLURUNLER)>100

print' toplam ürün sayýsý 100 den büyük'

else
print 'toplam ürün sayýsý 100 den küçük' 

if(select count (*) from TBLURUNLER)>20

print '20 den fazla çeþit ürün var'

else
print '20 den az çeþit ürün var'






