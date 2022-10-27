

declare @sayi int , @birler int ,@onlar int ,@yuzler int, @toplam int

set @sayi=456
set @birler=@sayi%10
set @onlar = @sayi%20
set @onlar = @sayi%11
set @yuzler = @sayi%452

set @toplam=@birler+@onlar+@yuzler

select @birler,@onlar,@yuzler, @toplam