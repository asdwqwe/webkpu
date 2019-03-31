<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		//$this->load->database();
		$this->load->helper('url');
		$t = $this->uri->segment(2);
		if($t=="login" || $t=="gologin") $t="ok";
		if($t!='ok') {
			if(empty($_SESSION['tipe'])) {
				redirect('/home/login', 'refresh');
			}
		}
		/* if($t!="ok" && (!isset($_SESSION['tipe']) || $_SESSION['tipe']!='admin')) {
			redirect('/home/login', 'refresh');
		} */
		$this->load->library('grocery_CRUD');
	}
	
	public function __output($output = null,$nview)
	{
		// $this->load->view('header',(array)$output);
		// $this->load->view($nview,(array)$output);
		// $this->load->view('footer',(array)$output);
		$output['content']=$nview;
		$this->load->view('tes',$output);
	}
	
	public function index()
	{
		/* $q = "select * from dok order by input_date desc limit 10";
		$hsl = $this->db->query($q);
		$data['dok'] = $hsl->result_array();
		$q = "select nama_satker,tahun from data1 left join data_satker d on d.id = data1.satker order by input_date desc limit 3";
		$hsl = $this->db->query($q);
		$data['terbaru'] = $hsl->result_array();
		$data['output'] = '';
		$data['js_files'] = [base_url('assets/grocery_crud/js/jquery-1.11.1.min.js')];
		$data['css_files'] = [];
		$data(object)array('output' => '' , 'js_files' => array() , 'css_files' => array())
		$this->__output($data,'home'); */
		//$this->data_2017();
		$this->__output(null,'home');
	}
	
	function login()
	{
		$this->load->view('login');
	}
	
	function gologin()
	{
		//$this->session->set_userdata('username', 'admin');
		$u = $this->input->post('username');
		$p = $this->input->post('password');
		if($u!="" && $p !="") {
			$q = "select * from data_user where username='$u' and passw='".md5($p)."'";
			$d = $this->db->query($q)->row_array();
			if($d['username']=="") {
				redirect('/home', 'refresh');
			}else {
				//if (session_status() == PHP_SESSION_NONE) session_start();
				$_SESSION['username']=$d['username'];
				$_SESSION['tipe']=$d['tipe'];
				$_SESSION['nama_satker']=$d['nama_satker'];
				$_SESSION['pemda']=$d['pemda'];
				$_SESSION['kode_satker']=$d['kode_satker'];
				
				redirect('/home', 'refresh');
			}
		}else {
			// if (session_status() == PHP_SESSION_NONE) session_start();
			// $_SESSION['username']='admin';
			// $_SESSION['tipe']='admin';
			redirect('/home', 'refresh');
		}
		
	}

	function data_2017()
	{
		$this->db->select('prov,nama_satker,no_nphd,nilai_nphd,noreg,pag16,sp2hl16,pag17,sp2hl17,sp4hl,(pag16+pag17) total1, (sp2hl16+sp2hl17) total2');
		$this->db->order_by('prov');
		if($_SESSION['tipe']!='admin') {
			$this->db->where('kode_satker',$_SESSION['kode_satker']);
		}
		$data['data'] = $this->db->get('data_2017')->result_array();
		$data['output'] = '';
		$this->__output($data,'data2017');
	}

	function data_2018()
	{
		$this->db->select('prov,nama_satker,no_nphd,nilai_nphd,noreg,tr_all,pag17,real17,sp2hl17,tr18_all,pag18,real18_all,sp2hl18');
		$this->db->order_by('prov');
		if($_SESSION['tipe']!='admin') {
			$this->db->where('kode_satker',$_SESSION['kode_satker']);
		}
		$data['data'] = $this->db->get('data_2018')->result_array();
		$data['output'] = '';
		$this->__output($data,'data2018');
	}

	function data_opr()
	{
		$this->db->select('prov,nama_satker,jenis,no_nphd,nilai_nphd,noreg,pagopr,realopr,sp4hl');
		if($_SESSION['tipe']!='admin') {
			$this->db->where('kode_satker',$_SESSION['kode_satker']);
		}
		$data['data'] = $this->db->get('data_opr')->result_array();
		$data['output'] = '';
		$this->__output($data,'dataopr');
	}

	function dok_hibah()
	{
		$this->db->select('prov,nama_satker,
		dok_nphd,dok_add_nphd,dok_reg_hibah,dok_add_reg_hibah,dok_rev_dipa,dok_ijin_rpl,dok_ijin_rps,dok_rek_koran_rpl,dok_rek_koran_rps,dok_sphl,dok_sp2hl,dok_sp3hl,dok_sp4hl');
		if($_SESSION['tipe']!='admin') {
			$this->db->where('kode_satker',$_SESSION['kode_satker']);
		}
		$data['data'] = $this->db->get('dok_hibah')->result_array();
		$data['output'] = '';
		$this->__output($data,'dokhibah');
	}
	
	function exl($tipe=1)
	{
		$data = (object)[];
		if($tipe==1) { //data 2017
			$data->columns=["Provinsi","Nama Satker","No.NPHD","Nilai NPHD","No.Registrasi","SP2HL Pendapatan 2016","SP2HL Belanja 2016","SP2HL Pendapatan 2017","SP2HL Belanja 2017","SP4HL","Total SP2HL Pendapatan","Total SP2HL Belanja"];
			$this->db->select('prov,nama_satker,no_nphd,nilai_nphd,noreg,pag16,sp2hl16,pag17,sp2hl17,sp4hl,(pag16+pag17) total1, (sp2hl16+sp2hl17) total2');
			$data->list = $this->db->get('data_2017')->result_array();
		}else if($tipe==2) { //data 2018

		}else if($tipe==3) { //data opr

		}

		$this->_xls($data);
	}

	function _xls($data)
	{
		/**
		 * No need to use an external library here. The only bad thing without using external library is that Microsoft Excel is complaining
		 * that the file is in a different format than specified by the file extension. If you press "Yes" everything will be just fine.
		 * */

		$string_to_export = "";
		foreach($data->columns as $column){
			$string_to_export .= $column."\t";
		}
		$string_to_export .= "\n";
		foreach($data->list as $row){
			foreach($row as $r){
				$string_to_export .= $this->_trim_export_string($r)."\t";
			}
			$string_to_export .= "\n";
		}
		// Convert to UTF-16LE and Prepend BOM
		$string_to_export = "\xFF\xFE" .mb_convert_encoding($string_to_export, 'UTF-16LE', 'UTF-8');
		$filename = "export-".date("Y-m-d_H:i:s").".xls";
		header('Content-type: application/vnd.ms-excel;charset=UTF-16LE');
		header('Content-Disposition: attachment; filename='.$filename);
		header("Cache-Control: no-cache");
		echo $string_to_export;
		die();
	}
	protected function _trim_export_string($value)
	{
		$value = str_replace(array("&nbsp;","&amp;","&gt;","&lt;"),array(" ","&",">","<"),$value);
		return  strip_tags(str_replace(array("\t","\n","\r"),"",$value));
	}
	
	public function tes()
	{
		$this->load->view('tes');
	}
}
