<!DOCTYPE html>
<?php

?>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Dashboard Ketua Program Studi</title>
  <link rel="icon" href="<?=base_url('assetsss/')?>foto/logo-unpak.png">
  <!-- Theme style -->
  <link rel="shortcut icon" href="<?=base_url('assetsss/')?>foto/logo-unpak.png">
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="<?=base_url('assetsss')?>/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?=base_url('assetsss')?>/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="<?=base_url('assetsss')?>/bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?=base_url('assetsss')?>/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="<?=base_url('assetsss')?>/dist/css/skins/_all-skins.min.css">
  <!-- Morris chart -->
  <link rel="stylesheet" href="<?=base_url('assetsss')?>/bower_components/morris.js/morris.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="<?=base_url('assetsss')?>/bower_components/jvectormap/jquery-jvectormap.css">
  <!-- Date Picker -->
  <link rel="stylesheet" href="<?=base_url('assetsss')?>/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="<?=base_url('assetsss')?>/bower_components/bootstrap-daterangepicker/daterangepicker.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="<?=base_url('assetsss')?>/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
  <link rel="stylesheet" href="<?=base_url('assetsss')?>/plugins/pace/pace.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="<?=base_url('assetsss')?>/bower_components/bootstrap-fileupload/bootstrap-fileupload.min.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.24/css/jquery.dataTables.min.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.7.0/css/buttons.dataTables.min.css">



  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

  <link href="https://cdn.datatables.net/v/dt/jszip-2.5.0/dt-1.13.4/b-2.3.6/b-html5-2.3.6/b-print-2.3.6/r-2.4.1/datatables.min.css" rel="stylesheet"/>
 
 <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/pdfmake.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.js"></script>
 <script src="https://cdn.datatables.net/v/dt/jszip-2.5.0/dt-1.13.4/b-2.3.6/b-html5-2.3.6/b-print-2.3.6/r-2.4.1/datatables.min.js"></script>
 
</head>

<body class="hold-transition skin-purple sidebar-mini">
  <div class="wrapper">

    <header class="main-header">
      <!-- Logo -->
      <a href="" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini"><img src="<?=base_url('assetsss/')?>foto/logo-unpak.php" alt="Logo" height="25" width="50"></span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg"><b>Universitas Pakuan</b></span>
      </a>
      <!-- Header Navbar: style can be found in header.less -->
      <nav style="background-color: #753773 ;" class="navbar navbar-static-top">
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
          <span class="sr-only">Toggle navigation</span>
        </a>

        <div class="navbar-custom-menu">
          <ul class="nav navbar-nav">
            <!-- User Account: style can be found in dropdown.less -->
            <li class="dropdown user user-menu">
              <a href="<?=base_url('assetsss/')?>" class="dropdown-toggle" data-toggle="dropdown">
                <span class='glyphicon glyphicon-menu-down' aria-hidedden='true'></span>
                <span class="hidden-xs"></span>
              </a>
              <ul class="dropdown-menu">
                <!-- User image -->
                <!-- Menu Footer-->
                <li class="user-footer">
                  
                  <div class="pull-right">
                    <a href="<?=site_url('login/index')?>" class="btn btn-default btn-flat">Logout</a>
                  </div>
                </li>
              </ul>
            </li>
            <!-- Control Sidebar Toggle Button -->
          </ul>
        </div>
      </nav>
    </header>
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">
      <!-- sidebar: style can be found in sidebar.less -->
      <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
          <div class="pull-left image">
            <img src="<?=base_url('assetsss/')?>foto/icon.png" class="img-circle" alt="User Image">
          </div>
          <div class="pull-left info">
            <p>Ketua Prodi</p>
            <a href=><i class="fa fa-circle text-success"></i> Online</a>
          </div>
        </div>
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu" data-widget="tree">
          <li class="header">MAIN MENU</li>
          <li>
            <a href="<?=site_url('kaprodi')?>">
              <i class="fa fa-dashboard"></i> <span>Dashboard</span>
              <span class="pull-right-container">
              </span>
            </a>
          </li>

          <li class="treeview">
            <a>
              <i class="fa fa-database"></i>
              <span>Approvent</span>
              <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
            </a>
            <ul class="treeview-menu">
              <li><a href="<?=site_url('kaprodi/data_formcuti')?>"><i class="fa fa-circle-o"></i> Data Pengajuan Cuti </a></li>
            </ul>
          </li>
         
          
         
      </section>
      <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper" style="min-height: 371.333px;">
 
<!-- Main content -->
<?php include($page . '.php')?>


    <!-- /.content-wrapper -->
  
  <!-- ./wrapper -->

  <!-- jQuery 3 -->
  <script src="<?=base_url('assetsss')?>/bower_components/jquery/dist/jquery.min.js"></script>
  <!-- jQuery UI 1.11.4 -->
  <script src="<?=base_url('assetsss')?>/bower_components/jquery-ui/jquery-ui.min.js"></script>
  <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
  <script>
    $.widget.bridge('uibutton', $.ui.button);
  </script>
  <!-- Bootstrap 3.3.7 -->
  <script src="<?=base_url('assetsss')?>/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
  <!-- Morris.js charts -->
  <script src="<?=base_url('assetsss')?>/bower_components/raphael/raphael.min.js"></script>
  <script src="<?=base_url('assetsss')?>/bower_components/morris.js/morris.min.js"></script>
  <!-- Sparkline -->
  <script src="<?=base_url('assetsss')?>/bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
  <!-- jvectormap -->
  <script src="<?=base_url('assetsss')?>/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
  <script src="<?=base_url('assetsss')?>/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
  <!-- jQuery Knob Chart -->
  <script src="<?=base_url('assetsss')?>/bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
  <!-- daterangepicker -->
  <script src="<?=base_url('assetsss')?>/bower_components/moment/min/moment.min.js"></script>
  <script src="<?=base_url('assetsss')?>/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
  <!-- datepicker -->
  <script src="<?=base_url('assetsss')?>/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
  <!-- Bootstrap WYSIHTML5 -->
  <script src="<?=base_url('assetsss')?>/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
  <!-- Slimscroll -->
  <script src="<?=base_url('assetsss/')?>bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
  <!-- FastClick -->
  <script src="<?=base_url('assetsss/')?>bower_components/fastclick/lib/fastclick.js"></script>
  <!-- AdminLTE App -->
  <script src="<?=base_url('assetsss')?>/dist/js/adminlte.min.js"></script>
  <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
  <script src="<?=base_url('assetsss')?>/dist/js/pages/dashboard.js"></script>
  <!-- AdminLTE for demo purposes -->
  <script src="<?=base_url('assetsss')?>/dist/js/demo.js"></script>
  <script src="<?=base_url('assetsss')?>/bower_components/PACE/pace.min.js"></script>
  <!-- DataTables -->
  <!-- <script src="../bower_components/datatables.net/js/jquery.dataTables.min.js"></script> -->
  <script src="<?=base_url('assetsss')?>/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
  <script src="<?=base_url('assetsss')?>/bower_components/bootstrap-fileupload/bootstrap-fileupload.min.js"></script>
  <script src="<?=base_url('assetsss')?>/bower_components/jquery-autosize/jquery.autosize.js"></script>
  <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
  <script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/buttons/1.7.0/js/dataTables.buttons.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
  <script src="https://cdn.datatables.net/buttons/1.7.0/js/buttons.html5.min.js"></script>
  <script src="https://cdn.datatables.net/buttons/1.7.0/js/buttons.print.min.js"></script>
  
  <script>
    $(document).on("click", ".btn-danger", function () {
      var id = $(this).data('id');

      $('#abc').attr('value', id)

    
        /*
        proceed with rest of modal using the id variable as necessary 
        */
    });
    </script>
  <script>
    $(document).on("click", ".btn-success", function () {
      var id = $(this).data('id');

      $('#abcd').attr('value', id)

    
        /*
        proceed with rest of modal using the id variable as necessary 
        */
    });
    </script>
    
</body>

</html>