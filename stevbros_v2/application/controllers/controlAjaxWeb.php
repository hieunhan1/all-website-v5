<?php
if(isset($_POST['rejectContact'])){
	$table = 'web_contact';
	$name = $c->_model->_changeDauNhay($_POST['name']);
	$email = $c->_model->_changeDauNhay($_POST['email']);
	$message = $c->_model->_changeDauNhay($_POST['message']);
	if($name=='' || $email==''){
		$arr = array('error'=>1, 'message'=>'Error: Please press F5 key to try again');
		echo $c->exportError($arr);
		return false;
	}
	$ipAddress=$c->checksIpAddress();
	if( $ipAddress==false ) return false;
	
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
	$data = $c->_model->_webHeaderID($id);
	if(count($data) > 0){
		if($data['img']=='') $img='themes/website/img/avatar.png'; else $img=IMAGE_URL.$data['img'];
		$content = $c->_model->_webContentID($id);
		echo '<div class="img"><img src="'.$img.'" alt="'.$data['name'].'"/></div>
        <div class="info viewpost">
			'.$content['content'].'
			<p style="text-align:right">'.$data['name'].'<br />'.date('M d, Y', $data['datetime']).'</p>
		</div> <div class="clear1"></div>';
	}
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
	$ipAddress=$c->checksIpAddress();
	if( $ipAddress==false ) return false;
	
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

if(isset($_POST['rejectLecturer'])){
	$table = 'mn_lecturer';
	if(count($_POST) < 7){
		$arr = array('error'=>1, 'message'=>'Error: Please press F5 key to try again');
		echo $c->exportError($arr);
		return false;
	}
	$ipAddress=$c->checksIpAddress();
	if( $ipAddress==false ) return false;
	
	$data = $c->createEditData($table);
	if($data!=false){
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

/*entrytest*/
if(isset($_GET['entrytest'])){
	if(!isset($_GET['menu_id']) || !isset($_GET['users_id'])) return false;
	$menu_id = $_GET['menu_id']; settype($menu_id, "int");
	$users_id = $_GET['users_id']; settype($users_id, "int");
	
	$cG = new controlGerenal;
	
	$logo = $cG->logo($lang);
	$logoStevbros = $logo[0];
	$logoPMI = $logo[1];
	
    $currentPage = $c->_model->_webHeaderID($menu_id);
	if(count($currentPage)==0) return false;
	
	include_once('view/web_entrytest.php');
	return true;
}

if(isset($_POST['entrytestUser'])){
	if( !isset($_POST['users_id']) || !isset($_POST['menu_id']) || !isset($_POST['entrytest_id']) || !isset($_POST['answers']) ){
		$arr = array('error'=>1, 'message'=>'Error 01: Please press F5 key to try again');
		echo $c->exportError($arr);
		return false;
	}
	$users_id = $_POST['users_id']; settype($users_id, 'int');
	$menu_id = $_POST['menu_id']; settype($menu_id, 'int');
	$entrytest_id = $_POST['entrytest_id']; settype($entrytest_id, 'int');
	$answers = $_POST['answers']; settype($answers, 'int');
	if($users_id==0 || $menu_id==0 || $entrytest_id==0 || $answers==0){
		$arr = array('error'=>1, 'message'=>'Error 02: Please press F5 key to try again');
		echo $c->exportError($arr);
		return false;
	}
	
	$check = $c->_model->_checkEntryTestUser($users_id, $menu_id, $entrytest_id);
	if( count($check)!=0 ){
		$arr = array('error'=>1, 'message'=>'Error 03: Please press F5 key to try again');
		echo $c->exportError($arr);
		return false;
	}
	
	$c->_model->_insertEntryTestUser($users_id, $menu_id, $entrytest_id, $answers);
	$arr = array('error'=>0, 'message'=>'Success');
	echo $c->exportError($arr);
}
/*end entrytest*/
?>