-- order by s�ralama i�lemleri


select * from TBLOGRENCILER

select * from TBLOGRENCILER order by ograd -- ��renci ad�na g�re a dan zye s�ralama i�lemi yapm�� olduk

select * from TBLOGRENCILER order by ograd desc -- ��renci ad�na g�re z den a ya s�ralama i�lemi yapm�� olduk

select * from TBLOGRENCILER order by OGRCINSIYET DESC -- ��renci cinsiyetine g�re s�ralama yapt�k

select * from TBLOGRENCILER order by OGRSEHIR -- ��renci sehrine g�re s�ralama yapt�k

select  distinct OGRKULUP from TBLOGRENCILER order by OGRKULUP desc -- tekrars�z kulup say�s�n� z de a ya s�ralad�k

select ogrkulup from TBLOGRENCILER order by OGRKULUP -- b�yle yap�nca bir yukar�daki �rne�e g�re 2 li s�ral�yor

