/*

Transaction bir veya daha fazla SQL ifadesini bir b�t�n olarak d���nen ve ba�ar�l� olmas� halinde SQL ifadelerini kal�c� olarak istenilen de�i�ikli�i 

uygulayan veya hata olmas� halinde de�i�iklik yapmadan verileri ayn� �ekilde korunmas�n� sa�layan i�lemdir.




COMMIT (Onaylama): Veritaban�nda Insert, Update, Delete gibi i�lemler ba�ar�l� bir �ekilde ger�ekle�ti�inde COMMIT komutu ile de�i�iklikler kaydedilir. 

B�ylece Durable kavram�na g�re veritaban�na kal�c� olarak kaydedilir.

*/


begin transaction
insert into TBLURUN (AD,ALISFIYAT,SATISFIYAT,STOK,DURUM,KATEGORI) VALUES ('MUTFAK ROBOTU',100,200,15,1,3)
insert into TBLURUN (AD,ALISFIYAT,SATISFIYAT,STOK,DURUM,KATEGORI) VALUES ('FIRIN',1000,2000,25,1,1)
SELECT * FROM TBLURUN -- BANA �R�NLER� G�STER
COMMIT -- E�ER K� TRANSACT�ON ���NDEK� B�T�N KOMUTLAR SORUNSUZ B�R �EK�LDE GER�EKLE�ECEKSE BUNLARI VER� TABANINA YANSIT






-- ALIS F�YAT INT FAKAT B�Z ALI� F�YATINA STR�NG B�R DE�ER OLARAK 'B' YAZDIGIMIZDAN DOLAYI B�R �STTEK� �NSERTTE SORGU DO�RU YAZILSADA VER� TABANINA YANSIMADI

begin transaction
insert into TBLURUN (AD,ALISFIYAT,SATISFIYAT,STOK,DURUM,KATEGORI) VALUES ('MUTFAK ROBOTU',100,200,15,1,3)
insert into TBLURUN (AD,ALISFIYAT,SATISFIYAT,STOK,DURUM,KATEGORI) VALUES ('FIRIN','B',2000,25,1,1)
SELECT * FROM TBLURUN -- BANA �R�NLER� G�STER
COMMIT -- E�ER K� TRANSACT�ON ���NDEK� B�T�N KOMUTLAR SORUNSUZ B�R �EK�LDE GER�EKLE�ECEKSE BUNLARI VER� TABANINA YANSIT FAKAT YANSITMADI HATA VAR