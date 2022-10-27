



declare @kisiler table

(

KisiID int identity (1,1),
KisiAd varchar(10),
KisiSehir varchar (15)
)

insert into @kisiler (KisiAd,KisiSehir) values ('Ali','Malatya')

insert into @kisiler (KisiAd,KisiSehir) values ('emel','Trabzon')

select * from @kisiler where KisiSehir like '%r%'

