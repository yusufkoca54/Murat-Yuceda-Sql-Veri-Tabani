
-- bu iki sorgunun ilkinde tbl ��rencilerde ka� ��renci var ikincisinde ise adana sehrinde ka� ��renci var

select count(*) as 'Toplam Kay�t' from TBLOGRENCILER

select COUNT(*) as 'toplam ki�i' from TBLOGRENCILER where ogrSEHIR='adana'



select sum (SINAV1),SUM(SINAV2),SUM(SINAV3) from TBLNOTLAR -- 3 SINAVIN TOPLAMINI BULDUK

select AVG (SINAV1),AVG(SINAV2),AVG(SINAV3) from TBLNOTLAR -- 3 SINAVIN ORTALMASINI BULDUK

SELECT MAX(S�NAV1),max(s�nav2),max(s�nav3) FROM TBLNOTLAR -- 3 s�navda al�nan en y�ksek notlar

SELECT min(S�NAV1),min(s�nav2),min(s�nav3) FROM TBLNOTLAR -- s�nav�n al�nan en d���k notlar




