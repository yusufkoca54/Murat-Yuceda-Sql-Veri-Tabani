


-- dateadd fonksiyonu ile yazmýþ oldugumuz bu sorguda rastgele yazmýþ oldugumuz tarih üzerine 3 yýl eklemiþ olduk

select dateadd(year,3,'2009.10.25')



-- bugünün üzerine 45 gün eklemiþ olduk yazdýgýmýz sorguda

select DATEADD(day,45,GETDATE())



-- bugünün üzerine 350 yýl ekledik

select dateadd(MONTH,350,getdate())



