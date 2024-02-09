
<link href="<?=base_url('assets')?>/datatables.min.css" rel="stylesheet"/>
 
<script src="<?=base_url('assets')?>/datatables.min.js"></script> 
<section class="content-header">      
    <h1> Data Pengajuan Cuti</h1>
    <ol class="breadcrumb">
        <li><a href="<?=site_url('kaprodi')?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Data Pengajuan Cuti </li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <!-- quick email widget -->
    <div class="box box-info">            
        <div class="box-header">
            <div class="row-fluid" style="overflow:auto">
                <div class="col-md-8">
</div>
               <!--?php $sql =  "SELECT * FROM admin";
                    $result = mysql_query($sql);
                    $no_urut=1;?-->

                <table id="myTable" class="table table-striped table-bordered table-hover data">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>NPM</th>
                            <th>Nama Lengkap</th>
                            <th>Fakultas</th>
                            <th>program Studi</th>
                            <th>Semester</th>
                            <th>Alasan Cuti</th>
                            <th>No Handphone</th>
                            <th>Alamat</th>
                            <th>Status</th>
                            <th>action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            $no=1;
                            foreach ($kaprodi as $t) { 
                        ?>  
                        <tr>
                           <td align="center"><?php echo $no++?></td>
                            <td><?php echo $t->npm?></td>
                            <td><?php echo $t->nama_lengkap?></td>
                            <td><?php echo $t->fakultas?></td>
                            <td><?php echo $t->program_studi?></td>
                            <td><?php echo $t->semester?></td>
                            <td><?php echo $t->alasancuti?></td>
                            <td><?php echo $t->no_hp?></td>
                            <td><?php echo $t->alamat?></td>
                            <td><?php echo $t->status?></td>
                            <td> 
                                
                                <button id='btn_setuju' class='btn btn-xs btn-success' data-toggle='modal' data-id="<?php echo $t->id_pengajuan?>" data-target='#modalsetuju' data-container='body' title='Ubah'><span class='glyphicon glyphicon-check' aria-hidden='true'>Setuju</span></button>
                                <button id='btn_create' class='btn btn-xs btn-danger' data-toggle='modal' data-id="<?php echo $t->id_pengajuan?>" data-target='#modaltsetuju' data-container='body' title='Ubah'><span class='glyphicon glyphicon-remove' aria-hidden='true'>Tidak Setuju</span></button>
                                
                            </td>		     
                        </tr>
                        <?php
                        }?>
                    </tbody>
                </table>
                
                <div class="modal fade" id="modalsetuju" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Apa anda yakin?</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <form action="<?=site_url('kaprodi/setuju');?>" method="post">
        <input type="text" name="status" id="status" value="SETUJU" hidden>
        <input type="text" name="id_pengajuan" id="abcd" value="abcd" hidden>
        Setujui Cuti
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Batalkan</button>
        <button type="submit" class="btn btn-primary">Setuju</button>
        </form>
      </div>
    </div>
  </div>
</div>



                <div class="modal fade" id="modaltsetuju" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Apa anda yakin?</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="<?=site_url('kaprodi/tsetuju');?>" method="post">
        <input type="text" name="status" id="status" value="TIDAK SETUJU" hidden>
        <input type="text" name="id_pengajuan" id="abc" value="abc" hidden>
        Tidak Setujui Cuti
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Batalkan</button>
        <button type="submit" class="btn btn-primary">Tidak Setuju</button>
        </form>
      </div>
    </div>
  </div>
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
