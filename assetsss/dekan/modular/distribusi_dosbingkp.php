<?php include '../config/koneksi.php'; ?>

<section class="content-header">      
    <h1>Penetapan Distribusi Pembimbing Kerja Praktek </h1>
    <ol class="breadcrumb">
        <li><a href="homepage.php?p=dashboard"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Penetapan Distribusi Pembimbing Kerja Praktek</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <!-- quick email widget -->
    <div class="box box-info">            
        <div class="box-header">
            <div class="row-fluid" style="overflow:auto">
                <div class="col-md-8"></div>
<?php
    $nim=$data['nim'];
    $nama=$data['nama_lengkap'];
    $judul=$data['judul'];
    $jl=$data['jenis_laporan'];
    $dosbing1=$data['pembimbing1'];    
    $status=$data['status'];
 ?>
                <?php
                    $sql =  "SELECT  * FROM pengajuan WHERE jenis_laporan='kp' AND status='1'";
                    $result = mysql_query($sql);
                    $no_urut = 1;
                ?>
                
                <table id="myTable" class="table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>NIM</th>
                            <th>Nama Lengkap</th>
                            <th>Judul Laporan</th>
                            <th>Semester</th>
                            <th>Tahun Ajaran</th>                            
                            <th>Status</th>                            
                            <th>Dosen Pembimbing</th>
                            <th>Opsi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            while ($data = mysql_fetch_array($result)) {
                        ?>    
                        <tr>
                            <td align="center"><?php echo $no_urut; ?>.</td>
                            <td><?php echo $data ['nim']; ?></td>
                            <td><?php echo $data ['nama_lengkap']; ?></td>
                            <td><?php echo $data ['judul']; ?></td>
                            </td>
                            <td>
                            <?php
                                if ($data["semester"]=="ganjil"){
                                    echo "Ganjil";
                                }
                                else{
                                    echo "Genap";
                                }
                            ?>
                            </td>   
                            <td><?php echo $data ['thn_ajaran']; ?></td>
                            
                           
                            <?php
                                $arSt = array(
                                    "0" => "<span class='label label-warning'>Dalam proses</span>",
                                    "1" => "<span class='label label-success'>Diterima</span>",
                                    "2" => "<span class='label label-danger'>Ditolak</span>"
                                );
                                    $st = $data['status'];
                                    $status = $arSt[$st];
                            ?>
                            <td><?php echo $status ?></td>
                            
                            <td>
                            <?php
                                $qsp = mysql_query("SELECT * FROM dosen");
                                while ($s=mysql_fetch_array($qsp)) {
                                    if ($s[nidn]==$data[pembimbing1]){
                                        echo "<option value='$s[nidn]' <selected>$s[nama_lengkap]</option>";
                                        }
                                }
                            ?>
                            </td>
                            <td>
                                <a href='homepage.php?p=dosbing_kp&dosbingkp=<?php echo $data[id_pengajuan] ?>' >
                                <button id='btn_create' class='btn btn-xs btn-primary' data-toggle='tooltip' data-container='body' title='Ubah Status'><span class='glyphicon glyphicon-random' aria-hidden='true'></span></button></a><br><br>
                                                            
                            </td>                              

                        </tr>
                        <?php
                            $no_urut++;
                        }
                        ?>  
                    </tbody>
                </table>
                
                <form role="form" method="POST" enctype="multipart/form-data">
                    <button type="submit" class="btn btn-success" name="simpan">Setujui</button>

                <?php

                        if (isset($_POST[simpan])) {
                            
                                $q = mysql_query("UPDATE pengajuan SET jenis_laporan='kp' WHERE status='1' ");
                                
                                if ($q){
                                    echo "<script language='javascript'>alert('Distribusi KP Berhasil Disetujui');document.location='homepage.php?p=persetujuan_kpterima';</script>";
                                } 
                                else {
                                    echo "<script language='javascript'>alert('Distribusi KP Gagal Disetujui');document.location='homepage.php?p=setujui_jadwal';</script>";
                                }
                            }
                    ?>
                    <a class="btn btn-primary" href="homepage.php?p=distribusi_dosbingkp"><i class="fa fa-mail-reply"></i> Kembali </a>
                </form>
                <br>
                <textarea id="judul" name="judul" placeholder="Keterangan..." style="width: 50%; height: 70px;" readonly><?php echo "$judul";?></textarea>

            </div>
        </div>
    </div>
<!-- /.row (main row) -->
</section>    