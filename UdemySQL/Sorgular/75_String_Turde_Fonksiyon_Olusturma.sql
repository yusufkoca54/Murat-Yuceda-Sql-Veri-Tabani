



--String T�rde Fonksiyon Olu�turma


/* �nemli not 

returns ==> geriye d�n�lcek olan ifade returns ile tan�mlan�yor

return ==> geriye d�n�lcek olan i�lem ise returnla tan�mlan�yor

*/


--k���k harf isimli bir fonksiyon tan�mlay�p onu a�a��da sorguda kulland�k ne yapm�� olduk funksiyonu kullan�p �r�n ad�n� k���k harfe d�n��t�rd�k

CREATE function kucukharf(@isim varchar(20))
returns varchar(20)
as
begin
return lower(@isim)
end



select dbo.kucukharf(ad),stok from TBLURUN