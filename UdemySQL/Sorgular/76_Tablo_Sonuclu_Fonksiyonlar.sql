

					-- tablo sonu�lu fonksiyonlar


-- tablo bazl� fonksiyon olu�turma  (b�t�n tabloyu etkilicek)


create function urunbilgi(@urid int)
returns table -- returns int deseydik yine s�t�n bazl� yani scaler valued functions olur ama burda returns table yazarak komple tabloyu d�nd�rm�� oluruz
as
return select * from TBLURUN where URUNID=@urid


select * from dbo.urunbilgi(4) -- k�sa yoldan 4 nolu �r�n idyi getirmi� olduk sorgumuzda



-- odev stok say�s�n� gird�imiz zaman bu stok say�s�n�n alt�nda olan �r�nleri getirme fonksiyonu

create function stoksayisi (@stoksayisi int)
returns table
return select * from TBLURUN where STOK<@stoksayisi 


select * from dbo.stoksayisi(150)




 