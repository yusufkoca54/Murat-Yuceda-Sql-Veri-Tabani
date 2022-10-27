

-- avg ortalama 

-- sum toplama


select sum(sýnav1) from TBLNOTLAR where OGRENCI =1 -- notlar tablosundaki 1 nolu öðrencinin sýnav 1 notlarý toplamý sorgusu

select sýnav1,ders from tblnotlar where ogrencý=1 -- notlar tablosundaki öðrcenin 2 nolu ve 1 nolu dersden aldýgý sýnav1 notlarý

-- ayþe çýnara ait sýnav bilgilerini getirdik 2 tablodaki alanlarý inner join yaparak

select dersad,sýnav1,sýnav2,sýnav3 from TBLNOTLAR 
inner join TBLDERSLER
on TBLNOTLAR.ders=TBLDERSLER.DERSID
where ogrencý=(select OGRID from TBLOGRENCILER where ograd='ayþe'and OGRSOYAD='çýnar')





-- Ayþenin sýnav 1 den aldýðý notlarýn toplamý

select sum(sýnav1) from TBLNOTLAR 
inner join TBLDERSLER
on TBLNOTLAR.ders=TBLDERSLER.DERSID
where ogrencý=(select OGRID from TBLOGRENCILER where ograd='ayþe'and OGRSOYAD='çýnar')





-- ayþenýn sýnav1 notlarý toplamý ve ortalamasý


select sum(sýnav1),avg(sýnav1) from TBLNOTLAR 
inner join TBLDERSLER
on TBLNOTLAR.ders=TBLDERSLER.DERSID
where ogrencý=(select OGRID from TBLOGRENCILER where ograd='ayþe'and OGRSOYAD='çýnar')


