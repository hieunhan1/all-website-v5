<?php
if(isset($_POST['rejectContact'])){
	$table = 'web_contact';
	$name = $c->_model->_changeDauNhay($_POST['name']);
	$email = $c->_model->_checkEmail($_POST['email']);
	$message = $c->_model->_changeDauNhay($_POST['message']);
	$type = $c->_model->_changeDauNhay($_POST['type']);
	if($name=='' || $type=='' || $email==false){
		$arr = array('error'=>1, 'message'=>'Error: Please press F5 key to try again');
		echo $c->exportError($arr);
		return false;
	}
	$ipAddress=$c->checksIpAddress();
	if( $ipAddress==false ) return false;
	
	$data = $c->createEditDataUser($table);
	if($data!=false){
		$arr = array('error'=>0, 'message'=>'<p><strong>Liên hệ thành công</strong></p><p>Xin thông báo bạn đã liên hệ&nbsp;thành công. Chúng tôi sẽ trả lời cho bạn sớm nhất có thể.</p><p>Thân chào,</p>');
		echo $c->exportError($arr);
		return true;
	}else{
		$arr = array('error'=>1, 'message'=>'Error: Please press F5 key to try again');
		echo $c->exportError($arr);
		return false;
	}
}

if(isset($_GET['viewContact'])){ //view detail contact
	if(!isset($_SESSION['adminID'])) header('location: '.CONS_BASE_URL.'/'.CONS_LINK_ADMIN);
	
	$user = $_SESSION['adminID'];
	$arr = array(
		'select' => '*',
		'from' => 'web_contact',
		'where' => "`status`=0 OR `user`='{$user}'",
		'order' => '`status`, `id` DESC',
		'limit' => '50',
	);
	$data = $c->_model->_select($arr);
	
	include_once('view/web_contact_detail.php');
	return true;
}

if(isset($_POST['viewContactDetail'])){
	if(!isset($_SESSION['adminID'])){
		$arr = array('error'=>1, 'message'=>'Phiên làm việc của bạn đã hết. Vui lòng đăng nhập.');
		echo json_encode($arr);
		return false;
	}
	
	$id = $_POST['id']; settype($id, 'int');
	if($id==0){
		$arr = array('error'=>1, 'message'=>'ID truyền sai');
		echo json_encode($arr);
		return false;
	}
	
	$table = 'web_contact';
	
	$user = $_SESSION['adminID'];
	$arr = array(
		'select' => '*',
		'from' => $table,
		'where' => "(`status`=0 OR `user`='{$user}') AND `id`='{$id}' ",
		'limit' => '1',
	);
	$data = $c->_model->_select($arr);
	$row = $data[0];
	if($row['header_id']!='' && $row['header_id']!=0){
		$course = $c->_model->_viewDetail('web_header', $row['header_id']);
		$row['course'] = $course['name'];
	}
	
	if($row['status']==0) $c->_model->_updateStatus($table, $id, $user);
	
	echo json_encode($row);
	return true;
}

if(isset($_POST['getOpening'])){
	$link = trim($_POST['link']);
	$tags = trim($_POST['tags']);
	
	include_once('libraries/simple_html_dom.php');
	$html = file_get_html($link);
	$html = $html->find('#'.$tags, 0)->innertext;
	$html ='<table width="100%" border="1" cellpadding="5" cellspacing="0" class="table">'.$html.'</table>';
	echo $html;
	return true;
}

?>