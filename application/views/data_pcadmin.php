
<link href="<?=base_url('assets')?>/datatables.min.css" rel="stylesheet"/>
 
<script src="<?=base_url('assets')?>/datatables.min.js"></script> 
<section class="content-header">      
    <h1> Data Pengajuan Cuti</h1>
    <ol class="breadcrumb">
        <li><a href="<?=site_url('admin')?>"><i class="fa fa-dashboard"></i> Home</a></li>
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
                            <th>Alasan Cuti </th>
                            <th>No Handphone</th>
                            <th>Alamat</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            $no=1;
                            foreach ($pengajuancuti as $t) { 
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
                             
                        </tr>
                        <?php
                        }?>
                    </tbody>
                </table>
                
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
