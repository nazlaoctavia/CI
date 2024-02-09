<?php
defined('BASEPATH')or exit('NO direct script access allowed');

class kaprodi extends CI_Controller{
        public function index()
        {       
                $data['admin'] = $this->mymodel->tampil_admin()->result();
                $data['username'] = $this->session->userdata('username');
                $data['id_user'] = $this->session->userdata('id_user');
                $data['page']="dashboard_kaprodi";
                $this->load->view('v_kaprodi',$data);
        }
        
        public function data_kaprodi()
        {
                $data['kaprodi'] = $this->mymodel->tampil_kaprodi()->result();
                $data['page']='data_kaprodi';
                $this->load->view('v_kaprodi',$data);

        }
        public function data_formcuti()
        {
                $data['kaprodi'] = $this->mymodel->tampil_pengajuancuti()->result();
                $data['page']='data_formcuti';
                $this->load->view('v_kaprodi',$data);

        }

        public function update_cuti($id)
        {
                $where=array('id_pengajuan'=>$id);
                $rec=$this->mymodel->read_where('tb_pengajuancuti',$where);
                $data=array(
                        'rec'=>$rec[0],
                );
                $data['page']='cuti';
                $this->load->view('v_kaprodi',$data);

        }

        public function data_pengajuancuti()
        {
                $data['pengajuancuti'] = $this->mymodel->tampil_pengajuancuti()->result();
                $data['page']='data_pengajuancuti';
                $this->load->view('v_kaprodi',$data);

        }
        public function create_faq()
        {
                $this->form_validation->set_ruler('Pertanyaan','pertanyaan','trim|required|min_leght[1]max_length[255]');
                if ($this->form_validastion->run()==true)
                {
                $pertanyaan = $this->input->post('id_pengajuan');
                $id_pengajuan = $this->input->post('pertanyaan');

                $this->m_data->create_faq($pertanyaan,$jawaban);
                redirect(site_url('admin/faq'));
                }
        }
        
        
        public function setuju()
        {
                $this->form_validation->set_rules('id_pengajuan','id_pengajuan','trim|required|min_length[1]|max_length[255]');
                if ($this->form_validation->run()==true)
                {
                $id_pengajuan = $this->input->post('id_pengajuan');
                $status = $this->input->post('status');

                $this->mymodel->tsetuju($id_pengajuan,$status);
                redirect(site_url('kaprodi/data_formcuti'));
                }
        }
        public function tsetuju()
        {
                $this->form_validation->set_rules('id_pengajuan','id_pengajuan','trim|required|min_length[1]|max_length[255]');
                if ($this->form_validation->run()==true)
                {
                $id_pengajuan = $this->input->post('id_pengajuan');
                $status = $this->input->post('status');

                $this->mymodel->tsetuju($id_pengajuan,$status);
                redirect(site_url('kaprodi/data_formcuti'));
                }
        }
       
}