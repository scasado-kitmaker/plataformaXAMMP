<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Plataforma_model extends CI_Model
{	
	//Insertar datos en la tabla indicada
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
	public function getAltasLogs()
	{
		return $this->db->get('altaslogs')->result();
	}
	public function getBajasLogs()
	{
		return $this->db->get('bajaslogs')->result();
	}
	public function getCobrosLogs()
	{
		return $this->db->get('cobroslogs')->result();
	}
	//Dar de baja usuarios de los servicios
	public function deleteService($id_telefono)
	{
		return $this->db->delete('servicio1', array('telefono'=>$id_telefono));

	}
	public function updateSaldo($id_telefono,$data)
	{
		$this->db->where('telefono', $id_telefono);
		return $this->db->update('usuario', $data);
	}
	public function updateEstado($id_telefono,$data)
	{
		$this->db->where('telefono', $id_telefono);
		return $this->db->update('usuario', $data);
	}
	public function getEstado($id_telefono)
	{
		$this->db->where('telefono', $id_telefono);
		return $this->db->get('usuario')->result();
	}
	public function getSaldo($id_telefono)
	{
		$this->db->where('telefono', $id_telefono);
		return $this->db->get('usuario')->result();
	}
}
?>
