select upper('merhaba')as 's�tun'-- upper la merhaba y� b�y�k yazd�rd�k


select upper (ograd) AS '��renci ad�',upper (OGRSOYAD) as 'soyad' from TBLOGRENCILER -- tbl ��renciler tablosundaki ad� ve soyad� b�y�k harfe d�n��t�rd�k upper ile

select lower (OGRSEHIR) '��renci sehir' from TBLOGRENCILER -- lower ile ��rencinin sehrini k���k harfe d�n��t�rd�k


-- soru sehri adana ve bili�im kulub�nde olan ��rencilerin ad�n� b�y�k soyad�n� k���k harfle getiren sorguyu yaz�n�z a�a��da yazd�m 


SELECT upper (OGRAD) as '��renci ad�',lower (OGRSOYAD) as '��renci soyad'  FROM TBLOGRENCILER WHERE OGRSEHIR='Adana' and 
OGRKULUP=(SELECT KULUPID FROM TBLKULUPLER WHERE KULUPAD='Bili�im')