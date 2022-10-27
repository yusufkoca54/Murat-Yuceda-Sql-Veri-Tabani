

select count(*) from TBLURUN  -- kaç tane ürünümüzü var

select sum(stok) from TBLURUN -- toplam da 5 olan ürünün stokda hepsinin toplamýnýn sorugusu





-- TBLSTOK TABLOSUNUN ÝÇÝNE TBLÜRÜNÜN ÝÇÝNDE OLAN STOK OLARAK DEÐÝL ÇEÞÝT OLARAK ÜRÜN SAYISINA EÞÝTLEDÝK

update TBLSTOK set TOPLAMURUN=(select count(*) from TBLURUN)