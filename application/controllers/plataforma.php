<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class plataforma extends CI_Controller {
 //Constructor del controlador
	public function __construct()
	{
		parent::__construct();
		date_default_timezone_set('Europe/Madrid');
		$this->load->helper('url');
		$this->load->helper('form');
		$this->load->model('plataforma_model');
        $this->output->enable_profiler(false);        
	}
	public function index()
	{	
		$id_telefono = $this->session->userdata('username');
		$data['estado'] = $this->plataforma_model->getEstado($id_telefono); 
		$data['saldo'] = $this->plataforma_model->getSaldo($id_telefono); 
		$data['usuario'] = $this->plataforma_model->getUserInfo($id_telefono); 
		$this->load->view('panel_control.php',$data);
	}
	public function alta()
	{
		$id_telefono = $this->session->userdata('username');
		$data['estado'] = $this->plataforma_model->getEstado($id_telefono); 
		$data['saldo'] = $this->plataforma_model->getSaldo($id_telefono); 
		$this->load->view('alta.php',$data);
	}
	public function baja()
	{
		$id_telefono = $this->session->userdata('username');
		$data['estado'] = $this->plataforma_model->getEstado($id_telefono); 
		$data['saldo'] = $this->plataforma_model->getSaldo($id_telefono); 
		$this->load->view('baja.php',$data);
	}
	public function aviso_saldo()
	{
		$id_telefono = $this->session->userdata('username');
		$data['estado'] = $this->plataforma_model->getEstado($id_telefono); 
		$data['saldo'] = $this->plataforma_model->getSaldo($id_telefono); 
		$this->load->view('aviso_saldo.php',$data);
	}
	public function logs()
	{
		$id_telefono = $this->session->userdata('username');
		$data['estado'] = $this->plataforma_model->getEstado($id_telefono); 
		$data['saldo'] = $this->plataforma_model->getSaldo($id_telefono); 
		$this->load->view('logs.php',$data);
	}
	public function about()
	{	
		$id_telefono = $this->session->userdata('username');
		$data['estado'] = $this->plataforma_model->getEstado($id_telefono); 
		$data['saldo'] = $this->plataforma_model->getSaldo($id_telefono); 
		$this->load->view('about.php',$data);
	}
	public function insert_servicio()
	{
		$id_telefono = $this->session->userdata('username');
		$this->load->library('form_validation');
		if($this->form_validation->run()===FALSE)
		{
			$data['servicio1']= $this->plataforma_model->getRegistradosServicio();
			$servicio=array(
				'telefono'=>$this->input->post('telefono'),
				);
			$test=array(
				'estado_alta'=>'1',
				);
			$log=array(
				'id_user'=>$this->input->post('telefono'),
				'date' => date('Y-m-d H:i:s'),
			);
			$this->plataforma_model->insert('servicio1',$servicio);
			$this->plataforma_model->insert('altaslogs',$log);
			$this->plataforma_model->updateEstado($id_telefono, $test);
			redirect(base_url());
		}
		{
			$this->load->view('baja');
		}

	}
	public function delete_servicio()
	{	
		$log=array(
			'id_user'=>$this->session->userdata('username'),
			'date' => date('Y-m-d H:i:s'),
			);
		
		$test=array(
			'estado_alta'=>'0',
			);
		$id_telefono = $this->session->userdata('username');

		$this->plataforma_model->deleteService($id_telefono);
		$this->plataforma_model->updateEstado($id_telefono, $test);
		$this->plataforma_model->insert('bajaslogs',$log);
		redirect(base_url());
	}
	public function update_saldo()
	{
		$id_telefono = $this->session->userdata('username');
		$sum1= $this->input->post('quantity');
		$sum2= $this->input->post('quantityOriginal');
		$sumTotal = $sum1+$sum2;
		$saldo = array(
			'saldo'     => $sumTotal,       
			);


		$this->plataforma_model->updateSaldo($id_telefono, $saldo);

		redirect(base_url());

	}
	public function panel_control()
	{
		$id_telefono = $this->session->userdata('username');
		$data['usuario'] = $this->plataforma_model->getUserInfo($id_telefono);
		$data['estado'] = $this->plataforma_model->getEstado($id_telefono); 
		$data['saldo'] = $this->plataforma_model->getSaldo($id_telefono); 
		$this->load->view('panel_control.php',$data);
	}
	
}
