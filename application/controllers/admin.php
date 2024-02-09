<?php
defined('BASEPATH')or exit('NO direct script access allowed');

class admin extends CI_Controller{


        

        public function index()
        {       
               
                $data['admin'] = $this->mymodel->tampil_admin()->result();
                $data['username'] = $this->session->userdata('username');
                $data['jk'] = $this->session->userdata('jk');
                $data['id_user'] = $this->session->userdata('id_user');
                $data['page']="dashboard";
                $this->load->view('v_admin',$data);
        }
        
        public function data_admin()
        {
               
                $data['admin'] = $this->mymodel->tampil_admin()->result();
                $data['username'] = $this->session->userdata('username');
                $data['id_user'] = $this->session->userdata('id_user');
                $data['page']='data_admin';
                $this->load->view('v_admin',$data);

        }
        public function add_admin()
        {
                $data['page']='add_admin';
                $this->load->view('v_admin',$data);

        }
        public function add_kaprodi()
        {
                $data['page']='add_kaprodi';
                $this->load->view('v_admin',$data);

        }
        public function add_mahasiswa()
        {
                $data['page']='add_mahasiswa';
                $this->load->view('v_admin',$data);

        }
        public function data_kaprodi()
        {
                $data['kaprodi'] = $this->mymodel->tampil_kaprodi()->result();
                $data['page']='data_kaprodi';
                $this->load->view('v_admin',$data);

        }
        public function data_mahasiswa()
        {
                $data['mahasiswa'] = $this->mymodel->tampil_mahasiswa()->result();
                $data['page']='data_mahasiswa';
                $this->load->view('v_admin',$data);

        }
        public function data_pengajuancuti()
        {
                $data['pengajuancuti'] = $this->mymodel->tampil_pengajuancuti()->result();
                $data['page']='data_pcadmin';
                $this->load->view('v_admin',$data);

        }
        public function create_dtadmin()
        {
                $this->form_validation->set_rules('nama_lengkap','nama_lengkap','trim|required|min_length[1]|max_length[255]');
                if ($this->form_validation->run()==true)
                {
                $nama_lengkap = $this->input->post('nama_lengkap');
                $jenis_kelamin = $this->input->post('jenis_kelamin');
                $username = $this->input->post('username');
                $password = md5($this->input->post('password'));
                $email = $this->input->post('email');
                $level = $this->input->post('level');

                $configss['upload_path']   = FCPATH.'/uploads/';
					$configss['allowed_types'] = 'jpg|jpeg|png|gif|webp';
					$new_namess = "2".time().$_FILES["foto"]['name'];
					$configss['file_name'] = $new_namess;
					$configss['remove_spaces'] = FALSE;
					
					$this->load->library('upload', $configss);
					
				if($this->upload->do_upload('foto')) {
					$uploadDatass = $this->upload->data();	
					
					$this->mymodel->create_dtadmin($nama_lengkap,$jenis_kelamin,$username,$password,$uploadDatass['file_name'],$email,$level);
					redirect(site_url('admin/data_admin'));
                   } else {
                        echo "error upload1";
                        die();       
                   }


                }else {
                        echo "error upload2";
                        die();
                }
                

                        }
        public function create_dtkaprodi()
        {
                $this->form_validation->set_rules('nama_lengkap','nama_lengkap','trim|required|min_length[1]|max_length[255]');
                $this->form_validation->set_rules('password','password','trim|required|min_length[1]|max_length[255]');
                if ($this->form_validation->run()==true)
                {
                $nidn = $this->input->post('nidn');
                $nama_lengkap = $this->input->post('nama_lengkap');
                $jenis_kelamin = $this->input->post('jenis_kelamin');
                $jabatan_struktural = $this->input->post('js');
                $username = $this->input->post('username');
                $password = md5($this->input->post('password'));
                $email = $this->input->post('email');
                $approvent = $this->input->post('approvent');
                $level = $this->input->post('level');

                $configss['upload_path']   = FCPATH.'/uploads/';
					$configss['allowed_types'] = 'jpg|jpeg|png|gif';
					$new_namess = "1".time().$_FILES["foto"]['name'];
					$configss['file_name'] = $new_namess;
					$configss['remove_spaces'] = FALSE;
					
					$this->load->library('upload', $configss);
					
				if($this->upload->do_upload('foto')) {
					$uploadDatass = $this->upload->data();	
					
					$this->mymodel->create_dtkaprodi($nidn,$nama_lengkap,$jenis_kelamin,$jabatan_struktural,$username,$password,$email,$approvent,$level,$uploadDatass['file_name']);
					redirect(site_url('admin/data_kaprodi'));
                   } else {
                        echo "error upload1";
                        die();       
                   }


                }else {
                        echo "error upload2";
                        die();
                }
                

                        }
                

                
                        public function create_dtmahasiswa()
                        {
                                $this->form_validation->set_rules('username','username','trim|required|min_length[1]|max_length[255]');
                                if ($this->form_validation->run()==true)
                                {
                                $npm = $this->input->post('npm');
                                $nama_lengkap = $this->input->post('nama_lengkap');
                                $program_studi = $this->input->post('program_studi');
                                $username = $this->input->post('username');
                                $password = md5($this->input->post('password'));
                                $jenis_kelamin = $this->input->post('jenis_kelamin');
                                $email = $this->input->post('email');
                                $level = $this->input->post('level');
                
                                $configss['upload_path']   = FCPATH.'/uploads/';
                                                        $configss['allowed_types'] = 'jpg|jpeg|png|gif';
                                                        $new_namess = "1".time().$_FILES["foto"]['name'];
                                                        $configss['file_name'] = $new_namess;
                                                        $configss['remove_spaces'] = FALSE;
                                                        
                                                        $this->load->library('upload', $configss);
                                                        
                                                if($this->upload->do_upload('foto')) {
                                                        $uploadDatass = $this->upload->data();	
                                                        
                                                        $this->mymodel->create_dtmahasiswa($npm,$nama_lengkap,$jenis_kelamin,$program_studi,$username,$password,$email,$uploadDatass['file_name'],$level);
                                                        redirect(site_url('admin/data_mahasiswa'));
                                   } else {
                                        echo "error upload1";
                                        die();       
                                   }
                
                
                                }else {
                                        echo "error upload2";
                                        die();
                                }
                                
                
                                        }
                public function delete($id)
                {
                        $where=array('id_admin'=>$id);
                         $this->mymodel->delet_data('tb_admin',$where);
                        redirect(site_url('admin/data_admin'));
                }
                public function delete_k($id)
                {
                        $where=array('id_kaprodi'=>$id);
                         $this->mymodel->delet_data('tb_kaprodi',$where);
                        redirect(site_url('admin/data_kaprodi'));
                }
                public function input_k($id)
                {
                        $where=array('id_kaprodi'=>$id);
                         $this->mymodel->input_data('tb_kaprodi',$where);
                        redirect(site_url('admin/data_kaprodi'));
                }
                public function delete_m($id)
                {
                        $where=array('id_mahasiswa'=>$id);
                         $this->mymodel->delet_data('tb_mahasiswa',$where);
                        redirect(site_url('admin/data_mahasiswa'));
                }
                
                function do_update_da(){
                        $beritaId = $this -> session -> userdata('beritaId');
                        $id_admin = $this->input->post('idk');
                        $nama_lengkap = $this->input->post('nama_lengkap');
                        $jenis_kelamin = $this->input->post('jenis_kelamin');
                        $username = $this->input->post('username');
                        $password = md5($this->input->post('password'));
                        $email = $this->input->post('email');
                        $level = $this->input->post('level');
        
                        
                        $configs['upload_path']   = FCPATH.'/uploads/';
                        $configs['allowed_types'] = 'jpg|jpeg|png|gif';
                        $new_names = "1".$beritaId.time().$_FILES["foto"]['name'];
                        $configs['file_name'] = $new_names;
                                        $configs['remove_spaces'] = FALSE;
                                        
                                        $this->load->library('upload', $configs);
                                        
                                        if($this->upload->do_upload('foto')) {
                                                $uploadDatas = $this->upload->data();
                                        
        
                                                $this->mymodel->edit_da($nama_lengkap,$jenis_kelamin,$username,$password,$uploadDatas['file_name'],$email,$id_admin);
                                                redirect(site_url('admin/data_admin'));
                                                
                                                
                                        } else {
                                                echo "error upload";
                                                die();
                                        }
                                        
                                $this->session->set_flashdata('success_editadmin','Proses Edit Data Admin Berhasil');	
                }
                
                function do_update_ka(){
                        $beritaId = $this -> session -> userdata('beritaId');
                        $id_kaprodi = $this->input->post('kaid');
                        $nidn = $this->input->post('nidn');
                        $nama_lengkap = $this->input->post('nama_lengkap');
                        $jenis_kelamin = $this->input->post('jenis_kelamin');
                        $js = $this->input->post('js');
                        $username = $this->input->post('username');
                        $password = md5($this->input->post('password'));
                        $email = $this->input->post('email');
                        $approvent = $this->input->post('approvent');
                        $level = $this->input->post('level');
        
                        
                        $configs['upload_path']   = FCPATH.'/uploads/';
                        $configs['allowed_types'] = 'jpg|jpeg|png|gif';
                        $new_names = "1".$beritaId.time().$_FILES["foto"]['name'];
                        $configs['file_name'] = $new_names;
                                        $configs['remove_spaces'] = FALSE;
                                        
                                        $this->load->library('upload', $configs);
                                        
                                        if($this->upload->do_upload('foto')) {
                                                $uploadDatas = $this->upload->data();
                                        
        
                                                $this->mymodel->edit_ka($nidn,$nama_lengkap,$jenis_kelamin,$js,$username,$password,$email,$uploadDatas['file_name'],$id_kaprodi);
                                                redirect(site_url('admin/data_kaprodi'));
                                                
                                                
                                        } else {
                                                echo "error upload";
                                                die();
                                        }
                                        
                                $this->session->set_flashdata('success_editkaprodi','Proses Edit Data Ketua Program Studi Berhasil');	
                }
                function do_update_ma(){
                        $beritaId = $this -> session -> userdata('beritaId');
                        $id_mahasiswa = $this->input->post('idki');
                        $npm = $this->input->post('npm');
                        $nama_lengkap = $this->input->post('nama_lengkap');
                        $jenis_kelamin = $this->input->post('jenis_kelamin');
                        $program_studi = $this->input->post('program_studi');
                        $username = $this->input->post('username');
                        $password = md5($this->input->post('password'));
                        $email = $this->input->post('email');
        
                        
                        $configs['upload_path']   = FCPATH.'/uploads/';
                        $configs['allowed_types'] = 'jpg|jpeg|png|gif';
                        $new_names = "1".$id_mahasiswa.time().$_FILES["foto"]['name'];
                        $configs['file_name'] = $new_names;
                                        $configs['remove_spaces'] = FALSE;
                                        
                                        $this->load->library('upload', $configs);
                                        
                                        if($this->upload->do_upload('foto')) {
                                                $uploadDatas = $this->upload->data();
                                        
        
                                                $this->mymodel->edit_ma($npm,$nama_lengkap,$jenis_kelamin,$program_studi,$username,$password,$email,$uploadDatas['file_name'],$id_mahasiswa);
                                                redirect(site_url('admin/data_mahasiswa'));
                                                
                                                
                                        } else {
                                                echo "error upload";
                                                die();
                                        }
                                        
                                $this->session->set_flashdata('success_editmahasiswa','Proses Edit Data Mahasiswa Berhasil');	
                }


}
        
