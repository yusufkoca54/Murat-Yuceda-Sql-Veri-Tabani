SELECT * FROM TBLOGRENCILER WHERE OGRAD like '%a%'-- isiminde içerisinde a geçenleri getir



SELECT * FROM TBLOGRENCILER WHERE OGRAD like '%a%' or OGRSOYAD like '%a%' -- isminde yada soy adýnda a geçenleri getir



select * from TBLOGRENCILER where OGRAD like 'a%' -- isminin baþý a ile baþlayanlar

select * from TBLOGRENCILER where OGRAD like 'a%' and OGRCINSIYET ='erkek' -- ismi baþý a ile baþlayýp erkek olanlar

select * from TBLOGRENCILER where OGRAD like 'a%' and OGRCINSIYET ='kýz' -- ismi baþý a ile baþlayýp kýz olanlar

select * from TBLOGRENCILER where OGRSEHIR like '%ar%' -- bu ifadede ankarayý getirdik ama ankara daki ar yanyana oldugu için getirdi ak deseydik olmazdý


select * from TBLOGRENCILER where OGRKULUP not like '%a%'-- içeriðinde a harfi olmayan kulupleri getirdi

select * from TBLOGRENCILER where OGRKULUP not like 'a%'-- içeriðinde a harfi ile baþlamayan  kulupleri getirdi