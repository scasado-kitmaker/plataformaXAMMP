<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Users_model extends CI_Model
{
	//obtiene las entradas de la bbdd y las devuelve en orden descente
	
	//Inserta valores que se le pasan en la tabla que se le indique
	
	//Valida las credenciales al hacer login
	public function validate_credentials($username, $password)
	{
		$this->db->where('telefono', $username);
		$this->db->where('password', $password);
		return $this->db->get('usuario')->row();
	}	
	
}
