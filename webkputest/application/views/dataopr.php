<h4 class="judul">Data Hibah Operasional
	<a href="<?php echo site_url('admin/data_opr/export') ?>" class="btn btn-default btn-xs btn-success">Download Excel</a>
</h4>
<table id="dataopr" class="dataZ table table-striped table-bordered table-hover table-condensed">
		<thead>
			<tr>
				<th class="width-sm">No</th>
				<th class="text-center">Propinsi</th>
				<th class="text-center">Nama Satker</th>
				<th class="text-center">Jenis Hibah</tvh>
				<th class="text-center">No NPHD</th>
				<th class="text-center">Nilai NPHD</th>
				<th class="text-center">No Register</th>
				<th class="text-center">Pagu Hibah 2018 (Revisi)</th>
				<th class="text-center">Realisasi Hibah 2018</th>
				<th class="text-center">Pengembalian Sisa</th>
			</tr>
		</thead>
		<tbody>
		<?php
			if(isset($data)) {
                //echo "<pre>";var_dump($data[1]);echo "</pre>";
                $no=1;
                $nphd=0;
                $pagopr=0;
                $realopr=0;
                $sisa=0;
				foreach($data as $b) {
					echo "<tr>";
					echo "<td>".$no."</td>";
					foreach($b as $k => $z) {
                        if($k=="nilai_nphd")$nphd+=$z;
                        if($k=="pagopr")$pagopr+=$z;
                        if($k=="realopr")$realopr+=$z;
                        if($k=="sisa")$sisa+=$z;
						if($k != "id" && $k != "tahun" && $k != "input_date") {
							
							if(is_numeric($z) && $k !='id_satker') {
                                if($k=='nilai_nphd') {
									echo "<td class='text-right' style='font-size:10px;'>";
									echo "Rp ".number_format($z, 0, ',', '.');
								}else {
									echo "<td class='text-right'>";
									echo "Rp ".number_format($z, 0, ',', '.');
								}
							}else {
                                echo "<td>";
								echo $z;
							}
							echo "</td>";
						}
						
					}
                    echo "</tr>";
                    $no++;
				}
			}
		?>
        </tbody>
        <tfoot>
            <tr>
                <th colspan="5">TOTAL</th>
                <th class="text-right" style='font-size:11px;'><?php echo "Rp ".number_format($nphd, 0, ',', '.'); ?></th>
                <th class="text-right"></th>
                <th class="text-right" style='font-size:11px;'><?php echo "Rp ".number_format($pagopr, 0, ',', '.'); ?></th>
                <th class="text-right" style='font-size:11px;'><?php echo "Rp ".number_format($realopr, 0, ',', '.'); ?></th>
                <th class="text-right" style='font-size:11px;'><?php echo "Rp ".number_format($sisa, 0, ',', '.'); ?></th>
            </tr>
        </tfoot>
</table>