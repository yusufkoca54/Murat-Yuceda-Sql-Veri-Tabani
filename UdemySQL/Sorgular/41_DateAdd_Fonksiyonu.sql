


-- dateadd fonksiyonu ile yazm�� oldugumuz bu sorguda rastgele yazm�� oldugumuz tarih �zerine 3 y�l eklemi� olduk

select dateadd(year,3,'2009.10.25')



-- bug�n�n �zerine 45 g�n eklemi� olduk yazd�g�m�z sorguda

select DATEADD(day,45,GETDATE())



-- bug�n�n �zerine 350 y�l ekledik

select dateadd(MONTH,350,getdate())



