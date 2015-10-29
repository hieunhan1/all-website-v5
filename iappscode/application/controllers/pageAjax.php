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
$ipAddress = $_SERVER['REMOTE_ADDR'];

/*admin*/
if(isset($_SESSION['adminId'])){
	include_once('config/configAdmin.php');
	
	if(isset($_POST['status_one'])){
		$status = $c->_model->_changeDauNhay($_POST['status_one']); settype($status, "int");
		$table = $c->_model->_changeDauNhay($_POST['table']);
		$id = $c->_model->_changeDauNhay($_POST['id']); settype($id, "int");
		if($table!='' && $id!=''){
			$c->_model->_statusOne($table, $id, $status);
		}else return false;
	}
	
	if(isset($_POST['delete_one'])){
		$table = $c->_model->_changeDauNhay($_POST['table']);
		$id = $c->_model->_changeDauNhay($_POST['delete_one']); settype($id, "int");
		if($table=='' || $id=='') return false;
		$c->_model->_deleteOne($table, $id);
		return true;
	}
	
	if(isset($_POST['ajaxRestore'])){
		$id=$_POST['ajaxRestore']; settype($id, "int");
		$backup = new modelBackupRestore;
		echo $backup->_restoreData($id);
		return true;
	}
	if(isset($_POST['clearLogs'])){
		$soNgayLuuLai = $_POST['clearLogs']; settype($soNgayLuuLai, "int");
		if($soNgayLuuLai < 30) return false;
		$logs = new modelBackupRestore;
		$data = $logs->_clearLogs($soNgayLuuLai);
		echo 1;
		return true;
	}
	
	if(isset($_POST['checkAlias'])){
		$id = $c->_model->_changeDauNhay(trim($_POST['id'])); settype($id, 'int');
		$alias = $c->_model->_changeDauNhay(trim($_POST['checkAlias']));
		echo $c->_model->_checkAliasHeader($alias, $id);
		return true;
	}
	
	if(isset($_POST['ajaxNumberItem'])){
		$table = $c->_model->_changeDauNhay($_POST['table']);
		if($table=='') return false;
		echo $c->_model->_ajaxNumberItem($table);
		return true;
	}
	
	/*upload images*/
	function getExtension($str){
		$i = strrpos($str, ".");
		if(!$i) return "";
		$l = strlen($str) - $i;
		$ext = substr($str, $i+1, $l);
		return $ext;
	}
	function xulyImage($img, $urlImgTemp, $urlImg, $urlImgThumb, $original=1){
		$file = $urlImgTemp.$img;
		$sizeInfo = getimagesize($file);
		if(is_array($sizeInfo)){
			include_once('libraries/SimpleImage.php');
			$image = new SimpleImage();
			
			$image->load($file);
			$width = $sizeInfo[0];
			$height = $sizeInfo[1];
			
			if($width<=IMAGE_THUMB_WIDTH && $height<=IMAGE_THUMB_HEIGHT) copy($file, $urlImgThumb.$img);
			elseif($width>=$height){
				$image->resizeToWidth(IMAGE_THUMB_WIDTH);
				$image->save($urlImgThumb.$img);
			}elseif($width<$height){
				$image->resizeToHeight(IMAGE_THUMB_HEIGHT);
				$image->save($urlImgThumb.$img);
			}
			
			if($original==1){
				$image->load($file);
				if($width>=$height && $width>IMAGE_MAX_WIDTH){
					$image->resizeToWidth(IMAGE_MAX_WIDTH);
					$image->save($urlImg.$img);
				}elseif($width<=$height && $height>IMAGE_MAX_HEIGHT){
					$image->resizeToHeight(IMAGE_MAX_HEIGHT);
					$image->save($urlImg.$img);
				}else{
					copy($file, $urlImg.$img);
				}
				if(file_exists($file)) unlink($file);
			}else{
				if(copy($file, $urlImg.$img)){
					if(file_exists($file)) unlink($file);
				}
			}
			
			return true;
		}else return false;
	}
	function viewImage($image, $urlImgThumb, $checkArray){
		$str = '<div class="item" name="'.$image.'">
			<div class="imageSelect">Chọn làm đại diện</div>
			<div class="img"><img src="'.$urlImgThumb.$image.'" /></div>
			<div class="copylink">Copy link</div>
			<div class="imageDelete"><img src="'.CONS_ADMIN_CSS_IMG.'delete.gif" /></div>
		</div>';
		if($checkArray==1) $str .='<script type="text/javascript">
			$(document).ready(function(){
				var arr_img = $("#arr_img").val();
				$("#arr_img").val(arr_img + "'.$image.',");
				return true;
			});
		</script>';
		return $str;
	}
	if(isset($_POST['imageUpload'])){
		include_once('config/configUpload.php');
		$id = $c->_model->_changeDauNhay(trim($_POST['id']));
		$table = $c->_model->_changeDauNhay(trim($_POST['imageUpload']));
		$original = $c->_model->_changeDauNhay(trim($_POST['original'])); // =0 khong xu ly img, =1 xu ly img
		$checkArray = $c->_model->_changeDauNhay(trim($_POST['checkArray'])); // =0 ko run script, #0 run script
		$validFormats = array('jpg', 'png', 'gif', 'bmp', 'jpeg');
		
		$urlImg = $c->_model->_menuTypeOne($table);
		$urlImgView = $urlImg['url_img_thumb'];
		$urlImgThumb = '../'.$urlImg['url_img_thumb'];
		$urlImg = '../'.$urlImg['url_img'];
		$urlImgTemp = '../public/tempUpload/';//link ảnh tạm thời chờ xử lý
		$i = 0;
		foreach($_FILES['photos']['name'] as $name => $value){
			$filename = stripslashes($_FILES['photos']['name'][$name]);
			$size = filesize($_FILES['photos']['tmp_name'][$name]);
			$ext = getExtension($filename);
			$ext = strtolower($ext);
			if(in_array($ext, $validFormats)){
				if ($size < (MAX_SIZE*1024)){
					$i++;
					$imageName = time()+$i;
					$imageName = $imageName.'.'.$ext;
					$imgTemp = $urlImgTemp.$imageName;
					if(move_uploaded_file($_FILES['photos']['tmp_name'][$name], $imgTemp)){
						$result = xulyImage($imageName, $urlImgTemp, $urlImg, $urlImgThumb, $original);
						if($result) echo viewImage($imageName, $urlImgView, $checkArray);
					}else
						echo '<span class="error">'.ERROR_MOVING.'</span>';
				}else
					echo '<span class="error">'.LIMIT_SIZE.'</span>';
			}else
				echo '<span class="error">Unknown extension!</span>';
		}//end foreach
		
		if($checkArray==0){
			$data = $c->_model->_webHeaderID($id);
			if($data['img']!=''){
				if(file_exists($urlImg.$data['img'])) unlink($urlImg.$data['img']);
				if(file_exists($urlImgThumb.$data['img'])) unlink($urlImgThumb.$data['img']);
			}
		}
		return true;
	}
	if(isset($_POST['imageDelete'])){
		$type = $c->_model->_changeDauNhay(trim($_POST['imageDelete']));
		$urlImg = $c->_model->_menuTypeOne($type);
		$name = $c->_model->_changeDauNhay(trim($_POST['name']));
		$image = '../'.$urlImg['url_img'].$name;
		$imageThumb = '../'.$urlImg['url_img_thumb'].$name;
		if(file_exists($imageThumb)) unlink($imageThumb);
		if(file_exists($image)) unlink($image);
		return true;
	}
	/*end upload images*/
	
	/*header insert data*/
	if(isset($_POST['autoHeaderInsert'])){
		if(trim($_POST['name'])!=''){
			$ad = new modelAdmin;
			if(isset($_POST['id'])) $id=$_POST['id']; else $id=0;
			settype($id,'int');
			if($id==0) $type = 1; else $type = 2;
			$table = 'web_header';
			$fields = array_keys($_POST); array_shift($fields); array_push($fields, 'btn');
			$values = array_values($_POST); array_shift($values); array_push($values, 'btn');
			$id = $ad->_getSql($type, $table, $fields, $values, $id);
			if($id==true) echo $id; else echo 0;
		}
		return true;
	}
	/*end header insert data*/
	
	/*content insert data*/
	if(isset($_POST['autoContentInsert'])){
		$ad = new modelAdmin;
		if(isset($_POST['id'])) $id=$_POST['id']; else $id=0;
		settype($id,'int');
		if($id==0) $type = 1; else $type = 2;
		$table = 'web_content';
		$fields = array_keys($_POST); array_shift($fields); array_push($fields, 'btn');
		$values = array_values($_POST); array_shift($values); array_push($values, 'btn');
		$id = $ad->_getSql($type, $table, $fields, $values, $id);
		echo $id;
		return true;
	}
	/*end content insert data*/
}
/*end admin*/

/*web*/
if(isset($_POST['webContact'])){
	$name = $c->_model->_changeDauNhay(trim($_POST['webContact']));
	$email = $c->_model->_changeDauNhay(trim($_POST['email']));
	$phone = $c->_model->_changeDauNhay(trim($_POST['phone']));
	$address = $c->_model->_changeDauNhay(trim($_POST['address']));
	$message = $c->_model->_changeDauNhay($_POST['message']);
	$table = 'web_contact';
	$check = $c->_model->_checksIpAddress($table, $ipAddress);
	$check = time() - $check['datetime'];
	if($check<30){
		echo 2;
		return false;
	}
	if($name!='' && $email!='' && $phone!='' && $message!=''){
		$idContact = $c->_model->_webContactInsert($name, $email, $phone, $address, $message, $ipAddress);
		$title = $name;
		$subject = 'No-reply | Contact';
		$body = '<div style="line-height:20px; color:#333; font-size:12pt">
			<h3 style="font-size:150%; margin-bottom:20px">Chào ban quản trị website.</h3>
			<p>Bạn  <span style="text-transform:uppercase; font-weight:bold">'.$name.'</span> để lại lời nhắn sau:</p>
			<p style="color:#666; margin-bottom:20px">'.$message.'</p>
			<p style="font-weight:bold; font-style:italic">Thông tin người liên hệ: <a href="'.CONS_BASE_URL.'/ajax/?idContact='.$idContact.'&ipAddress='.$ipAddress.'">Click vào đây để xem thông tin</a></p>
		</div>';
		$add_address = array();
		$add_address[] = array('email'=>$config['email'], 'name'=>'Admin');
		/*$add_cc = array();
		$add_cc[] = array('email'=>'hieunhan112@gmail.com','name'=>'Tran Nhan');
		$add_bcc = array();
		$add_bcc[] = array('email'=>'tanhao.lee@gmail.com','name'=>'Hao Le');*/
		$c->sendmail($title, $subject, $body, $add_address);
	}else echo 0;
	return true;
}
if(isset($_GET['idContact'])){ //view detail contact
	if(!isset($_GET['ipAddress'])) return false;
	$id = $c->_model->_changeDauNhay($_GET['idContact']);
	$ipAddress = $c->_model->_changeDauNhay($_GET['ipAddress']);
	$table = 'web_contact';
	$row = $c->_model->_viewDetail($table, $id, $ipAddress);
	include_once('view/web_contact_detail.php');
	if($row['status']==0) $c->_model->_updateStatus($table, $id);
	return true;
}
if(isset($_POST['google_map'])){
	$id_map = trim($_POST['google_map']);
	$id_map = $c->_model->_changeDauNhay($id_map);
	$name = trim($_POST['name']);
	$name = $c->_model->_changeDauNhay($name);
	if($id_map!='' && $name!=''){
		include_once('web_google_map.php');
	}
}
/*end web*/