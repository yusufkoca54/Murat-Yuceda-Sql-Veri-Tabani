Create Trigger SatisStokAzalt
on SatisHarekets
after insert
as

Declare @UrunId int
Declare @Adet int
Select @UrunId=UrunId,@Adet=Adet from inserted

update Uruns set stok=stok-@Adet where UrunId=@UrunId