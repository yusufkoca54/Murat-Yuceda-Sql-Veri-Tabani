

select count(*) from TBLURUN  -- ka� tane �r�n�m�z� var

select sum(stok) from TBLURUN -- toplam da 5 olan �r�n�n stokda hepsinin toplam�n�n sorugusu





-- TBLSTOK TABLOSUNUN ���NE TBL�R�N�N ���NDE OLAN STOK OLARAK DE��L �E��T OLARAK �R�N SAYISINA E��TLED�K

update TBLSTOK set TOPLAMURUN=(select count(*) from TBLURUN)