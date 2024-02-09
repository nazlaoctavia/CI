
<link href="https://cdn.datatables.net/v/bs4/jq-3.6.0/jszip-2.5.0/dt-1.13.4/af-2.5.3/b-2.3.6/b-colvis-2.3.6/b-html5-2.3.6/b-print-2.3.6/r-2.4.1/datatables.min.css" rel="stylesheet"/>
 
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/v/bs4/jq-3.6.0/jszip-2.5.0/dt-1.13.4/af-2.5.3/b-2.3.6/b-colvis-2.3.6/b-html5-2.3.6/b-print-2.3.6/r-2.4.1/datatables.min.js"></script>

<section class="content-header">      
    <h1> Data Ketua Program Studi</h1>
    <ol class="breadcrumb">
        <li><a href="mahasiswa"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Data Ketua Program Studi</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <!-- quick email widget -->
    <div class="box box-info">            
        <div class="box-header">
            <div class="row-fluid" style="overflow:auto">
                
                
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
                            <th>Program Studi</th>
                            <th>Semester</th>
                            <th>Alasan Cuti</th>
                            <th>No HP</th>
                            <th>Alamat</th>
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
                            <td><?php echo $t->program_studi?></td>
                            <td><?php echo $t->semester?></td>
                            <td><?php echo $t->alasancuti?></td>
                            <td><?php echo $t->no_hp?></td>
                            <td><?php echo $t->alamat?></td>
                            <td> 
                                
                                <button id='btn_create' class='btn btn-xs btn-primary' data-toggle='tooltip' data-container='body' title='Ubah'><span class='glyphicon glyphicon-pencil' aria-hidden='true'></span></button>
                                
                                <button id='btn_create' class='btn btn-xs btn-danger' data-toggle='tooltip' data-container='body' title='Hapus'><span class='glyphicon glyphicon-trash' aria-hidden='true'></span></button>
                            </td>		     
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
