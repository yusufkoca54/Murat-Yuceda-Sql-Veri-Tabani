

select * from TBLOGRENCILER where OGRSEHIR like '%ir_%' -- burdaki alt tirenin anlam� i�erisinde ir var devam�nda ba�ka bir�ey var ir sonda olmucak

select * from TBLOGRENCILER where OGRSEHIR like '%an_%'-- burdaki alt tirede sorgulatt�g�m�z zaman ankara ve adanay� getirmi� oldu


select*from TBLOGRENCILER where OGRAD like '[A,B]%' -- burdaki sorguda ��renci ad� a yada b ile ba�layanlar


select*from TBLOGRENCILER where OGRAD like '%[A,B]%' -- burdaki sorguda ��renci ad�nda a yada b harfi olanlar

select*from TBLOGRENCILER where OGRAD like '%[n,�]'-- burdaki sorguda ��renci ad� a yada b ile biten

select * from TBLOGRENCILER WHERE OGRKULUP LIKE '[b-s]%' -- BURDAK� SORGUDA  Kulup ad� b ile s harfleri aras�nda ba�layan kulupleri getir

select * from TBLOGRENCILER WHERE OGRKULUP LIKE '%[a-h]' --BURDAK� SORGUDA  Kulup ad� a  h harfleri aras�nda biten kulupleri getir

select * from TBLOGRENCILER WHERE OGRKULUP LIKE '%[k-m]'--BURDAK� SORGUDA kulup ad� k ile m harfleri aras�nda biten kulupleri getir

