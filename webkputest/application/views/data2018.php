<h4 class="judul">Data Hibah 2018 
	<a href="<?php echo site_url('admin/data_2018/export') ?>" class="btn btn-default btn-xs btn-success">Download Excel</a>
</h4>
<table id="data2017" class="dataZ table table-striped table-bordered table-hover table-condensed">
		<thead>
			<tr>
				<th class="width-sm">No</th>
				<th class="text-center">Propinsi</th>
				<th class="text-center">Nama Satker</th>
				<th class="text-center">No NPHD</th>
				<th class="text-center" style="width:6.7% !important;">Nilai NPHD</th>
				<th class="text-center">No Register</th>
				<th class="text-center" style="width:6.7% !important;">Transfer dari Pemda 2017</th>
				<th class="text-center" style="width:6.7% !important;">Pagu Hibah 2017 (Revisi)</th>
				<th class="text-center" style="width:6.7% !important;">Realisasi Hibah 2017</th>
				<th class="text-center" style="width:6.7% !important;">SP2HL 2017</th>
				<th class="text-center" style="width:6.7% !important;">Transfer dari Pemda 2018</th>
				<th class="text-center" style="width:6.7% !important;">Pagu Hibah 2018 (Revisi)</th>
				<th class="text-center" style="width:6.7% !important;">Realisasi Hibah 2018</th>
				<th class="text-center" style="width:6.7% !important;">SP2HL 2018</th>
			</tr>
		</thead>
		<tbody>
		<?php
			if(isset($data)) {
                //echo "<pre>";var_dump($data[1]);echo "</pre>";
                $no=1;
                $nphd=0;
                $tr17=0;
                $pag17=0;
                $real17=0;
                $sp17=0;
                $tr18=0;
                $pag18=0;
                $real18=0;
                $sp18=0;
				foreach($data as $b) {
					echo "<tr>";
					echo "<td>".$no."</td>";
					foreach($b as $k => $z) {
                        if($k=="nilai_nphd")$nphd+=$z;
                        if($k=="tr_all")$tr17+=$z;
                        if($k=="pag17")$pag17+=$z;
                        if($k=="real17")$real17+=$z;
                        if($k=="sp2hl17")$sp17+=$z;
                        if($k=="tr18_all")$tr18+=$z;
                        if($k=="pag18")$pag18+=$z;
                        if($k=="real18_all")$real18+=$z;
                        if($k=="sp2hl18")$sp18+=$z;
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
                <th class="text-right" style='font-size:10px;'><?php echo "".number_format($nphd, 0, ',', '.'); ?></th>
				<th ></th>
                <th class="text-right" style='font-size:10px;'><?php echo "".number_format($tr17, 0, ',', '.'); ?></th>
                <th class="text-right" style='font-size:10px;'><?php echo "".number_format($pag17, 0, ',', '.'); ?></th>
                <th class="text-right" style='font-size:10px;'><?php echo "".number_format($real17, 0, ',', '.'); ?></th>
                <th class="text-right" style='font-size:10px;'><?php echo "".number_format($sp17, 0, ',', '.'); ?></th>
                <th class="text-right" style='font-size:10px;'><?php echo "".number_format($tr18, 0, ',', '.'); ?></th>
                <th class="text-right" style='font-size:10px;'><?php echo "".number_format($pag18, 0, ',', '.'); ?></th>
                <th class="text-right" style='font-size:10px;'><?php echo "".number_format($real18, 0, ',', '.'); ?></th>
                <th class="text-right" style='font-size:10px;'><?php echo "".number_format($sp18, 0, ',', '.'); ?></th>
            </tr>
        </tfoot>
</table>