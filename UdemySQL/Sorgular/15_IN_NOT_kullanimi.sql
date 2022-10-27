

-- in veya ifadesi yerine sorgumuzu kolaylaþtýran bir kullanýmdýr


select * from TBLOGRENCILER

select * from TBLOGRENCILER where OGRSEHIR in('izmir','ankara','edirne') -- kullanýmý bu þekilde izmir ankara edirne olan þehirleri getir


select * from TBLnotlar where SINAV1 in(70,75,80,85,90)-- in kullanarak notlar tablosunda sýnav1 notu parantez içinde olan notlarý getirmiþ olduk yazdýgýmýz bu sorguyla


select * from TBLnotlar where SINAV1 not in(70,75,80,85,90)-- not in kullanarak notlar tablosunda sýnav1 notu parantez içinde olan sayýlarýn dýþýndaki notlarý getirdik 

