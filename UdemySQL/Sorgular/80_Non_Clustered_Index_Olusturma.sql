/*

"Nonclustered"  �ndeks: Bir veri yap�s�nda k�melenmi� indeks olu�turulduktan sonra farkl� bir alan �zerinden tekrar indeksleme yap�lmak isteniyorsa 

"nonclustured" indeks kullan�l�r ve veri sayfalar�n�n d���nda bunun i�in tekrar bir dengeli a�a� yap�s� olu�turulur. Herhangi bir arama yap�ld���nda ilk �nce

dengeli a�a�taki indeksler taran�r  ve bu a�a� �zerindeki  d���m�n(node) g�sterdi�i veri sayfas�na  g�sterge vas�tas�yla gidilir. Bu �ekilde istenilen veriler

elde edilmi� olur. Nonclustered indekste verilere direk eri�ilemez. Elde edilen indeksleme yap�s�na eri�mek i�in k�melenmi� indeks yap�s� kullan�lm�� olur. 

Verileri herhangi bir alana g�re s�raland���nda eri�im k�melenmi� indeks �zerinden anahtar de�er  referans al�narak yap�l�r. Bu nedenle "nonclustered" indeks

zaman ve performans kayb�na neden olabilir. "nonclustered" indeks bir tabloda en fazla 249 adet olu�turulabilir.

*/