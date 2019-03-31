<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Peta extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->helper('url');
    }
    public function index()
    {
        $this->db->select('sum(nilai_nphd) n,sum(tr_all) t17,sum(tr18_all) t18, sum(tr_all)+sum(tr18_all) total');
        $data['d18'] = $this->db->get('data_2018')->row_array();
        $this->db->select('sum(nilai_nphd) n,sum(sp2hl16) t16,sum(sp2hl17) t17,sum(sp2hl16)+sum(sp2hl17) total, sum(sp4hl) tsp4,sum(pag16) tp16, sum(pag17) tp17, sum(pag16)+sum(pag17) total2');
        $data['d17'] = $this->db->get('data_2017')->row_array();
        $data['prov'] = $this->db->get('data_prov')->result_array();
        $this->load->view('peta',$data);
    }
    public function rp($value)
	{
		return 'Rp '.number_format($value, 0, ',', '.');
	}
    function getdata($tahun=2018)
    {
        $this->db->select('d.kode_satker,d.nama_satker,d.koordinat');
        if($tahun==2018) {
            $this->db->join('data_2018 d2','on d2.kode_satker=d.kode_satker');
        }else {
            $this->db->join('data_2017 d2','on d2.kode_satker=d.kode_satker');
        }
        //
        
        $this->db->where('koordinat !=""');
        $data = $this->db->get('data_satker d')->result_array();
        echo json_encode($data);
    }
    function datanas() {
        $prov = $this->input->post('prov');
        $data = $this->db->select('prov,sum(nilai_nphd)nphd,sum(tr_all)tr17,sum(tr18_all)tr18,(sum(tr_all)+sum(tr18_all))total')->group_by('prov')->where('prov',$prov)->get('data_2018')->row_array();
        $data['koord'] = $this->db->where('nama_prov',$prov)->get('data_prov')->row_array();
        echo json_encode($data);
    }
    function detailnas()
    {
        $prov = $this->input->post('prov');
        $data = $this->db->select('nama_satker,nilai_nphd,tr_all,tr18_all,(tr_all+tr18_all)total')->where('prov',$prov)->get('data_2018')->result_array();
        if(count($data)>0) {
            echo "<h4 style='background-color: #4676bd;color: #fff;font-weight: bold;' class='text-center breadcrumb'>".$prov."</h4>";
            echo "<table class='table table-responsive table-bordered'>";
            echo "<thead>
                <th class='text-center'>Nama Satker</th>
                <th class='text-center'>Nilai NPHD</th>
                <th class='text-center'>Transfer 2017</th>
                <th class='text-center'>Transfer 2018</th>
                <th class='text-center'>Transfer Total</th>
                <th class='text-center'>%</th>
                </thead>";
            foreach($data as $d) {
                echo "<tr>";
                echo "<td class='text-right'>".$d['nama_satker']."</td>";
                echo "<td class='text-right'>".$this->rp($d['nilai_nphd'])."</td>";
                echo "<td class='text-right'>".$this->rp($d['tr_all'])."</td>";
                echo "<td class='text-right'>".$this->rp($d['tr18_all'])."</td>";
                echo "<td class='text-right'>".$this->rp($d['tr_all']+$d['tr18_all'])."</td>";
                echo "<td class='text-right'>".ceil((($d['tr_all']+$d['tr18_all'])/$d['nilai_nphd'])*100)." % </td>";
                echo "</tr>";
            }
            echo "</table>";
        }
    }
    function getdetail($id=0,$tahun=2018)
    {
        if($id>0) {
            $this->db->where('kode_satker',$id);
            if($tahun==2018) {
                $data = $this->db->get('data_2018')->result_array();

                if(count($data)>0) {
                    echo "<h4 style='background-color: #4676bd;color: #fff;font-weight: bold;' class='text-center breadcrumb'>".$data[0]['nama_satker']."</h4>";
                    echo "<table class='table table-responsive table-bordered'>";
                    echo "<thead>
                        <th class='text-center'>Nilai NPHD</th>
                        <th class='text-center'>Transfer 2017</th>
                        <th class='text-center'>Transfer 2018</th>
                        <th class='text-center'>Transfer Total</th>
                        <th class='text-center'>%</th>
                        </thead>";
                    foreach($data as $d) {
                        echo "<tr>";
                        echo "<td class='text-right'>".$this->rp($d['nilai_nphd'])."</td>";
                        echo "<td class='text-right'>".$this->rp($d['tr_all'])."</td>";
                        echo "<td class='text-right'>".$this->rp($d['tr18_all'])."</td>";
                        echo "<td class='text-right'>".$this->rp($d['tr_all']+$d['tr18_all'])."</td>";
                        echo "<td class='text-right'>".ceil((($d['tr_all']+$d['tr18_all'])/$d['nilai_nphd'])*100)." % </td>";
                        echo "</tr>";
                    }
                    echo "</table>";
                }
                //
            }else {
                $data = $this->db->get('data_2017')->result_array();

                if(count($data)>0) {
                    echo "<h4 style='background-color: #4676bd;color: #fff;font-weight: bold;' class='text-center breadcrumb'>".$data[0]['nama_satker']."</h4>";
                    echo "<table class='table table-responsive table-bordered'>";
                    echo "<thead>
                        <th class='text-center'>Nilai NPHD</th>
                        <th class='text-center'>SP2HL 2016</th>
                        <th class='text-center'>SP2HL 2017</th>
                        <th class='text-center'>Total SP2HL</th>
                        <th class='text-center'>%</th>
                        <th class='text-center'>SP4HL</th>
                        </thead>";
                    foreach($data as $d) {
                        echo "<tr>";
                        echo "<td class='text-right'>".$this->rp($d['nilai_nphd'])."</td>";
                        echo "<td class='text-right'>".$this->rp($d['sp2hl16'])."</td>";
                        echo "<td class='text-right'>".$this->rp($d['sp2hl17'])."</td>";
                        echo "<td class='text-right'>".$this->rp($d['sp2hl16']+$d['sp2hl17'])."</td>";
                        echo "<td class='text-right'>".ceil((($d['sp2hl16']+$d['sp2hl17'])/$d['nilai_nphd'])*100)."</td>";
                        echo "<td class='text-right'>".$this->rp($d['sp4hl'])."</td>";
                        echo "</tr>";
                    }
                    echo "</table>";
                }
                //
            }
            
            //var_dump($data);
            
        }
    }
}
	