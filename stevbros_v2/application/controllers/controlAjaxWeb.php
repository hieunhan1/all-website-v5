<?php
if(isset($_POST['rejectContact'])){
	$table = 'web_contact';
	$name = $c->_model->_changeDauNhay($_POST['name']);
	$email = $c->_model->_checkEmail($_POST['email']);
	$message = $c->_model->_changeDauNhay($_POST['message']);
	$type = $c->_model->_changeDauNhay($_POST['type']);
	if($name=='' || $type=='' || $email==false){
		$arr = array('error'=>1, 'message'=>'Error: Please press F5 key to try again');
		echo json_encode($arr);
		return false;
	}
	$ipAddress=$c->checksIpAddress();
	if( $ipAddress==false ) return false;
	
	$data = $c->createEditDataUser($table);
	if($data!=false){
		$courseName = '';
		$date = '';
		
		if($type==1){
			$type = 17;
		}else if($type==2 || $type==3){
			if($type==2) $type = 10;
			if(isset($_POST['header_id'])){
				$header_id = $c->_model->_changeDauNhay($_POST['header_id']);
				$dataHeader = $c->_model->_webHeaderID($header_id);
				$courseName = $dataHeader['name'];
				if(isset($_POST['date_trienkhai'])) $date = date('d/m/Y', strtotime($_POST['date_trienkhai']));
			}
		}else if($type==4){
			$type = 9;
			if(isset($_POST['courses_id'])){
				$courses = $c->_model->_changeDauNhay($_POST['courses_id']);
				$courses = explode(',', $courses);
				for($i=1; $i<=count($courses)-2; $i++){
					$row = $c->_model->_webHeaderID($courses[$i]);
					$courseName .= $row['name'].'<br />';
				}
			}
		}else return false;
		
		$dataEvent = $c->_model->_typeEvent($type);
		$AddBCC = '';
		$AddAddress = array('field'=>$email, 'name'=>$name);
		if(trim($dataEvent['email'])!='') $AddBCC = array('field'=>$dataEvent['email'], 'name'=>'Stevbros');
		$arr = array(
			'{_name}' => $name,
			'{_course}' => $courseName,
			'{_date}' => $date,
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
		echo json_encode($arr);
		return true;
	}else{
		$arr = array('error'=>1, 'message'=>'Error: Please press F5 key to try again');
		echo json_encode($arr);
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

if(isset($_GET['viewPDF'])){
	$link = $c->_model->_changeDauNhay($_GET['viewPDF']);
	include_once('../js/pdfView/index.php');
	return true;
}

/*if(isset($_POST['rejectRegister'])){
	$table = 'web_contact';
	$name = $c->_model->_changeDauNhay($_POST['name']);
	$email = $c->_model->_changeDauNhay($_POST['email']);
	$message = $c->_model->_changeDauNhay($_POST['message']);
	if($name=='' || $email=='' || $message==''){
		$arr = array('error'=>1, 'message'=>'Error: Please press F5 key to try again');
		echo json_encode($arr);
		return false;
	}
	$ipAddress=$c->checksIpAddress();
	if( $ipAddress==false ) return false;
	
	$data = $c->createEditDataUser($table);
	if($data!=false){
		$str = "<div class='messageContact viewpost'><p class='title'>Contact Success</p><p>Please notify that you have contacted successfully to <b>{$config['sitename']}</b> website. We will reply to you soon.</p><p>Respect,</p></div>";
		$arr = array('error'=>0, 'message'=>$str);
		echo json_encode($arr);
		return true;
	}else{
		$arr = array('error'=>1, 'message'=>'Error: Please press F5 key to try again');
		echo json_encode($arr);
		return false;
	}
}*/

if(isset($_POST['rejectTrainer'])){
	$table = 'mn_trainer';
	$name = $c->_model->_changeDauNhay($_POST['name']);
	$email = $c->_model->_checkEmail($_POST['email']);
	if($name=='' || $email==false){
		$arr = array('error'=>1, 'message'=>'Error 01: Please press F5 key to try again');
		echo json_encode($arr);
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
		echo json_encode($arr);
		return true;
	}else{
		$arr = array('error'=>1, 'message'=>'Error 02: Please press F5 key to try again');
		echo json_encode($arr);
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
		echo json_encode($arr);
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
		echo json_encode($arr);
		return true;
	}else{
		$arr = array('error'=>1, 'message'=>'Error 02: Please press F5 key to try again');
		echo json_encode($arr);
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
		echo json_encode($arr);
		return false;
	}
	$table = $c->_model->_changeDauNhay($_POST['table']);
	$table_date = $c->_model->_changeDauNhay($_POST['table_date']);
	$menu_id = $_POST['menu_id']; settype($menu_id, 'int');
	$entrytest_id = $_POST['entrytest_id']; settype($entrytest_id, 'int');
	$answers = $_POST['answers']; settype($answers, 'int');
	
	//kiem tra có trong danh sach lien he
	$arr = array(
		"select" => "`id`, `name`, `email`",
		"from" => "`{$table}`",
		"where" => "`datetime`='{$table_date}'",
	);
	$data = $c->_model->_select($arr);
	if(count($data)==0){
		$arr = array('error'=>1, 'message'=>'Error 02');
		echo json_encode($arr);
		return false;
	}
	$table_id = $data[0]['id'];
	$table_email = $data[0]['email'];
	$table_name = $data[0]['name'];
	
	//insert data
	$check = $c->_model->_checkEntryTestUser($menu_id, $table, $table_date, $entrytest_id);
	if( count($check)!=0 ){
		$arr = array('error'=>1, 'message'=>'Error 03: Please press F5 key to try again');
		echo json_encode($arr);
		return false;
	}
	$c->_model->_insertEntryTestUser($menu_id, $table, $table_date, $entrytest_id, $answers);
	
	//thay doi status
	if($table=='web_contact') $c->_model->_updateStatus($table, $table_id, $status=3);
	
	$arr = array('error'=>0, 'message'=>'Success');
	echo json_encode($arr);
	return true;
}

if(isset($_POST['entrytestThongBao'])){
	$table = $c->_model->_changeDauNhay($_POST['table']);
	$table_date = $c->_model->_changeDauNhay($_POST['table_date']);
	$arr = array(
		"select" => "`id`, `name`, `email`",
		"from" => "`{$table}`",
		"where" => "`datetime`='{$table_date}'",
	);
	$data = $c->_model->_select($arr);
	if(count($data)==0){
		$arr = array('error'=>1, 'message'=>'Error');
		echo json_encode($arr);
		return false;
	}
	$table_id = $data[0]['id'];
	$table_email = $data[0]['email'];
	$table_name = $data[0]['name'];
	
	//thay doi status
	$c->_model->_updateStatus($table, $table_id, $status=3);
	
	//gui mail thong bao
	$arr = array(
		"select" => "`subject`, `content`",
		"from" => "`web_event_form`",
		"where" => "`id`='13' AND `status`=1", //id=14 entry test
	);
	$data = $c->_model->_select($arr);
	if(count($data) > 0){
		$AddAddress = array('field'=>$table_email, 'name'=>$table_name);
		$arr = array( '{_name}' => $table_name );
		$subject = $data[0]['subject'];
		$content = $c->contentReplace($data[0]['content'], $arr);
		$arr = array(
			'AddAddress' => $AddAddress,
			'Subject' => $subject,
			'Body' => $content,
		);
		$data = $c->sendMail($arr, 2);
	}
	return true;
}
/*end entrytest*/

/*TrainingNeedAssessment khảo sát*/
if(isset($_GET['TrainingNeedAssessment'])){
	if(!isset($_GET['type']) || !isset($_GET['date'])) return false;
	$table = $c->_model->_changeDauNhay($_GET['type']);
	$table_date = $c->_model->_changeDauNhay($_GET['date']);
	
	$_SESSION['table_khaosat'] = $table;
	$_SESSION['table_date_khaosat'] = $table_date;
	
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
	
	include_once('view/web_khaosat.php');
	return true;
}

if(isset($_POST['rejectKhaoSat'])){
	$table = $_SESSION['table_khaosat'];
	$table_date = $_SESSION['table_date_khaosat'];
	
	$arr = array(
		"select" => "`id`, `name`, `email`",
		"from" => "`{$table}`",
		"where" => "`datetime`='{$table_date}'",
	);
	$data = $c->_model->_select($arr);
	if(count($data)==0){
		$arr = array('error'=>1, 'message'=>'Error 01');
		echo json_encode($arr);
		return false;
	}
	$table_id = $data[0]['id'];
	$table_email = $data[0]['email'];
	$table_name = $data[0]['name'];
	
	$arr = array(
		"select" => "`id`",
		"from" => "`web_khaosat`",
		"where" => "`_table`='{$table}' AND `table_date`='{$table_date}'",
	);
	$data = $c->_model->_select($arr);
	if(count($data)>0){
		$arr = array('error'=>0, 'message'=>'<p>You have completed the survey. Stevbros checks and contact you soon.<br /><em>Bạn đã hoàn thành bản khảo sát. Stevbros sẽ kiểm tra và liên hệ với bạn sớm nhất.</em></p><p>Respect,</p>');
		echo json_encode($arr);
		return false;
	}
	
	//insert data
	$keys = array_keys($_POST);
	$values = array_values($_POST);
	for($i=0; $i<count($keys); $i++){
		if(!preg_match("/^reject/i", $keys[$i])){
			$name = $keys[$i];
			$answer = $values[$i];
			$c->_model->_insertKhaoSat($name, $answer, $table, $table_date);
		}
	}
	
	//thay doi status
	if($table=='web_contact') $c->_model->_updateStatus($table, $table_id, $status=3);
	
	//gui mail thong bao
	$arr = array(
		"select" => "`subject`, `content`",
		"from" => "`web_event_form`",
		"where" => "`id`='14' AND `status`=1", //id=14 khao sat
	);
	$data = $c->_model->_select($arr);
	if(count($data) > 0){
		$AddAddress = array('field'=>$table_email, 'name'=>$table_name);
		$arr = array( '{_name}' => $table_name );
		$subject = $data[0]['subject'];
		$content = $c->contentReplace($data[0]['content'], $arr);
		$arr = array(
			'AddAddress' => $AddAddress,
			'Subject' => $subject,
			'Body' => $content,
		);
		$data = $c->sendMail($arr, 2);
	}
	
	$arr = array('error'=>0, 'message'=>'<p>You have completed the survey. Stevbros checks and contact you soon.<br /><em>Bạn đã hoàn thành bản khảo sát. Stevbros sẽ kiểm tra và liên hệ với bạn sớm nhất.</em></p><p>Respect,</p>');
	echo json_encode($arr);
	return true;
}
/*end TrainingNeedAssessment khảo sát*/
?>