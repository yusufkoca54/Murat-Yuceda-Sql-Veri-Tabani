

select left('merhaba d�nya',9) -- left komutu ile ba�l�k dahil 9 karekteri alm�� olduk

select RIGHT('merhaba d�nya',10) -- bo�luk dahil sondan 10 karekter 


select left(ograd,1) +'.'+ OGRSOYAD as 'Ad Soyad' from TBLOGRENCILER



SELECT LEFT (DERSAD,3),AVG(ORTLAMA)FROM TBLNOTLAR 
inner join TBLDERSLER
on TBLDERSLER.DERSID=TBLNOTLAR.DERS
GROUP BY DERSAD




