<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class mymodel extends CI_Model {
 	function __costruct()
	{
		# code...
		$this->load->database();
	}
	public function tampil_admin()
	{
		return $this->db->get('tb_admin');
	}
	public function tampil_mahasiswa()
	{
		return $this->db->get('tb_mahasiswa');
	}
	public function tampil_kaprodi()
	{
		return $this->db->get('tb_kaprodi');
	}
	public function tampil_pengajuancuti()
	{
		return $this->db->get('tb_pengajuancuti');
	}
	public function get_where($namatb,$Where)
	{
		$res=$this->db->get_where($namatb,$Where);
		return $res;
	} 
	
	


	public function create_dtadmin($nama_lengkap,$jenis_kelamin,$username,$password,$foto,$email,$level)
	{
		$data_admin = array(
			'nama_lengkap'=>$nama_lengkap,
			'jenis_kelamin'=>$jenis_kelamin,
			'username'=>$username,
			'password'=>$password,
			'foto'=>$foto,
			'email'=>$email,
			'level'=>$level
		);
		$this->db->insert('tb_admin',$data_admin);
	}
	public function create_dtkaprodi($nidn,$nama_lengkap,$jenis_kelamin,$jabatan_struktural,$username,$password,$email,$approvent,$level,$foto)
	{
		$data = array(
			'nidn'=>$nidn,
			'nama_lengkap'=>$nama_lengkap,
			'jenis_kelamin'=>$jenis_kelamin,
			'jabatan_struktural'=>$jabatan_struktural,
			'username'=>$username,
			'password'=>$password,
			'email'=>$email,
			'foto'=>$foto,
			'approvent'=>$approvent,
			'level'=>$level
		);
		$this->db->insert('tb_kaprodi',$data);
	}
	public function create_dtmahasiswa($npm,$nama_lengkap,$jenis_kelamin,$program_studi,$username,$password,$email,$foto,$level)
	{
		$data_admin = array(
			'npm'=>$npm,
			'nama_lengkap'=>$nama_lengkap,
			'jenis_kelamin'=>$jenis_kelamin,
			'program_studi'=>$program_studi,
			'username'=>$username,
			'password'=>$password,
			'email'=>$email,
			'foto'=>$foto,
			'level'=>$level
		);
		$this->db->insert('tb_mahasiswa',$data_admin);
	}
	public function mycreate_cuti($npm,$nama_lengkap,$fakultas,$program_studi,$semester,$alasancuti,$no_hp,$alamat,$status)
	{
		$data_cuti = array(
			'npm'=>$npm,
			'nama_lengkap'=>$nama_lengkap,
			'fakultas'=>$fakultas,
			'program_studi'=>$program_studi,
			'semester'=>$semester,
			'alasancuti'=>$alasancuti,
			'no_hp'=>$no_hp,
			'alamat'=>$alamat,
			'status'=>$status
		);
		$this->db->insert('tb_pengajuancuti',$data_cuti);
	}
	public function edit_approved($id_pengajuan,$status)
	{
		$data = array(
			'status'=>$status	
		);

		$where = array(
			'id_pengajuan'=>$id_pengajuan
		);
		$this->db->where($where);
		$this->db->update('tb_pengajuancuti',$data);
	}
	public function read_where($table,$where)
	{
		$res=$this->db->get_where($table,$where);
		return $res->result_array();
	}
	public function delet_data($table,$where)
	{
		$res=$this->db->delete($table,$where);
		return $res;
	}
	function edit_da($nama_lengkap,$jenis_kelamin,$username,$password,$foto,$email,$id_admin)
	{									
		$data_admin = array(
			'nama_lengkap'=>$nama_lengkap,
			'jenis_kelamin'=>$jenis_kelamin,
			'username'=>$username,
			'password'=>$password,
			'foto'=>$foto,
			'email'=>$email
		);
		$where = array(
			'id_admin' => $id_admin
		);
		$this->db->where($where);
		$this->db->update("tb_admin",$data_admin);

	}
	function edit_ka($nidn,$nama_lengkap,$jenis_kelamin,$js,$username,$password,$email,$foto,$id_kaprodi)
	{									
		$data_kaprodi = array(
			'nidn'=>$nidn,
			'nama_lengkap'=>$nama_lengkap,
			'jenis_kelamin'=>$jenis_kelamin,
			'jabatan_struktural'=>$js,
			'username'=>$username,
			'password'=>$password,
			'email'=>$email,
			'foto'=>$foto
		);
		$where = array(
			'id_kaprodi' => $id_kaprodi
		);
		$this->db->where($where);
		$this->db->update("tb_kaprodi",$data_kaprodi);

	}
	function edit_ma($npm,$nama_lengkap,$jenis_kelamin,$program_studi,$username,$password,$email,$foto,$id_mahasiswa)
	{									
		$data_mahasiswa = array(
			'npm'=>$npm,
			'nama_lengkap'=>$nama_lengkap,
			'jenis_kelamin'=>$jenis_kelamin,
			'program_studi'=>$program_studi,
			'username'=>$username,
			'password'=>$password,
			'email'=>$email,
			'foto'=>$foto
		);
		$where = array(
			'id_mahasiswa' => $id_mahasiswa
		);
		$this->db->where($where);
		$this->db->update("tb_mahasiswa",$data_mahasiswa);

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
