

-- in veya ifadesi yerine sorgumuzu kolayla�t�ran bir kullan�md�r


select * from TBLOGRENCILER

select * from TBLOGRENCILER where OGRSEHIR in('izmir','ankara','edirne') -- kullan�m� bu �ekilde izmir ankara edirne olan �ehirleri getir


select * from TBLnotlar where SINAV1 in(70,75,80,85,90)-- in kullanarak notlar tablosunda s�nav1 notu parantez i�inde olan notlar� getirmi� olduk yazd�g�m�z bu sorguyla


select * from TBLnotlar where SINAV1 not in(70,75,80,85,90)-- not in kullanarak notlar tablosunda s�nav1 notu parantez i�inde olan say�lar�n d���ndaki notlar� getirdik 

