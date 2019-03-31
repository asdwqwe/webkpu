<h4 class="judul">Data Hibah 2017
	<a href="<?php echo site_url('home/exl/1') ?>" class="btn btn-default btn-xs btn-success">Download Excel</a>
</h4>
<table id="data2017" class="dataZ table table-striped table-bordered table-hover table-condensed">
		<thead>
			<tr>
				<th class="width-sm">No</th>
				<th class="text-center">Propinsi</th>
				<th class="text-center">Nama Satker</th>
				<th class="text-center">No NPHD</th>
				<th class="text-center" style="width:10% !important;">Nilai NPHD</th>
				<th class="text-center">No Register</th>
				<th class="text-center" style="width:10% !important;">SP2HL Pendapatan 2016</th>
				<th class="text-center" style="width:10% !important;">SP2HL Belanja 2016</th>
				<th class="text-center" style="width:10% !important;">SP2HL Pendapatan 2017</th>
				<th class="text-center" style="width:10% !important;">SP2HL Belanja 2017</th>
				<th class="text-center" style="width:10% !important;">SP4HL</th>
				<th class="text-center" style="width:10% !important;">Total SP2HL Pendapatan</th>
				<th class="text-center" style="width:10% !important;">Total SP2HL Belanja</th>
			</tr>
		</thead>
		<tbody>
		<?php
			if(isset($data)) {
                //echo "<pre>";var_dump($data[1]);echo "</pre>";
                $no=1;
                $nphd=0;
                $pag16=0;
                $real16=0;
                $pag17=0;
                $real17=0;
                $sisa=0;
                $total1=0;
                $total2=0;
				foreach($data as $b) {
					echo "<tr>";
					echo "<td>".$no."</td>";
					foreach($b as $k => $z) {
                        if($k=="nilai_nphd")$nphd+=$z;
                        if($k=="pag16")$pag16+=$z;
                        if($k=="sp2hl16")$real16+=$z;
                        if($k=="pag17")$pag17+=$z;
                        if($k=="sp2hl17")$real17+=$z;
                        if($k=="sp4hl")$sisa+=$z;
                        if($k=="total1")$total1+=$z;
                        if($k=="total2")$total2+=$z;
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
                <th colspan="4">TOTAL</th>
                <th class="text-right" style='font-size:11px;'><?php echo "Rp ".number_format($nphd, 0, ',', '.'); ?></th>
                <th class="text-right"></th>
                <th class="text-right" style='font-size:11px;'><?php echo "Rp ".number_format($pag16, 0, ',', '.'); ?></th>
                <th class="text-right" style='font-size:11px;'><?php echo "Rp ".number_format($real16, 0, ',', '.'); ?></th>
                <th class="text-right" style='font-size:11px;'><?php echo "Rp ".number_format($pag17, 0, ',', '.'); ?></th>
                <th class="text-right" style='font-size:11px;'><?php echo "Rp ".number_format($real17, 0, ',', '.'); ?></th>
                <th class="text-right" style='font-size:11px;'><?php echo "Rp ".number_format($sisa, 0, ',', '.'); ?></th>
				<th class="text-right" style='font-size:11px;'><?php echo "Rp ".number_format($total1, 0, ',', '.'); ?></th>
				<th class="text-right" style='font-size:11px;'><?php echo "Rp ".number_format($total2, 0, ',', '.'); ?></th>
            </tr>
        </tfoot>
</table>
