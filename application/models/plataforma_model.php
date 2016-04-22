<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Plataforma_model extends CI_Model
{
	public function insert($table,$data)
	{
		return $this->db->insert($table , $data);
	}
	public function getRegistradosServicio()
	{
		return $this->db->get('servicio1')->result();
	}
	public function getsmsLogs()
	{
		return $this->db->get('smslogs')->result();
	}
	public function altasLogs()
	{
		return $this->db->get('altaslogs')->result();
	}
	public function bajasLogs()
	{
		return $this->db->get('bajaslogs')->result();
	}
	public function cobrosLogs()
	{
		return $this->db->get('cobroslogs')->result();
	}
	
}
?>
