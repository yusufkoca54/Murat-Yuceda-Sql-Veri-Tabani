select * from TBLNOTLAR where ORTLAMA between 74 and 100 -- between i kullanarak 74 ile 100 aras�ndaki ortalamalar� getirmi� olduk

select * from TBLNOTLAR where ORTLAMA not between 74 and 100 -- between i kullanarak 74 ile 100 d���nda olan ortalamalar� getirmi� olduk


select * from TBLOGRENCILER where ograd between 'a' and 'n' -- between i kullanarak a ile n d���nda olan �grenci adlar�n� getirmi� olduk a dahil n dahil de�il


select * from TBLOGRENCILER where ograd not between 'a' and 'n' -- not betweende bu sefer n dahil n den sonraki �grenci adlar� n� getir�i� olduk
