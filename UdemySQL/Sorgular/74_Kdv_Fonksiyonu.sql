

-- kdv fonksiyonu

create function kdv (@fiyat decimal (18,2))
returns decimal(18,2)
as
begin
return @fiyat*1.18 -- fiyati 1.18 ile �arpmak demek onun �zerine y�zde 18 eklemek demek
end


select AD,SATISFIYAT,dbo.kdv(SATISFIYAT) AS 'KDVL� HAL�' from TBLURUN




-- NOT BU VE BUNDAN �NCEK� 2FUNKS�YONLARDA SCALER VALUED FUNCT�ONSA DE��NM�� OLDUK
