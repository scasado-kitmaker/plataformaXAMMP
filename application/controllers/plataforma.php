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
	
	 


}
