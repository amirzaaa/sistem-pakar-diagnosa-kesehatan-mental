<?php
include 'koneksi.php';

if (isset($_POST['submit'])) {
	$gejala_input = $_POST['gejala']; // diasumsikan berupa array id_gejala
	$cf_result = [];

	// Ambil semua gangguan mental
	$query_mental = mysqli_query($kon, "SELECT * FROM tb_mental");
	while ($mental = mysqli_fetch_assoc($query_mental)) {
		$id_mental = $mental['id'];
		$nama_mental = $mental['jenis_gangguan'];

		$cf_total = 0;
		foreach ($gejala_input as $id_gejala) {
			$query_cf = mysqli_query($kon, "SELECT cf_value FROM tb_cf WHERE id_gejala = '$id_gejala' AND id_mental = '$id_mental'");
			$cf_data = mysqli_fetch_assoc($query_cf);
			$cf = isset($cf_data['cf_value']) ? $cf_data['cf_value'] : 0;

			if ($cf_total == 0) {
				$cf_total = $cf;
			} else {
				$cf_total = $cf_total + ($cf * (1 - $cf_total)); // rumus kombinasi CF
			}
		}
		$cf_result[] = [
			'id_mental' => $id_mental,
			'nama_mental' => $nama_mental,
			'cf' => round($cf_total * 100, 2) // dalam persen
		];
	}

	// Cari gangguan dengan CF tertinggi
	usort($cf_result, function ($a, $b) {
		return $b['cf'] <=> $a['cf'];
	});

	$diagnosis_tertinggi = $cf_result[0];

	// Ambil deskripsi & saran dari tb_mental
	$query_info = mysqli_query($kon, "SELECT * FROM tb_mental WHERE id = {$diagnosis_tertinggi['id_mental']}");
	$info = mysqli_fetch_assoc($query_info);

	// Variabel yang akan dikirim ke hasil.php
	$gangguan = $diagnosis_tertinggi['nama_mental'];
	$persentase_cf = $diagnosis_tertinggi['cf'];
	$deskripsi = $info['deskripsi'];
	$saran = $info['saran'];

	include 'hasil.php';
}
