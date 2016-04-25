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

       // $this->load->model('plataforma_model');    
        //$this->output->enable_profiler(TRUE);        
	}
	public function index()
	{
		$this->load->view('menu.php');//Cambiar por login.php
	}
	public function alta()
	{
		$this->load->view('alta.php');
	}
	public function baja()
	{
		$this->load->view('baja.php');
	}
	public function aviso_saldo()
	{
		$this->load->view('aviso_saldo.php');
	}
	public function logs()
	{
		$this->load->view('logs.php');
	}
	public function about()
	{
		$this->load->view('about.php');
	}
	public function insert_servicio()
	{
		$this->load->library('form_validation');
		if($this->form_validation->run()===FALSE)
		{
			$data['servicio1']= $this->plataforma_model->getRegistradosServicio();
			$servicio=array(
				'telefono'=>$this->input->post('telefono'),
				);
			$this->plataforma_model->insert('servicio1',$servicio);
			redirect(base_url());
		}
		{
			$this->load->view('baja');
		}

	}
	public function delete_servicio()
	{
		$id_telefono = $this->session->userdata('username');

		$this->plataforma_model->deleteService($id_telefono);

		redirect(base_url());
	}
	public function update_saldo()
	{
		$id_telefono = $this->session->userdata('username');
    	$saldo = array(
        'saldo'     => $this->input->post('quantity'),       
        );

    $this->plataforma_model->updateSaldo($id_telefono, $saldo);

    redirect(base_url());

	}



}
