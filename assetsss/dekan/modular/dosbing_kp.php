<?php include '../config/koneksi.php'; ?>

<?php 
    $ID =$_GET['dosbingkp'];
    $sql = mysql_query("SELECT * FROM pengajuan WHERE id_pengajuan = '$ID'");
    $data=mysql_fetch_array($sql);

    $nim=$data['nim'];
    $nama=$data['nama_lengkap'];
    $judul=$data['judul'];
    $jl=$data['jenis_laporan'];
    $dosbing1=$data['pembimbing1'];
    $dosbing2=$data['pembimbing2'];
    $status=$data['status'];
?>

<section class="content-header">      
    <h1> Distribusi Dosen Pembimbing </h1>
    <ol class="breadcrumb">
        <li><a href="homepage.php?p=dashboard"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Distribusi Dosen Pembimbing</li>
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

                            <div class="form-group">
                                <label>Status Laporan</label>
                                <select class="form-control" name="status">
                                    <option selected>Pilih Status</option>
                                    <option value="1">Diterima</option>
                                    <option value="2">Ditolak</option>
                                </select>
                            </div>

                            <!-- form Pembimbing 1-->
                         <label>pilih Dosen Pembimbing</label>
                                <select class="form-control" name="pembimbing1" id="pembimbing1" required>
                                    <option selected>Pilih Dosen Pembimbing</option>
                                    <?php
                                        $qsp = mysql_query("SELECT * FROM dosen");
                                        while ($s=mysql_fetch_array($qsp)) {
                                            if ($s[nama_lengkap]==$data[pembimbing1]){
                                                echo "<option value='$s[nama_lengkap]' selected>$s[nama_lengkap]</option>";
                                            }
                                            else {
                                                echo "<option value='$s[nama_lengkap]'>$s[nama_lengkap]</option>";
                                            }
                                        }
                                    ?>
                                </select>
                        <!-- /.box-body -->
                        <div class="box-footer">
                            <button type="submit" name="simpan" class="btn btn-primary"><i class="fa fa-check"></i> simpan</button>
                        <a class="btn btn-primary" href="homepage.php?p=distribusi_dosbingkp"><i class="fa fa-mail-reply"></i> batal </a>
                    </div>
                    </form>
                    <?php
                        $x1 = trim ($_POST['nim']);
                        $x2 = trim ($_POST['judul']);
                        $x3 = trim ($_POST['jl']);
                        $x4 = trim ($_POST['pembimbing']);
                            
                        if (isset($_POST[simpan])) {
                            {
                                $q = mysql_query("UPDATE pengajuan set nim='$x1',judul='$x2',jenis_laporan='$x3',pembimbing1='$x4' WHERE id_pengajuan='$ID'");
                                    if($q){
                                    echo "<script language='javascript'>alert('Data Berhasil Diubah');document.location='homepage.php?p=distribusi_dosbingkp';</script>";
                                    }
                                    else{
                                    echo "<script language='javascript'>alert('Data Gagal Diubah');document.location='homepage.php?p=distribusi_dosbingkp';</script>"; 
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