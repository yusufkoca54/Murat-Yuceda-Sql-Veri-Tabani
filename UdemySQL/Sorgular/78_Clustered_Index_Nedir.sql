/*
Ýndeks Çeþitleri

Clustered(Kümelenmiþ) Ýndeks: 

Kümelenmiþ indeks yapýsýnda olan tablolardaki kayýtlar, fiziksel olarak indeksleme alanýna göre dizilmiþ þekildedir. Bu yapýlanma

dengeli aðaç(B-Tree) yapýsýna sahiptir. Kümelenmiþ indeks oluþturulurken asýl verilerin olduðu veri sayfasýna(data page) göstergeleri(pointer) kullanarak

ulaþýlmasýna gerek kalmaz.  Çünkü kümelenmiþ indeks gerçek verilerin sahip olduðu veri sayfalarý üzerinden elde edilmiþtir. Bu þekilde bir kümelenmiþ indeks 

tarandýðýnda ulaþýlan yer verinin kendisidir. Yapýlan taramalarda hýzlý bir sonuç alýnýr. Eðer bir tabloda anahtar deðer(primary key) varsa bu bir kümelenmiþ

indeks yapýsýdýr. Bir tablo üstünde bir kümelenmiþ indeks tanýmlanabilir. Bu nedenle tablo üzerinde yapýlacak sorgular gözden geçirilip hangi sorguya göre 

aranacaðýna karar verilmelidir. Kümelenmiþ indeks ya artan ya da azalan sýrada olmalýdýr.

*/


