CREATE TRIGGER ARTTIR
ON URUNS
AFTER INSERT
AS
update Tablo1 set Stok=Stok+1

-- �lk Ba�ta Buras� Yap�ld�
update Tablo1 set Stok=(select count(Stok) from Uruns)