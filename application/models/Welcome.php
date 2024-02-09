<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class mymodel extends CI_model {
	public function get_where($where,$namatb)
	{
		$this->load->get_where('$where,$namatb');
		return $res;
	}
}
