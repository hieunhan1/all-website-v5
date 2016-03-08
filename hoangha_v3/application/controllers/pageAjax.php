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
	
	public function createEditDataUser($table, $method='POST'){
		$id=0;
		$type = 'create';
		
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
	
	public function remove_dir($dir = null) {
		if (is_dir($dir)) {
			$objects = scandir($dir);
			foreach ($objects as $object) {
				if ($object != "." && $object != ".." && $object != ".htaccess") {
					if (filetype($dir."/".$object) == "dir") remove_dir($dir."/".$object);
					else unlink($dir."/".$object);
				}
			}
			reset($objects);
			//rmdir($dir);
		}
	}
	
	public function checksIpAddress($time=1, $limit=10){
		$ipAddress = $_SERVER['REMOTE_ADDR'];
		$datetime = time() - $time*3600;
		$data = $this->_model->_checksIpAddress($ipAddress, $datetime, $limit);
		if(count($data) > 0){
			$total = count($data);
			$check = $data[0];
			
			$check = time() - $check['datetime'];
			if($check<30){
				$arr = array('error'=>1, 'message'=>'You manipulate too fast, please try again after 30 seconds.');
				echo $this->exportError($arr);
				return false;
			}else if($total >= $limit){
				$arr = array('error'=>1, 'message'=>'Trong '.$time.' tiếng bạn chỉ gửi liên hệ được '.$limit.' lần, tránh spam.');
				echo $this->exportError($arr);
				return false;
			}
		}
		$this->_model->_insertIpAddress($ipAddress);
		return $ipAddress;
	}
	
	public function sendMail($arr, $type=0){
		if(!is_array($arr)) return false;
		/*$arr = array(
			'AddAddress' => '',
			'AddCC' => '',
			'AddBCC' => '',
			'AddAttachment' => array('../public/files/brochure.pdf'),
			'AddEmbeddedImage' => '',
			'Subject' => 'Subject Thử gửi mail support UTF-8',
			'Body' => '<h1>Test mail</h1> <p>This is a test picture: <img src="cid:insertImage" /></p>',
		);*/
		include_once('libraries/phpmailer/PHPMailerAutoload.php');
		$mailer = new PHPMailer();
		$mailer->IsSMTP();
		$mailer->Host = CONS_HOST_SMTP_SERVER;
		if($type==1){
			$mailer->SMTPSecure = 'ssl';
			$mailer->Port = 465;
		}else if($type==2){
			$mailer->SMTPSecure = 'tsl';
			$mailer->Port = 587;
		}else{
			$mailer->Port = 25;
		}
		$mailer->SMTPAuth = true;
		$mailer->Username = CONS_SEND_MAIL_ACCOUNT;
		$mailer->Password = CONS_SEND_MAIL_PASSWORD;
		$mailer->From = CONS_SEND_MAIL_FROM;
		$mailer->FromName = CONS_SEND_MAIL_FROM_NAME;
		$mailer->SetFrom(CONS_SEND_MAIL_FROM, CONS_SEND_MAIL_FROM_NAME);
		$mailer->SMTPDebug = 1;
		$mailer->WordWrap = 50;
		$mailer->CharSet="utf-8";
		$mailer->IsHTML(true);
		$mailer->Debugoutput = 'html';
		
		$arrField = array_keys($arr);
		if($arrField==0) return false;
		
		for($i=0; $i<count($arrField); $i++){
			$field = $arrField[$i];
			$data = $arr[$field];
			if(is_array($data)){//checks array
				if(isset($data['field'])){
					$row = $data;
					$mailer->$field($row['field'], $row['name']);
					//echo "{$field} -> {$row['field']} - {$row['name']} <br>";
				}else{
					foreach($data as $row){
						$mailer->$field($row['field'], $row['name']);
						//echo "{$field} -> {$row['field']} - {$row['name']} <br>";
					}
				}
			}else{//khong pha array
				$mailer->$field = $data;
				//echo "{$field} -> {$data}<br>";
			}
		}//end for
		
		$str = ob_start();
		if(!$mailer->Send()){
			echo $mailer->ErrorInfo;
		}
		$str = ob_get_clean();
		return $str;
	}
	
	public function contentReplace($content, $arr=''){
		if(is_array($arr)){
			$field = array_keys($arr);
			$value = array_values($arr);
			for($i=0; $i<count($arr); $i++){
				$content = str_replace($field[$i], $value[$i], $content);
			}
		}
		return '<div style="line-height:150%">'.$content.'</div>';
	}
}

$c = new pageAjax;
$lang = $c->_lang;
$config = $c->_model->_config($lang);
//$lang_var = $c->_model->_language_var($lang);

/*admin*/
if(isset($_SESSION['adminID'])){
	include_once('controlAjaxAdmin.php');
}
/*end admin*/

/*web*/
include_once('controlAjaxWeb.php');
/*end web*/