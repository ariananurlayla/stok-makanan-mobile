# Tugas Individu PBP

# stok_makanan_mobile

<details>
<summary> Tugas 7: Elemen Dasar Flutter </summary>

## Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?

Dalam konteks pengembangan aplikasi Flutter, StatelessWidget dan StatefulWidget memiliki perbedaan utama dalam hal bagaimana mereka menangani perubahan keadaan.

StatelessWidget adalah widget yang tidak dapat berubah. Seluruh konfigurasi yang dimuat di dalamnya telah diinisiasi sejak awal. Misalnya, jika kita membuat aplikasi berisi teks dengan kata “Hello World” dan aplikasi kita tidak punya fungsi untuk merubah kata tersebut, maka yang digunakan di sini adalah StatelessWidget.

Di sisi lain, StatefulWidget adalah widget yang dapat berubah-ubah. Widget ini dapat diperbaharui kapanpun dibutuhkan berdasarkan aksi pengguna atau ketika terjadi perubahan data. Misalnya, jika kita membuat sebuah aplikasi dimana jika setiap kita memencet icon “+”, angka yang ada di tengah tampilan akan bertambah satu, maka yang digunakan adalah StatefulWidget.

## Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.

1. `MyHomePage` (StatelessWidget):

   - Scaffold: Menyediakan struktur dasar aplikasi, termasuk app bar, body, dan lainnya.
     - AppBar: Menampilkan app bar di bagian atas aplikasi dengan judul "Stok Makanan".
     - SingleChildScrollView: Membungkus child widget untuk memungkinkan scroll jika kontennya terlalu panjang.
       - Padding: Menambahkan padding sekeliling child widget.
         - Column: Menyusun children widget secara vertikal.
           - Padding: Menambahkan padding pada widget Text "Stok Makanan".
             - Text: Menampilkan teks "Stok Makanan" dengan properti styling tertentu.
           - GridView.count: Menampilkan grid layout dengan jumlah kolom sebanyak 3.
             - ItemCard: Widget yang merepresentasikan item dalam grid. Dibuat sebanyak jumlah item pada list `items`.

2. `Item` (Class):

   - Merupakan class untuk merepresentasikan item dengan properti nama (`name`), ikon (`icon`), dan warna (`color`).

3. `ItemCard` (StatelessWidget):
   - Material: Memberikan latar belakang berwarna sesuai dengan `item.color`.
     - InkWell: Memberikan area responsif terhadap sentuhan pengguna.
       - Container: Widget container untuk menyimpan ikon dan teks.
         - Icon: Menampilkan ikon dengan warna putih.
         - Text: Menampilkan teks nama item dengan properti styling tertentu.

Semua widget bekerja sama untuk membuat tata letak antarmuka pengguna yang responsif dengan grid layout dan memberikan umpan balik kepada pengguna melalui SnackBar ketika salah satu item pada grid ditekan.

## Cara Implementasi

1. Membuat Proyek Flutter Baru:

   - Menjalankan perintah flutter create stok_makanan_mobile untuk membuat proyek Flutter baru dengan nama stok_makanan_mobile.

2. Membuat File menu.dart:

   - Membuat file baru bernama menu.dart untuk menyimpan kode implementasi aplikasi.

3. Implementasi Kode Program dalam menu.dart:

   - Dalam menu.dart, membuat sebuah class MyHomePage yang merupakan turunan dari StatelessWidget.
     - Dalam MyHomePage, membuat sebuah widget Scaffold sebagai struktur dasar aplikasi.
       - Menambahkan AppBar dengan judul "Stok Makanan Mobile".
       - Bungkus kontennya dalam SingleChildScrollView agar halaman dapat di-scroll
       - Mengisi body dari Scaffold dengan berbagai widget yang diperlukan.
       - GridView.count untuk menampilkan tiga tombol, dengan properti children diisi oleh objek-objek ItemCard.
       - Mendefinisikan sebuah list items yang berisi objek Item untuk setiap tombol yang ingin dibuat
       - Dalam class Item, terdapat tiga atribut: name, icon, dan color (background color button).
       - Dalam class ItemCard, membuat widget Material dengan child InkWell. Isi properti onTap dengan fungsi yang menampilkan SnackBar sesuai permintaan tugas.
       - Di dalam InkWell, menambahkan Container yang berisi widget Icon dan Text.

4. Menjawab Pertanyaan README:

   - Menjawab pertanyaan README dengan mencari informasi dari internet dan dokumentasi Flutter.

5. Mengerjakan Soal Bonus:
   - Mengisi atribut color pada objek Item dengan warna-warna yang diinginkan untuk button.
   - Memanggil atribut color sebagai isi dari properti color pada widget Material di dalam ItemCard.

</details>

<details>
<summary> Tugas 8: Flutter Navigation, Layouts, Forms, and Input Elements </summary>

## Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!

Navigator.push():

- Navigator.push() digunakan untuk menambahkan layar baru di atas layar saat ini.
  Layar baru ditumpuk di atas layar saat ini. Pengguna dapat kembali ke layar sebelumnya dengan menekan tombol kembali.

Navigator.pushReplacement():

- Navigator.pushReplacement() menambahkan layar baru dengan menggantikan layar saat ini.
  Jadi, layar saat ini akan digantikan dengan layar baru dan menghapus layar sebelumnya (layar saat ini) dari tumpukan navigasi.

Penggunaan keduanya perlu disesuaikan dengan kebutuhan navigasi yang sesuai. Jika ingin menambahkan layar baru di atas layar saat ini, gunakan Navigator.push(). Jika ingin mengganti layar saat ini dengan layar baru, gunakan Navigator.pushReplacement().

## Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!

1. Row: mengatur elemen secara horizontal

2. Column: mengatur elemen secara vertikal

3. Center: meletakkan elemen di tengah layar secara horizontal dan vertikal

4. Container: berperan sebagai wadah untuk mengatur tata letak dan gaya elemen pada aplikasi seperti padding, margin, borders, dan color

5. ListView: membuat daftar yang dapat discroll

6. GridView: menampilkan elemen dalam tata letak berbentuk grid atau tabel

7. Align: mengatur posisi align dari child terhadap elemen parentnya

8. Padding: menambahkan jarak atau area kosong di sekitar anaknya

## Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!

Dalam tugas ini, saya menggunakan kolom input TextFormField untuk menerima masukan teks dari pengguna. Alasan penggunaannya melibatkan validasi otomatis, kontrol keadaan, dan penanganan perubahan nilai. TextFormField menyediakan cara efektif untuk mengelola masukan teks dalam formulir dengan dukungan pengelolaan keadaan yang sederhana dan validasi bawaan. Jadi, elemen input yang digunakan pada formulir ini adalah TextFormField karena input yang diminta dari pengguna berupa teks dan TextFormField digunakan untuk input teks.

## Bagaimana penerapan clean architecture pada aplikasi Flutter?

Penerapan clean architecture pada aplikasi Flutter melibatkan pemisahan kode menjadi tiga lapisan utama: Presentation Layer (UI), Domain Layer (Business Logic), dan Data Layer (Persistence dan External Services).

1. Presentation Layer (UI):

   - Berisi UI, seperti widget dan logika tampilan.
   - Menggunakan BLoC (Business Logic Component) atau Provider untuk mengelola state aplikasi.
   - Bertanggung jawab untuk menampilkan data kepada pengguna dan menanggapi interaksi pengguna.

2. Domain Layer (Business Logic):

   - Menyimpan bisnis logic dan aturan aplikasi tanpa tergantung pada teknologi tertentu.
   - Berisi use case yang merepresentasikan tugas-tugas atau fitur-fitur bisnis aplikasi.
   - Mendefinisikan model bisnis yang mewakili entitas dan objek bisnis dalam aplikasi.

3. Data Layer:
   - Bertanggung jawab untuk mengambil dan menyimpan data, baik dari database lokal maupun sumber eksternal seperti API.
   - Menggunakan Repository sebagai abstraksi untuk mengakses data, memungkinkan aplikasi untuk berkomunikasi dengan berbagai sumber data tanpa bergantung langsung pada mereka.
   - Mungkin melibatkan sumber daya seperti local database, remote API, atau penyimpanan lokal.

Keuntungan Clean Architecture dalam Flutter:

- Terorganisir dengan Baik: Pemisahan yang jelas antara lapisan membuat kode lebih terorganisir dan mudah dimengerti.
- Fleksibilitas: Lapisan data dapat diganti atau diperbarui tanpa mempengaruhi lapisan lainnya, meningkatkan fleksibilitas dan kemudahan pemeliharaan.

- Pengujian yang Mudah: Logika bisnis terisolasi di lapisan domain, memudahkan pengujian unit tanpa bergantung pada framework atau library spesifik.

- Skalabilitas: Memungkinkan pengembangan aplikasi yang skalabel dan mudah dikelola seiring pertumbuhan kompleksitas.

- Kemandirian Teknologi: Membuat aplikasi kurang bergantung pada teknologi spesifik, memungkinkan pengembang untuk lebih leluasa memilih atau mengganti teknologi.

Dengan menerapkan clean architecture, aplikasi Flutter menjadi lebih terstruktur, mudah diuji, dan dapat berkembang secara fleksibel seiring waktu.

## Cara Implementasi

1. Membuat Struktur Folder:

- Membuat folder baru bernama "screens" di dalam folder "lib" untuk menampung halaman-halaman aplikasi.
- Memindahkan file "menu.dart" ke dalam folder "screens".

2. Membuat Halaman Form Baru:

- Di dalam folder "screens", membuat file baru bernama "shoplist_form.dart".
- Dalam file "shoplist_form.dart", membuat sebuah class untuk halaman tersebut.
- Mendesain tampilan halaman form menggunakan widget Form dan TextFormField untuk input.

3. Menambahkan Validasi Input:

- Menggunakan properti onChanged pada TextFormField untuk mengambil data input ke dalam variabel.
- Menggunakan properti validator pada TextFormField untuk memastikan input tidak kosong atau null.
- Menambahkan alidasi khusus untuk field jumlah dengan memastikan inputnya berupa angka menggunakan int.tryParse.

4. Membuat Save Button:

- Menambahkan tombol simpan dengan menggunakan widget ElevatedButton.
- Pada properti onPressed, fungsi untuk menampilkan pop up bahwa item berhasil disimpan didefinisikan.
- Menggunakan widget AlertDialog untuk membuat pop up dari fungsi tersebut.

5. Mengintegrasikan dengan Menu Utama:

- Menambahkan properti onTap pada card yang sesuai dengan kondisi pada file "menu.dart".
- Menambahkan logika untuk menjalankan push ke halaman form tambah item jika card dengan nama item "Tambah Item" ditekan.

6. Membuat Left Drawer:

- Membuat folder baru dengan nama "widgets" untuk menyimpan widget-widget yang digunakan secara berulang.
- Di dalam folder "widgets", dibuat file baru bernama "left_drawer.dart".
- Menggunakan widget ListTile untuk membuat opsi halaman utama dan tambah item dalam left drawer.
- Menambahkan fungsi untuk mengarahkan ke halaman yang sesuai di dalam properti onTap.

 </details>
