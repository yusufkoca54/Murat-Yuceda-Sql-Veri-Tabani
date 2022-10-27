


-- aþaðýdaki sorguda hangi ayda oldugumuzu sorgulattýk get dateyi kullanarak

select DATENAME(month,getdate())



--aþaðýda yazdýgýmýz sorguda rastgele yazdýgýmýz tarihin hangi ayda oldugunu sorgulattýk

select DATENAME (month,'2019.01.15')




-- aþaðýda yazdýgýmýz sorguda ayýn kaçýncý günü oldugunu sorguladýk
select datename(day,getdate())




--aþaðýda yazdýgýmýz sorguda hangi gündeyiz oldugunu sorguladýk
select datename(WEEKDAY,GETDATE())





-- aþaðýda yazmýþ oldugumuz sorguda 1990 01 17 nolu tarihin hangi gün oldugunu sorguladýk
select DATENAME(weekday,'1990.01.17')




-- aþaðýda yazmýþ oldugumuz sorguda yýlýn kacýncý haftasýndayýz
select DATENAME(WEEK,GETDATE())







-- not tarihde sýralama werirken yýl.ay.gun þeklinde olmalýdýr