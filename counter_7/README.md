# Tugas 7

## Perbedaan stateless widget dan stateful widget pada Flutter
Stateless widget adalah jenis widget di mana widget tersebut tidak akan berubah state nya sepanjang jalannya program. Widget jenis ini tidak bergantung pada event yang terjadi secar eksternal (tidak dipengaruhi widget lain); hanya bergantung pada constructor di dalamnya.
Stateful widget adalah jenis widget di mana widget tersebut akan “berubah” state nya sepanjang jalannya program. Misalnya, apabila terdapat widget yang harus berubah secara dinamis karena di-trigger oleh event eksternal seperti misalnya mendapat request response HTTP atau karena diklik oleh suatu button. 
## Widget apa saja yang dipakai untuk tugas ini
Di tugas ini widget yang digunakan adalah MaterialApp (parent widget), Scaffold dan AppBar (widget utama untuk membangun halaman), FloatingActionButton (untuk menampilkan UI button), Visibility (untuk menyembunyikan button apabila counter mencapai nilai nol), Column, Row, dan MaterialApp (untuk layouting), Text (untuk menampilkan teks ganjil atau genap), MyApp (merupakan root widget), MyHomePage (menjadi container untuk semua widget di bawahnya seperti Text dan Button), dan Icon (untuk menampilkan icon tambah dan kurang).
## Fungsi dari setState()
setState() bertugas untuk memberitahu widget bahwa ada object yang berubah pada State, sehingga akan melakukan build ulang pada Widget. Dalam hal ini object (atau variable) yang berubah adalah teks ganjil atau genap dan integer counter.
## Perbedaan antara const dengan final
`const` digunakan untuk deklarasi variabel yang nilainya bersifat konstan dan bersifat harus sudah diketahui pada saat waktu kompilasi berjalan
`final` digunakan untuk deklarasi variabel yang bersifat konstan selama program berjalan. Bedanya dengan const, nilai final bersifat akan diketahui pada saat run-time program
## Jelaskan bagaimana kamu mengimplementasikan checklist di atas
1. Buat fungsi untuk melakukan decrement pada counter
2. Buat fungsi yang mengembalikan widget Text di mana apabila counter genap akan mengembalikan teks GENAP berwarna biru dan akan mengembalikan teks GANJIL berwarna merah apabila counter ganjil. Kita buat setState() sehingga widget dapat di-rebuild ulang setiap adanya penambahan/pengurangan counter.
3. Modifikasi widget Column di mana widget tersebut punya dua child, yaitu Text dan FloatingActionButton. Kita masukkan fungsi yang menampilkan teks ganjil/genap di widget Text dan pada FloatingActionButton kita buat widget Padding yang diisi oleh dua widget lagi yaitu Visibility (yang berisi widget FloatingActionButton decrement di mana widget Visibility diset sedemikian rupa sehingga apabila counter tidak sama dengan nol maka button decrement akan ditampilkan) dan FloatingActionButton untuk increment counter. 

# Tugas 8

##  Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.
`Navigator.push` melakukan push ke halaman yang berada di bagian teratas dari stack halaman, sedangkan `Navigator.pushReplacement` melakukan push juga seperti `Navigator.push` tapi sembari melakukan pop juga terhadap route halaman sebelumnya setelah pergi ke halaman di atasnya.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- Drawer: hamburger menu untuk berpindah-pindah halaman
- Navigator: pergi ke halaman lain
- Form: Container untuk formulir
- Card: Semacam section untuk menampilkan data budget
- TextFormField: Menerima input text dari user
- TextButton: Sebagai text untuk button 
- Padding, Container: Positional widget untuk memosisikan child widget
- DropdownButtonFormField (dan turunannya): menampilkan dropdown field pilihan pemasukan/pengeluaran
- Scaffold sebagai bagian terluar dari app

## Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
- onSaved
- onHover
- onTap
- onChanged

## Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
Navigator bekerja seperti konsep stack, di mana terdapat `Navigator.push` untuk push ke halaman teratas (artinya halaman selanjutnya) dan `Navigator.pop` untuk kembali ke stack sebelumnya (melakukan operasi pop). Kita dapat membayangkan halaman widget sebagai tumpukan kartu yang ditumpuk sedemikian sehingga berurutan.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
- Membuat drawer.dart agar dapat digunakan di tiap widget halaman
- Membuat widget form di form_tugas8.dart, menambahkan TextField dan DropdownButtonFormField untuk diisi user, implementasinya mengambil referensi dari lab.
- Membuat widget halaman untuk menampilkan data yaitu data_tugas8.dart

# Tugas 9

## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Bisa, tapi implementasinya akan jadi sedikit lebih susah karena kalau tidak pakai model akan lebih susah menentukan struktur datanya karena kita harus memasukkan data-data dari JSON secara manual.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- FutureBuilder: melakukan update data pada child berdasarkan hasil dari proses JSON pada Future
- InkWell: area clickable untuk tiap judul film
- CircularProgressIndicator: menampilkan logo loading

serta widget-widget lainnya yang telah digunakan pada tugas-tugas sebelumnya seperti Text, Scaffold, Padding, dan sebagainya.

## Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
Aplikasi melakukan HTTP GET dengan bantuan library http, kemudian server Django merespon dengan memberikan function pada views yang sesuai dan dikembalikan lagi ke Flutter dalam bentuk JSON (sesuai URL json). Flutter mengkonversikan data JSON tersebut dengan memanfaatkan model yang telah dibuat sehingga kita bisa buat instansiasi object yang menggunakan data yang telah diambil tersebut. Data yang telah dibuat bisa kita pass ke object-object Django melalui constructor masing-masing class untuk membuat object terkait dengan watchlist kita di aplikasi Flutter.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
- Buat model dengan bantuan web QuickType 
- Buat fungsi untuk fetching data JSON 
- Buat widget item yang pada constructornya dapat menerima data dari hasil fetching data JSON tadi
- Buat object-object baru untuk menampilkan data JSON tadi di halaman detail dan halaman watchlist, data di-pass via constructor masing-masing widget.