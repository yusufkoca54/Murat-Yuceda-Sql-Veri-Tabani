

					-- tablo sonuçlu fonksiyonlar


-- tablo bazlý fonksiyon oluþturma  (bütün tabloyu etkilicek)


create function urunbilgi(@urid int)
returns table -- returns int deseydik yine sütün bazlý yani scaler valued functions olur ama burda returns table yazarak komple tabloyu döndürmüþ oluruz
as
return select * from TBLURUN where URUNID=@urid


select * from dbo.urunbilgi(4) -- kýsa yoldan 4 nolu ürün idyi getirmiþ olduk sorgumuzda



-- odev stok sayýsýný girdðimiz zaman bu stok sayýsýnýn altýnda olan ürünleri getirme fonksiyonu

create function stoksayisi (@stoksayisi int)
returns table
return select * from TBLURUN where STOK<@stoksayisi 


select * from dbo.stoksayisi(150)




 