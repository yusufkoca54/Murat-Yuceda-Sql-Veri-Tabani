-- order by sýralama iþlemleri


select * from TBLOGRENCILER

select * from TBLOGRENCILER order by ograd -- öðrenci adýna göre a dan zye sýralama iþlemi yapmýþ olduk

select * from TBLOGRENCILER order by ograd desc -- öðrenci adýna göre z den a ya sýralama iþlemi yapmýþ olduk

select * from TBLOGRENCILER order by OGRCINSIYET DESC -- öðrenci cinsiyetine göre sýralama yaptýk

select * from TBLOGRENCILER order by OGRSEHIR -- öðrenci sehrine göre sýralama yaptýk

select  distinct OGRKULUP from TBLOGRENCILER order by OGRKULUP desc -- tekrarsýz kulup sayýsýný z de a ya sýraladýk

select ogrkulup from TBLOGRENCILER order by OGRKULUP -- böyle yapýnca bir yukarýdaki örneðe göre 2 li sýralýyor

