/*

Transaction bir veya daha fazla SQL ifadesini bir bütün olarak düþünen ve baþarýlý olmasý halinde SQL ifadelerini kalýcý olarak istenilen deðiþikliði 

uygulayan veya hata olmasý halinde deðiþiklik yapmadan verileri ayný þekilde korunmasýný saðlayan iþlemdir.




COMMIT (Onaylama): Veritabanýnda Insert, Update, Delete gibi iþlemler baþarýlý bir þekilde gerçekleþtiðinde COMMIT komutu ile deðiþiklikler kaydedilir. 

Böylece Durable kavramýna göre veritabanýna kalýcý olarak kaydedilir.

*/


begin transaction
insert into TBLURUN (AD,ALISFIYAT,SATISFIYAT,STOK,DURUM,KATEGORI) VALUES ('MUTFAK ROBOTU',100,200,15,1,3)
insert into TBLURUN (AD,ALISFIYAT,SATISFIYAT,STOK,DURUM,KATEGORI) VALUES ('FIRIN',1000,2000,25,1,1)
SELECT * FROM TBLURUN -- BANA ÜRÜNLERÝ GÖSTER
COMMIT -- EÐER KÝ TRANSACTÝON ÝÇÝNDEKÝ BÜTÜN KOMUTLAR SORUNSUZ BÝR ÞEKÝLDE GERÇEKLEÞECEKSE BUNLARI VERÝ TABANINA YANSIT






-- ALIS FÝYAT INT FAKAT BÝZ ALIÞ FÝYATINA STRÝNG BÝR DEÐER OLARAK 'B' YAZDIGIMIZDAN DOLAYI BÝR ÜSTTEKÝ ÝNSERTTE SORGU DOÐRU YAZILSADA VERÝ TABANINA YANSIMADI

begin transaction
insert into TBLURUN (AD,ALISFIYAT,SATISFIYAT,STOK,DURUM,KATEGORI) VALUES ('MUTFAK ROBOTU',100,200,15,1,3)
insert into TBLURUN (AD,ALISFIYAT,SATISFIYAT,STOK,DURUM,KATEGORI) VALUES ('FIRIN','B',2000,25,1,1)
SELECT * FROM TBLURUN -- BANA ÜRÜNLERÝ GÖSTER
COMMIT -- EÐER KÝ TRANSACTÝON ÝÇÝNDEKÝ BÜTÜN KOMUTLAR SORUNSUZ BÝR ÞEKÝLDE GERÇEKLEÞECEKSE BUNLARI VERÝ TABANINA YANSIT FAKAT YANSITMADI HATA VAR