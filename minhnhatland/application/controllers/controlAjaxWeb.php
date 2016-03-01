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
		$course = '';
		if($type==1){
			$type = 17;
		}else if($type==2){
			$type = 3;
			if(isset($_POST['header_id'])){
				$header_id = $c->_model->_changeDauNhay($_POST['header_id']);
				$dataHeader = $c->_model->_webHeaderID($header_id);
				$course = $dataHeader['name'];
			}
		}else return false;
		
		$dataEvent = $c->_model->_typeEvent($type);
		$AddBCC = '';
		$AddAddress = array('field'=>$email, 'name'=>$name);
		if(trim($dataEvent['email'])!='') $AddBCC = array('field'=>$dataEvent['email'], 'name'=>'Hoa Việt Travel®');
		$arr = array(
			'{_name}' => $name,
			'{_course}' => $course,
			'{_message}' => $message,
		);
		$content = $c->contentReplace($dataEvent['content'], $arr);
		$arrSend = array(
			'AddAddress' => $AddAddress,
			'AddBCC' => $AddBCC,
			'Subject' => $dataEvent['subject'],
			'Body' => $content,
		);
		
		$data = $c->sendMail($arrSend, 1);
		
		$notify = $c->contentReplace($dataEvent['notification'], $arr);
		$notify = '<div class="messageContact viewpost">'.$notify.'</div>';
		$notify = str_replace('"', "'", $notify);
		$notify = $c->_model->_removeNewLine($notify);
		$arr = array('error'=>0, 'message'=>$notify);
		echo json_encode($arr);//$c->exportError($arr);
		flush();
		
		if(!isset($_POST['branch'])) return true;
		
		if($_POST['branch']==2){
			$dataSend = $c->_model->_viewDetail('web_event_form', 9);
			
			$AddAddress = array();
			$arr = array(
				'select' => '`name`, `email`',
				'from' => '`web_users`',
				'where' => '`status`=1 AND `group_id`=1'
			);
			$data = $c->_model->_select($arr);
			foreach($data as $row){
				$AddAddress[] = array('field'=>$row['email'], 'name'=>$row['name']);
			}
			
			$AddCC = array();
			$AddCC[] = array('field'=>'ceo@netspace.edu.vn', 'name'=>'Nguyen Quoc Y');
			$AddCC[] = array('field'=>'admin@netspace.edu.vn', 'name'=>'Tran Nhan');
			
			$arr = array(
				'{_name}' => $name,
				'{_course}' => $course,
			);
			$content = $c->contentReplace($dataSend['content'], $arr);
			$arrSend = array(
				'AddAddress' => $AddAddress,
				'AddCC' => $AddCC,
				'Subject' => $dataSend['subject'],
				'Body' => $content,
			);
			$data = $c->sendMail($arrSend, 1);
		}else{
			$branch = $_POST['branch']; settype($branch, 'int');
			$dataSend = $c->_model->_viewDetail('web_event_form', 10);
			
			$arr = array(
				'select' => '`shorten` as `name`, `email`',
				'from' => '`web_branch`',
				'where' => "`status`=1 AND `id`='{$branch}' "
			);
			$data = $c->_model->_select($arr);
			if(count($data)==0) return false;
			$row = $data[0];
			$AddAddress = array('field'=>$row['email'], 'name'=>$row['name']);
			
			$AddCC = array();
			$AddCC[] = array('field'=>'ceo@netspace.edu.vn', 'name'=>'Nguyen Quoc Y');
			$AddCC[] = array('field'=>'admin@netspace.edu.vn', 'name'=>'Tran Nhan');
			
			$arr = array(
				'{_branch}' => $row['name'],
				'{_date}' => $_POST['datetime'],
				'{_name}' => $name,
				'{_phone}' => $_POST['phone'],
				'{_email}' => $_POST['email'],
				'{_address}' => $_POST['address'],
				'{_course}' => $course,
			);
			$content = $c->contentReplace($dataSend['content'], $arr);
			$arrSend = array(
				'AddAddress' => $AddAddress,
				'AddCC' => $AddCC,
				'Subject' => $dataSend['subject'],
				'Body' => $content,
			);
			$data = $c->sendMail($arrSend, 1);
		}
		
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