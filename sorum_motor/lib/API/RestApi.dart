String baseUrl = 'http://192.168.117.77:8080';

//users
String signIn = "$baseUrl/users/login";
String signUp = "$baseUrl/users/registrasi";

//barang
String dataBarangRes = "$baseUrl/barang/get-data";

//keranjang
String inputKeranjangRes = "$baseUrl/keranjang/input-keranjang";
String getAllKeranjangRes = "$baseUrl/keranjang/getAll-keranjang";
String updateKeranjangRes = "$baseUrl/keranjang/update-keranjang";
String hapusKeranjangRes = "$baseUrl/keranjang/delete-keranjang";

//transaksi
String transaksiInput = "$baseUrl/transaksi/input";
String getTransaksi = "$baseUrl/transaksi/getTransaksiByIdUser";
