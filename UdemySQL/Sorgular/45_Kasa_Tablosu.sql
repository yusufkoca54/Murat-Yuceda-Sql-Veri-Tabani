





-- Kasa Tablosu


create table TBLKASA
(
TOPLAM DECIMAL(18,2)
)


insert into TBLKASA VALUES (0)

SELECT * FROM TBLKASA

-- Yazmýþ oldugumuz bu sorguda kasa sattýgýmýz ürün tutarýný kasaya eklemiþ olduk

UPDATE TBLKASA SET TOPLAM =(SELECT SUM(TUTAR) FROM TBLHAREKET)



