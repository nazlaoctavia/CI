<?php include '../config/koneksi.php'; ?>

<?php 
    $ID =$_GET['persetujuan'];
    $sql = mysql_query("SELECT * FROM pengajuan WHERE id_pengajuan = '$ID'");
    $data=mysql_fetch_array($sql);

    $nim=$data['nim'];
    $nama=$data['nama_lengkap'];
    $judul=$data['judul'];
    $jl=$data['jenis_laporan'];
?>

<section class="content-header">      
    <h1> Penentuan Dosbing </h1>
    <ol class="breadcrumb">
        <li><a href="homepage.php?p=dashboard"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Penentuan Dosbing</li>
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
                    <form method="POST" enctype="multipart/form-data">
                        <div class="box-body">
                            <!-- form NIM-->
                            <div class="form-group">
                                <label>NIM</label>
                                <input type="text" class="form-control" id="nim" placeholder="222120004" name="nim" value="<?php echo "$nim";?>" readonly>
                            </div>
                            <!-- form nama lengkap-->
                            <div class="form-group">
                                <label>Nama Lengkap</label>
                                <input type="text" class="form-control" id="nama" placeholder="nama lengkap" name="nama" value="<?php echo "$nama";?>" readonly>
                            </div>
                            <!-- form judul laporan-->
                            <div class="form-group">
                                <label>Judul</label>
                                <textarea id="judul" name="judul" placeholder="masukkan judul proposal" style="width: 100%; height: 70px;" readonly><?php echo "$judul";?></textarea>
                            </div>
                            <!-- form jenis laporan-->
                            <div class="form-group">
                                <label>Jenis Laporan</label>
                                <input type="text" class="form-control" id="jl" placeholder="masukkan jenis laporan" name="jl" value="<?php echo "$jl";?>" readonly>
                            </div>
                            <!-- form status-->
                            <div class="form-group">
                                <label>Status Laporan</label>
                                <select class="form-control" name="status">
                                    <option selected>Pilih Status</option>
                                    <option value="1">Diterima</option>
                                    <option value="2">Ditolak</option>
                                </select>
                            </div>
                        <!-- /.box-body -->
                        <div class="box-footer">
                            <button type="submit" name="simpan" class="btn btn-primary"><i class="fa fa-check"></i> simpan</button>
                        <a class="btn btn-primary" href="homepage.php?p=persetujuan_skripsiproses"><i class="fa fa-mail-reply"></i> batal </a>
                    </div>
                    </form>
                    <?php
                        $x1 = trim ($_POST['nim']);
                        $x2 = trim ($_POST['nama']);
                        $x3 = trim ($_POST['judul']);
                        $x4 = trim ($_POST['jl']);
                        $x5 = trim ($_POST['status']);
                            
                        if (isset($_POST[simpan])) {
                            {
                                $q = mysql_query("UPDATE pengajuan set nim='$x1',nama_lengkap='$x2',judul='$x3',jenis_laporan='$x4',status='$x5' WHERE id_pengajuan='$ID'");
                                    if($q){
                                    echo "<script language='javascript'>alert('Data Berhasil Diubah');document.location='homepage.php?p=persetujuan_skripsiproses';</script>";
                                    }
                                    else{
                                    echo "<script language='javascript'>alert('Data Gagal Diubah');document.location='homepage.php?p=persetujuan_skripsiproses';</script>"; 
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