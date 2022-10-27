




select urunad,urunmarka,urundurum=
case urundurum
when '1' then 'ürün var'
when '0' then 'ürün yok'
end
from TBLURUNLER


select urunad,urunmarka,KATEGORI=
case KATEGORI
when '1' then 'laptop'
when '2' then 'beyaz eþya'
when '3' then 'küçük ev aletleri'
when '4' then 'televizyon'
end
from TBLURUNLER

select * from TBLURUNLER













