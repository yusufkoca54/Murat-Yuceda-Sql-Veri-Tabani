

select left('merhaba dünya',9) -- left komutu ile baþlýk dahil 9 karekteri almýþ olduk

select RIGHT('merhaba dünya',10) -- boþluk dahil sondan 10 karekter 


select left(ograd,1) +'.'+ OGRSOYAD as 'Ad Soyad' from TBLOGRENCILER



SELECT LEFT (DERSAD,3),AVG(ORTLAMA)FROM TBLNOTLAR 
inner join TBLDERSLER
on TBLDERSLER.DERSID=TBLNOTLAR.DERS
GROUP BY DERSAD




