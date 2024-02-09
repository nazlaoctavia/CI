<?php
defined('BASEPATH')or exit('NO direct script access allowed');

class mahasiswa extends CI_Controller{
        public function index()
        {       
                
                $data['admin'] = $this->mymodel->tampil_admin()->result();
                $data['username'] = $this->session->userdata('username_mahasiswa');
                $data['jenis_kelamin'] = $this->session->userdata('jenis_kelamin');
                $data['id_user'] = $this->session->userdata('id_user');
                $data['id_mahasiswa'] = $this->session->userdata('id_mahasiswa');
                $data['page']="dashboard_mahasiswa";
                $this->load->view('v_mahasiswa',$data);
        }
        
        public function data_mahasiswa()
        {
                $data['mahasiswa'] = $this->mymodel->tampil_mahasiswa()->result();
                $data['page']='data_mahasiswa';
                $this->load->view('v_mahasiswa',$data);

        }
        public function add_mahasiswa()
        {
                $data['page']='add_mahasiswa';
                $this->load->view('v_admin',$data);

        }
        
        public function formcuti_mahasiswa()
        {
                $data['page']='formcuti';
                $this->load->view('v_mahasiswa',$data);

        }

        public function data_pengajuancuti()
        {
                $data['pengajuancuti'] = $this->mymodel->tampil_pengajuancuti()->result();
                $data['page']='data_pcmahasiswa';
                $this->load->view('v_mahasiswa',$data);

        }
                
        public function create_faq()
        {
                $this->form_validation->set_ruler('Pertanyaan','pertanyaan','trim|required|min_leght[1]max_length[255]');
                if ($this->form_validastion->run()==true)
                {
                $pertanyaan = $this->input->post('pertanyaan');
                $jawaban = $this->input->post('jawaban');
                $this->m_data->create_faq($pertanyaan,$jawaban);
                redirect(site_url('admin/faq'));
                }
        }
        public function delete($id)
        {
                $where=array('id_mahasiswa'=>$id);
                 $this->mymodel->delet_data('tb_mahasiswa',$where);
                redirect(site_url('mahasiswa/data_mahasiswa'));
        }
}