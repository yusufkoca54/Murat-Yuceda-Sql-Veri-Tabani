

-- avg ortalama 

-- sum toplama


select sum(s�nav1) from TBLNOTLAR where OGRENCI =1 -- notlar tablosundaki 1 nolu ��rencinin s�nav 1 notlar� toplam� sorgusu

select s�nav1,ders from tblnotlar where ogrenc�=1 -- notlar tablosundaki ��rcenin 2 nolu ve 1 nolu dersden ald�g� s�nav1 notlar�

-- ay�e ��nara ait s�nav bilgilerini getirdik 2 tablodaki alanlar� inner join yaparak

select dersad,s�nav1,s�nav2,s�nav3 from TBLNOTLAR 
inner join TBLDERSLER
on TBLNOTLAR.ders=TBLDERSLER.DERSID
where ogrenc�=(select OGRID from TBLOGRENCILER where ograd='ay�e'and OGRSOYAD='��nar')





-- Ay�enin s�nav 1 den ald��� notlar�n toplam�

select sum(s�nav1) from TBLNOTLAR 
inner join TBLDERSLER
on TBLNOTLAR.ders=TBLDERSLER.DERSID
where ogrenc�=(select OGRID from TBLOGRENCILER where ograd='ay�e'and OGRSOYAD='��nar')





-- ay�en�n s�nav1 notlar� toplam� ve ortalamas�


select sum(s�nav1),avg(s�nav1) from TBLNOTLAR 
inner join TBLDERSLER
on TBLNOTLAR.ders=TBLDERSLER.DERSID
where ogrenc�=(select OGRID from TBLOGRENCILER where ograd='ay�e'and OGRSOYAD='��nar')


