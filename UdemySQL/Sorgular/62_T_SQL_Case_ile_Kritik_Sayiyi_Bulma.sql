
create procedure KRITIKSTOK
AS
select urunad,urunmarka,urunstok,URUNSTOK=
case 
when urunstok>=1 and urunstok<=5 then 'kritik seviye'
when urunstok>=6 and urunstok<=10 then 'takviye yap�lmal�'
when urunstok>10  then '�r�n stok say�s� yeterli'

end

from TBLURUNLER

EXEC KRITIKSTOK


