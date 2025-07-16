<?php include 'header.php'; ?>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="bootstrap.min.css">
    <script src="bootstrap.min.js"></script>
    <title>Hasil Diagnosa Gangguan Mental</title>
    <style>
        @media print {
            .btn-print {
                display: none;
            }
        }
    </style>
</head>

<script>
    function printPage() {
        window.print();
    }
</script>

<div class="text-center mb-4">
    <h1>Hasil Diagnosa</h1>
</div>

<div class="container mb-3">
    <button class="btn btn-warning btn-print" style="float:right;" onclick="printPage()">Print</button>
</div>

<div class="container col-md-8">
    <div class="card mb-3">
        <div class="card-header bg-primary text-white">
            <h5>Jenis Gangguan</h5>
        </div>
        <div class="card-body">
            <p class="card-text"><strong><?php echo $gangguan; ?></strong></p>
        </div>
    </div>

    <div class="card mb-3">
        <div class="card-header bg-success text-white">
            <h5>Probabilitas Kepastian (CF)</h5>
        </div>
        <div class="card-body">
            <p class="card-text"><?php echo $persentase_cf; ?>%</p>
        </div>
    </div>

    <div class="card mb-3">
        <div class="card-header bg-info text-white">
            <h5>Deskripsi</h5>
        </div>
        <div class="card-body">
            <p class="card-text"><?php echo $deskripsi; ?></p>
        </div>
    </div>

    <div class="card mb-3">
        <div class="card-header bg-secondary text-white">
            <h5>Saran / Penanganan</h5>
        </div>
        <div class="card-body">
            <p class="card-text"><?php echo $saran; ?></p>
        </div>
    </div>
</div>

<br><br>

<div class="container col-md-8">
    <h4>Detail Probabilitas Semua Gangguan:</h4>
    <table class="table table-bordered">
        <thead class="thead-dark">
            <tr>
                <th>Gangguan Mental</th>
                <th>Persentase CF</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($cf_result as $result): ?>
            <tr>
                <td><?php echo $result['nama_mental']; ?></td>
                <td><?php echo $result['cf']; ?>%</td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>

<?php include 'footer.php'; ?>
