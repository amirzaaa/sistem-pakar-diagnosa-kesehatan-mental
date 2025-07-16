<?php include 'header.php';  ?>
<br>
<script>
	function myFunction() {
		window.print();
	}
</script>
<h1 class="mx-auto">Hasil Diagnosa</h1><br>
<div class="container">
	<button style="float:right;" class="btn btn-success" onclick="myFunction()">CETAK</button>
</div>
<div class="container col-6">

	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text">
				<h5>PENYAKIT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h5>
			</span>
		</div>
		<textarea class="form-control" style="color:red;" rows="1" readonly>Belum Diketahui</textarea>
	</div>

	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text">
				<h5>Jenis Gangguan&nbsp;&nbsp;&nbsp;</h5>
			</span>
		</div>
		<textarea class="form-control" style="color:red;" rows="6" readonly>
    		Maaf tidak terdefinisi!
  		</textarea>
	</div>

	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text">
				<h5>Deskripsi</h5>
			</span>
		</div>
		<textarea class="form-control" style="color:red;" rows="6" readonly>
    		Maaf data belum tersedia!
  		</textarea>
	</div>

	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text">
				<h5>Penanganan</h5>
			</span>
		</div>
		<textarea class="form-control" style="color:red;" rows="6" readonly>
    		Maaf data belum tersedia!
  		</textarea>
	</div>


</div>
<br>
<?php include 'footer.php'; ?>