Amanda Nurul Izzah | 2106630480

# TUGAS 7

1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya
Widget adalah komponen pembangun dari program flutter. Apabila sebuah widget dapat berubah saat pengguna berinteraksi dengannya, maka widget tersebut stateful. Sebaliknya, apabila widget tersebut tidak pernah berubah, maka widget tersebut stateless.

2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- Text: menciptakan teks.
- Row, Column: menciptakan layout yang flexible (seperti flexbox).
- Container: menciptakan elemen persegi panjang.
- MaterialApp: menciptakan widget-widget umum yang mengikuti Material Design. 
- Scaffold: menciptakan struktur layout Material Design.
- StatefulWidget: menciptakan widget yang bisa berubah-ubah statenya.
- Statelesswidget: mencipatakan widget yang tidak bisa berubah state.

3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Perintah tersebut gunanya untuk membangun ulang view apabila ada perubahan yang diimplementasikan pada widget. Contohnya pada tugas kali ini, variabel _counter 
berubah-ubah nilainya, sehingga untuk melihat perbedaannya, kita harus melakukan setState().

4. Jelaskan perbedaan antara const dengan final.
Keduanya menandakan variabel yang nilainya tidak berubah namun untuk const nilai tersebut harus diketahui sebelum runtime, sedangkan final dapat digunakan untuk menandakan sebuah nilai yang baur dihasilkan saat runtime atau pun sebelum.

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
- Mengubah title MaterialAp menjadi "counter_7"
- Mengubah title MyHomePage menjadi "Program Counter"
- Karena template dari Flutter sudah memiliki fitur button +, tinggal tambahkan button -
- Membuat function _decrementCounter() yang akan berjalan saat button - ditekan
- Menampilkan teks "GENAP"/"GANJIL" sesuai nilai variabel _counter menggunakan if-else di list Widget 
- Menambahkan if(_counter > 0) saat meletakkan button - agar hanya muncul saat counter > 0.

# TUGAS 8
1. Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.
Navigator.push mengganti halaman dengan cara "menimpa" di atas halaman sebelumnya (dengan begitu, kita masih menyimpan route ke halaman sebelumnya). Navigator.pushReplacement mengganti halaman dengan membuang route menuju halaman sebelumnya baru memasukkan halaman baru sehingga kita tidak bisa kembali ke halaman sebelumnya.

2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
MaterialApp:
Text
3. Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).

4. Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.