


-- a�a��daki sorguda hangi ayda oldugumuzu sorgulatt�k get dateyi kullanarak

select DATENAME(month,getdate())



--a�a��da yazd�g�m�z sorguda rastgele yazd�g�m�z tarihin hangi ayda oldugunu sorgulatt�k

select DATENAME (month,'2019.01.15')




-- a�a��da yazd�g�m�z sorguda ay�n ka��nc� g�n� oldugunu sorgulad�k
select datename(day,getdate())




--a�a��da yazd�g�m�z sorguda hangi g�ndeyiz oldugunu sorgulad�k
select datename(WEEKDAY,GETDATE())





-- a�a��da yazm�� oldugumuz sorguda 1990 01 17 nolu tarihin hangi g�n oldugunu sorgulad�k
select DATENAME(weekday,'1990.01.17')




-- a�a��da yazm�� oldugumuz sorguda y�l�n kac�nc� haftas�nday�z
select DATENAME(WEEK,GETDATE())







-- not tarihde s�ralama werirken y�l.ay.gun �eklinde olmal�d�r