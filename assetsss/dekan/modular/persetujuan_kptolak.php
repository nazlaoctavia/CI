<?php include '../config/koneksi.php'; ?>

<section class="content-header">      
    <h1> Melihat Judul Kerja Praktek Yang Ditolak </h1>
    <ol class="breadcrumb">
        <li><a href="homepage.php?p=dashboard"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Distribusi KP Yang Ditolak</li>
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
                    $sql =  "SELECT  * FROM pengajuan WHERE jenis_laporan='kp'AND status_dkn='2'";
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
                                    $statusdkn = $arSt[$st];
                            ?>
                            <td><?php echo $statusdkn ?></td>

                            <?php
                                $arSt = array(
                                    "0" => "<span class='label label-warning'>Dalam proses</span>",
                                    "1" => "<span class='label label-success'>Diterima</span>",
                                    "2" => "<span class='label label-danger'>Ditolak</span>"
                                );
                                    $st = $data['status_dkn'];
                                    $status = $arSt[$st];
                            ?>
                            <td><?php echo $status ?></td>
                            
                            <td><?php echo $data ['tanggal']; ?></td>
                            <td><?php echo $data ['pembimbing1']; ?></td>
                            <td>
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
    $sql = mysql_query("INSERT INTO komentar_tolak (komentar_tolak) VALUES ('$komen')");
    if (!$sql){
        echo "gagal";
    }elseif ($sql) {
        echo "berhasil";
    }
}
?>