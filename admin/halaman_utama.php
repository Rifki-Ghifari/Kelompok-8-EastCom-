<?php 

include 'header.php';
// pesanan baru 
$result1 = mysqli_query($conn, "SELECT distinct invoice FROM produksi WHERE terima = 0 and tolak = 0");
$jml1 = mysqli_num_rows($result1);

// mengambil data barang
$data_barang = mysqli_query($conn,"SELECT * FROM produk");
// menghitung data barang
$jumlah_barang = mysqli_num_rows($data_barang);


// mengambil data customer
$data_customer = mysqli_query($conn,"SELECT * FROM customer");
// menghitung data barang
$jumlah_customer = mysqli_num_rows($data_customer);
?>

<div class="container">
	<div class="row">
		<div class="col-md-4" >
			<div style="background-color: #dfdfdf; padding-bottom: 60px; padding-left: 20px;padding-right: 20px; padding-top: 10px;">
				<h4>PESANAN BARU</h4>
				<h4 style="font-size: 56pt;"><b><?= $jml1; ?></b></h4>
			</div>
		</div>

		<div class="col-md-4" >
			<div style="background-color: #dfdfdf; padding-bottom: 60px; padding-left: 20px;padding-right: 20px; padding-top: 10px;">
				<h4>JUMLAH PRODUK</h4>
				<h4 style="font-size: 56pt;"><b><?= $jumlah_barang; ?></b></h4>
			</div>
		</div>

		<div class="col-md-4" >
			<div style="background-color: #dfdfdf; padding-bottom: 60px; padding-left: 20px;padding-right: 20px; padding-top: 10px;">
				<h4>JUMLAH CUSTOMER</h4>
				<h4 style="font-size: 56pt;"><b><?= $jumlah_customer; ?></b></h4>
			</div>
		</div>

	</div>
</div>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<br>
<?php 
include 'footer.php';
?>