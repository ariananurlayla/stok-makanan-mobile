# Tugas Individu PBP

# stok_makanan_mobile

<details>
<summary> Tugas 7 </summary>

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