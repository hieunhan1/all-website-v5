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



if(isset($_GET['sendMailNew'])){
	$AddAddress = array();
	$AddAddress[] = array('field'=>'hieunhan112@gmail.com', 'name'=>'Hiếu Nhân');
	$AddAddress[] = array('field'=>'admin@dayamthuc.vn', 'name'=>'day');
	$AddAddress = array('field'=>'nhan300489@gmail.com', 'name'=>'Nhân');
	
	$AddCC = array();
	//$AddCC[] = array('field'=>'hieunhan112@gmail.com', 'name'=>'CC Hiếu Nhân');
	$AddCC[] = array('field'=>'admin@dayamthuc.vn', 'name'=>'CC day');
	//$AddCC = array('field'=>'nhan300489@gmail.com', 'name'=>'CC Nhân');
	
	$AddBCC = array();
	$AddBCC[] = array('field'=>'hieunhan112@gmail.com', 'name'=>'BCC Hiếu Nhân');
	$AddBCC[] = array('field'=>'admin@dayamthuc.vn', 'name'=>'BCC day');
	//$AddBCC = array('field'=>'nhan300489@gmail.com', 'name'=>'BCC Nhân');
	
	$AddEmbeddedImage = array();
	$AddEmbeddedImage[] = array('field'=>'../public/_thumbs/Images/1451839895.jpg', 'name'=>'insertImage1');
	$AddEmbeddedImage[] = array('field'=>'../public/_thumbs/Images/1451839458.jpg', 'name'=>'insertImage2');
	$AddEmbeddedImage = array('field'=>'../public/_thumbs/Images/1451839895.jpg', 'name'=>'insertImage1');
	
	$AddAttachment = array();
	$AddAttachment[] = array('field'=>'../public/files/text1.txt', 'name'=>'text1.txt');
	$AddAttachment[] = array('field'=>'../public/files/text2.txt', 'name'=>'text2.txt');
	$AddAttachment = array('field'=>'../public/files/text3.txt', 'name'=>'text3.txt');
	
	$AddReplyTo = array('field'=>'replyto@iappscode.com', 'name'=>'ReplyTo');
	
	$arr = array(
		'AddAddress' => $AddAddress,
		'AddCC' => $AddCC,
		//'AddBCC' => $AddBCC,
		'AddReplyTo' => $AddReplyTo,
		'AddAttachment' => $AddAttachment,
		'AddEmbeddedImage' => $AddEmbeddedImage,
		'Subject' => 'Subject Thử gửi mail support UTF-8',
		'Body' => '<h1>Test mail of PHPMailer html</h1>
			<p>This is a test picture: <img src="cid:insertImage1" /></p>
			<p>This is a test picture: <img src="cid:insertImage2" /></p>',
	);
	
	//$c->sendMail($arr, 1);
	return true;
}

if(isset($_GET['nhanMail'])){
	//include_once('libraries/emailReader.php');
	//$email = new emailReader;
	
	include_once('libraries/email5.php');
	$host = 'imap.gmail.com';
	$port = '993';
	$user = 'no-reply@stevbros.com';
	$pass = 'No-reply#123*';
	
	$connection = pop3_login($host, $port, $user, $pass, $folder="INBOX", $ssl=true);
	
	$pop3_stat = pop3_stat($connection);
	$c->_model->_print($pop3_stat);
	
	$pop3_list = pop3_list($connection);
	$row_pop3_list = $pop3_list[5];
	$c->_model->_print($row_pop3_list);
	
	$mid = $row_pop3_list['msgno'];
	
	$pop3_retr = pop3_retr($connection, $mid);
	//$c->_model->_print($pop3_retr);
	
	/*$pop3_dele = pop3_retr($connection, $row_pop3_list['msgno']);
	$c->_model->_print($pop3_dele);*/
	
	$mail_parse_headers = mail_parse_headers($pop3_retr);
	$c->_model->_print($mail_parse_headers);
	
	$mail_mime_to_array = mail_mime_to_array($connection, $mid, true);
	$c->_model->_print($mail_mime_to_array);
	
	$part = imap_fetchstructure($connection, $mid); 
	$mail_get_parts = mail_get_parts($connection, $mid, $part, 0);
	$c->_model->_print($mail_get_parts);
	
	$mail_decode_part = mail_decode_part($connection, $mid, $part, 0);
	$c->_model->_print($mail_decode_part);
}

if(isset($_GET['nhanMail2'])){
	include_once('libraries/MixiPOP3/mixipop3.php');
}

function encoding($encoding, $text){
	switch ($encoding) {
		# 7BIT
		case 0:
			return $text;
		# 8BIT
		case 1:
			return quoted_printable_decode($text);
		# BINARY
		case 2:
			return imap_binary($text);
		# BASE64
		case 3:
			return imap_base64($text);
		# QUOTED-PRINTABLE
		case 4:
			return imap_utf8($text);
		# OTHER
		case 5:
			return mb_decode_mimeheader($text);
		# UNKNOWN
		case 6:
			return chunk_split(base64_encode($text));
		# UNKNOWN
		case 7:
			return imap_utf8(imap_base64($text));
		# QUOTED-PRINTABLE
		case 1:
			return quoted_printable_decode($text);
		# BINARY
		default:
			return $text;
	}
}

function decode7Bit($text) {
	// If there are no spaces on the first line, assume that the body is
	// actually base64-encoded, and decode it.
	$lines = explode("\r\n", $text);
	$first_line_words = explode(' ', $lines[0]);
	if ($first_line_words[0] == $lines[0]) {
		$text = base64_decode($text);
	}
	
	// Manually convert common encoded characters into their UTF-8 equivalents.
	$characters = array(
		'=20' => ' ', // space.
		'=E2=80=99' => "'", // single quote.
		'=0A' => "\r\n", // line break.
		'=A0' => ' ', // non-breaking space.
		'=C2=A0' => ' ', // non-breaking space.
		"=\r\n" => '', // joined line.
		'=E2=80=A6' => '…', // ellipsis.
		'=E2=80=A2' => '•', // bullet.
	);
	
	// Loop through the encoded characters and replace any that are found.
	foreach ($characters as $key => $value) {
		$text = str_replace($key, $value, $text);
	}
	
	return $text;
}

if(isset($_GET['nhanMail3'])){
	include_once('libraries/nhanmail/index.php');
}