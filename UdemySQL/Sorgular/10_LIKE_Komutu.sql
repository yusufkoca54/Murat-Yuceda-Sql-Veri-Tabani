SELECT * FROM TBLOGRENCILER WHERE OGRAD like '%a%'-- isiminde i�erisinde a ge�enleri getir



SELECT * FROM TBLOGRENCILER WHERE OGRAD like '%a%' or OGRSOYAD like '%a%' -- isminde yada soy ad�nda a ge�enleri getir



select * from TBLOGRENCILER where OGRAD like 'a%' -- isminin ba�� a ile ba�layanlar

select * from TBLOGRENCILER where OGRAD like 'a%' and OGRCINSIYET ='erkek' -- ismi ba�� a ile ba�lay�p erkek olanlar

select * from TBLOGRENCILER where OGRAD like 'a%' and OGRCINSIYET ='k�z' -- ismi ba�� a ile ba�lay�p k�z olanlar

select * from TBLOGRENCILER where OGRSEHIR like '%ar%' -- bu ifadede ankaray� getirdik ama ankara daki ar yanyana oldugu i�in getirdi ak deseydik olmazd�


select * from TBLOGRENCILER where OGRKULUP not like '%a%'-- i�eri�inde a harfi olmayan kulupleri getirdi

select * from TBLOGRENCILER where OGRKULUP not like 'a%'-- i�eri�inde a harfi ile ba�lamayan  kulupleri getirdi