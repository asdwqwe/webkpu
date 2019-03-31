	</div><!-- main content -->
</div><!-- container-->
<?php foreach($js_files as $file): ?>
	<script src="<?php echo $file; ?>"></script>
<?php endforeach; ?>
<script src="<?php echo base_url('/js/jquery.matchHeight-min.js'); ?>"></script>
<script src="<?php echo base_url('/js/custom.js'); ?>"></script>

<script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>
</body>
</html>