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
- MaterialApp: menciptakan widget-widget umum yang mengikuti Material Design 
- Scaffold: menciptakan struktur layout Material Design
- StatefulWidget: menciptakan widget yang bisa berubah-ubah statenya
- Statelesswidget: mencipatakan widget yang tidak bisa berubah state
- AppBar: menambahkan semacam header yang bisa digunakan sebagai toolbar untuk widget lain
- Container: menciptakan elemen persegi panjang
- Text: menampilkan teks
- Row: menampilkan childrennya secara horizontal
- Column: menampilkan childrennya secara vertikal
- Padding: menambah ruang kosong di sekitar widget dalamnya
- FloatingActionButton: menambahkan tombol yang akan memanggil suatu aksi
- ListView: menampilkan widgets dalam bentuk daftar
- SingleChildScrollView: menampilkan widgets sedemikian sehinggan dapat di-scroll
- DropdownButtonFormField: menciptakan input dropdown
- TextFormField: menciptakan field input dimana pengguna dapat mengetik input mereka
- TextButton: menciptakan button dengan teks di dalamnya
- Card: menampilkan isinya dalam container berbentuk "kartu" dengan elevasi

3. Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
- onPressed
- onChanged
- onSaved
- onEnd
- onTap
- onSubmitted
- etc.

4. Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
Navigator bekerja seperti stack, dimana halaman yang ditampilkan adalah elemen top. Mengganti halaman dilakukan dengan push (menuju halaman baru) atau pop (menuju halaman sebelumnya).

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
- Membuat model budget (file budget.dart) yang berisikan judul, nominal, jenis, dan tanggal
- Membuat drawer di file terpisah (file drawer.dart).  Drawer akan berisi widget yang mengarahkan navigator ke halaman utama (counter),
add budget, dan data budget.
- Menambahkan file add_budget.dart yang berisikan form. 
- Menambah widgets input pada form
- Data yang diinput akan di-pass sebagai argumen bagi function yang diimpor dari file data_budget.dart
- Menambahkan file data_budget.dart untuk menampikan data yang diinput di form
- Argumen yang di-pass dari add_budget.dart digunakan untuk menambahkan item baru ke list data (createdBudgets[])
- Data dalam createdBudgets[] akan ditampilkan dalam Card
- Menyelesaikan README.md
- git add, commit, dan push

# TUGAS 9

1. Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Ya, tetapi tidak lebih praktis. Lebih baik membuat model terlebih dahulu agar data dari JSON mudah di-parse.

2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
Widget yang digunakan sama dengan pada Tugas 8 dengan tambahan:
- RichText: menambahkan teks dengan formatting yang berbeda-beda
- FutureBuilder: menjalankan fungsi asinkronus yang akan memperbaharui tampilan

3. Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
- Flutter membuat sebuah network request
- Web mengembalikan response berupa JSON
- JSON diubah menjadi objek Dart sesuai dengan model yang digunakan
- Data object tersebut di-fetch
- Data siap digunakan dan dapat dipanggil dalam sebuah widget untuk ditampilkan

4. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
- Menambahkan permission untuk mengambil data dari internet di file AndroidManifest.xml
- Menambahkan list tile pada drawer sebagai tombol navigasi menuju halaman mywatchlist
- Membuat file model mywatchlist berdasarkan format JSON heroku mywatchlist dengan bantuan app.quicktype.io
- Membuat file terpisah untuk function fetch
- Membuat file page baru untuk menampilkan item-item mywatchlist menggunakan function fetch tersebut
- Menambahkan navigasi menuju page detail pada masing-masing item di mywatchlist, data item tersebut diteruskan sebagai parameter
- Membuat file page yang menerima data item sebagai parameter dan menampilkan detail-detail item yang ditekan
- Menambahkan back button pada halaman detail untuk kembali ke halaman watchlist
- Menyelesaikan README.md