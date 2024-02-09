<?php
class Login extends CI_Controller{
  function __construct(){
    parent::__construct();
    $this->load->model('login_model');
    $this->load->model('Admin_model');
    $this->load->model('User_model');
    $this->load->model('Kaprodi_model');
  }

  function index(){
    $this->load->view('v_login');
  }

  function auth(){
    $email    = $this->input->post('email',TRUE);
    $username    = $this->input->post('username',TRUE);
    $password = md5($this->input->post('password',TRUE));
    $validate = $this->login_model->validate($username,$password);
    $validate1 = $this->login_model->validate_admin($username,$password);
    $validate2 = $this->login_model->validate_kaprodi($username,$password);
    $validate3 = $this->login_model->validate_mahasiswa($username,$password);
    if($validate->num_rows() > 0 or $validate1->num_rows() > 0 or $validate2->num_rows() > 0 or $validate3->num_rows() > 0){
      $data  = $validate2->row_array();
      $data  = $validate3->row_array();
      $data  = $validate->row_array();
      $data  = $validate1->row_array();

      
        $username  = $data['username'];
        $email = $data['password'];
        $level = $data['level'];
        $sesdata = array(
            'id_user'  => $id_user,
            'username'  => $username,
            'email'     => $email,
            'level'     => $level,
            'logged_in' => TRUE
        );
        $this->session->set_userdata($sesdata);
        // access login for admin
        if($level === 'admin'){
            redirect('admin');
        // access login for staff
        }elseif($level === 'user'){
            redirect('mahasiswa');

        }elseif($level === 'mahasiswa'){
            redirect('mahasiswa');

        }elseif($level === 'kaprodi'){
            redirect('kaprodi');

        // access login for author
        }else{
            redirect('home');
        }
    }else{
        echo $this->session->set_flashdata('msg','Username or Password is Wrong');
        redirect('login');
    }
  }
  public function login() {
    // Mengambil data dari form login
    $username = $this->input->post('username');
    $password = md5($this->input->post('password'));

    // Pengecekan login mahasiswa
    $this->load->model('User_model');
    $user = $this->User_model->get_user($username, $password );
    if ($user) {
       // Login berhasil untuk mahasiswa
       // data session
       $sesdata = array(
        'username_mahasiswa'  => $username,
        'email'     => $email,
        'level'     => $level,
        'logged_in' => TRUE
    );
    $this->session->set_userdata($sesdata);
       redirect('mahasiswa');
    } else {
       // Pengecekan login admin
       $this->load->model('Admin_model');
       $admin = $this->Admin_model->get_admin($username, $password);
       if ($admin) {
          // Login berhasil untuk admin
          // Data session
          $sesdata2 = array(
            'username'  => $username,
            'email'     => $email,
            'level'     => $level,
            'logged_in' => TRUE
        );
        $this->session->set_userdata($sesdata2);
          redirect('admin');
        } else {
          // Pengecekan login kaprodi
          $this->load->model('Kaprodi_model');
          $kaprodi = $this->Kaprodi_model->get_kaprodi($username, $password);
          if ($kaprodi) {
            // Login berhasil untuk kaprodi
            // Data session
            $sesdata3 = array(
              'username'  => $username,
              'email'     => $email,
              'level'     => $level,
              'logged_in' => TRUE
          );
          $this->session->set_userdata($sesdata3);
            redirect('kaprodi');
            } else {
              echo $this->session->set_flashdata('msg','Username or Password is Wrong');
              redirect('login');
          }
       }
    }
 }

  function logout(){
      $this->session->sess_destroy();
      redirect('login');
  }

}

