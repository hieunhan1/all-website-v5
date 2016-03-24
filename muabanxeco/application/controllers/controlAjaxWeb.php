<?php
if(isset($_POST['rejectContact'])){
	$table = 'web_contact';
	$name = $c->_model->_changeDauNhay($_POST['name']);
	$phone = $c->_model->_changeDauNhay($_POST['phone']);
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
		$cars='';
		if($type==1){
			$type = 17;
		}else if($type==2){
			$type = 3;
			if(isset($_POST['header_id'])){
				$header_id = $c->_model->_changeDauNhay($_POST['header_id']);
				$dataHeader = $c->_model->_webHeaderID($header_id);
				$cars = $dataHeader['name'];
			}
		}else if($type==3){
			$type = 22;
		}else return false;
		
		$dataEvent = $c->_model->_typeEvent($type);
		$AddBCC = '';
		$AddAddress = array('field'=>$email, 'name'=>$name);
		if(trim($dataEvent['email'])!='') $AddBCC = array('field'=>$dataEvent['email'], 'name'=>CONS_SEND_MAIL_FROM_NAME);
		$arr = array(
			'{_name}' => $name,
			'{_phone}' => $phone,
			'{_cars}' => $cars,
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
		if($data['other']!='') $company = ' - '.$data['other']; else $company='';
		$content = $c->_model->_webContentID($id);
		echo '<div class="img"><img src="'.$img.'" alt="'.$data['name'].'"/></div>
        <div class="info viewpost">
			'.$content['content'].'
			<p style="text-align:right">'.$data['name'].$company.'<br />'.date('M d, Y', $data['datetime']).'</p>
		</div> <div class="clear1"></div>';
	}
	return true;
}

/*if(isset($_GET['viewPDF'])){
	$link = $c->_model->_changeDauNhay($_GET['viewPDF']);
	include_once('../js/pdfView/index.php');
	return true;
}*/

/*if(isset($_POST['rejectRegister'])){
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
	
	$data = $c->createEditDataUser($table);
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
}*/

if(isset($_POST['rejectTrainer'])){
	$table = 'mn_trainer';
	$name = $c->_model->_changeDauNhay($_POST['name']);
	$email = $c->_model->_checkEmail($_POST['email']);
	if($name=='' || $email==false){
		$arr = array('error'=>1, 'message'=>'Error 01: Please press F5 key to try again');
		echo $c->exportError($arr);
		return false;
	}
	$ipAddress=$c->checksIpAddress();
	if( $ipAddress==false ) return false;
	
	$data = $c->createEditDataUser($table);
	if($data!=false){
		$dataEvent = $c->_model->_typeEvent(8);
		$AddBCC = '';
		$AddAddress = array('field'=>$email, 'name'=>$name);
		if(trim($dataEvent['email'])!='') $AddBCC = array('field'=>$dataEvent['email'], 'name'=>'Stevbros');
		$arr = array(
			'{_name}' => $name,
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
		echo $c->exportError($arr);
		return true;
	}else{
		$arr = array('error'=>1, 'message'=>'Error 02: Please press F5 key to try again');
		echo $c->exportError($arr);
		return false;
	}
}

if(isset($_POST['rejectOpinion'])){ /*viet Blog và Y kien*/
	$table = 'web_header';
	$name = $c->_model->_changeDauNhay($_POST['name']);
	$authors = $c->_model->_changeDauNhay($_POST['authors']);
	$other = $c->_model->_changeDauNhay($_POST['other']);
	$content = $c->_model->_changeDauNhay($_POST['rejectcontent']);
	if($name=='' || $authors=='' || $content=='' || $other==''){
		$arr = array('error'=>1, 'message'=>'Error 01: Please press F5 key to try again');
		echo $c->exportError($arr);
		return false;
	}
	
	$ipAddress=$c->checksIpAddress();
	if( $ipAddress==false ) return false;
	
	$data = $c->createEditDataUser($table);
	if($data!=false){
		/*insert web_content*/
		$type = 'create';
		$table = 'web_content';
		$fields = array('content', 'header_id');
		$values = array($content, $data);
		$id = $c->_model->_getSql($type, $table, $fields, $values);
		
		/*get notify*/
		if($_POST['rejectOpinion']==1) $type = 11;
		else if($_POST['rejectOpinion']==2) $type = 4;
		else return false;
		$dataEvent = $c->_model->_typeEvent($type);
		
		/*send mail*/
		$email = $c->_model->_checkEmail($other);
		if($email!=false){
			$AddBCC = '';
			$AddAddress = array('field'=>$email, 'name'=>$name);
			if(trim($dataEvent['email'])!='') $AddBCC = array('field'=>$dataEvent['email'], 'name'=>'Stevbros');
			$arr = array(
				'{_name}' => $authors,
			);
			$content = $c->contentReplace($dataEvent['content'], $arr);
			$arrSend = array(
				'AddAddress' => $AddAddress,
				'AddBCC' => $AddBCC,
				'Subject' => $dataEvent['subject'],
				'Body' => $content,
			);
			
			$data = $c->sendMail($arrSend, 1);
		}
		
		$notify = $c->contentReplace($dataEvent['notification'], $arr);
		$notify = '<div class="messageContact viewpost">'.$notify.'</div>';
		$notify = str_replace('"', "'", $notify);
		$notify = $c->_model->_removeNewLine($notify);
		$arr = array('error'=>0, 'message'=>$notify);
		echo $c->exportError($arr);
		return true;
	}else{
		$arr = array('error'=>1, 'message'=>'Error 02: Please press F5 key to try again');
		echo $c->exportError($arr);
		return false;
	}
}

/*entrytest*/
if(isset($_GET['entrytest'])){
	if(!isset($_GET['menu_id']) || !isset($_GET['type']) || !isset($_GET['date'])) return false;
	$menu_id = $c->_model->_changeDauNhay($_GET['menu_id']); settype($menu_id, "int");
	$table = $c->_model->_changeDauNhay($_GET['type']);
	$table_date = $c->_model->_changeDauNhay($_GET['date']);
	
	$arr = array(
		"select" => "`id`",
		"from" => "`{$table}`",
		"where" => "`datetime`='{$table_date}'",
	);
	$data = $c->_model->_select($arr);
	if(count($data)==0){
		echo 'Khong ton tai bai test nay.';
		return false;
	}
	
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
	if( !isset($_POST['table']) || !isset($_POST['table_date']) || !isset($_POST['menu_id']) || !isset($_POST['entrytest_id']) || !isset($_POST['answers']) ){
		$arr = array('error'=>1, 'message'=>'Error 01: Please press F5 key to try again');
		echo $c->exportError($arr);
		return false;
	}
	$table = $c->_model->_changeDauNhay($_POST['table']);
	$table_date = $c->_model->_changeDauNhay($_POST['table_date']);
	$menu_id = $_POST['menu_id']; settype($menu_id, 'int');
	$entrytest_id = $_POST['entrytest_id']; settype($entrytest_id, 'int');
	$answers = $_POST['answers']; settype($answers, 'int');
	if($table=='' || $table_date=='' || $menu_id==0 || $entrytest_id==0 || $answers==0){
		$arr = array('error'=>1, 'message'=>'Error 02: Please press F5 key to try again');
		echo $c->exportError($arr);
		return false;
	}
	
	$check = $c->_model->_checkEntryTestUser($menu_id, $table, $table_date, $entrytest_id);
	if( count($check)!=0 ){
		$arr = array('error'=>1, 'message'=>'Error 03: Please press F5 key to try again');
		echo $c->exportError($arr);
		return false;
	}
	
	$c->_model->_insertEntryTestUser($menu_id, $table, $table_date, $entrytest_id, $answers);
	$arr = array('error'=>0, 'message'=>'Success');
	echo $c->exportError($arr);
}
/*end entrytest*/
?>