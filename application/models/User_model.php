<?php
class User_model extends CI_Model {
   public function get_user($username, $password ) {
      $query = $this->db->get_where('tb_mahasiswa', array('username' => $username, 'password' => $password));
      return $query->row_array();
   }
   public function get_jenis_kelamin($username, $password) {
      $this->db->select('jenis_kelamin');
      $this->db->where('username', $username);
      $this->db->where('password', $password);
      $query = $this->db->get('tb_mahasiswa');
      $result = $query->row();
      if ($result) {
         return $result->jenis_kelamin;
      } else {
         return false;
      }
   }
}
?>
