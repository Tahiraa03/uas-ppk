<?php
include "header.php";
include "includes/config.php";

//code insert data
if ($_POST) {
	$v = $_POST['v'];
	$nm = $_POST['nm'];

	$insert = mysqli_query($koneksi, "INSERT INTO skala (value, keterangan) VALUES ('$v','$nm')");
	if ($insert) {
		echo "<script>location.href='skala.php'</script>";
	} else {
		echo "Gagal";
	}
}
?>
<br>
<div class="container">
	<div class="row">
		<div class="col-md-6 text-left">
			<h4>Form Tambah Skala</h4>
		</div>
		<div class="col-md-6">

		</div>
	</div>
	<br><br>
	<form method="POST" action="">
		<div class="form-group row">
			<label for="nm" class="col-sm-2 col-form-label">Value</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="v" name="v">
			</div>
		</div>
		<div class="form-group row">
			<label for="nm" class="col-sm-2 col-form-label">Keterangan</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="nm" name="nm">
			</div>
		</div>
		<div class="form-group row">
			<div class="col-sm-10">
				<button type="submit" class="btn btn-primary">Tambah</button>
				<button type="button" onclick="location.href='skala.php'" class="btn btn-success">Kembali</button>
			</div>
		</div>
	</form>
</div>