
<?php
	if(isset($vdok)) {
		foreach($vdok as $b) {
			echo '<div class="row">';
			echo '<div class="col-lg-12">';
			echo '<h2 class="judul">'.$b['judul'].'</h2>';
			echo '<p class="tgl">Posted on '.$b['input_date'].'</p>';
			echo '<iframe class="iframepdf" src="'.base_url('/ViewerJS/').'#../files/'.$b['url'].'" width="650" height="500" allowfullscreen webkitallowfullscreen></iframe>
			<hr>';
			echo '</div>';
			echo '</div>';
		}
	}
?>
