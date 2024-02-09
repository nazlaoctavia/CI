
<section class="content-header">      
    <h1> Tambah Mahasiswa</h1>
    <ol class="breadcrumb">
        <li><a href="<?=site_url('admin')?>"><i class="fa fa-dashboard"></i> Home</a></li>
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
                    <form method="POST" action="<?=site_url('admin/create_dtmahasiswa')?>" enctype="multipart/form-data">
                        <div class="box-body">
                        <label for="npm">NPM</label>
                        <input type="text" class="form-control" id="npm" placeholder="065000000" name="npm" required="" fdprocessedid="hr4q6o">
                            <!-- form nama lengkap-->
                            <div class="form-group">
                                <label>Nama Lengkap</label>
                                <input type="text" class="form-control" id="nama_lengkap" placeholder="masukkan nama" name="nama_lengkap" required>
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
                            <!-- form jenis kelamin-->
                            <div class="form-group">
                                <label>Jenis Kelamin</label>
                                <div class="radio" name="jenis_kelamin" required>
                                    <p><label><input type="radio" name="jenis_kelamin" value="laki-laki">Laki-laki</label></p>
                                    <p><label><input type="radio" name="jenis_kelamin" value="perempuan">Perempuan</label></p>
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
                                            <input type="file" name="foto" id="foto" />
                                        </span>
                                        <a href="#" class="btn btn-default fileupload-exists" data-dismiss="fileupload">Remove</a>
                                    </div>
                                </div>
                                <p class="help-block">*Ukuran gambar jangan lebih dari 100kb</p>
                            </div>
                            <input type="text" name="level" id="level" value="mahasiswa" hidden>
                        <!-- /.box-body -->
                        <div class="box-footer">
                            <button type="submit" name="simpan" class="btn btn-primary"><i class="fa fa-check"></i> simpan</button>
                        <a class="btn btn-primary" href="data_mahasiswa"><i class="fa fa-mail-reply"></i> batal </a>
                        </div>
                    </form>
                   
                </div>
            </div>
        </div>
    </div>
<!-- /.row (main row) -->
</section> 