<section class="content-header">      
    <h1> Form Pengajuan Cuti</h1>
<!-- Main content -->
<section class="content">
    <!-- quick email widget -->
    <div class="box box-info">            
        <div class="box-header">
            <div class="row-fluid">
                <div class="col-md-8">
                    <!-- form start -->
                    <form method="POST" action="<?=site_url('pengajuancuti/create_cuti')?>" enctype="multipart/form-data">
                        <div class="box-body">
                        <label for="npm">NPM</label>
                        <input type="text" class="form-control" id="npm" placeholder="222120004" name="npm" required="" fdprocessedid="hr4q6o">
                            <!-- form nama lengkap-->
                            <div class="form-group">
                                <label>Nama Lengkap</label>
                                <input type="text" class="form-control" id="nama_lengkap" placeholder="masukkan nama" name="nama_lengkap" required>
                            </div>
                            <!--form program studi-->
                            <div class="form-group">
                                <label>Fakultas</label>
                                <input type="text" class="form-control" id="program_studi" placeholder="Fakultas FMIPA" name="fakultas" required>
                            </div>
                        <!--form program studi-->
                            <div class="form-group">
                                <label>Program Studi</label>
                                <select class="form-control" id="program_studi" placeholder="masukan program studi" name="program_studi" required>
                                <option value="Biologi">Biologi</option>
                                <option value="Matematika">Matematika</option>
                                <option value="Kimia">Kimia</option>
                                <option value="Farmasi">Farmasi</option>
                                <option value="Ilmu Komputer">Ilmu Komputer</option>
                                </select>
                            </div>
                         <!-- form Cuti-->
                         <div class="form-group">
                                <label>Semester</label>
                                <div class="radio" name="semester" required>
                                    <p><label><input type="radio" name="semester" value="ganjil">Ganjil</label></p>
                                    <p><label><input type="radio" name="semester" value="genap">Genap</label></p>
                                </div>
                            </div>
                            <!--form Alasan Cuti-->
                            <div class="form-group">
                                <label>Alasan Mengambil Cuti</label>
                                <input type="text" class="form-control" id="alasancuti" placeholder="alasan" name="alasancuti" required>
                            </div>
                            <!--form No_HP-->
                            <div class="form-group">
                                <label>No Handphone</label>
                                <input type="number" class="form-control" id="no_hp" placeholder="+628..." name="no_hp" required>
                            </div>
                            <!-- form alamat-->
                            <div class="form-group">
                                <label>Alamat</label>
                                <input type="text" class="form-control" id="" placeholder="" name="alamat" required>
                            </div>
                            <input type="text" name="status" value="TIDAK SETUJU" hidden>
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