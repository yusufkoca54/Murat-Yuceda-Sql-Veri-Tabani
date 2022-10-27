
-- bu iki sorgunun ilkinde tbl öðrencilerde kaç öðrenci var ikincisinde ise adana sehrinde kaç öðrenci var

select count(*) as 'Toplam Kayýt' from TBLOGRENCILER

select COUNT(*) as 'toplam kiþi' from TBLOGRENCILER where ogrSEHIR='adana'



select sum (SINAV1),SUM(SINAV2),SUM(SINAV3) from TBLNOTLAR -- 3 SINAVIN TOPLAMINI BULDUK

select AVG (SINAV1),AVG(SINAV2),AVG(SINAV3) from TBLNOTLAR -- 3 SINAVIN ORTALMASINI BULDUK

SELECT MAX(SýNAV1),max(sýnav2),max(sýnav3) FROM TBLNOTLAR -- 3 sýnavda alýnan en yüksek notlar

SELECT min(SýNAV1),min(sýnav2),min(sýnav3) FROM TBLNOTLAR -- sýnavýn alýnan en düþük notlar




