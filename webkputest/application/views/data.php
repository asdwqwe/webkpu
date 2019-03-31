<div class="hometgh">
	<table id="show_data" class="display nowrap cell-border compact hover">
		<thead>
			<tr>
				<th rowspan="3">Kode Satker</th>
				<th rowspan="3">Satker</th>
				<th rowspan="3">Pemberi Hibah</th>
				<th colspan="4">NPHD</th>
				<th colspan="4">Adendum NPHD I</th>
				<th colspan="3">Register</th>
				<th colspan="5">Ijin Rekening Dari KPPN/RPL</th>
				<th colspan="5">Ijin Rekening Dari DJPB/RPS</th>
				<th colspan="4">Nilai Transfer 2017</th>
				<th colspan="4">Nilai Transfer 2018</th>
				<th colspan="5">Revisi DIPA 2017</th>
				<th colspan="7">Revisi DIPA 2018</th>
				<th colspan="4">Realisasi</th>
				<th rowspan="3">SP4HL</th>
				<th rowspan="3">Sisa / Disetor ke Pemda</th>
			</tr>
			<tr>
				<th rowspan="2">Nomor</th>
				<th rowspan="2">Tanggal</th>
				<th rowspan="2">Perihal</th>
				<th rowspan="2">Jumlah</th>
				
				<th rowspan="2">Nomor</th>
				<th rowspan="2">Tanggal</th>
				<th rowspan="2">Perihal</th>
				<th rowspan="2">Jumlah Adendum</th>
				
				<th rowspan="2">No. Surat DJPPR</th>
				<th rowspan="2">Tanggal Surat DJPPR</th>
				<th rowspan="2">No. Register</th>
				
				<th rowspan="2">Nomor</th>
				<th rowspan="2">Tanggal</th>
				<th rowspan="2">Nama Rekening</th>
				<th rowspan="2">No. Rekening</th>
				<th rowspan="2">Bank</th>
				
				<th rowspan="2">Nomor</th>
				<th rowspan="2">Tanggal</th>
				<th rowspan="2">Nama Rekening</th>
				<th rowspan="2">No. Rekening</th>
				<th rowspan="2">Bank</th>
				
				<th rowspan="2">Transfer I</th>
				<th rowspan="2">Transfer II</th>
				<th rowspan="2">Transfer III</th>
				<th rowspan="2">Jumlah</th>
				<th rowspan="2">Transfer IV</th>
				<th rowspan="2">Transfer V</th>
				<th rowspan="2">Jumlah</th>
				<th rowspan="2">Jumlah Total Transfer</th>
				
				<th rowspan="2">Nomor</th>
				<th rowspan="2">Tanggal</th>
				<th rowspan="2">Nilai Awal</th>
				<th rowspan="2">Nilai Hibah Revisi</th>
				<th rowspan="2">Total Revisi</th>
				
				<th rowspan="2">Nomor</th>
				<th rowspan="2">Tanggal</th>
				<th rowspan="2">Nilai Awal</th>
				<th rowspan="2">Nilai Hibah Revisi</th>
				<th rowspan="2">Total Revisi</th>
				<th rowspan="2">Total Revisi 2</th>
				<th rowspan="2">Total Revisi 3</th>
				
				<th colspan="2">SP2HL 2017</th>
				<th colspan="2">SP2HL 2018</th>
			</tr>
			<tr>
				<th>Pendapatan</th>
				<th>Belanja</th>
				<th>Pendapatan</th>
				<th>Belanja</th>
			</tr>
		</thead>
		<?php
			if(isset($data)) {
				//echo "<pre>";var_dump($data[1]);echo "</pre>";
				foreach($data as $b) {
					echo "<tr>";
					foreach($b as $k => $z) {
						if($k != "id" && $k != "tahun" && $k != "input_date") {
							echo "<td>";
							if(is_numeric($z) && $k !='id_satker') {
								echo "Rp ".number_format($z, 0, ',', '.');
							}else {
								echo $z;
							}
							echo "</td>";
						}
						
					}
					echo "</tr>";
				}
			}
		?>
	</table>
</div>