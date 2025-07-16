<?php include 'koneksi.php'; ?>
<center>
	<h1 class="fw-bolder">Welcome to <span style="color:#4A9782">Self Love</span></h1>
	<h2>Sistem Pakar yang dapat Membantu Mengenali Keresahan yang Anda Alami</h2>
	<p class="pb-3">Silahkan pilih gejala yang Anda alami</p>

	<form class="col-6" method="POST" action="proses.php">
		<div style="overflow: scroll; height: 467px;">
			<?php
			$qry = "SELECT * FROM tb_gejala";
			$data = mysqli_query($kon, $qry);
			while ($d = mysqli_fetch_array($data)) {
			?>
				<div class="input-group mb-3">
					<div class="input-group-prepend">
						<div class="input-group-text">
							<input type="checkbox" name="gejala[]" value="<?= $d['id'] ?>" aria-label="Checkbox for following text input">
						</div>
					</div>
					<input type="text" class="form-control" aria-label="Text input with checkbox" value="<?= $d['gejala'] ?>" readonly>
				</div>
			<?php
			}
			?>
		</div>
		<input type="submit" class="btn btn-lg btn-block" style="background:#004030;color:#fff;font-size:medium" name="submit" value="Submit">
	</form>
</center>