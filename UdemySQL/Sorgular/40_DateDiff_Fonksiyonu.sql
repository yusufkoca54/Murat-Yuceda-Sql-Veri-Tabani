




-- datediff iki tarih arasýndaki farký gösteren fonksiyon

-- not datedýff iki prametre almaktadýr ornek(select datediff(year '1.tarihi yaz (yýl.ay.gun)',2.tarihi yaz(yýl.ay.gun))


-- aþaðýda yazmýþ oldugumuz sorguda iki tarih arasýnda kaç yýl oldugunu gösteren sorguyu sorgulatmýþ olduk




select DATEDIFF(year,'2010.10.25',GETDATE())







-- iki tarih arasýndaki geçen ay miktarý

select DATEDIFF(MONTH,'2010.06.14','2015.08.17')



-- TABLO ÜZERÝNDE YAZMIÞ OLDUGUMUZ BU SORGUDA 1 NOLU MÜÞTERÝNÝN YAPDIÐI ALIÞVERÝÞTEN BUGÜNE GEÇEN GÜN SAYISI

select DATEDIFF(day,TARIH,GETDATE()) FROM TBLHAREKET WHERE MUSTERI = 1