<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class m_update extends CI_Model {
    function update_data1($username,$password,$nama_lengkap,$jenis_kelamin,$foto,$email,$level)
	{									
		$data = array(
			'username'=>$username,
            'password'=>$password,
            'nama_lengkap'=>$nama_lengkap,
            'jenis_kelamin'=>$jenis_kelamin,
            'foto'=>$foto,
            'email'=>$email,
            'level'=>$level

		);
		$where = array(
            'id_admin'=>$id_admin
			
		);

		$this->db->where($where);
		$this->db->update("tb_admin",$data);	
	}
}