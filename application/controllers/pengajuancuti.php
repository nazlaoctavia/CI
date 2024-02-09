<?php
defined('BASEPATH')or exit('NO direct script access allowed');

class pengajuancuti extends CI_Controller{
        public function index()
        {       
                $data['page']="dashboard";
                $data['username'] = $this->session->userdata('username');
                $data['id_user'] = $this->session->userdata('id_user');
                $this->load->view('v_mahasiswa',$data);
        }
        
        public function data_pengajuancuti()
        {
                $data['pengajuancuti'] = $this->mymodel->tampil_pengajuancuti()->result();
                $data['page']='data_pengajuancuti';
                $this->load->view('v_mahasiswa',$data);

        }



        public function create_cuti()
        {
                $this->form_validation->set_rules('nama_lengkap','nama_lengkap','trim|required|min_length[1]|max_length[255]');
                if ($this->form_validation->run()==true)
                {
                $npm = $this->input->post('npm');
                $nama_lengkap = $this->input->post('nama_lengkap');
                $fakultas = $this->input->post('fakultas');
                $program_studi = $this->input->post('program_studi');
                $semester = $this->input->post('semester');
                $alasancuti = $this->input->post('alasancuti');
                $no_hp = $this->input->post('no_hp');
                $alamat = $this->input->post('alamat');
                $status = $this->input->post('status');

                $this->mymodel->mycreate_cuti($npm,$nama_lengkap,$fakultas,$program_studi,$semester,$alasancuti,$no_hp,$alamat,$status);
                redirect(site_url('mahasiswa/data_pengajuancuti'));
                }
        }
        
        public function approved()
        {
                $this->form_validation->set_rules('id_pengajuan','id_pengajuan','trim|required|min_length[1]|max_length[255]');
                if ($this->form_validation->run()==true)
                {
                $id_pengajuan = $this->input->post('id_pengajuan');
                $status = $this->input->post('status');
                
                $this->mymodel->edit_approved($id_pengajuan,$status);
                redirect(site_url('kaprodi/data_formcuti'));
                }
        }
}