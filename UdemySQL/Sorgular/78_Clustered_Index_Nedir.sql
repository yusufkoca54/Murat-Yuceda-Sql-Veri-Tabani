/*
�ndeks �e�itleri

Clustered(K�melenmi�) �ndeks: 

K�melenmi� indeks yap�s�nda olan tablolardaki kay�tlar, fiziksel olarak indeksleme alan�na g�re dizilmi� �ekildedir. Bu yap�lanma

dengeli a�a�(B-Tree) yap�s�na sahiptir. K�melenmi� indeks olu�turulurken as�l verilerin oldu�u veri sayfas�na(data page) g�stergeleri(pointer) kullanarak

ula��lmas�na gerek kalmaz.  ��nk� k�melenmi� indeks ger�ek verilerin sahip oldu�u veri sayfalar� �zerinden elde edilmi�tir. Bu �ekilde bir k�melenmi� indeks 

tarand���nda ula��lan yer verinin kendisidir. Yap�lan taramalarda h�zl� bir sonu� al�n�r. E�er bir tabloda anahtar de�er(primary key) varsa bu bir k�melenmi�

indeks yap�s�d�r. Bir tablo �st�nde bir k�melenmi� indeks tan�mlanabilir. Bu nedenle tablo �zerinde yap�lacak sorgular g�zden ge�irilip hangi sorguya g�re 

aranaca��na karar verilmelidir. K�melenmi� indeks ya artan ya da azalan s�rada olmal�d�r.

*/


