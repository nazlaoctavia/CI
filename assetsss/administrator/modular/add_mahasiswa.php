<?php include '../config/koneksi.php'; ?>

<section class="content-header">      
    <h1> Tambah Mahasiswa</h1>
    <ol class="breadcrumb">
        <li><a href="homepage.php?p=dashboard"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Tambah Mahasiswa</li>
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
                            <!-- form nim-->
                            <div class="form-group">
                                <label>NIM</label>
                                <input type="text" class="form-control" id="nim" placeholder="222120004" name="nim" required>
                            </div>
                            <!-- form nama lengkap-->
                            <div class="form-group">
                                <label>Nama Lengkap</label>
                                <input type="text" class="form-control" id="nama" placeholder="masukkan nama" name="nama" required>
                            </div>
                            <!-- form jenis kelamin-->
                            <div class="form-group">
                                <label>Jenis Kelamin</label>
                                <div class="radio" name="jenis_kelamin" required>
                                    <p><label><input type="radio" name="jenis_kelamin" value="L">Laki-laki</label></p>
                                    <p><label><input type="radio" name="jenis_kelamin" value="P">Perempuan</label></p>
                                </div>
                            </div>
                            <!-- form email-->
                            <div class="form-group">
                                <label>Email</label> 
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <i class="fa fa-envelope"></i>
                                    </div>
                                    <input type="text" class="form-control" placeholder="masukkan email" id="email" name="email" required>
                                </div>
                            </div>
                            <!-- form program studi-->
                            <div class="form-group">
                                <label>Program Studi</label>
                                <select class="form-control" name="prodi" required>
                                <option selected>Pilih Program Studi</option>
                                   <?php
                                        $qsp = mysql_query("SELECT * FROM prodi");
                                        while ($s=mysql_fetch_array($qsp)) {
                                        echo "<option value='$s[pnama]'>$s[pnama]</option>";
                                        }
                                    ?>
                                </select>
                            </div>
                            <!-- form username-->
                            <div class="form-group">
                                <label>Username</label>   
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <i class="fa fa-user"></i>
                                    </div>
                                    <input type="text" class="form-control" placeholder="username" id="username" name="username" required>
                                </div>
                            </div>
                            <!-- form password-->
                            <div class="form-group">
                                <label>password</label>   
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <i class="fa fa-key"></i>
                                    </div>
                                    <input type="password" class="form-control" placeholder="password" id="password" name="password" required>
                                </div>
                            </div>
                            <!-- form foto-->
                            <div class="form-group">
                                <label>Foto</label>
                                <div class="fileupload fileupload-new" data-provides="fileupload">
                                    <div class="input-append">
                                        <div class="uneditable-input">
                                            <span class="fileupload-preview"></span>
                                        </div>
                                        <span class="btn btn-default btn-file">
                                            <span class="fileupload-exists">Change</span>
                                            <span class="fileupload-new">Select file</span>
                                            <input type="file" name="fupload" accept="image/*" />
                                        </span>
                                        <a href="#" class="btn btn-default fileupload-exists" data-dismiss="fileupload">Remove</a>
                                    </div>
                                </div>
                                <p class="help-block">Ukuran gambar jangan lebih dari 100kb</p>
                            </div>
                            <!-- /.box-body -->
                            <div class="box-footer">
                                <button type="submit" name="simpan" class="btn btn-primary"><i class="fa fa-check"></i> simpan</button>
                                <a class="btn btn-primary" href="homepage.php?p=data_mahasiswa"><i class="fa fa-mail-reply"></i> batal </a>
                            </div>
                        </div>
                    </form>
                    <?php
                        $x1 = trim ($_POST['nim']);
                        $x2 = trim ($_POST['nama']);
                        $x3 = trim ($_POST['jenis_kelamin']);
                        $x4 = trim ($_POST['email']);
                        $x5 = trim ($_POST['prodi']);
                        $x6 = trim ($_POST['username']);
                        $lokasi_file    = $_FILES['fupload']['tmp_name'];
                        $nama_file      = $_FILES['fupload']['name'];
                        $ukuran_file    = $_FILES['fupload']['size'];
                        move_uploaded_file($lokasi_file,"foto/$nama_file");
                        $pass = password_hash($_POST['password'], PASSWORD_DEFAULT);
                        $size = 100000;
                            
                        if (isset($_POST[simpan])) {
                            
                            $cekSql = mysql_query("SELECT * from mahasiswa where nim = '$x1'");
                            if($ukuran_file > $size)
                                {
                                    echo "<strong>Gagal upload! <br>Ukuran Maksimal 100kb, saat ini ukuran file ".$ukuran_file."</strong>";
                                    exit();
                                }
                            else if (mysql_num_rows($cekSql)>=1)
                                {
                                    echo "<script language='javascript'>alert('Maaf Username sudah ada silahkan ganti dengan yang lain');document.location='homepage.php?p=add_admin';</script>";
                                }
                            else 
                                {
                                    $q = mysql_query("INSERT INTO mahasiswa (nim,nama_lengkap,jenis_kelamin,email,program_studi,foto,username,password,level)
                                    VALUES ('$x1','$x2','$x3','$x4','$x5','$nama_file','$x6','$pass','m')");
                                }
                            if($q)
                                {
                                    echo "<script language='javascript'>alert('Data Berhasil Ditambahkan');document.location='homepage.php?p=data_mahasiswa';</script>";
                                }
                            else
                                {
                                    echo "<script language='javascript'>alert('Data Gagal Ditambahkan');document.location='homepage.php?p=add_mahasiswa';</script>"; 
									//echo mysql_error($connect);
                                }
                        }
                    ?>
                </div>
            </div>
        </div>
    </div>
<!-- /.row (main row) -->
</section> 