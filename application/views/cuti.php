

<!-- Main content -->
<section class="content">
    <!-- quick email widget -->
    <div class="box box-info">            
        <div class="box-header">
            <div class="row-fluid">
                <div class="col-md-8">
                    <!-- form start -->
                    <form method="POST" action="<?=site_url('pengajuancuti/approved')?>" enctype="multipart/form-data">
                        <input type="text" value="<?=$rec['id_pengajuan']?>" id="id_pengajuan" name="id_pengajuan" hidden>
                        <div class="box-body">
                        <label for="npm">NPM</label>
                        <input type="text" class="form-control" value="<?=$rec['npm']?>" value="" id="npm" placeholder="222120004" name="npm"fdprocessedid="hr4q6o" readonly>
                            <!-- form nama lengkap-->
                            <div class="form-group">
                                <label>Nama Lengkap</label>
                                <input type="text" class="form-control" value="<?=$rec['nama_lengkap']?>" id="nama_lengkap" placeholder="masukkan nama" name="nama_lengkap" readonly>
                            </div>
                            <!--form program studi-->
                            <div class="form-group">
                                <label>Fakultas</label>
                                <input type="text" class="form-control" value="<?=$rec['fakultas']?>" id="program_studi" placeholder="Fakultas FMIPA" name="fakultas" readonly>
                            </div>
                        <!--form program studi-->
                            <div class="form-group">
                                <label>Program Studi</label>
                                <input type="text" class="form-control" value="<?=$rec['program_studi']?>"id="program_studi" placeholder="masukan program studi" name="program_studi" readonly>
                            </div>
                         <!-- form Cuti-->
                         <div class="form-group">
                                <label>Semester</label>
                                <input type="text" class="form-control" value="<?=$rec['semester']?>" readonly>
                            </div>
                            <!--form No_HP-->
                            <div class="form-group">
                                <label>No Handphone</label>
                                <input type="number" class="form-control" value="<?=$rec['no_hp']?>"id="" placeholder="+628..." name="no_hp" readonly>
                            </div>
                            <!-- form alamat-->
                            <div class="form-group">
                                <label>Alamat</label>
                                <input type="text" class="form-control" value="<?=$rec['alamat']?>" id="" placeholder="" name="alamat" readonly>
                            </div>
                            <div class="form-group">
                                <label>Status</label>
                                <div class="radio" name="status" required>
                                    <p><label><input type="radio" name="status" value="SETUJU" >SETUJU</label></p>
                                    <p><label><input type="radio" name="status" value="TIDAK SETUJU" >TIDAK SETUJU</label></p>
                                </div>
                            </div>
                            <!-- form email-->
                            <!-- form password-->
                            <!-- form foto-->
                        <!-- /.box-body -->
                        <div class="box-footer">
                            <button type="submit" name="simpan" class="btn btn-primary"><i class="fa fa-check"></i> Kirim </button>
                        <a class="btn btn-primary" href="homepage.php?p=data_admin"><i class="fa fa-mail-reply"></i> batal </a>
                        </div>
                    </form>
                   
                </div>
            </div>
        </div>
    </div>
<!-- /.row (main row) -->
</section> 