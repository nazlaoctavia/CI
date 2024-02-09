<?php
class login_model extends CI_Model{
    function validate($username,$password){
        $this->db->where('username',$username);
        $this->db->where('password',$password);
        $result = $this->db->get('tb_user',1);
        return $result;
    }
    function validate_admin($username,$password){
        $this->db->where('username',$username);
        $this->db->where('password',$password);
        $result = $this->db->get('tb_admin',1);
        return $result;
    }
    
    function validate_kaprodi($username,$password){
        $this->db->where('username',$username);
        $this->db->where('password',$password);
        $result = $this->db->get('tb_kaprodi',1);
        return $result;
    }

    function validate_mahasiswa($username,$password){
        $this->db->where('username',$username);
        $this->db->where('password',$password);
        $result = $this->db->get('tb_mahasiswa',1);
        return $result;
    }
    
}