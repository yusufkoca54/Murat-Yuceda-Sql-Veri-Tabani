




select urunad,urunmarka,urundurum=
case urundurum
when '1' then '�r�n var'
when '0' then '�r�n yok'
end
from TBLURUNLER


select urunad,urunmarka,KATEGORI=
case KATEGORI
when '1' then 'laptop'
when '2' then 'beyaz e�ya'
when '3' then 'k���k ev aletleri'
when '4' then 'televizyon'
end
from TBLURUNLER

select * from TBLURUNLER













