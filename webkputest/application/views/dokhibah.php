<h4 class="judul">Data Dokumen Hibah</h4>
<table id="dataopr" class="dataZ table table-striped table-bordered table-hover table-condensed">
		<thead>
			<tr>
				<th class="width-sm">No</th>
				<th class="text-center">Propinsi</th>
				<th class="text-center">Nama Satker</th>
				<th class="text-center">NPHD</th>
				<th class="text-center">Addendum NPHD</th>
				<th class="text-center">Register Hibah</th>
				<th class="text-center">Addendum Register Hibah</th>
				<th class="text-center">Revisi DIPA</th>
				<th class="text-center">Surat Ijin RPL</th>
				<th class="text-center">Surat Ijin RPS</th>
				<th class="text-center">Rekening Koran RPL</th>
				<th class="text-center">Rekening Koran RPS</th>
				<th class="text-center">SPHL</th>
				<th class="text-center">SP2HL</th>
				<th class="text-center">SP3HL</th>
				<th class="text-center">SP4HL</th>
			</tr>
		</thead>
		<tbody>
		<?php
			if(isset($data)) {
                //echo "<pre>";var_dump($data[1]);echo "</pre>";
                $no=1;
				foreach($data as $b) {
					echo "<tr>";
                    echo "<td>".$no."</td>";
                    foreach($b as $k => $z) {
						if($k == "prov" || $k == "nama_satker") {
                            echo "<td>".$z."</td>";
						}else if($z!=""){
                            echo "<td><a href='".base_url('files/'.$z)."' >Unduh</a></td>";
                        }else {
                            echo "<td></td>";
                        }
						
					}
                    echo "</tr>";
                    $no++;
				}
			}
		?>
        </tbody>
        <tfoot>
            
        </tfoot>
</table>