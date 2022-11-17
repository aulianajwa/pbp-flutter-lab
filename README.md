# counter_7
 
## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
- Stateless widget adalah widget yang bersifat statis di mana seluruh konfigurasi di dalamnya telah diinisiasi sejak awal. 
- Stateful widget adalah widget dinamis yang dapat dipebaharui kapanpun tergantung adanya perubahan data.
 
## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
1. FloatingActionButton : membuat button
2. Text : membuat text
3. TextStyle : mengatur style dari text
4. Row : mengatur layout elemen agar satu row
5. Padding : mengatur ukuran elemen
6. Icon : menampilkan icon ke elemen

## Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Setstate() digunakan untuk memberikan informasi kepada framework tentang adanya peruabhan terhadap value sebuah variabel. Tanpa pemanggilan setState(), variabel yang berubah sebelumnya tidak akan ditampilkan. Variabel yang terdampak adalah _counter yang nilainya akan berubah ketika diklik. 

## Jelaskan perbedaan antara const dengan final.
- Final :  single-assignment, variabel dengan keyword final diinisialisasi saat pertama kali digunakan. Final dapat digunakan untuk menginisiasi variabel immmutable yang nilainya sudah atau belum diketahui saat compile time.
- Const : variabel yang menggunakan keyword const bersifat immutable dan nilainya konstan. Nilai pada variabel const harus sudah diketahui pada compile time.

##  Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Membuat sebuah project counter_7 
2. Membuat function untuk mengurangi counter, yaitu _decrementCounter() : hanya bisa mengurangi ketika nilai counter > 0
3. Mengganti text dengan membuat sebuah conditional berdasarkan nilai counter, yaitu saat genap dan ganjil
4. Mengatur padding untuk floatingactionbutton yang baru
5. Menambahkan children yang berisi button increment dan button decrement.

# TUGAS 8
## Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.
Navigator.push akan menambahkan rute ke tumpukan sebelumnya seperti stack. Navigator.pushReplacement akan menggantikan halaman halaman sekarang dengan yang baru.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- Card : untuk menampung tampilan data
- TextFormField : untuk membuat input
- DropdownButtonFormField : untuk membuat dropdown

## Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed). 
- onPressed 
- onTap 
- onChanged 
- onSaved

## Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
Navigator bekerja seperti stack sehingga ketika terjadi push, maka layar sebelumnya akan ditimpa dengan layar baru.

