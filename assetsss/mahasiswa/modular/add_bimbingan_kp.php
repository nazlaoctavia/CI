<?php include '../config/koneksi.php'; ?>

<?php
setlocale(LC_ALL, 'IND');

$ID = $_SESSION['username'];
$sql = mysql_query("SELECT * FROM mahasiswa WHERE nim = '$ID'");
$data = mysql_fetch_array($sql);

$sql2 = mysql_query("SELECT * FROM bimbingankp");
$data2 = mysql_fetch_array($sql);


?>

<section class="content-header">
    <h1> Input Konsultasi Kerja Praktek </h1>
    <ol class="breadcrumb">
        <li><a href="homepage.php?p=dashboard"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Konsultasi Kerja Praktek</li>
        <li class="active">Input Data Konsultasi Kerja Praktek</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <!-- quick email widget -->
    <div class="box box-info">
        <div class="box-header">
            <div class="row-fluid">
                <div class="col-md-8">
                    <!-- form start -->
                    <form role="form" method="POST" enctype="multipart/form-data">
                        <div class="box-body">
                            <!-- form nim -->
                            <div class="form-group">
                                <label>NIM</label>
                                <input class="form-control" name="nim" value="<?php echo $data['nim']; ?>" readonly>
                            </div>
                            <!-- form nama lengkap -->
                            <div class="form-group">
                                <label for="nama">Nama Lengkap</label>
                                <input class="form-control" name="nama_lengkap" value="<?php echo $data['nama_lengkap']; ?>" readonly>
                            </div>
                            <!-- form program studi-->
                            <div class="form-group">
                                <label>Program Studi</label>
                                <input class="form-control" name="program_studi" value="<?php echo $data['program_studi']; ?>" readonly>
                            </div>
                            <!-- form dosbing-->
                            <div class="form-group">
                                <label>Dosen Pembimbing</label>
                                <?php
                                $qdp = mysql_query("SELECT pembimbing1 FROM pengajuan WHERE nim = '$ID'");
                                $hqsp = mysql_fetch_assoc($qdp);
                                ?>
                                <input class="form-control" name="dosen_pembimbing" value="<?php echo $hqsp['pembimbing1']; ?>" readonly>
                            </div>
                            <!-- form due date-->
                            <div class="form-group">
                                <div class='form-group form-datepicker header-group-0 ' id='form-group-due_date' style="">
                                    <label for="tanggal">Tanggal Input</label>
                                    <div class="input-group">
                                        <span class="input-group-addon open-datetimepicker"><a><i class='fa fa-calendar '></i></a></span>
                                        <input readonly autocomplete="off" type='text' title="Due Date" required class='form-control' name="tgl_input" id="tgl_input" value='<?php echo strftime('%d %B %Y', time()); ?>' />
                                    </div>
                                    <div class="text-danger"></div>
                                    <p class='help-block'></p>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Semester Mulai KP</label>
                                <?php
                                $sql3 = mysql_query("SELECT semester,thn_ajaran FROM pengajuan WHERE nim = '$ID'");
                                $data3 = mysql_fetch_assoc($sql3);
                                $semester = strtoupper($data3["semester"]);
                                $thn_ajaran = $data3["thn_ajaran"];
                                ?>
                                <input class="form-control" name="semestermulaikp" value="<?php echo "SEMESTER " . $semester . " " . $thn_ajaran; ?>" readonly>
                                <!-- <?php
                                        // if(mysql_num_rows($sql3) > 0){
                                        //     $data3 = mysql_fetch_assoc($sql3);
                                        //     echo "<option value='$data3[semester_mulai_kp]' selected>$data3[semester_mulai_kp]</option>";
                                        // } 
                                        // else {
                                        //     $sql4 = mysql_query("SELECT * FROM tahunajaran");
                                        //     while($data4 = mysql_fetch_assoc($sql4)){
                                        //         echo "<option value='$data4[tahunajaran]'>$data4[tahunajaran]</option>";
                                        //     }
                                        // }
                                        ?> -->
                            </div>
                            <!-- form judul laporan-->
                            <div class="form-group">
                                <label>Aktivitas</label>
                                <!-- <textarea class="form-control" name="aktivitas" rows="3" placeholder="Isi judul Bab yang Anda ajukan" required></textarea>
                                <p class="help-block">*misal "Bab I Pendahuluan"</p> -->
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="aktivitas" id="aktivitas1" value="BAB I" checked>
                                        BAB I
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="aktivitas" id="aktivitas2" value="BAB II">
                                        BAB II
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="aktivitas" id="aktivitas3" value="BAB III">
                                        BAB III
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="aktivitas" id="aktivitas4" value="BAB IV">
                                        BAB IV
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="aktivitas" id="aktivitas5" value="BAB V">
                                        BAB V
                                    </label>
                                </div>
                            </div>
                            <!-- form file laporan -->
                            <div class="form-group">
                                <label for="exampleInputFile">File Laporan</label>
                                <input type="file" id="exampleInputFile" name="fupload" required>
                                <p class="help-block">Format Laporan : nim_namalaporan.pdf || Size Maksimal File 10 MB</p>
                            </div>
                            <!-- /.box-body -->
                            <div class="box-footer">
                                <button type="submit" class="btn btn-primary" name="simpan">Simpan</button>
                            </div>
                    </form>
                    <?php
                    $nim = trim($_POST['nim']);
                    $nama = trim($_POST['nama_lengkap']);
                    $prodi = trim($_POST['program_studi']);
                    $dosen = trim($_POST['dosen_pembimbing']);
                    $tgl_input = time();
                    $semestermulaikp = trim($_POST["semestermulaikp"]);
                    $aktivitas = trim($_POST['aktivitas']);
                    // $jenis_laporan= ucwords($_POST['jenis_laporan']);
                    // $lokasi_file    = $_FILES['fupload']['tmp_name'];
                    // $nama_file      = $_FILES['fupload']['name'];
                    // move_uploaded_file($lokasi_file,"file/$nama_file");
                    // $status = "New";
                    $lokasi_file    = $_FILES['fupload']['tmp_name'];
                    $nama_file      = $_FILES['fupload']['name'];
                    $ukuran_file    = $_FILES['fupload']['size'];
                    $ekstensi_diperbolehkan    = 'pdf';
                    $x = explode('.', $nama_file);
                    $ekstensi = strtolower(end($x));
                    move_uploaded_file($lokasi_file, "file/$nama_file");

                    // 10MB
                    $size = 10000000;
                    // $status = trim ($_POST['status']);
                    // $status = 'Baru';

                    if (isset($_POST['simpan'])) {
                        if ($ekstensi != $ekstensi_diperbolehkan) {
                            echo "<script>alert('Nama Ekstensi Tidak Diperbolehkan');</script>";
                        } elseif ($ekstensi == $ekstensi_diperbolehkan) {
                            if ($ukuran_file > $size) {
                                echo "<script language='javascript'>alert('Ukuran file terlalu besar');document.location='homepage.php?p=add_bimbingan_kp';</script>";
                            } else if ($ukuran_file < $size) {
                                $q = mysql_query("INSERT INTO bimbingankp (nim,nama_lengkap,program_studi,dosen_pembimbing,tgl_input,semester_mulai_kp,semester_selesai_kp,aktivitas,jenis_laporan,file,status) VALUES ('$nim','$nama','$prodi','$dosen','$tgl_input','$semestermulaikp','','$aktivitas','$jenis_laporan','$nama_file','Baru')");
                                if (mysql_affected_rows($connect) > 0) {
                                    echo "<script language='javascript'>alert('Laporan Anda Berhasil Diajukan');document.location='homepage.php?p=bimbingan_kp';</script>";
                                } else {
                                    // echo "<script language='javascript'>alert('Laporan Anda Gagal Diajukan');document.location='homepage.php?p=bimbingan_kp';</script>";
                                    echo mysql_error($connect);
                                }
                            }
                        }
                    }

                    ?>
                </div>
            </div>
        </div>
    </div>
    <!-- /.row (main row) -->
</section>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="../bower_components/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script>
    // $('.datepicker').datepicker();
    // $('.datepicker').on('changeDate', function(ev){
    //     $(this).datepicker('hide');
    // });
    $('.datepicker').datepicker({
        format: 'dd-mm-yyyy'
    });
</script>