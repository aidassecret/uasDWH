<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Sistem Pendukung Keputusan metode AHP</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="semantic/dist/semantic.min.css">
</head>

<body>
    <header style="background: #f4a460;">
        <h1>Sistem Pendukung Keputusan dengan Menggunakan Metode AHP</h1>
    </header>

    <div class="wrapper">
        <nav style="background: #deb887;" id="navigation" role="navigation">
            <ul>
                <li><a class="item" href="index.php">Home</a></li>
                <li><a class="item" href="tingkatkepentingan.php">Tingkat Kepentingan</a></li>
                <li>
                    <a class="item" href="kriteria.php">Kriteria
                        <div class="ui tiny label" style="background-color:#f5d4b0;float: right;">
                            <?php echo getJumlahKriteria(); ?></div>
                    </a>
                </li>
                <li>
                    <a class="item" href="alternatif.php">Alternatif
                        <div class="ui tiny label" style="background-color:#f5d4b0;float: right;">
                            <?php echo getJumlahAlternatif(); ?></div>
                    </a>
                </li>
                <li><a class="item" href="bobot_kriteria.php">Perbandingan Kriteria</a></li>
                <li><a class="item" href="bobot.php?c=1">Perbandingan Alternatif</a></li>
                <ul>
                    <?php

						if (getJumlahKriteria() > 0) {
							for ($i=0; $i <= (getJumlahKriteria()-1); $i++) { 
								echo "<li><a class='item' href='bobot.php?c=".($i+1)."'>".getKriteriaNama($i)."</a></li>";
							}
						}

					?>
                </ul>
                <li><a class="item" href="hasil.php">Hasil</a></li>
            </ul>
        </nav>