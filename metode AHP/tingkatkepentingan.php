<?php
include('config.php');
include('fungsi.php');

// header
include('header.php');
?>

<section class="content">
    <center>
        <h3 class="ui header">Tingkat Kepentingan</h3>
        <table class="ui collapsing striped blue table">
            <thead>
                <tr>
                    <th>Nilai</th>
                    <th>Tingkat Kepentingan</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="center aligned">9</td>
                    <td>Mutlak Lebih Penting</td>
                </tr>
                <tr>
                    <td class="center aligned">7</td>
                    <td>Sangat Lebih Penting</td>
                </tr>
                <tr>
                    <td class="center aligned">5</td>
                    <td>Lebih Penting</td>
                </tr>
                <tr>
                    <td class="center aligned">3</td>
                    <td>Cukup Penting</td>
                </tr>
                <tr>
                    <td class="center aligned">1</td>
                    <td>Sama Penting</td>
                </tr>
            </tbody>
        </table>
    </center>
</section>

<?php include('footer.php'); ?>