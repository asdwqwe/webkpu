<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
		$this->load->helper('url');
		if(empty($_SESSION['tipe'])) {
			redirect('/home/login', 'refresh');
		}
		$this->load->library('grocery_CRUD');
		//$this->load->library('Grocery_CRUD_Multiuploader');
	}

	public function __output($output = null,$nview)
	{
		// $this->load->view('header',(array)$output);
		// $this->load->view($nview,(array)$output);
		// $this->load->view('footer',(array)$output);
		$output=(array)$output;
		$output['content']=$nview;
		$this->load->view('tes',$output);
	}
	
	public function logout()
	{
		unset($_SESSION['username']);
		unset($_SESSION['tipe']);
		unset($_SESSION['nama_satker']);
		unset($_SESSION['pemda']);
		//session_destroy();
		redirect('/home', 'refresh');
	}

	public function index()
	{
		//$this->_example_output((object)array('output' => '' , 'js_files' => array() , 'css_files' => array()));
		redirect('/admin/home', 'refresh');
	}
	
	public function data_2017()
	{
		$crud = new grocery_CRUD();
		$crud->set_table('data_2017');
		if($_SESSION['tipe']!='admin') {
			$crud->where('kode_satker',$_SESSION['kode_satker']);
		}

		$crud->display_as('prov','Provinsi');
		$crud->display_as('pem_hibah','Pemberi Hibah');
		$crud->display_as('no_nphd','No. NPHD');
		$crud->display_as('tgl_nphd','Tgl NPHD');
		$crud->display_as('per_nphd','Perihal NPHD');
		$crud->display_as('nilai_nphd','Nilai NPHD');
		$crud->display_as('na_1','No. Addendum');
		$crud->display_as('nb_1','Tgl Addendum');
		$crud->display_as('nc_1','Perihal Addendum');
		$crud->display_as('nd_1','Nilai Addendum');
		// $crud->display_as('na_2','No. Addendum');
		// $crud->display_as('nb_2','Tgl Addendum');
		// $crud->display_as('nc_2','Perihal Addendum');
		// $crud->display_as('nd_2','Nilai Addendum');
		// $crud->display_as('na_3','No. Addendum');
		// $crud->display_as('nb_3','Tgl Addendum');
		// $crud->display_as('nc_3','Perihal Addendum');
		// $crud->display_as('nd_3','Nilai Addendum');
		// $crud->display_as('na_4','No. Addendum');
		// $crud->display_as('nb_4','Tgl Addendum');
		// $crud->display_as('nc_4','Perihal Addendum');
		// $crud->display_as('nd_4','Nilai Addendum');
		//$crud->unset_columns(array('na_1','nb_1','na_2','nb_2','na_3','nb_3','na_4','nb_4',));
		//$crud->unset_fields(array('na_1','nb_1','na_2','nb_2','na_3','nb_3','na_4','nb_4',));
		
		$crud->display_as('ndjppr','No. Surat DJPPR');
		$crud->display_as('tdjppr','Tgl Surat DJPPR');
		$crud->display_as('noreg','No. Registrasi');
		$crud->display_as('noijin','No. Ijin KPPN\RPL');
		$crud->display_as('treg','Tanggal Registrasi');
		//$crud->display_as('nrek','Nama Rek. Satker');
		$crud->display_as('norek','No. Rek. Satker');
		$crud->display_as('nbank','Nama Bank');
		$crud->display_as('tr_1','Transfer Pertama');
		$crud->display_as('tr_2','Transfer Kedua');
		$crud->display_as('tr_3','Transfer Ketiga');
		$crud->display_as('tr_4','Transfer Keempat');
		$crud->display_as('tr_all','Total Transfer');
		$crud->display_as('pag16','Pengesahan Pendapatan (SP2HL Pendapatan) 2016');
		$crud->display_as('pag17','Pengesahan Pendapatan (SP2HL Pendapatan) 2017');
		$crud->display_as('real16','Realisasi Hibah 2016');
		$crud->display_as('real17','Realisasi Hibah 2017');
		$crud->display_as('peng','Pengembalian');
		$crud->display_as('sp2hl16','Pengesahan Belanja (SP2HL Belanja) 2016');
		$crud->display_as('sp2hl17','Pengesahan Belanja (SP2HL Belanja) 2017');
		$crud->display_as('sp4hl','Pengembalian SISA Belanja (SP4HL)');
		
		$state = $crud->getState();
		if ($state != 'export') {
			$crud->callback_column('nilai_nphd',array($this,'rp'));
			$crud->callback_column('nd_1',array($this,'rp'));
			$crud->callback_column('tr_1',array($this,'rp'));
			$crud->callback_column('tr_2',array($this,'rp'));
			$crud->callback_column('tr_3',array($this,'rp'));
			$crud->callback_column('tr_4',array($this,'rp'));
			$crud->callback_column('tr_all',array($this,'rp'));
			$crud->callback_column('pag16',array($this,'rp'));
			$crud->callback_column('real16',array($this,'rp'));
			$crud->callback_column('sp2hl16',array($this,'rp'));
			$crud->callback_column('pag17',array($this,'rp'));
			$crud->callback_column('real17',array($this,'rp'));
			$crud->callback_column('sp2hl17',array($this,'rp'));
			$crud->callback_column('sp4hl',array($this,'rp'));
		}
		$crud->unset_columns(array('real16,real17'));
		$crud->unset_fields(array('real16,real17'));
		//$crud->set_relation('nama_satker','data_satker','nama_satker');
		$crud->callback_field('nama_satker',array($this,'colsatker'));
		$crud->callback_field('kode_satker',array($this,'_readonly'));
		$crud->callback_field('pem_hibah',array($this,'_readonly'));
		$crud->callback_field('tr_all',array($this,'_readonly'));
		$crud->callback_field('tahun',array($this,'settahun17'));
		$crud->unset_add();
		$crud->unset_edit();
		$crud->unset_delete();

		$output = $crud->render();
		$output->judul = "Satker Pilkada 2017";
		$this->__output($output,'data_keu');
	}

	public function data_2018()
	{
		$crud = new grocery_CRUD();
		$crud->set_table('data_2018');
		if($_SESSION['tipe']!='admin') {
			$crud->where('kode_satker',$_SESSION['kode_satker']);
		}

		$crud->display_as('prov','Provinsi');
		$crud->display_as('pem_hibah','Pemberi Hibah');
		$crud->display_as('no_nphd','No. NPHD');
		$crud->display_as('tgl_nphd','Tgl NPHD');
		$crud->display_as('per_nphd','Perihal NPHD');
		$crud->display_as('nilai_nphd','Nilai NPHD');
		$crud->display_as('na_1','No. Addendum');
		$crud->display_as('nb_1','Tgl Addendum');
		$crud->display_as('nc_1','Perihal Addendum');
		$crud->display_as('nd_1','Nilai Addendum');
		// $crud->display_as('na_2','No. Addendum');
		// $crud->display_as('nb_2','Tgl Addendum');
		// $crud->display_as('nc_2','Perihal Addendum');
		// $crud->display_as('nd_2','Nilai Addendum');
		// $crud->display_as('na_3','No. Addendum');
		// $crud->display_as('nb_3','Tgl Addendum');
		// $crud->display_as('nc_3','Perihal Addendum');
		// $crud->display_as('nd_3','Nilai Addendum');
		// $crud->display_as('na_4','No. Addendum');
		// $crud->display_as('nb_4','Tgl Addendum');
		// $crud->display_as('nc_4','Perihal Addendum');
		// $crud->display_as('nd_4','Nilai Addendum');
		//$crud->unset_columns(array('na_1','nb_1','na_2','nb_2','na_3','nb_3','na_4','nb_4',));
		//$crud->unset_fields(array('na_1','nb_1','na_2','nb_2','na_3','nb_3','na_4','nb_4',));
		
		$crud->display_as('ndjppr','No. Surat DJPPR');
		$crud->display_as('tdjppr','Tgl Surat DJPPR');
		$crud->display_as('noreg','No. Registrasi');
		$crud->display_as('noijin','No. Ijin KPPN\RPL');
		$crud->display_as('treg','Tanggal Registrasi');
		//$crud->display_as('nrek','Nama Rek. Satker');
		$crud->display_as('norek','No. Rek. Satker');
		$crud->display_as('nbank','Nama Bank');
		$crud->display_as('tr_1','Transfer 2017 Pertama');
		$crud->display_as('tr_2','Transfer 2017 Kedua');
		$crud->display_as('tr_3','Transfer 2017 Ketiga');
		$crud->display_as('tr_4','Transfer 2017 Keempat');
		$crud->display_as('tr_all','Total Transfer');
		$crud->display_as('pag18','Pagu Hibah 2018');
		$crud->display_as('pag17','Pagu Hibah 2017');
		$crud->display_as('real17','Realisasi Hibah 2017');
		$crud->display_as('tr18_1','Transfer 2018 Pertama');
		$crud->display_as('tr18_2','Transfer 2018 Kedua');
		$crud->display_as('tr18_all','Total Transfer 2018');
		$crud->display_as('real18_1','Realisasi Januari 2018');
		$crud->display_as('real18_2','Realisasi Februari 2018');
		$crud->display_as('real18_3','Realisasi Maret 2018');
		$crud->display_as('real18_4','Realisasi April 2018');
		$crud->display_as('real18_5','Realisasi Mei 2018');
		$crud->display_as('real18_6','Realisasi Juni 2018');
		$crud->display_as('real18_7','Realisasi Juli 2018');
		$crud->display_as('real18_8','Realisasi Agustus 2018');
		// $crud->display_as('real18_9','Realisasi September 2018');
		// $crud->display_as('real18_10','Realisasi Oktober 2018');
		// $crud->display_as('real18_11','Realisasi November 2018');
		// $crud->display_as('real18_12','Realisasi Desember 2018');
		$crud->unset_columns(array('real18_9','real18_10','real18_11','real18_12','nrek'));
		$crud->unset_fields(array('real18_9','real18_10','real18_11','real18_12','nrek'));

		$crud->display_as('real18_all','Total Realisasi Hibah 2018');
		$crud->display_as('sp2hl17','Pengesahan Belanja (SP2HL) 2017');
		$crud->display_as('sp2hl18','Pengesahan Belanja (SP2HL) 2018');
		$crud->display_as('sp4hl','Pengembalian SISA Belanja (SP4HL)');
		$crud->display_as('peng','Pengembalian');

		$state = $crud->getState();
		if ($state != 'export') {
			$crud->callback_column('nilai_nphd',array($this,'rp'));
			$crud->callback_column('nd_1',array($this,'rp'));
			$crud->callback_column('tr_1',array($this,'rp'));
			$crud->callback_column('tr_2',array($this,'rp'));
			$crud->callback_column('tr_3',array($this,'rp'));
			$crud->callback_column('tr_4',array($this,'rp'));
			$crud->callback_column('tr_all',array($this,'rp'));
			$crud->callback_column('pag17',array($this,'rp'));
			$crud->callback_column('real17',array($this,'rp'));
			$crud->callback_column('sp2hl17',array($this,'rp'));
			$crud->callback_column('tr18_1',array($this,'rp'));
			$crud->callback_column('tr18_2',array($this,'rp'));
			$crud->callback_column('tr18_all',array($this,'rp'));
			$crud->callback_column('pag18',array($this,'rp'));
			$crud->callback_column('real18_1',array($this,'rp'));
			$crud->callback_column('real18_2',array($this,'rp'));
			$crud->callback_column('real18_3',array($this,'rp'));
			$crud->callback_column('real18_4',array($this,'rp'));
			$crud->callback_column('real18_5',array($this,'rp'));
			$crud->callback_column('real18_6',array($this,'rp'));
			$crud->callback_column('real18_7',array($this,'rp'));
			$crud->callback_column('real18_8',array($this,'rp'));
			$crud->callback_column('real18_9',array($this,'rp'));
			$crud->callback_column('real18_10',array($this,'rp'));
			$crud->callback_column('real18_11',array($this,'rp'));
			$crud->callback_column('real18_12',array($this,'rp'));
			$crud->callback_column('real18_all',array($this,'rp'));
			$crud->callback_column('sp2hl18',array($this,'rp'));
			$crud->callback_column('sp4hl',array($this,'rp'));
		}
		//$crud->set_relation('nama_satker','data_satker','nama_satker');

		$crud->callback_field('nama_satker',array($this,'colsatker'));
		$crud->callback_field('kode_satker',array($this,'_readonly'));
		$crud->callback_field('pem_hibah',array($this,'_readonly'));
		$crud->callback_field('tr_all',array($this,'_readonly'));
		$crud->callback_field('real18_all',array($this,'_readonly'));
		$crud->callback_field('tahun',array($this,'settahun18'));

		$output = $crud->render();
		$output->judul = "Satker Pilkada 2018";
		$this->__output($output,'data_keu');
	}

	public function data_opr()
	{
		$crud = new grocery_CRUD();
		$crud->set_table('data_opr');
		if($_SESSION['tipe']!='admin') {
			$crud->where('kode_satker',$_SESSION['kode_satker']);
		}

		$crud->display_as('prov','Provinsi');
		$crud->display_as('pem_hibah','Pemberi Hibah');
		$crud->display_as('jenis','Jenis Hibah');
		$crud->display_as('no_nphd','No. NPHD');
		$crud->display_as('tgl_nphd','Tgl NPHD');
		$crud->display_as('per_nphd','Perihal NPHD');
		$crud->display_as('nilai_nphd','Nilai NPHD');
		$crud->display_as('na_1','No. Addendum');
		$crud->display_as('nb_1','Tgl Addendum');
		$crud->display_as('nc_1','Perihal Addendum');
		$crud->display_as('nd_1','Nilai Addendum');
		
		$crud->display_as('ndjppr','No. Surat DJPPR');
		$crud->display_as('tdjppr','Tgl Surat DJPPR');
		$crud->display_as('noreg','No. Registrasi');
		$crud->display_as('noijin','No. Ijin KPPN\RPL');
		$crud->display_as('treg','Tanggal Registrasi');
		//$crud->display_as('nrek','Nama Rek. Satker');
		$crud->display_as('norek','No. Rek. Satker');
		$crud->display_as('nbank','Nama Bank');
		$crud->display_as('tr_1','Transfer Pertama');
		$crud->display_as('tr_2','Transfer Kedua');
		$crud->display_as('tr_3','Transfer Ketiga');
		$crud->display_as('tr_4','Transfer Keempat');
		$crud->display_as('tr_all','Total Transfer');
		$crud->display_as('pagopr','Revisi Pagu Hibah Operasional');
		$crud->display_as('realopr','Realisasi Hibah Operasional');
		$crud->display_as('sp2hl','Pengesahan Belanja (SP2HL)');
		$crud->display_as('sp4hl','Pengembalian SISA Belanja (SP4HL)');
		$crud->display_as('peng','Pengembalian');

		$state = $crud->getState();
		if ($state != 'export') {
			$crud->callback_column('nilai_nphd',array($this,'rp'));
			$crud->callback_column('nd_1',array($this,'rp'));
			$crud->callback_column('tr_1',array($this,'rp'));
			$crud->callback_column('tr_2',array($this,'rp'));
			$crud->callback_column('tr_3',array($this,'rp'));
			$crud->callback_column('tr_4',array($this,'rp'));
			$crud->callback_column('tr_all',array($this,'rp'));
			$crud->callback_column('pagopr',array($this,'rp'));
			$crud->callback_column('realopr',array($this,'rp'));
			$crud->callback_column('sp2hl',array($this,'rp'));
			$crud->callback_column('sp4hl',array($this,'rp'));
		}
		$crud->unset_columns(array('nrek'));
		$crud->unset_fields(array('nrek'));
		//$crud->set_relation('nama_satker','data_satker','nama_satker');
		$crud->callback_field('nama_satker',array($this,'colsatker'));
		$crud->callback_field('kode_satker',array($this,'_readonly'));
		$crud->callback_field('pem_hibah',array($this,'_readonly'));
		$crud->callback_field('tr_all',array($this,'_readonly'));
		$crud->callback_field('tahun',array($this,'coltahun'));

		$output = $crud->render();
		$output->judul = "Hibah Operasional";
		$this->__output($output,'data_keu');
	}

	public function dok_hibah()
	{
		$crud = new Grocery_CRUD();
		
		$crud->set_table('dok_hibah');
		
		$crud->callback_field('nama_satker',array($this,'colsatker'));

		$crud->callback_field('kode_satker',array($this,'_readonly'));
		$crud->callback_field('pem_hibah',array($this,'_readonly'));
		$crud->callback_field('tahun',array($this,'coltahun'));

		$config = array(
			/* Destination directory */
			"path_to_directory"       =>'files/',
			/* Allowed upload type */
			"allowed_types"           =>'doc|docx|pdf|xls|xlsx',
			/* Show allowed file types while editing ? */
			"show_allowed_types"      => true,
			/* No file text */
			"no_file_text"            =>'Format dokumen salah',
			/* enable full path or not for anchor during list state */
			"enable_full_path"        => false,
			/* Download button will appear during read state */
			"enable_download_button"  => true,
			/* show download button only for this types...*/
			//"download_allowed"        => 'jpg' 		
		);
		//$crud->new_multi_upload("dok_rek_koran_rpl",$config);

		$crud->set_field_upload('dok_nphd','files');
		$crud->set_field_upload('dok_add_nphd','files');
		$crud->set_field_upload('dok_reg_hibah','files');
		$crud->set_field_upload('dok_add_reg_hibah','files');
		$crud->set_field_upload('dok_rev_dipa','files');
		$crud->set_field_upload('dok_ijin_rpl','files');
		$crud->set_field_upload('dok_ijin_rps','files');
		$crud->set_field_upload('dok_rek_koran_rpl','files');
		$crud->set_field_upload('dok_rek_koran_rps','files');
		$crud->set_field_upload('dok_sphl','files');
		$crud->set_field_upload('dok_sp2hl','files');
		$crud->set_field_upload('dok_sp3hl','files');
		$crud->set_field_upload('dok_sp4hl','files');

		$crud->display_as('prov','Provinsi');
		$crud->display_as('pem_hibah','Pemberi Hibah');
		$crud->display_as('dok_nphd','Dokumen NPHD');
		$crud->display_as('dok_add_nphd','Dokumen Addendum NPHD');
		$crud->display_as('dok_reg_hibah','Dokumen Registrasi Hibah');
		$crud->display_as('dok_add_reg_hibah','Dokumen Addendum Registrasi Hibah');
		$crud->display_as('dok_rev_dipa','Dokumen Revisi DIPA');
		$crud->display_as('dok_ijin_rpl','Dokumen Ijin RPL');
		$crud->display_as('dok_ijin_rps','Dokumen Ijin RPS');
		$crud->display_as('dok_rek_koran_rpl','Dokumen Rekening Koran RPL');
		$crud->display_as('dok_rek_koran_rps','Dokumen Rekening Koran RPS');
		$crud->display_as('dok_sphl','Dokumen SPHL');
		$crud->display_as('dok_sp2hl','Dokumen SP2HL');
		$crud->display_as('dok_sp3hl','Dokumen SP3HL');
		$crud->display_as('dok_sp4hl','Dokumen SP4HL');

		$crud->set_subject('Dokumen');
		$output = $crud->render();
		$output->judul = "Upload Dokumen Hibah";

		$this->__output($output,'data_keu');
	}

	public function data_satker()
	{
		$crud = new grocery_CRUD();
		
		$crud->set_table('data_satker');
		$crud->unset_add();
		$crud->unset_delete();
		//$crud->unset_fields('kode_satker','nama_satker','pemda');
		$crud->callback_field('kode_satker',array($this,'_readonly'));
		$crud->callback_field('nama_satker',array($this,'_readonly'));
		$crud->callback_field('pemda',array($this,'_readonly'));
		$crud->display_as('nama_satker','Nama Satker');

		$crud->set_subject('Satker');
		$output = $crud->render();
		$output->judul = "Tambah Data Satker";

		$this->__output($output,'data_keu');
	}

	public function data_prov()
	{
		$crud = new grocery_CRUD();
		
		$crud->set_table('data_prov');
		//$crud->unset_add();
		$crud->unset_delete();
		//$crud->unset_fields('kode_satker','nama_satker','pemda');
		// $crud->callback_field('kode_satker',array($this,'_readonly'));
		// $crud->callback_field('nama_satker',array($this,'_readonly'));
		// $crud->callback_field('pemda',array($this,'_readonly'));
		$crud->display_as('nama_prov','Nama Propinsi');

		$crud->set_subject('Propinsi');
		$output = $crud->render();
		$output->judul = "Tambah Data Propinsi";

		$this->__output($output,'data_keu');
	}

	function data_real()
	{
		$this->__output(null,'data_real');
	}

	function upl_data_real()
	{
		include 'simplexlsx.class.php';
		if (isset($_FILES['file'])) {
			if ( $xlsx = SimpleXLSX::parse( $_FILES['file']['tmp_name'] ) ) {
				//echo '<h2>Parsing Result</h2>';
				//echo '<table border="1" cellpadding="3" style="border-collapse: collapse">';

				list( $cols, ) = $xlsx->dimension();
				$cols=7;
				$data =[];
				foreach ( $xlsx->rows() as $k => $r ) {
					if ($k < 3) continue; // skip 4 row
					$baris=[];
					//echo '<tr>';
					for ( $i = 0; $i < $cols; $i ++ ) {
						//echo '<td>' . ( ( isset( $r[ $i ] ) ) ? $r[ $i ] : '&nbsp;' ) . '</td>';
						switch($i) {
							case 0 : $baris['id']=$r[$i];break;
							case 1 : $baris['kode_satker']=$r[$i];break;
							case 2 : $baris['nama_satker']=$r[$i];break;
							case 3 : $baris['pagu']=$r[$i];break;
							case 4 : $baris['real']=$r[$i];break;
							case 5 : $baris['sisa']=$r[$i];break;
							case 6 : $baris['persen']=$r[$i];break;
						}
					}
					//echo '</tr>';
					$data[]=$baris;
					if($k==551) break;
				}
				
				//echo '</table>';
				if(count($data)>0) {
					// echo "<pre>";
					// var_dump($data);
					// echo "</pre>";
					$this->db->from('data_realisasi');
					$this->db->truncate();
					$this->db->insert_batch('data_realisasi',$data);
					echo "<meta http-equiv=\"refresh\" content=\"0;URL='".site_url('admin/data_real')."'\" />";
				}
			}else {
				echo SimpleXLSX::parse_error();
			}
		}
	}

	public function satker()
	{
		$crud = new grocery_CRUD();
		
		$crud->set_table('data2');
		$crud->display_as('pemda','Pemberi Hibah');
		$crud->display_as('no_nphd','No. NPHD');
		$crud->display_as('tanggal_nphd','Tanggal');
		$crud->display_as('perihal_nphd','Perihal');
		$crud->display_as('nilai_nphd','Nilai NPHD');
		$crud->display_as('no_ad_nphd1','No. Adendum NPHD 1');
		$crud->display_as('tanggal_ad_nphd1','Tanggal Adendum NPHD 1');
		$crud->display_as('perihal_ad_nphd1','Perihal Adendum NPHD 1');
		$crud->display_as('nilai_ad_nphd1','Nilai Adendum NPHD 1');
		$crud->display_as('no_djppr','No. Surat DJPPR');
		$crud->display_as('tanggal_djppr','Tanggal DJPPR');
		$crud->display_as('no_regis_djppr','No. Register DJPPR');
		$crud->display_as('no_kppn','No. Ijin KPPN/RPL');
		$crud->display_as('tanggal_kppn','Tanggal');
		$crud->display_as('nam_rek_kppn','Nama Rekening');
		$crud->display_as('no_rek_kppn','Nomor Rekening');
		$crud->display_as('bank_kppn','Bank');
		$crud->display_as('no_djpb','No. Ijin DJPB/RPS');
		$crud->display_as('tanggal_djpb','Tanggal');
		$crud->display_as('nam_rek_djpb','Nama Rekening');
		$crud->display_as('no_rek_djpb','No. Rekening');
		$crud->display_as('bank_djpb','Bank');
		$crud->display_as('transfer1','Transfer I');
		$crud->display_as('transfer2','Transfer II');
		$crud->display_as('transfer3','Transfer III');
		$crud->display_as('transferjml1','Jumlah Transfer');
		$crud->display_as('transfer4','Transfer IV');
		$crud->display_as('transfer5','Transfer V');
		$crud->display_as('transferjml2','Jumlah Transfer');
		$crud->display_as('transfertotal','Total Jumlah Transfer');
		$crud->display_as('no_dipa1','No. Revisi DIPA');
		$crud->display_as('tanggal_dipa1','Tanggal');
		$crud->display_as('nilai_awal_dipa1','Nilai Awal');
		$crud->display_as('nilai_hibah_dipa1','Nilai Hibah Revisi');
		$crud->display_as('total_dipa1','Total Revisi');
		$crud->display_as('no_dipa2','No. Revisi DIPA');
		$crud->display_as('tanggal_dipa2','Tanggal');
		$crud->display_as('nilai_awal_dipa2','Nilai Awal');
		$crud->display_as('nilai_hibah_dipa2','Nilai Hibah Revisi');
		$crud->display_as('total_dipa2','Total Revisi');
		$crud->display_as('total_dipa22','Total Revisi 2');
		$crud->display_as('total_dipa23','Total Revisi 3');
		$crud->display_as('sp2hl_pend1','Pendapatan SP2HL');
		$crud->display_as('sp2hl_blnj1','Belanja SP2HL');
		$crud->display_as('sp2hl_pend2','Pendapatan SP2HL 2');
		$crud->display_as('sp2hl_blnj2','Belanja SP2HL 2');
		$crud->display_as('sp4hl','SP4HL');
		$crud->display_as('sisa','Sisa / Disetor ke Pemda');
		$crud->set_subject('Dana Hibah');
		$crud->callback_column('nilai_nphd',array($this,'rp'));
		$crud->callback_column('nilai_ad_nphd1',array($this,'rp'));
		$crud->callback_column('transfer1',array($this,'rp'));
		$crud->callback_column('transfer2',array($this,'rp'));
		$crud->callback_column('transfer3',array($this,'rp'));
		$crud->callback_column('transfer4',array($this,'rp'));
		$crud->callback_column('transfer5',array($this,'rp'));
		$crud->callback_column('transferjml1',array($this,'rp'));
		$crud->callback_column('transferjml2',array($this,'rp'));
		$crud->callback_column('transfertotal',array($this,'rp'));
		$crud->callback_column('nilai_awal_dipa1',array($this,'rp'));
		$crud->callback_column('nilai_hibah_dipa1',array($this,'rp'));
		$crud->callback_column('total_dipa1',array($this,'rp'));
		$crud->callback_column('nilai_awal_dipa2',array($this,'rp'));
		$crud->callback_column('nilai_hibah_dipa2',array($this,'rp'));
		$crud->callback_column('total_dipa2',array($this,'rp'));
		$crud->callback_column('total_dipa22',array($this,'rp'));
		$crud->callback_column('total_dipa23',array($this,'rp'));
		$crud->callback_column('sp2hl_pend1',array($this,'rp'));
		$crud->callback_column('sp2hl_pend2',array($this,'rp'));
		$crud->callback_column('sp2hl_blnj1',array($this,'rp'));
		$crud->callback_column('sp2hl_blnj2',array($this,'rp'));
		$crud->callback_column('sp4hl',array($this,'rp'));
		$crud->callback_column('sisa',array($this,'rp'));
		
		$crud->callback_field('tahun',array($this,'coltahun'));
		$crud->callback_field('id_satker',array($this,'_readonly'));
		$crud->callback_field('pemda',array($this,'_readonly'));
		$crud->callback_field('transferjml1',array($this,'_readonly'));
		$crud->callback_field('transferjml2',array($this,'_readonly'));
		$crud->callback_field('transfertotal',array($this,'_readonly'));
		
		$crud->set_relation('satker','data_satker','nama_satker');
		
		$crud->unset_columns(array('input_date'));
		$crud->unset_fields('input_date');

		$output = $crud->render();

		$this->__output($output,'data_keu');
	}
	
	public function satker2()
	{
		$crud = new grocery_CRUD();
		
		$crud->set_table('data1');
		$crud->display_as('pemda','Pemberi Hibah');
		$crud->display_as('no_nphd','No. NPHD');
		$crud->display_as('tanggal_nphd','Tanggal');
		$crud->display_as('perihal_nphd','Perihal');
		$crud->display_as('nilai_nphd','Nilai NPHD');
		$crud->display_as('no_ad_nphd1','No. Adendum NPHD 1');
		$crud->display_as('tanggal_ad_nphd1','Tanggal Adendum NPHD 1');
		$crud->display_as('perihal_ad_nphd1','Perihal Adendum NPHD 1');
		$crud->display_as('nilai_ad_nphd1','Nilai Adendum NPHD 1');
		$crud->display_as('no_ad_nphd2','No. Adendum NPHD 2');
		$crud->display_as('tanggal_ad_nphd2','Tanggal Adendum NPHD 2');
		$crud->display_as('perihal_ad_nphd2','Perihal Adendum NPHD 2');
		$crud->display_as('nilai_ad_nphd2','Nilai Adendum NPHD 2');
		$crud->display_as('no_djppr','No. Surat DJPPR');
		$crud->display_as('tanggal_djppr','Tanggal DJPPR');
		$crud->display_as('no_regis_djppr','No. Register DJPPR');
		$crud->display_as('no_kppn','No. Ijin KPPN/RPL');
		$crud->display_as('tanggal_kppn','Tanggal');
		$crud->display_as('nam_rek_kppn','Nama Rekening');
		$crud->display_as('no_rek_kppn','Nomor Rekening');
		$crud->display_as('bank_kppn','Bank');
		$crud->display_as('no_djpb','No. Ijin DJPB/RPS');
		$crud->display_as('tanggal_djpb','Tanggal');
		$crud->display_as('nam_rek_djpb','Nama Rekening');
		$crud->display_as('no_rek_djpb','No. Rekening');
		$crud->display_as('bank_djpb','Bank');
		$crud->display_as('no_dipa1','No. Revisi DIPA');
		$crud->display_as('tanggal_dipa1','Tanggal');
		$crud->display_as('nilai_awal_dipa1','Nilai Awal');
		$crud->display_as('nilai_hibah_dipa1','Nilai Hibah Revisi');
		$crud->display_as('total_dipa1','Total Revisi');
		$crud->display_as('no_dipa2','No. Revisi DIPA');
		$crud->display_as('tanggal_dipa2','Tanggal');
		$crud->display_as('nilai_awal_dipa2','Nilai Awal');
		$crud->display_as('nilai_hibah_dipa2','Nilai Hibah Revisi');
		$crud->display_as('total_dipa2','Total Revisi');
		$crud->set_subject('Dana Hibah');
		$crud->callback_column('nilai_nphd',array($this,'rp'));
		$crud->callback_column('nilai_ad_nphd1',array($this,'rp'));
		$crud->callback_column('nilai_ad_nphd2',array($this,'rp'));
		$crud->callback_column('transfer1',array($this,'rp'));
		$crud->callback_column('transfer2',array($this,'rp'));
		$crud->callback_column('transfer3',array($this,'rp'));
		$crud->callback_column('transfer4',array($this,'rp'));
		$crud->callback_column('transfer5',array($this,'rp'));
		$crud->callback_column('transfer6',array($this,'rp'));
		$crud->callback_column('transfer7',array($this,'rp'));
		$crud->callback_column('transfer8',array($this,'rp'));
		$crud->callback_column('nilai_awal_dipa1',array($this,'rp'));
		$crud->callback_column('nilai_hibah_dipa1',array($this,'rp'));
		$crud->callback_column('total_dipa1',array($this,'rp'));
		$crud->callback_column('nilai_awal_dipa2',array($this,'rp'));
		$crud->callback_column('nilai_hibah_dipa2',array($this,'rp'));
		$crud->callback_column('total_dipa2',array($this,'rp'));
		
		$crud->callback_field('tahun',array($this,'coltahun'));
		$crud->callback_field('id_satker',array($this,'_readonly'));
		$crud->callback_field('pemda',array($this,'_readonly'));
		
		$crud->set_relation('satker','data_satker','nama_satker');
		
		$crud->unset_columns(array('input_date'));
		$crud->unset_fields('input_date');

		$output = $crud->render();

		$this->__output($output,'data_keu');
	}
	
	function _readonly($value,$row,$nama) {
		
		return "<input id='field-".$nama->name."' class='form-control' name='".$nama->name."' type='text' value='".$value."' readonly='readonly'/>";
	}

	public function settahun17($v,$r,$nama) {
		return "<input id='field-".$nama->name."' class='form-control' name='".$nama->name."' type='text' value='2017' readonly='readonly'/>";
	}
	public function settahun18($v,$r,$nama) {
		return "<input id='field-".$nama->name."' class='form-control' name='".$nama->name."' type='text' value='2018' readonly='readonly'/>";
	}
	
	function getsatker($id) {
		$q = "select * from data_satker where id=$id";
		$hsl = $this->db->query($q);
		$row = $hsl->row_array();
		if($row) {
			echo json_encode($row);
		}
	}

	function getsatkerbykode($id) {
		$q = "select * from data_satker where kode_satker=$id";
		$hsl = $this->db->query($q);
		$row = $hsl->row_array();
		if($row) {
			echo json_encode($row);
		}
	}
	
	public function colsatker($value,$primary_key = null)
	{
		$s = "<select id='field-nama_satker' name='nama_satker' class='form-control'>";
		$this->db->order_by('nama_satker','asc');
		$d = $this->db->get('data_satker')->result_array();
		foreach($d as $z) {
			$s .= "<option data-id='".$z['id']."' value='".$z['nama_satker']."' ";
			if($z['nama_satker']==$value) $s .= "selected ";
			$s .= ">".$z['nama_satker']."</option>";
		}
		$s .= "</select>";
		return $s;
	}

	public function coltahun($value,$primary_key = null)
	{
		$s = "<select id='field-tahun' name='tahun' class='form-control'>";
		for($i=2016;$i<2022;$i++) {
			$s .= "<option value='$i'";
			if($i==$value) $s .= " selected";
			$s .=">$i</option>";
		}
		$s .= "</select>";
		$ss = "<select id='field-tahun' name='tahun' class='form-control'><option value='2017'>2017</option></select>";
		return $s;
	}
	
	public function rp($value, $row)
	{
		return 'Rp '.number_format($value, 0, ',', '.');
	}
	
	public function berita()
	{
		$crud = new grocery_CRUD();
		
		$crud->set_table('berita');
		$crud->unset_fields('input_date');
		$crud->set_subject('Berita');
		$output = $crud->render();

		$this->__output($output,'data_keu');
	}
	
	public function dok()
	{
		$crud = new grocery_CRUD();
		
		$crud->set_table('dok');
		$crud->unset_fields('input_date');
		$crud->set_field_upload('url','files');
		$crud->set_subject('Dokumen');
		$output = $crud->render();

		$this->__output($output,'data_keu');
	}
	
	function multigrids()
	{
		$this->config->load('grocery_crud');
		$this->config->set_item('grocery_crud_dialog_forms',true);
		$this->config->set_item('grocery_crud_default_per_page',10);

		$output1 = $this->offices_management2();

		$output2 = $this->employees_management2();

		$output3 = $this->customers_management2();

		$js_files = $output1->js_files + $output2->js_files + $output3->js_files;
		$css_files = $output1->css_files + $output2->css_files + $output3->css_files;
		$output = "<h1>List 1</h1>".$output1->output."<h1>List 2</h1>".$output2->output."<h1>List 3</h1>".$output3->output;

		$this->_example_output((object)array(
				'js_files' => $js_files,
				'css_files' => $css_files,
				'output'	=> $output
		));
	}

}
