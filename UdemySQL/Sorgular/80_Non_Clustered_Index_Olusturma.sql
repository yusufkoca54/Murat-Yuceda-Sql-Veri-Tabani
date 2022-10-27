/*

"Nonclustered"  Ýndeks: Bir veri yapýsýnda kümelenmiþ indeks oluþturulduktan sonra farklý bir alan üzerinden tekrar indeksleme yapýlmak isteniyorsa 

"nonclustured" indeks kullanýlýr ve veri sayfalarýnýn dýþýnda bunun için tekrar bir dengeli aðaç yapýsý oluþturulur. Herhangi bir arama yapýldýðýnda ilk önce

dengeli aðaçtaki indeksler taranýr  ve bu aðaç üzerindeki  düðümün(node) gösterdiði veri sayfasýna  gösterge vasýtasýyla gidilir. Bu þekilde istenilen veriler

elde edilmiþ olur. Nonclustered indekste verilere direk eriþilemez. Elde edilen indeksleme yapýsýna eriþmek için kümelenmiþ indeks yapýsý kullanýlmýþ olur. 

Verileri herhangi bir alana göre sýralandýðýnda eriþim kümelenmiþ indeks üzerinden anahtar deðer  referans alýnarak yapýlýr. Bu nedenle "nonclustered" indeks

zaman ve performans kaybýna neden olabilir. "nonclustered" indeks bir tabloda en fazla 249 adet oluþturulabilir.

*/