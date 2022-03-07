1. [problem1.PNG](./Screeenshots/problem1.PNG) 

pada program di bawah ini, pertama membuat fungsi dengan satu parameter yaitu a kemudian untuk membuat nilai ganjil dan genap dapat menggunakan perintah if, yang dimana jika a%2 = 0 adalah genap maka dibuatlah menjadi if(a%2 == 0) menghasilkan return true, karena tidak ada kemungkinan lain maka di buatlah else yang menghasilkan return false dengan input ganjil. 

![problem1.PNG](./Screeenshots/problem1.PNG) 

output:

![output1.PNG](./Screeenshots/output1.PNG)

2. [problem2.PNG](./Screeenshots/problem2.PNG) 

pada program di bawah ini, pertama membuat fungsi dengan satu paremeter yaitu a kemudian di dalam fungsi tersebut mendeklarasikan int b, dari problem masalah yang di berikan maka dapat menggunakan if bercabang / nested if. if yang pertama membandingkan a lebih besar dari 180 jika iya maka b adalah a-180. 
jika hasil dari b kurang dari sama dengan 0 atau hasil b lebih besar sama dengan 360 maka hasilnya akan mereturn 0. jika kondisi tersebut tidak terpenuhi yaitu b lebih besar sama dengan 0 atau b lebih kecil dari 360 maka yang di return adalah hasil dari a-180 atau b.

jika a lebih kecil dari 180 maka b adalah a +180, jika hasil dari b kurang dari sama dengan 0 atau hasil b lebih besar sama dengan 360 maka hasilnya akan mereturn 0. jika kondisi tersebut tidak terpenuhi yaitu b lebih besar sama dengan 0 atau b lebih kecil dari 360 maka yang di return adalah hasil dari a+180 atau b.

![problem2.PNG](./Screeenshots/problem2.PNG) 

output:

![output2.PNG](./Screeenshots/output2.PNG)

3. [problem31.PNG](./Screeenshots/problem31.PNG) 

[problem32.PNG](./Screeenshots/problem32.PNG) 

pada program di bawah ini, kita di minta membuat fungsi dengan satu parameter, kemudian di dalam fungsi tersebut di deklarasikan variabel i,j, dan k. untuk membuat jam pasir membuthkan 2 segitiga yaitu segitiga sama sisi dan segitiga sama sisi terbalik. 

pertama adalah membuat segitiga terbalik, pada gambar di bawah menggunakan perulangan yang dimana for untuk segitiga terbalik memakai 3 buah perulangan for yang setiap perulangannya memiliki fungsi , masing-masing . Pertama adalah for dengan variable ‘i’ di mana di situ merupakan for yang digunakan untuk membuat perulangan tinggi dari segitiga yang akan kita buat , dengan perintah for (i = 0; i<=(a-1);i++) yang dapat terlihat jelas kalau perulangan yang dilakukan adalah sebanyak variable ‘a-1’ yang kita input.
Selanjutnya adalah perulangan for dengan variable ‘j’ yang digunakan untuk menbuat segitiga siku , dengan perintah for(j = 1; j<=i;j++) maka perulangan tersebut akan mencetak ‘ ’ spasi dengan batas sebanyak variable ‘i’.
Selanjutnya adalah perulangan for dengan variable ‘k’ adalah perulangan untuk mencetak ‘* ’ yang memunculkan segitiga terbalik . dengan perintah for(k = 0;k>=(i-a+1);k--) maka akan mencetak ‘* ’ bintang sebanyak variable ‘k’ dengan batas ‘i-a+1’ di mana nanti saat variable ‘k’ semakin besar dan mendekati variable ‘i-a+1’ maka jumlah ‘* ’ bintang yang tercetak akan semakin sedikit.

Untuk membuat segitiga biasa agar bisa terlihat seperti jam pasir maka , kita hanya perlu membuat sebuah perulangan lagi sama seperti untuk membuat segitiga terbalik hanya saja kita hanya perlu menukar for dengan variable ‘j’ dan variable ‘k’, dengan ‘k’ yang ada diawal dan mencetak ‘ ’ spasi dan variable ‘j’ yang mencetak ‘* ’ bintang maka yang akan muncul adalah segitiga biasa yang merupakan kebalikan dari perulangan for yang pertama.

![problem31.PNG](./Screeenshots/problem31.PNG) 

![problem32.PNG](./Screeenshots/problem32.PNG) 

output:

![output3.PNG](./Screeenshots/output3.PNG)

4. [problem4.PNG](./Screeenshots/problem4.PNG) 

pada kodingan di bawah, terdapat 2 perulangan yaitu perulangan i dan j dimana perulangan j berada di dalam perulangan i. outer loop digunakan untuk memberikan enter atau garis baru, yang berfungsi untuk membentuk pola segitiga. Sedangkan pada inner loop atau perulangan dalam akan berfungsi untuk menampilkan barisan bintang.

Dikarenakan pada outer loop (i = 1; i<=a; i++), maka dihasilkan enter atau baris baru berjumlah a kali kebawah berjumlah a dengan cara dari i = 1 dilanjutkan dengan increment.

Di inner loop, memulai perbandingan j dari 1, dan dibandingkan terakhir dengan angka i = a. Dikarenakan perbandingan terakhirnya i = (a-1) dan y = a ((a-1)< a). Maka  spasi yang dihasilkan berjumlah a barisan. Lalu disetiap selesai perulangan inner loop print i atau baris saat ini yang menghasilkan sebuah output seperti gambar dibawah.

![problem4.PNG](./Screeenshots/problem4.PNG) 

output:

![output4.PNG](./Screeenshots/output4.PNG)