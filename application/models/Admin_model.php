<?php
class Admin_model extends CI_Model {
   public function get_admin($username, $password) {
      $query = $this->db->get_where('tb_admin', array('username' => $username, 'password' => $password));
      return $query->row_array();
   }
}
function cek_admin($username,$password) {
   $kondisi = array(
         'username'=>$username,
         'password'=>md5($password)
   );
   $this->db->select('*');
   $this->db->from('tb_admin');
   $this->db->where($kondisi);
   $this->db->limit(1);
   return $this->db->get();
}
?>
