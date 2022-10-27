declare @sayi int
set @sayi=24
select @sayi as 'Sonuç'



declare @kisi1 varchar(20)
set @kisi1='murat'
select @kisi1

declare @sayi1 int , @sayi2 int, @toplam int

set @sayi1=24 set @sayi2=25

set @toplam=@sayi1+@sayi2

select @toplam as 'sonuç'

declare @vize1 float,@vize2 float, @final float, @ortalama float
set @vize1=95
set @vize2=90
set @final=98
set @ortalama=(@vize1+@vize2+@final)/3
select @ortalama as 'ortalma'

declare @ad varchar(15), @soyad varchar(15), @cinsiyet varchar(5), @sehir varchar(13), @yas int
set @ad='yusuf ziya'
set @soyad='koca'
set @cinsiyet ='erkek'
set @sehir='sakarya'
set @yas = 20

select @ad as 'ad',@soyad as 'soyad',@cinsiyet as 'cinsiyet',@sehir as 'sehir',@yas as 'yas'
