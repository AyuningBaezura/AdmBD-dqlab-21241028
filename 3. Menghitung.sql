-- menggunakan database
use dqlabmartbasic;

-- mengurutkan data menggunakan ORDER BY
-- ambil nama produk dan qty dari tabel tr_penjualan _dqlab kemudian urutkan berdasarkan qty
select nama_produk, qty from tr_penjualan_dqlab order by qty; -- secara default diurutkan dari yang terkecil ke terbesar
select nama_produk, qty from tr_penjualan_dqlab order by nama_produk;

-- mengurutkan lebih dari satu kolom menggunakan order by
-- ambil nama produk dan quantity dari table tr_penjualan_dqlab kemudian urutkan berdasarkan qty dan nama_produk
select nama_produk, qty from tr_penjualan_dqlab order by qty, nama_produk;

-- latihan mandiri 1
select * from tr_penjualan_dqlab order by tgl_transaksi, qty;
select * from ms_pelanggan_dqlab order by nama_pelanggan; 
select * from ms_pelanggan_dqlab order by alamat;

-- asc dan desc mengurutkan dari besar ke kecil
-- ambil nama_produk dan qty dari tabel tr_pejualan_dqlab urutkan berdasarkan quantity secara decs
select nama_produk, qty from tr_penjualan_dqlab order by qty desc;

-- mengurutkan dua kolom dengan ascending dan descending
select nama_produk, qty from tr_penjualan_dqlab order by qty desc, nama_produk asc;

-- latihan mandiri 2
select * from tr_penjualan_dqlab order by tgl_transaksi desc, qty asc;
select * from ms_pelanggan_dqlab order by nama_pelanggan desc;
select * from ms_pelanggan_dqlab order by alamat desc;

-- ambil nama produk, qty, harga dan total beli dari tr_penjualan_dqlab urutkan berdasarkan total beli
select nama_produk, qty, harga, qty*harga as total_beli from tr_penjualan_dqlab order by total_beli desc;

-- latihan 3 
select nama_produk, qty, harga, diskon_persen, qty*harga - (diskon_persen/100 )
 as total_harga from tr_penjualan_dqlab order by total_harga;

