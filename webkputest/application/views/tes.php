<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Sistem Monitoring Anggaran Hibah Pilkada</title>

    <?php 
        if(isset($css_files)) {
            foreach($css_files as $file) {
                echo '<link type="text/css" rel="stylesheet" href="'.$file.'" />';
            }
        }
    ?>
    <!-- Bootstrap core CSS -->
    <link href="<?php echo base_url('css/bootstrap.min.css'); ?>" rel="stylesheet">
    
    <!-- Custom styles for this template -->
    <link href="<?php echo base_url('css/simple-sidebar.css'); ?>" rel="stylesheet">

</head>

<body>

<div id="wrapper">
    <!-- Sidebar -->
    <div id="sidebar-wrapper">
        <ul class="sidebar-nav">
            <li class="sidebar-brand">
                <a href="<?php echo site_url('home'); ?>">HOME</a>
            </li>
            <li>
                <a href="#" style="color: #ffe100;font-weight: bold;">MASUKKAN DATA HIBAH</a>
                <ul>
                    <li>
                        <a href="<?php echo site_url('/admin/data_2017'); ?>">SATKER PILKADA 2017</a>
                    </li>
                    <li>
                        <a href="<?php echo site_url('/admin/data_2018'); ?>">SATKER PILKADA 2018</a>
                    </li>
                    <li>
                        <a href="<?php echo site_url('/admin/data_opr'); ?>">HIBAH OPERASIONAL</a>
                    </li>
                    <li>
                        <a href="<?php echo site_url('/admin/dok_hibah'); ?>">UPLOAD DOKUMEN HIBAH</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="#" style="color: #ffe100;font-weight: bold;">MONITORING REALISASI HIBAH</a>
                <ul>
                    <li>
                        <a href="<?php echo site_url('/home/data_2017'); ?>">SATKER PILKADA 2017</a>
                    </li>
                    <li>
                        <a href="<?php echo site_url('/home/data_2018'); ?>">SATKER PILKADA 2018</a>
                    </li>
                    <li>
                        <a href="<?php echo site_url('/home/data_opr'); ?>">HIBAH OPERASIONAL</a>
                    </li>
                    <li>
                        <a href="<?php echo site_url('/home/dok_hibah'); ?>">DOKUMEN HIBAH</a>
                    </li>
                </ul>
            </li>
            <?php
                if($_SESSION['tipe']=="admin") {
                    echo '
                    <li>
                        <a href="#" style="color: #ffe100;font-weight: bold;">ADMIN</a>
                        <ul>
                            <li>
                                <a href="'.site_url('/admin/data_satker').'">DATA SATKER</a>
                            </li>
                            <li>
                                <a href="'.site_url('/admin/data_prov').'">DATA PROPINSI</a>
                            </li>
                            <li>
                                <a href="'.site_url('/admin/data_real').'">DATA REALISASI</a>
                            </li>
                        </ul>
                    </li>
                    ';
                }
            ?>
        </ul>
    </div>
    <!-- /#sidebar-wrapper -->
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Collect the nav links, forms, and other content for toggling -->
        <ul class="nav navbar-nav navbar-left">
        <li><a href="#menu-toggle" id="menu-toggle"><span class=" glyphicon glyphicon-th-large" aria-hidden="true"></span></a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
        <?php
            if(isset($_SESSION['nama_satker'])) {
                echo "<li><a href='#' id='d_nm_satker'>".$_SESSION['nama_satker']."</a></li>";
                echo "<li><a href='".site_url('/admin/logout')."'>Logout</a></li>";
            }else {
                echo "<li><a href='".site_url('/home/gologin')."'>Login</a></li>";
            }
        ?>
        </ul><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
    <!-- Page Content -->
    <div id="page-content-wrapper">
        <div class="container-fluid">
            <?php if(isset($content)) $this->load->view($content); ?>
        </div>
    </div>
    <!-- /#page-content-wrapper -->

</div>
<!-- /#wrapper -->

    <!-- Bootstrap core JavaScript -->
    <script src="<?php echo base_url('js/jquery.min.js'); ?>"></script>
    <script src="<?php echo base_url('js/bootstrap.bundle.min.js'); ?>"></script>
    <script src="<?php echo base_url('js/jquery.floatThead.min.js'); ?>"></script>
    <?php 
        if(isset($js_files)) {
            foreach($js_files as $file) {
                echo '<script src="'.$file.'"></script>';
            }
        }
    ?>
    <script src="<?php echo base_url('/js/jquery.matchHeight-min.js'); ?>"></script>
    <script src="<?php echo base_url('/js/jquery.visible.min.js'); ?>"></script>
    <script src="<?php echo base_url('/js/jquery.ba-dotimeout.min.js'); ?>"></script>
    <script>
    var myurl='<?php echo site_url(); ?>';
    </script>
    <script src="<?php echo base_url('/js/custom.js'); ?>"></script>

    <!-- Menu Toggle Script -->
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>
    
</body>
</html>