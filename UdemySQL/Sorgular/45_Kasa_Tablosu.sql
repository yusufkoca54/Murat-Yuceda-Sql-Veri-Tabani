





-- Kasa Tablosu


create table TBLKASA
(
TOPLAM DECIMAL(18,2)
)


insert into TBLKASA VALUES (0)

SELECT * FROM TBLKASA

-- Yazm�� oldugumuz bu sorguda kasa satt�g�m�z �r�n tutar�n� kasaya eklemi� olduk

UPDATE TBLKASA SET TOPLAM =(SELECT SUM(TUTAR) FROM TBLHAREKET)



