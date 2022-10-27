

-- kdv fonksiyonu

create function kdv (@fiyat decimal (18,2))
returns decimal(18,2)
as
begin
return @fiyat*1.18 -- fiyati 1.18 ile çarpmak demek onun üzerine yüzde 18 eklemek demek
end


select AD,SATISFIYAT,dbo.kdv(SATISFIYAT) AS 'KDVLÝ HALÝ' from TBLURUN




-- NOT BU VE BUNDAN ÖNCEKÝ 2FUNKSÝYONLARDA SCALER VALUED FUNCTÝONSA DEÐÝNMÝÞ OLDUK
