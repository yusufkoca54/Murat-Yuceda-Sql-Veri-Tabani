



-- hareket tablosu i�erisinde �ehri adana olan m��terilerin harcamalar�n� bula sorgu


select * from TBLHAREKET where MUSTERI IN(select MUSTERIID from TBLMUSTERI Where MUSTERISEHIR = 'ADANA')



-- K���K EV ALETLER�N� GET�REN SORGU KATEGOR�S�NDEK� YAPILAN HARCAMALARI GET�REN SORGU

SELECT * FROM TBLHAREKET WHERE URUN IN(SELECT URUNID FROM TBLURUNLER WHERE KATEGORI=3)







-- A�a��da yazm�� oldugumuz sorguda beyaz e�yada yap�lm�� olan b�t�n sat��lar� getirdik





SELECT * FROM TBLHAREKET WHERE URUN IN(SELECT URUNID FROM TBLURUNLER WHERE KATEGORI=(SELECT KATEGORIID FROM TBLKATEGORI WHERE KATEGORIAD='BEYAZ E�YA'))





