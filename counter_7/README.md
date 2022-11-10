## Perbedaan stateless widget dan stateful widget pada Flu tter
Stateless widget adalah jenis widget di mana widget tersebut tidak akan berubah state nya sepanjang jalannya program. Widget jenis ini tidak bergantung pada event yang terjadi secar eksternal (tidak dipengaruhi widget lain); hanya bergantung pada constructor di dalamnya.
Stateful widget adalah jenis widget di mana widget tersebut akan “berubah” state nya sepanjang jalannya program. Misalnya, apabila terdapat widget yang harus berubah secara dinamis karena di-trigger oleh event eksternal seperti misalnya mendapat request response HTTP atau karena diklik oleh suatu button. 
## Widget apa saja yang dipakai untuk tugas ini
Di tugas ini widget yang digunakan adalah MaterialApp (parent widget), Scaffold dan AppBar (widget utama untuk membangun halaman), FloatingActionButton (untuk menampilkan UI button), Visibility (untuk menyembunyikan button apabila counter mencapai nilai nol), Column, Row, dan MaterialApp (untuk layouting), Text (untuk menampilakn teks ganjil atau genap), MyApp (merupakan root widget), MyHomePage (menjadi container untuk semua widget di bawahnya seperti Text dan Button), dan Icon (untuk menampilkan icon tambah dan kurang).
## Fungsi dari setState()
setState() bertugas untuk memberitahu widget bahwa ada object yang berubah pada State, sehingga akan melakukan build ulang pada Widget. Dalam hal ini object (atau variable) yang berubah adalah teks ganjil atau genap dan integer counter.
## Perbedaan antara const dengan final
`const` digunakan untuk deklarasi variabel yang nilainya bersifat konstan dan bersifat harus sudah diketahui pada saat waktu kompilasi berjalan
`final` digunakan untuk deklarasi variabel yang bersifat konstan selama program berjalan. Bedanya dengan const, nilai final bersifat akan diketahui pada saat run-time program
## Jelaskan bagaimana kamu mengimplementasikan checklist di atas
1. Buat fungsi untuk melakukan decrement pada counter
2. Buat fungsi yang mengembalikan widget Text di mana apabila counter genap akan mengembalikan teks GENAP berwarna biru dan akan mengembalikan teks GANJIL berwarna merah apabila counter ganjil. Kita buat setState() sehingga widget dapat di-rebuild ulang setiap adanya penambahan/pengurangan counter.
3. Modifikasi widget Column di mana widget tersebut punya dua child, yaitu Text dan FloatingActionButton. Kita masukkan fungsi yang menampilkan teks ganjil/genap di widget Text dan pada FloatingActionButton kita buat widget Padding yang diisi oleh dua widget lagi yaitu Visibility (yang berisi widget FloatingActionButton decrement di mana widget Visibility diset sedemikian rupa sehingga apabila counter tidak sama dengan nol maka button decrement akan ditampilkan) dan FloatingActionButton untuk increment counter. 
