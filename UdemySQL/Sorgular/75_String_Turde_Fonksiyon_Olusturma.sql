



--String Türde Fonksiyon Oluþturma


/* önemli not 

returns ==> geriye dönülcek olan ifade returns ile tanýmlanýyor

return ==> geriye dönülcek olan iþlem ise returnla tanýmlanýyor

*/


--küçük harf isimli bir fonksiyon tanýmlayýp onu aþaðýda sorguda kullandýk ne yapmýþ olduk funksiyonu kullanýp ürün adýný küçük harfe dönüþtürdük

CREATE function kucukharf(@isim varchar(20))
returns varchar(20)
as
begin
return lower(@isim)
end



select dbo.kucukharf(ad),stok from TBLURUN