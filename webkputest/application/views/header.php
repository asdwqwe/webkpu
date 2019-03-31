<!DOCTYPE html>
<html >
<head>
	<meta charset="UTF-8">
	<title>Sistem Monitoring Anggaran Hibah Pilkada</title>
  
	<?php foreach($css_files as $file): ?>
	<link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
	<?php endforeach; ?>
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro" rel="stylesheet"> 
	<link rel='stylesheet' href='<?php echo base_url('/css/bootstrap.min.css'); ?>'>
	<link type="text/css" rel="stylesheet" href="<?php echo base_url('/css/style.css'); ?>" />
	<?php foreach($js_files as $file): ?>
	<script src="<?php echo $file; ?>"></script>
	<?php endforeach; ?>
	<script src="<?php echo base_url('/js/jquery.matchHeight-min.js'); ?>"></script>
	<script src="<?php echo base_url('/js/custom.js'); ?>"></script>
	<script>
	var myurl='<?php echo site_url(); ?>';
	</script>
<body>
<nav class="navbar navbar-default navbar-light" style="background-color: #e3f2fd;">
	<a class="navbar-brand" href="<?php echo site_url('/home'); ?>"><img src="<?php echo base_url('/css/images/kpu.png'); ?>" height="70">&nbsp;Sistem Monitoring Anggaran Hibah Pilkada</a>
	
</nav>
<nav class="navbar navbar-default menutop" role="navigation">
  <div class="container">
	
	<!-- Collect the nav links, forms, and other content for toggling -->
	<div class="" id="navbar-brand-centered">
	  <ul class="nav navbar-nav">
		<li><a href="<?php echo site_url('/home'); ?>">Home</a></li>
		<li><a href="<?php echo site_url('/home/show'); ?>">Report Laporan Hibah</a></li>
		<?php
			if(isset($_SESSION['tipe']) && $_SESSION['tipe']=='admin') {
				echo "<li><a href='".site_url('/admin/satker')."'>Masukan Data Hibah</a></li>";
			}else {
				echo "<li><a href='".site_url('/home/gologin')."'>Login</a></li>";
			}
		?>
	  </ul>
	  <ul class="nav navbar-nav navbar-right">
		<?php
			if(isset($_SESSION['tipe']) && $_SESSION['tipe']=='admin') {
				echo "<li><a href='".site_url('/admin/dok')."'>Input Dokumentasi</a></li>";
				echo "<li><a href='".site_url('/admin/logout')."'>Logout</a></li>";
			}else {
				echo "<li><a href='".site_url('/home/gologin')."'>Login</a></li>";
			}
		?>
	  </ul>
	</div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<div class="container" style="position: relative;top: -100px;">
<div id="maincontent" class="col-lg-12 equal">
