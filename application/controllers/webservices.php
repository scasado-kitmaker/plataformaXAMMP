<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Webservices extends CI_Controller {
 //Constructor del controlador
	public function __construct()
	{
		parent::__construct();		
		$this->load->model('webservices_model');
	}
	public function index()
	{	
		
	}
	
	public function getToken()
	{
		$output= $this->webservices_model->getTokenModel(); 
		
		//$xml = simplexml_load_string($output);
	 	
	 	$output2=new SimpleXMLElement($output);
	 	
	 	$data = array(
            'statusCode'  =>$output2->statusCode ,
            'statusMessage'=>$output2->statusMessage ,
            'txId'=>$output2->txId ,
            'token'=>$output2->token ,           

            ); 	 	
		$this->load->view('tokentest',$data );

	}
	public function getBill()
	{
		$output= $this->webservices_model->getTokenModel(); 
		
		//$xml = simplexml_load_string($output);
	 	
	 	$output2=new SimpleXMLElement($output);
	 	
	 	$data = array(
            'statusCode'  =>$output2->statusCode ,
            'statusMessage'=>$output2->statusMessage ,
            'txId'=>$output2->txId ,
            'token'=>$output2->token ,           

            ); 	

		$output= $this->webservices_model->getBillModel($data); 	
		$this->load->view('tokentest',$data );
	}

	public function calltokentest()
	{
		$this->load->view('calltokentest');
	}
	public function test()
	{	
		//generamos num aleatorio para la transaccion para obtener el token
		$random_transaction_token=rand();

		//Host del webservice
		$host="http://52.30.94.95/";
		//datos de autenticacion
		//$user="scasado";
		//$pass="BRskzyTE";
		$userpass="scasado:BRskzyTE";

		//URL para los request
		$send_sms_url="http://52.30.94.95/send_sms";
		$token_url="http://52.30.94.95/token";
		$bill_url="http://52.30.94.95/bill";

		//String con el request del token
		$token_request='<?xml version="1.0" enconding="UTF-8"?>'.
		'<request>'.
		'<transaction>'.$random_transaction_token.'</transaction>'.
		'</request>';

		//String con el request del cobro
		$bill_request='<?xml version="1.0" encoding="UTF-8"?>'.
		'<request>'.
		'<transaction>'.'</transaction>'.
		'<msisdn>'.'</msisdn>'. 
		'<amount>'.'</amount>'.
		'<token>'.'</token>'.
		'</request>';

		//String con el request del sms
		$sms_request='<?xml version="1.0" encoding="UTF-8"?>'.
		'<request>'.
		'<shortcode>'.'</shortcode>'.
		'<text>'.'</text>'.
		'<msisdn>'.'<msisdn>'.
		'<transaction>'.'</transaction>'.
		'</request>';

		//PRUEBA CURL PARA OBTENER EL TOKEN

        // create curl resource 
		$ch = curl_init(); 

		// Pasamos los datos para autenticarse
		curl_setopt($ch, CURLOPT_USERPWD, $userpass);

        // set url 
		curl_setopt($ch, CURLOPT_URL, $token_url); 

		//xml que enviamos
		curl_setopt($ch, CURLOPT_POSTFIELDS, $token_request);

		//HTTP POST normal
		curl_setopt($ch, CURLOPT_POST, TRUE); 

        //return the transfer as a string 
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE); 

        // $output contains the output string 
		$output = curl_exec($ch); 

        // close curl resource to free up system resources 
		curl_close($ch);      
		
		//$this->load->view->('tokentest',$output);
	}




}
