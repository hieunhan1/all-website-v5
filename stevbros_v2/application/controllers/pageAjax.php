<?php
class pageAjax{
	public $_lang;
	public $_model;
	public function __construct(){
		$this->_model = new modelAjax;
		$this->_lang = $this->language();
	}
	public function language(){
		if(!isset($_REQUEST['lang']))
			return CONS_DEFAULT_LANG;
		else
			return $_REQUEST['lang'];
	}
	public function config($lang){
		$file_lang = "languages/lang_{$lang}.php";
		if (file_exists($file_lang)) include_once($file_lang);
		return $this->_model->_config($lang);
	}
	
	public function checkRole($role){
		$adminRole = $_SESSION['adminRole'];
		$pageAdmin = $_SESSION['currentPageAdmin'];
		$check = $adminRole[$pageAdmin][$role];
		if($check==1) return true;
		else return false;
	}
	
	public function exportError($arr){
		$str='';
		if(!isset($arr[0])){
			$fields = array_keys($arr);
			$values = array_values($arr);
			for($i=0; $i<count($fields); $i++){
				$str.='"'.$fields[$i].'":"'.$values[$i].'", ';
			}
			$str = rtrim($str, ', ');
			$str = '{'.$str.'}';
		}else{
			foreach($arr as $row){
				$str2='';
				$fields = array_keys($row);
				$values = array_values($row);
				for($i=0; $i<count($fields); $i++){
					$str2.='"'.$fields[$i].'":"'.$values[$i].'", ';
				}
				$str2=rtrim($str2, ', ');
				$str.='{'.$str2.'}, ';
			}
			$str = rtrim($str, ', ');
			$str = '['.$str.']';
		}
		return $str;
	}
	public function createEditData($table, $method='POST'){
		if(!isset($_REQUEST['id']) || $_REQUEST['id']==0 || $_REQUEST['id']==''){
			if($this->checkRole('create')==false) return false;
			$id=0;
			$type = 'create';
		}else{
			if($this->checkRole('edit')==false) return false;
			$id=$_REQUEST['id']; settype($id, 'int');
			if($id==0) return false;
			$type = 'update';
		}
		
		if($method=='POST'){
			$fields = array_keys($_POST);
			$values = array_values($_POST);
		}else if($method=='GET'){
			$fields = array_keys($_GET);
			$values = array_values($_GET);
		}
		$result = $this->_model->_getSql($type, $table, $fields, $values, $id);
		
		if($result==false) echo $result;
		return $result;
	}
	
	public function sendmail($title, $subject, $body, $add_address, $add_cc='', $add_bcc=''){
		include_once('libraries/sendmail/class.phpmailer.php');
		$mail = new PHPMailer();
		$mail->IsSMTP(); // Gọi đến class xử lý SMTP
		$mail->Host = CONS_HOST_SMTP_SERVER; // tên SMTP server
		$mail->SMTPDebug = 2; // enables SMTP debug information (for testing): 1 = errors and messages, 2 = messages only
		$mail->SMTPAuth = true; // Sử dụng đăng nhập vào account
		$mail->Port = 25; // Thiết lập cổng gửi email của máy
		$mail->Username = CONS_SEND_MAIL_ACCOUNT; // SMTP account username
		$mail->Password = CONS_SEND_MAIL_PASSWORD; // SMTP account password
		$mail->IsHTML(true);
		$mail->SetFrom(CONS_SEND_MAIL_ACCOUNT, $title); //Thiet lap thong tin nguoi gui va email nguoi gui
		foreach($add_address as $row) $mail->AddAddress($row['email'],$row['name']); //Thiết lập thông tin người nhận
		if($add_cc!='') foreach($add_cc as $row) $mail->AddCC($row['email'],$row['name']);
		if($add_bcc!='') foreach($add_bcc as $row) $mail->AddBCC($row['email'],$row['name']);
		$mail->CharSet = "utf-8";
		$mail->Subject = $subject; //Thiết lập tiêu đề
		$mail->Body = $body; //Thiết lập nội dung chính của email
		if($mail->Send()) return true;
	}
}

$c = new pageAjax;
$lang = $c->_lang;
$config = $c->config($lang);
//$language_var = $c->_model->_language_var($lang);

/*admin*/
if(isset($_SESSION['adminID'])){
	include_once('controlAjaxAdmin.php');
}
/*end admin*/

/*web*/
include_once('controlAjaxWeb.php');
/*end web*/