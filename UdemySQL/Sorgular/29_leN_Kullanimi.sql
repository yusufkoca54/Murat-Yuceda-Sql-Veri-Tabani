


select len('merhaba') -- len komutu ile ka� tane karekter oldugunu bulduk


select ograd,len(ograd),OGRKULUP from TBLOGRENCILER where OGRSEHIR='adana' -- adana daki ��rencilerin ad�n�n ka� karekter oldugunu bulmu� olduk





-- �ehri adanalar olan ��renciler i�erisinde bili�im kulub�nde olan ��rencilerin uzunlugunu getirme


select ograd,len(ograd),OGRKULUP from TBLOGRENCILER where OGRSEHIR='adana' and OGRKULUP=(select kulup�d from TBLKULUPLER where KULUPAD='Bili�im')




-- ismi 3 veye 4 karakterde olan ki�ileri getirme

select * from TBLOGRENCILER where len (ograd)=4 or len (OGRAD)=3



-- �dev sorusu isim + soyismin toplam� 3 ile 7 karekter aras�nda olan ��rencileri getiren sorgu yu yaz�n


select * from TBLOGRENCILER where len (OGRAD+OGRSOYAD)=7


