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
		$random_transaction_token=uniqid(rand(),TRUE);;
		$URL="http://52.30.94.95/token";

		$XML='<?xml version="1.0" encoding="UTF-8"?>'.
		'<request>'.
		'<transaction>'.$random_transaction_token.'</transaction>'.
		'</request>';

		$XMLarray = array(
            'transaction'  =>$random_transaction_token ,         
            'time' => date('Y-m-d H:i:s'),
            ); 	 	
		$this->webservices_model->insert('tokenrequestlog',$XMLarray);
		$outputToken=$this->curlconstructor($URL,$XML); 
		
		return $outputToken;   

	}
	public function getBillModel($tokensaved,$numeroz)
	{
		//CORREGIR LO DE $TOKEN
		extract($tokensaved, EXTR_PREFIX_SAME, "wddx");

		uniqid(rand('1','99999999999999999999999'));


		$random_transaction_bill=uniqid(rand(),TRUE);
		$URL="http://52.30.94.95/bill";

		$servicio=array(
				'telefono'=>$this->input->post('telefono'),
				);
		$XML='<?xml version="1.0" encoding="UTF-8"?>'.
		'<request>'.
		'<transaction>'.$random_transaction_bill.'</transaction>'.
		'<msisdn>'.$numeroz.'</msisdn>'. 
		'<amount>'.'1'.'</amount>'.
		'<token>'.$token.'</token>'.
		'</request>';
		$XMLarray = array(
            'transaction'  =>$random_transaction_bill , 
            'msisdn'  =>$numeroz,
            'amount'  =>'1',
            'token'  =>$token,  
            'time' => date('Y-m-d H:i:s'),
            ); 	 	
		$this->webservices_model->insert('billrequestlog',$XMLarray);
		
		$outputBill=$this->curlconstructor($URL,$XML); 
		return $outputBill;   
		
	}
	public function getSmsModel($numeroz)
	{
		$random_transaction_sms=uniqid(rand(),TRUE);;
		$URL="http://52.30.94.95/send_sms";

		$XML='<?xml version="1.0" encoding="UTF-8"?>'.
		'<request>'.
		'<shortcode>'.'+34'.'</shortcode>'.
		'<text>'.'Se ha procesado un cobro de 1$ por sus suscripción'.'</text>'.
		'<msisdn>'.$numeroz.'</msisdn>'.
		'<transaction>'.$random_transaction_sms.'</transaction>'.
		'</request>';
		
		$XMLarray = array(
            'shortcode'  =>'34' , 
            'text'  =>'Se ha procesado un cobro de 1$ por sus suscripción',
            'msisdn'  =>$numeroz,
            'transaction'  =>$random_transaction_sms,  
            'time' => date('Y-m-d H:i:s'),
            ); 	 	

		$this->webservices_model->insert('smsrequestlog',$XMLarray);
		$outputSms=$this->curlconstructor($URL,$XML); 
		return $outputSms;   

	}
	public function getSmsModelNoSaldo($numeroz)
	{
		$random_transaction_sms=uniqid(rand(),TRUE);
		$URL="http://52.30.94.95/send_sms";

		$XML='<?xml version="1.0" encoding="UTF-8"?>'.
		'<request>'.
		'<shortcode>'.'+34'.'</shortcode>'.
		'<text>'.'No se ha podido procesar el cobro de sus suscripción'.'</text>'.
		'<msisdn>'.$numeroz.'</msisdn>'.
		'<transaction>'.$random_transaction_sms.'</transaction>'.
		'</request>';
		
		$XMLarray = array(
            'shortcode'  =>'34' , 
            'text'  =>'No se ha podido procesar el cobro de sus suscripción',
            'msisdn'  =>$numeroz,
            'transaction'  =>$random_transaction_sms,  
            'time' => date('Y-m-d H:i:s'),
            ); 	 	

		$this->webservices_model->insert('smsrequestlog',$XMLarray);
		$outputSms=$this->curlconstructor($URL,$XML); 
		return $outputSms;   

	}

	public function insertTokenLog()
	{

	}
}
?>
