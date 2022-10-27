
--              DDL KOMUTLARI TEKRAR ELLE SORGU  GÝRERER VERÝ TABANI OLUÞTURDUK ,TABLO OLUÞTURDUK


--create database SatisVeriTabani 

use SatisVeriTabani


create table TBLKATEGORI
(
KATEGORIID tinyint identity(1,1) primary key,
KATEGORIAD varchar(50)


)



create table TBLURUNLER
(
URUNID int identity(1,1) primary key,

URUNAD varchar(50),

URUNMARKA varchar(50),

KATEGORI tinyint,

URUNALISFIYAT decimal(18,2),

URUNSATISFIYAT decimal(18,2),

URUNSTOK smallint check(URUNSTOK>0),

URUNDURUM bit default '1'

)




create table TBLPERSONEL
(
PERSONELID smallint identity(1,1) primary key,
PERSONELADSOYAD varchar(50)
)


CREATE TABLE TBLMUSTERI
(
MUSTERIID int primary key identity(1,1),
MUSTERIAD varchar(50),
MUSTERISOYAD varchar(50),
MUSTERISEHIR varchar(13),
MUSTERIBAKIYE decimal(18,2)

)

CREATE TABLE TBLHAREKET
(
HAREKETID int primary key identity(1,1),

URUN int,

MUSTERI int,

PERSONEL smallint,

ADET int,

TUTAR decimal (18,2),

TARIH smalldatetime

)

truncate table TBLURUNLER

