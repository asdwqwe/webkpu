<!DOCTYPE html>
<html >
<head>
	<meta charset="UTF-8">
	<title>Sistem Monitoring Dan Informasi Hibah (Si Minah)</title>
  
	<link rel='stylesheet' href='<?php echo base_url('/css/bootstrap.min.css'); ?>'>
	<link type="text/css" rel="stylesheet" href="<?php echo base_url('/css/login.css'); ?>" />

<body>
<div id="fullscreen_bg" class="fullscreen_bg"/>

<div class="container">
	<img style="display: block;margin-left: auto;margin-right: auto;padding:10px;" width="150" src="<?php echo base_url('/css/images/kpu.png'); ?>">
	<h1 class="form-signin-heading text-muted">Monitoring Dan Informasi Hibah</h1>
	<form class="form-signin" method="post" action="<?php echo site_url('home/gologin'); ?>">
		
		<h1 class="form-signin-heading text-muted">Login</h1>
		<input type="text" name="username" class="form-control" placeholder="Username" autofocus="">
		<input type="password" name="password" class="form-control" placeholder="Password" >
		<button class="btn btn-lg btn-primary btn-block" type="submit">
			Login
		</button>
		<a class="btn btn-lg btn-info btn-block" href="<?php echo site_url('peta'); ?>">Peta</a>
		<a href="http://www.freepik.com" target="_blank" style="color:black;">background by Creative_hat / Freepik</a>
	</form>

</div>

</body>
</html>