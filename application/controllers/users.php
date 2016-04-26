<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Users extends CI_Controller{
        //Constructor del controlador users.php, llama al constructor padre
	public function __construct()
	{
		parent::__construct();
		$this->load->model('users_model');
		$this->load->model('plataforma_model');

	}
        //Carga la vista signin
	public function login()
	{
		$this->load->view('login');
	}
        //Carga la vista signup
	public function signup()
	{
		$id_telefono = $this->session->userdata('username');
		$data['estado'] = $this->plataforma_model->getEstado($id_telefono); 
		$data['saldo'] = $this->plataforma_model->getSaldo($id_telefono); 
		$data['usuario'] = $this->plataforma_model->getUserInfo($id_telefono); 
		$this->load->view('signup',$data);
	}
        //Valida que los datos introducidos existen en los registros de la base de datos,en caso
        //de no ser así devolvera error, en caso de se correctos se iniciara la sesión del usuario.
	public function validate()
	{            
		$username = $this->input->post('username');
		$password = md5($this->input->post('password'));
		if($user = $this->users_model->validate_credentials($username, $password)){
			$session = array(
				'name' => $user->name,
				'username' => $username,
				'is_logged_in' => TRUE,                        
				);
			$this->session->set_userdata($session);
			redirect(base_url());
		}
		else{
			$this->load->view('login', array('error'=>TRUE));
		}
	}
	public function validatePass()
	{
		$username = $this->input->post('username');
		$password = md5($this->input->post('password'));
		if($user = $this->users_model->validate_credentials($username, $password)){
			$session = array(
				'name' => $user->name,
				'username' => $username,
				'is_logged_in' => TRUE,                        
				);
			
			redirect(base_url().'index.php/users/showUpdate/');
		}
		else{
			redirect(base_url());
		}


	}
	 //Cierra la sesion del usuario
	public function logout()
	{
		if($this->session->userdata('is_logged_in'))
			$this->session->sess_destroy();        
		redirect(base_url().'index.php/users/login/');                  
	}
	public function register()
	{
		$telefono = $this->input->post('telefono');
		$password = $this->input->post('password');
		$user = array(
			'telefono' => $telefono,
			'password' =>md5($password),
			
			);
		if($this->users_model->insert('usuario', $user)){
			$session = array(
				'name' => $telefono,
				'username' => $telefono,
				'is_logged_in' => TRUE,                        
				);
			$this->session->set_userdata($session);
			redirect(base_url());
		}
	}
	public function showUpdate()
	{
		$id_telefono = $this->session->userdata('username');
		$data['estado'] = $this->plataforma_model->getEstado($id_telefono); 
		$data['saldo'] = $this->plataforma_model->getSaldo($id_telefono); 
		$data['usuario'] = $this->plataforma_model->getUserInfo($id_telefono); 
		$this->load->view('passwordUpdate',$data);
	}
	public function updatePassword()
	{
		$id_telefono = $this->session->userdata('username');
		$password = $this->input->post('password');
		$pass = array(
			'password' => md5($password),
			);


		$this->users_model->updateContrasenya($id_telefono, $pass);

		redirect(base_url());	
	}
}
?>