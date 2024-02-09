
<link href="<?=base_url('assets')?>/datatables.min.css" rel="stylesheet"/>
 
<script src="<?=base_url('assets')?>/datatables.min.js"></script> 
<section class="content-header">      
    <h1> Data Admin </h1>
    <ol class="breadcrumb">
        <li><a href="<?=site_url('admin')?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Data Admin</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <!-- quick email widget -->
    <div class="box box-info">            
        <div class="box-header">
            <div class="row-fluid" style="overflow:auto">
                <div class="col-md-8">
                <a href="<?=site_url('admin/add_admin')?>" id="btn_create" class='btn btn-success'><span class='glyphicon glyphicon-plus'></span> Tambah </a>
                </div><br/><br/><br/>

               <!--?php $sql =  "SELECT * FROM admin";
                    $result = mysql_query($sql);
                    $no_urut=1;?-->

                <table id="" class="table table-striped table-bordered table-hover data">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>Nama Lengkap</th>
                            <th>jenis Kelamin</th>
                            <th>Username</th>
                            <th>Email</th>
                            <th>Foto</th>
                            <th>Level</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            $no=1;
                            foreach ($admin as $t) { 
                        ?>  
                        <tr>
                           <td align="center"><?php echo $no++?></td>
                            <td><?php echo $t->nama_lengkap?></td>
                            <td><?php echo $t->jenis_kelamin?></td>
                            <td><?php echo $t->username?></td>
                            <td><?php echo $t->email?></td>
                            <td><?php echo $t->foto?></td>
                            <td><?php echo $t->level?></td>
                            <td> 
                                
                                <button class='btn btn-xs btn-info' data-toggle='modal' data-target="#modaldaup" data-id="<?php echo $t->id_admin?>" title='Ubah'><span class='glyphicon glyphicon-pencil' aria-hidden='true'></span></button>
            
                                <a id='btn_create' class='btn btn-xs btn-danger' data-toggle='tooltip' data-container='body' href="<?=site_url('admin/delete/'.$t->id_admin)?>" title='Hapus'><span class='glyphicon glyphicon-trash' aria-hidden='true'></span></a>
                            </td>		     
                        </tr>
                        <?php
                        }?>
                    </tbody>
                </table>
                
            </div>
        </div>
    </div>
    <div class="modal fade" id="modaldaup" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Edit Data Admin</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="<?=site_url('admin/do_update_da')?>" method="post" enctype="multipart/form-data">
        <input type="hidden" name="idk" value="ab" id="idk" >

        <div class="box-body">
        <!-- form nama lengkap-->
        <div class="form-group">
                                <label>Nama Lengkap</label>
                                <input type="text" class="form-control" id="nama_lengkap" placeholder="masukkan nama lengkap" name="nama_lengkap" required>
                            </div>
                            <!-- form jenis kelamin-->
                            <div class="form-group">
                                <label>Jenis Kelamin</label>
                                <div class="radio" name="jenis_kelamin" required>
                                    <p><label><input type="radio" name="jenis_kelamin" value="Laki-laki">Laki-laki</label></p>
                                    <p><label><input type="radio" name="jenis_kelamin" value="Perempuan">Perempuan</label></p>
                                </div>
                            </div>
                            <!-- form email-->
                            <div class="form-group">
                                <label>Email</label> 
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <i class="fa fa-envelope"></i>
                                    </div>
                                    <input type="email" class="form-control" placeholder="masukkan email" id="email" name="email" required>
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
        </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submi" class="btn btn-primary">Save changes</button>
    </form>
      </div>
    </div>
  </div>
</div>
    <script type="text/javascript">
        $(document).ready(function(){
            $('.data').DataTable();
        });
    </script> 
<!-- /.row (main row) -->
</section>   
