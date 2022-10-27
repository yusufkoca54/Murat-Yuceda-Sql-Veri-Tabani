


select len('merhaba') -- len komutu ile kaç tane karekter oldugunu bulduk


select ograd,len(ograd),OGRKULUP from TBLOGRENCILER where OGRSEHIR='adana' -- adana daki öðrencilerin adýnýn kaç karekter oldugunu bulmuþ olduk





-- þehri adanalar olan öðrenciler içerisinde biliþim kulubünde olan öðrencilerin uzunlugunu getirme


select ograd,len(ograd),OGRKULUP from TBLOGRENCILER where OGRSEHIR='adana' and OGRKULUP=(select kulupýd from TBLKULUPLER where KULUPAD='Biliþim')




-- ismi 3 veye 4 karakterde olan kiþileri getirme

select * from TBLOGRENCILER where len (ograd)=4 or len (OGRAD)=3



-- ödev sorusu isim + soyismin toplamý 3 ile 7 karekter arasýnda olan öðrencileri getiren sorgu yu yazýn


select * from TBLOGRENCILER where len (OGRAD+OGRSOYAD)=7


