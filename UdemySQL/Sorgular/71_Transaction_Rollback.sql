/*

Transaction bir veya daha fazla SQL ifadesini bir b�t�n olarak d���nen ve ba�ar�l� olmas� halinde SQL ifadelerini kal�c� olarak istenilen de�i�ikli�i 

uygulayan veya hata olmas� halinde de�i�iklik yapmadan verileri ayn� �ekilde korunmas�n� sa�layan i�lemdir.


��LEM� GER� ALMA ROLLBACK TRANSACT�ON NED�R?

Rollback, Yap�lan i�lemleri geri al�r. �rne�in bir tablodaki verileri DELETE, UPDATE, INSERT gibi i�lemler yap�l�rken ROLLBACK ile i�lemi geri al�r. Peki bu

bize ne fayda sa�layacak? Baz� tablolarda Triggers bulunur DDL veri i�lemi yaparken hata al�nabilir bu sefer hangileri hata ald���n� hangileri i�lem

yap�ld���n� ay�rt etmek zor olabiliyor.

*/



BEGIN TRANSACTION
INSERT INTO TBLKATEGORI (AD) VALUES ('TV')
INSERT INTO TBLKATEGORI (AD) VALUES ('HALI')
SELECT * FROM TBLKATEGORI -- EKLEME ��LEM� YAPTIKTAN SONRA BANA TABLONUN SON HAL�N� G�STER
ROLLBACK -- SONRA ROLLBACK BU ��LEM� �PTAL ET



