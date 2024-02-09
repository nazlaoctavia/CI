<?php
class Kaprodi_model extends CI_Model {
   public function get_kaprodi($username, $password) {
      $query = $this->db->get_where('tb_kaprodi', array('username' => $username, 'password' => $password));
      return $query->row_array();
   }


   function tsetuju($id_pengajuan,$status)
	{									
		$data = array(
			'status'=>$status

		);
		$where = array(
            'id_pengajuan'=>$id_pengajuan
			
		);

		$this->db->where($where);
		$this->db->update("tb_pengajuancuti",$data);	
	}

}
?>
