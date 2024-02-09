<?php include '../config/koneksi.php'; ?>

<section class="content-header">      
    <h1> Penetapan Distribusi Pembimbing Kerja Praktek </h1>
    <ol class="breadcrumb">
        <li><a href="homepage.php?p=dashboard"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Distribusi KP</li>
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
                    $sql =  "SELECT  * FROM pengajuan WHERE jenis_laporan='kp' AND status='1' AND status_kirim='1' order by id_pengajuan DESC ";
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
                            <th>File</th>
                            <th>Jenis Laporan</th>
                            <th>Status Kaprodi</th>
                            <th>Status Dekan</th>
                            <th>Tanggal Pengajuan</th>
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
                            <td><?php echo $data ['file']; ?></td>
                            <td>
                            <?php
								if ($data["jenis_laporan"]=="kp"){
								    echo "Kerja Praktek";
								}
								else{
								    echo "Skripsi";
								}
							?>
                            </td>
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

                            <?php
                                $arSt = array(
                                    "0" => "<span class='label label-warning'>Dalam proses</span>",
                                    "1" => "<span class='label label-success'>Diterima</span>",
                                    "2" => "<span class='label label-danger'>Ditolak</span>"
                                );
                                    $st = $data['status_dkn'];
                                    $statusdkn = $arSt[$st];
                            ?>
                            <td><?php echo $statusdkn ?></td>

                            <td><?php echo $data ['tanggal']; ?></td>
                            <td><?php echo $data ['pembimbing1']; ?></td>
                              
                            <td>                                
                                <a href='homepage.php?p=edit_distribusi&ubah=<?php echo $data[id_pengajuan] ?>' >
                                <button id='btn_create' class='btn btn-xs btn-primary' data-toggle='tooltip' data-container='body' title='Ubah Status'><span class='glyphicon glyphicon-check' aria-hidden='true'></span></button>
                                </a><br><br>
                                                            
                                <?php echo " <a href='../kaprodi/file/$data[file]'>";?>
                                <button id='btn_create' class='btn btn-xs btn-primary' data-toggle='tooltip' data-container='body' title='Download File'><span class='glyphicon glyphicon-download-alt' aria-hidden='true'></span></button></a>
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
                            
                                $q = mysql_query("UPDATE pengajuan SET status_dkn='1' WHERE status='1' AND status_kirim='1' ");
                                
                                if ($q){
                                    echo "<script language='javascript'>alert('Distribusi KP Berhasil Disetujui');document.location='homepage.php?p=persetujuan_kpterima';</script>";
                                } 
                                else {
                                    echo "<script language='javascript'>alert('Distribusi KP Gagal Disetujui');document.location='homepage.php?p=setujui_jadwal';</script>";
                                }
                            }
                    ?>                           
                </form>
                <br>  
                <form method="POST"  action="">             
                <div class="form-group">
                                <label>Kolom Komentar</label>
                                <textarea class="form-control" name="komentar" rows="3" placeholder=" isi dengan keterangan laporan" selected value="<?php echo $komentar;?>"><?php echo $komentar;?></textarea>
                                <!-- <input type="text" class="form-control" id="aktivitas" placeholder="Isi dengan keterangan laporan" name="aktivitas" value="<?php echo $aktivitas;?>" required>
                                <p class="help-block">*misal "ditolak karena dosbing"</p> -->
                 </div>
                            <div class="box-footer">
                                <button type="submit" name="kirim" class="btn btn-primary"><i class="fa fa-check"></i>kirim</button>                                
                            </div>
                </form> 
            </div>
        </div>
    </div>
<!-- /.row (main row) -->
</section>    
<?php  
if(isset($_POST["kirim"])){
    $komen = $_POST["komentar"];
    $sql = mysql_query("INSERT INTO komentar (komentar) VALUES ('$komen')");
    if (!$sql){
        echo "gagal";
    }elseif ($sql) {
        echo "berhasil";
    }
}
?>