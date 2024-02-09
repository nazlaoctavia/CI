<?php
session_start();
include '../config/koneksi.php';
include 'modular/pagination1.php';



$ID = $_SESSION['username'];
$query3 = mysql_query("SELECT status_kp FROM bimbingankp where nim = $ID");
$hasil3 = mysql_fetch_assoc($query3);
// UPDATE STATUS KP
$query1 = mysql_query("SELECT semester,thn_ajaran FROM pengajuan WHERE id_pengajuan=(SELECT MAX(id_pengajuan) FROM pengajuan)");
$query2 = mysql_query("SELECT semester,thn_ajaran FROM pengajuan WHERE nim='$ID'");
$hasil1 = mysql_fetch_assoc($query1);
$hasil2 = mysql_fetch_assoc($query2);
$tahunAjaranMahasiswa = "SEMESTER " . strtoupper($hasil2["semester"]) . " " . $hasil2["thn_ajaran"];
$tahunAjaranBaru = "SEMESTER " . strtoupper($hasil1["semester"]) . " " . $hasil1["thn_ajaran"];

$query4 = mysql_query("SELECT * FROM pengajuan WHERE nim = $ID AND jenis_laporan = 'kp' AND status = '1'");
$hasil4 = mysql_fetch_assoc($query4);

if (mysql_num_rows($query4) < 1) {
    echo "<script language='javascript'>alert('Halaman ini dapat diakses setelah proposal diterima');document.location='homepage.php';</script>";
}

if ($hasil3["status_kp"] != "SELESAI") {
    if ($tahunAjaranMahasiswa == $tahunAjaranBaru) {
        $status_kp = "BARU";
        $update = mysql_query("UPDATE bimbingankp SET status_kp = '$status_kp' WHERE nim = '$ID'");
    } elseif ($tahunAjaranMahasiswa != $tahunAjaranBaru) {
        $status_kp = "LANJUTAN";
        $update = mysql_query("UPDATE bimbingankp SET status_kp = '$status_kp' WHERE nim = '$ID'");
    }
}


$sql =  "SELECT * FROM bimbingankp where nim = $ID";
$result = mysql_query($sql);
// $hasil = mysql_fetch_array($result);
$no_urut = 1;
?>


<section class="content-header">
    <h1> Konsultasi Kerja Praktek
    </h1>
    <ol class="breadcrumb">
        <li><a href="homepage.php?p=dashboard"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Konsultasi Kerja Praktek</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <!-- quick email widget -->
    <div class="box box-info">
        <div class="box-header">
            <div class="row-fluid" style="overflow:auto">
                <div class="col-md-8">
                    <h4>
                        Data Konsultasi Kerja Praktek
                        <?php
                        $dataStatus = mysql_query("SELECT * FROM bimbingankp WHERE nim='$ID' AND status_kp='SELESAI'");
                        $cek = mysql_num_rows($dataStatus);
                        if ($cek > 0) {
                            echo "";
                        } else {
                            echo "<a href='homepage.php?p=add_bimbingan_kp' id='btn_add_new_data' class='btn btn-sm btn-success' title='Click untuk mengajukan bimbingan'><i class='fa fa-plus-circle'></i>   Ajukan Bimbingan</a>";
                        }
                        ?>
                    </h4>
                    <!-- <a href="homepage.php?p=add_admin" id="btn_create" class='btn btn-success'><span class='glyphicon glyphicon-plus'></span> Tambah </a> -->
                </div><br /><br /><br />

                <table id="tabeldatakp" class="table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>NIM</th>
                            <th>Nama Mahasiswa</th>
                            <th>Program Studi</th>
                            <th>Dosbing</th>
                            <th>Tanggal Input</th>
                            <th>Semester Mulai KP</th>
                            <th>Semester Selesai KP</th>
                            <th>Aktivitas</th>
                            <th>File</th>
                            <th>Status KP</th>
                            <th>Status Bimbingan</th>
                            <th>Tanggal Koreksi</th>
                            <th>Uraian</th>
                            <th>Opsi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        while ($data = mysql_fetch_array($result)) {
                        ?>
                            <tr>
                                <td align="center"></td>
                                <td><?php echo $data['nim']; ?></td>
                                <td><?php echo $data['nama_lengkap']; ?></td>
                                <td><?php echo $data['program_studi']; ?></td>
                                <td><?php echo $data['dosen_pembimbing']; ?></td>
                                <td><?php echo strftime('%d %B %Y', $data['tgl_input']); ?></td>
                                <td><?php echo $data['semester_mulai_kp']; ?></td>
                                <td><?php echo $data['semester_selesai_kp']; ?></td>
                                <td><?php echo $data['aktivitas']; ?></td>
                                <td><?php echo $data['file']; ?></td>
                                <td><?php echo $data['status_kp']; ?></td>
                                <td><?php echo strtoupper($data['status']); ?></td>
                                <!-- <td> -->
                                <!-- <?php
                                        // if($data["status"] == 'New'){
                                        //     echo "<span class='label label-warning'>New</span>";
                                        // } 
                                        // elseif($data["status"] == 'ACC'){
                                        //     echo "<span class='label label-success'>ACC</span>";
                                        // }
                                        // elseif($data["status"] == 'Revisi'){
                                        //     echo "<span class='label label-danger'>Revisi</span>";
                                        // } 
                                        // elseif($data["status"] == 'Selesai'){
                                        //     echo "<span class='label label-success'>Selesai</span>";
                                        // }
                                        ?> -->
                                <!-- </td> -->
                                <td>
                                    <?php
                                    if($data['tgl_koreksi'] == null){
                                        echo "";
                                    }else {
                                        echo strftime('%d %B %Y', $data['tgl_koreksi']); 
                                    }
                                    ?>
                                </td>
                                <td><?php echo $data['uraian']; ?></td>
                                <td>
                                    <a href='homepage.php?p=view_bimbingan_kp&view=<?php echo $data['id_bimbingan'] ?>'>
                                        <button id='btn_create' class='btn btn-xs btn-primary' data-toggle='tooltip' data-container='body' title='Lihat Data'><span class='glyphicon glyphicon-eye-open' aria-hidden='true'></span></button></a>
                                </td>
                            </tr>
                        <?php
                            $no_urut++;
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!-- /.row (main row) -->
</section>