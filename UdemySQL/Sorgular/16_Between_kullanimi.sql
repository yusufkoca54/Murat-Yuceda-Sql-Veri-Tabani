select * from TBLNOTLAR where ORTLAMA between 74 and 100 -- between i kullanarak 74 ile 100 arasýndaki ortalamalarý getirmiþ olduk

select * from TBLNOTLAR where ORTLAMA not between 74 and 100 -- between i kullanarak 74 ile 100 dýþýnda olan ortalamalarý getirmiþ olduk


select * from TBLOGRENCILER where ograd between 'a' and 'n' -- between i kullanarak a ile n dýþýnda olan ögrenci adlarýný getirmiþ olduk a dahil n dahil deðil


select * from TBLOGRENCILER where ograd not between 'a' and 'n' -- not betweende bu sefer n dahil n den sonraki ögrenci adlarý ný getiröiþ olduk
