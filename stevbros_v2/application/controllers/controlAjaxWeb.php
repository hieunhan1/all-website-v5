<?php
if(isset($_POST['rejectContact'])){
	$table = 'web_contact';
	$name = $c->_model->_changeDauNhay($_POST['name']);
	$email = $c->_model->_changeDauNhay($_POST['email']);
	$message = $c->_model->_changeDauNhay($_POST['message']);
	if($name=='' || $email=='' || $message==''){
		$arr = array('error'=>1, 'message'=>'Error: Please press F5 key to try again');
		echo $c->exportError($arr);
		return false;
	}
	
	$check = $c->_model->_checksIpAddress($table, $ipAddress);
	$check = time() - $check['datetime'];
	if($check<30){
		$arr = array('error'=>1, 'message'=>'You manipulate too fast, please try again after 30 seconds.');
		echo $c->exportError($arr);
		return false;
	}
	
	$data = $c->createEditData($table);
	if($data!=false){
		$title = $name;
		$subject = 'No-reply | Contact';
		$body = '<div style="line-height:20px; color:#333; font-size:12pt">
			<h3 style="font-size:150%; margin-bottom:20px">Chào ban quản trị website.</h3>
			<p>Bạn  <span style="text-transform:uppercase; font-weight:bold">'.$name.'</span> để lại lời nhắn sau:</p>
			<p style="color:#666; margin-bottom:20px">'.$message.'</p>
			<p style="font-weight:bold; font-style:italic">Thông tin người liên hệ: <a href="'.CONS_BASE_URL.'/ajax/?idContact='.$data.'&ipAddress='.$ipAddress.'">Click vào đây để xem thông tin</a></p>
		</div>';
		$add_address = array();
		$add_address[] = array('email'=>$config['email'], 'name'=>'Admin');
		/*$add_cc = array();
		$add_cc[] = array('email'=>'hieunhan112@gmail.com','name'=>'Tran Nhan');
		$add_bcc = array();
		$add_bcc[] = array('email'=>'tanhao.lee@gmail.com','name'=>'Hao Le');*/
		/*ob_start();
		$c->sendmail($title, $subject, $body, $add_address);
		ob_get_clean();*/
		
		$str = "<div class='messageContact viewpost'><p class='title'>Contact Success</p><p>Please notify that you have contacted successfully to <b>{$config['sitename']}</b> website. We will reply to you soon.</p><p>Respect,</p></div>";
		$arr = array('error'=>0, 'message'=>$str);
		echo $c->exportError($arr);
		return true;
	}else{
		$arr = array('error'=>1, 'message'=>'Error: Please press F5 key to try again');
		echo $c->exportError($arr);
		return false;
	}
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

if(isset($_POST['opinionDetail'])){
	$id = $c->_model->_changeDauNhay($_POST['opinionDetail']); settype($id, 'int');
	$data = $c->_model->_webContentID($id);
	echo $data['content'];
	return true;
}

if(isset($_GET['viewPDF'])){
	$link = $c->_model->_changeDauNhay($_GET['viewPDF']);
	include_once('../js/pdfView/index.php');
	return true;
}

if(isset($_POST['rejectRegister'])){
	$table = 'web_contact';
	$name = $c->_model->_changeDauNhay($_POST['name']);
	$email = $c->_model->_changeDauNhay($_POST['email']);
	$message = $c->_model->_changeDauNhay($_POST['message']);
	if($name=='' || $email=='' || $message==''){
		$arr = array('error'=>1, 'message'=>'Error: Please press F5 key to try again');
		echo $c->exportError($arr);
		return false;
	}
	
	$check = $c->_model->_checksIpAddress($table, $ipAddress);
	$check = time() - $check['datetime'];
	if($check<30){
		$arr = array('error'=>1, 'message'=>'You manipulate too fast, please try again after 30 seconds.');
		echo $c->exportError($arr);
		return false;
	}
	
	$data = $c->createEditData($table);
	if($data!=false){
		$title = $name;
		$subject = 'No-reply | Contact';
		$body = '<div style="line-height:20px; color:#333; font-size:12pt">
			<h3 style="font-size:150%; margin-bottom:20px">Chào ban quản trị website.</h3>
			<p>Bạn  <span style="text-transform:uppercase; font-weight:bold">'.$name.'</span> để lại lời nhắn sau:</p>
			<p style="color:#666; margin-bottom:20px">'.$message.'</p>
			<p style="font-weight:bold; font-style:italic">Thông tin người liên hệ: <a href="'.CONS_BASE_URL.'/ajax/?idContact='.$data.'&ipAddress='.$ipAddress.'">Click vào đây để xem thông tin</a></p>
		</div>';
		$add_address = array();
		$add_address[] = array('email'=>$config['email'], 'name'=>'Admin');
		/*$add_cc = array();
		$add_cc[] = array('email'=>'hieunhan112@gmail.com','name'=>'Tran Nhan');
		$add_bcc = array();
		$add_bcc[] = array('email'=>'tanhao.lee@gmail.com','name'=>'Hao Le');*/
		/*ob_start();
		$c->sendmail($title, $subject, $body, $add_address);
		ob_get_clean();*/
		
		$str = "<div class='messageContact viewpost'><p class='title'>Contact Success</p><p>Please notify that you have contacted successfully to <b>{$config['sitename']}</b> website. We will reply to you soon.</p><p>Respect,</p></div>";
		$arr = array('error'=>0, 'message'=>$str);
		echo $c->exportError($arr);
		return true;
	}else{
		$arr = array('error'=>1, 'message'=>'Error: Please press F5 key to try again');
		echo $c->exportError($arr);
		return false;
	}
}
?>