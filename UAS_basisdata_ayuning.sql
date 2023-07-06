-- Jawaban 1
select kode_pelanggan, sum(qty), sum(harga), sum(qty)/3 as sisa_quantity 
from tr_penjualan_dqlab;

-- jawaban 2
select nama_produk, harga, qty, qty*harga as total 
from tr_penjualan_dqlab
where nama_produk like '_1%' 
having total > 100.000
order by total desc;

-- jawaban 3
select kode_transaksi, kode_produk, tgl_transaksi, nama produk, year(tgl_transaksi)
from tr_penjualan_dqlab
where year(tgl_transaksi) > 2019
order by month(tgl_transaksi), day(tgl_transaksi)