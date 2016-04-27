<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Webservices_model extends CI_Model
{	
	//Insertar datos en la tabla indicada
	public function insert($table,$data)
	{
		return $this->db->insert($table , $data);
	}

	public function curlconstructor($URL,$XML)
	{
		$random_transaction_token=rand('1','99999999999999999999999');
		//Datos de autenticacion
		//$user="scasado";
		//$pass="BRskzyTE";
		$userpass="scasado:BRskzyTE";

		$ch = curl_init($URL); 

		// Pasamos los datos para autenticarse
		curl_setopt($ch, CURLOPT_USERPWD, $userpass);


		curl_setopt($ch, CURLOPT_POST, 1);
		curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type:text/xml'));
        // set url 
		//curl_setopt($ch, CURLOPT_URL, $token_url); 

		//xml que enviamos
		curl_setopt($ch, CURLOPT_POSTFIELDS, $XML);

		//return the transfer as a string 
		curl_setopt($ch, CURLOPT_RETURNTRANSFER,1); 

        // $output contains the output string 
		$output= curl_exec($ch); 

        // close curl resource to free up system resources 
		curl_close($ch);  
		return $output;	
	}
	
	public function getTokenModel()
	{
		$random_transaction_token=rand('1','99999999999999999999999');
		$URL="http://52.30.94.95/token";

		$XML='<?xml version="1.0" encoding="UTF-8"?>'.
		'<request>'.
		'<transaction>'.$random_transaction_token.'</transaction>'.
		'</request>';
		
		$outputToken=$this->curlconstructor($URL,$XML); 
		return $outputToken;   

		//borrar a partir del comentario
/*
		$random_transaction_token=rand('1','99999999999999999999999');

		//Datos de autenticacion
		//$user="scasado";
		//$pass="BRskzyTE";
		$userpass="scasado:BRskzyTE";

		//URL para el request
		$token_url="http://52.30.94.95/token";

		//String con el request del token
		$token_request='<?xml version="1.0" encoding="UTF-8"?>'.
		'<request>'.
		'<transaction>'.$random_transaction_token.'</transaction>'.
		'</request>';

		// create curl resource 
		$ch = curl_init($token_url); 

		// Pasamos los datos para autenticarse
		curl_setopt($ch, CURLOPT_USERPWD, $userpass);

        
		curl_setopt($ch, CURLOPT_POST, 1);
		curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type:text/xml'));
        // set url 
		//curl_setopt($ch, CURLOPT_URL, $token_url); 

		//xml que enviamos
		curl_setopt($ch, CURLOPT_POSTFIELDS, $token_request);

		//return the transfer as a string 
		curl_setopt($ch, CURLOPT_RETURNTRANSFER,1); 

        // $output contains the output string 
		$outputToken = curl_exec($ch); 

        // close curl resource to free up system resources 
		curl_close($ch);
		return $outputToken; 
		*/
		
	}
	public function getBillModel($tokensaved,$numerof)
	{

		$random_transaction_bill=rand('1','99999999999999999999999');
		$URL="http://52.30.94.95/bill";

		$XML='<?xml version="1.0" encoding="UTF-8"?>'.
		'<request>'.
		'<transaction>'.$random_transaction_bill.'</transaction>'.
		'<msisdn>'.$this->input->post('telefono').'</msisdn>'. 
		'<amount>'.'1'.'</amount>'.
		'<token>'.$token.'</token>'.
		'</request>';
		
		$outputBill=$this->curlconstructor($URL,$XML); 
		return $outputBill;   
		/*

		$this->db->get('servicio1');
		$random_transaction_bill=rand();

		//Datos de autenticacion
		//$user="scasado";
		//$pass="BRskzyTE";
		$userpass="scasado:BRskzyTE";

		//URL para el request
		$billurl="http://52.30.94.95/bill";
		//String con el request del token
		$bill_request='<?xml version="1.0" encoding="UTF-8"?>'.
		'<request>'.
		'<transaction>'.$random_transaction_bill.'</transaction>'.
		'<msisdn>'.$this->input->post('telefono').'</msisdn>'. 
		'<amount>'.'1'.'</amount>'.
		'<token>'.$token.'</token>'.
		'</request>';

		// create curl resource 
		$ch = curl_init($bill_url); 

		// Pasamos los datos para autenticarse
		curl_setopt($ch, CURLOPT_USERPWD, $userpass);

        
		curl_setopt($ch, CURLOPT_POST, 1);
		curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type:text/xml'));
        // set url 
		//curl_setopt($ch, CURLOPT_URL, $token_url); 

		//xml que enviamos
		curl_setopt($ch, CURLOPT_POSTFIELDS, $bill_request);

		//return the transfer as a string 
		curl_setopt($ch, CURLOPT_RETURNTRANSFER,1); 

        // $output contains the output string 
		$outputBill = curl_exec($ch); 

        // close curl resource to free up system resources 
		curl_close($ch);  
		return $outputBill;   
		*/
	}
	public function getSmsModel($numerof)
	{
		$random_transaction_sms=rand('1','99999999999999999999999');
		$URL="http://52.30.94.95/send_sms";

		$XML='<?xml version="1.0" encoding="UTF-8"?>'.
		'<request>'.
		'<shortcode>'.'+34'.'</shortcode>'.
		'<text>'.'Se ha procesado un cobro de 1$ por sus suscripción'.'</text>'.
		'<msisdn>'.$this->input->post('telefono').'<msisdn>'.
		'<transaction>'.$random_transaction_sms.'</transaction>'.
		'</request>';
		
		$outputSms=$this->curlconstructor($URL,$XML); 
		return $outputSms;   

		/*dfs
		$this->db->get('servicio1');
		$random_transaction_sms=rand();
		$userpass="scasado:BRskzyTE";

		//URL para el request
		$smsurl="http://52.30.94.95/send_sms";
		//xml  request sms
		$sms_request='<?xml version="1.0" encoding="UTF-8"?>'.
		'<request>'.
		'<shortcode>'.'+34'.'</shortcode>'.
		'<text>'.'Se ha procesado un cobro de 1$ por sus suscripción'.'</text>'.
		'<msisdn>'.$this->input->post('telefono').'<msisdn>'.
		'<transaction>'.$random_transaction_sms.'</transaction>'.
		'</request>';
		// create curl resource 
		$ch = curl_init($bill_url); 

		// Pasamos los datos para autenticarse
		curl_setopt($ch, CURLOPT_USERPWD, $userpass);

        
		curl_setopt($ch, CURLOPT_POST, 1);
		curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type:text/xml'));
        // set url 
		//curl_setopt($ch, CURLOPT_URL, $token_url); 

		//xml que enviamos
		curl_setopt($ch, CURLOPT_POSTFIELDS, $bill_request);

		//return the transfer as a string 
		curl_setopt($ch, CURLOPT_RETURNTRANSFER,1); 

        // $output contains the output string 
		$outputBill = curl_exec($ch); 

        // close curl resource to free up system resources 
		curl_close($ch);  
		return $outputSms;   
		*/
	}
}
?>
