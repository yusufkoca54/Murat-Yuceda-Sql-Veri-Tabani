

select * from TBLOGRENCILER where OGRSEHIR like '%ir_%' -- burdaki alt tirenin anlamý içerisinde ir var devamýnda baþka birþey var ir sonda olmucak

select * from TBLOGRENCILER where OGRSEHIR like '%an_%'-- burdaki alt tirede sorgulattýgýmýz zaman ankara ve adanayý getirmiþ oldu


select*from TBLOGRENCILER where OGRAD like '[A,B]%' -- burdaki sorguda öðrenci adý a yada b ile baþlayanlar


select*from TBLOGRENCILER where OGRAD like '%[A,B]%' -- burdaki sorguda öðrenci adýnda a yada b harfi olanlar

select*from TBLOGRENCILER where OGRAD like '%[n,ý]'-- burdaki sorguda öðrenci adý a yada b ile biten

select * from TBLOGRENCILER WHERE OGRKULUP LIKE '[b-s]%' -- BURDAKÝ SORGUDA  Kulup adý b ile s harfleri arasýnda baþlayan kulupleri getir

select * from TBLOGRENCILER WHERE OGRKULUP LIKE '%[a-h]' --BURDAKÝ SORGUDA  Kulup adý a  h harfleri arasýnda biten kulupleri getir

select * from TBLOGRENCILER WHERE OGRKULUP LIKE '%[k-m]'--BURDAKÝ SORGUDA kulup adý k ile m harfleri arasýnda biten kulupleri getir

