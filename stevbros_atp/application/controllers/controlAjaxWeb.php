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
	$key = $c->_model->_changeDauNhay($_GET['entrytest']);
	$arr = array(
		'select' => '*',
		'from' => '`web_entrytest_user`',
		'where' => "`random_key`='{$key}'",
		'limit' => 1,
	);
	$data = $c->_model->_select($arr);
	if(count($data)==0){
		echo 'Not found key test.';
		return false;
	}
	
	$rowTest = $data[0];
	
    $currentPage = $c->_model->_webHeaderID($rowTest['menu_id']);
	if(count($currentPage)==0){
		echo 'Not found test.';
		return false;
	}
	
	include_once('view/web_entrytest.php');
	return true;
}

if(isset($_POST['entryTestData'])){
	if( !isset($_POST['entrytest_id']) || !isset($_POST['answers']) || !isset($_POST['random_key']) ){
		$arr = array('error'=>1, 'message'=>'Error 01: Please press F5 key to try again');
		echo json_encode($arr);
		return false;
	}
	$entrytest_id = $c->_model->_changeDauNhay($_POST['entrytest_id']); settype($entrytest_id, 'int');
	$answers = $c->_model->_changeDauNhay($_POST['answers']); settype($answers, 'int');
	$key = $c->_model->_changeDauNhay($_POST['random_key']);
	
	//insert data
	$check = $c->_model->_checkEntryTestData($key, $entrytest_id);
	if( count($check)!=0 ){
		$arr = array('error'=>1, 'message'=>'Error 03: Please press F5 key to try again');
		echo json_encode($arr);
		return false;
	}
	$c->_model->_insertEntryTestData($entrytest_id, $answers, $key);
	
	//thay doi status
	//if($table=='web_contact') $c->_model->_updateStatus($table, $table_id, $status=3);
	
	$arr = array('error'=>0, 'message'=>'Success');
	echo json_encode($arr);
	return true;
}

if(isset($_POST['entrytestThongBao'])){
	$key = $c->_model->_changeDauNhay($_POST['random_key']);
	$result = $c->_model->_changeDauNhay($_POST['result']);
	$result = trim($result, '%');
	
	//kiem tra key
	$arr = array(
		"select" => "*",
		"from" => "`web_entrytest_user`",
		"where" => "`random_key`='{$key}'",
		'limit' => 1
	);
	$data = $c->_model->_select($arr);
	if(count($data)==0){
		$arr = array('error'=>1, 'message'=>'Error');
		echo json_encode($arr);
		return false;
	}
	
	$rowEntry = $data[0];
	$table = $rowEntry['_table'];
	$table_id = $rowEntry['table_id'];
	if($rowEntry['sendmail']==1) return true;
	
	//customer
	$rowCustomer = $c->_model->_viewDetail($table, $table_id);
	$name = $rowCustomer['name'];
	$email = $rowCustomer['email'];
	
	//trainer
	$arr = array(
		'select' => "`web_users`.`id`, `web_users`.`name`, `web_users`.`email`, `mn_class`.`id` as `class`, `web_header`.`id` as `course`",
		'from' => '`mn_class_info`, `mn_class`, `web_users`, `web_header`',
		'where' => "`_table`='{$table}' AND `table_id`='{$table_id}' AND `class_id`=`mn_class`.`id` AND `trainer_id`=`web_users`.`id` AND `header_id`=`web_header`.`id`",
		'order' => '`mn_class_info`.`id` DESC',
	);
	$data = $c->_model->_select($arr);
	$rowTrainer = $data[0];
	
	//gui mail thong bao
	$link = '';
	if($result>=50){
		$formID = 21;
		
		$country = $_SESSION['adminCountry'];
		$arr = array(
			'select' => '`id`',
			'from' => '`mn_license`',
			'where' => "`code` LIKE '{$country}%' ",
		);
		$data = $c->_model->_select($arr);
		$number = count($data) + 1;
		$certCode = sprintf($_SESSION['adminCountry']."%'.06s", $number);
		
		$check = $c->_model->_checkLicense($rowTrainer['course'], $rowCustomer['id']);
		if(count($check)==0){
			$c->_model->_insertLicense($certCode, $rowTrainer['class'], $rowTrainer['course'], $rowCustomer['id'], $rowTrainer['id']);
		}
	}else{
		$cM = new modelManager();
		$check = $c->_model->_checkEntryTestUser($table, $table_id, $rowEntry['menu_id']);
		if(count($check) <= 2){
			$formID = 22;
			$key = time();
			$cM->_insertEntryTestUser($table, $table_id, $rowEntry['menu_id'], $key);
			$link = CONS_BASE_URL.'/ajax/?entrytest='.$key;
			$link = '<a href="'.$link.'">'.$link.'</a>';
		}else{
			$formID = 23;
		}
	}
	$arr = array(
		"select" => "*",
		"from" => "`web_event_form`",
		"where" => "`id`='{$formID}' AND `status`=1",
	);
	$data = $c->_model->_select($arr);
	if(count($data) > 0){
		$rowForm = $data[0];
		
		$AddBCC = '';
		if($rowForm['email']!='') $AddBCC = array('field'=>$rowForm['email'], 'name'=>'Stevbros');
		
		//AddCC trainer
		$AddCC = '';
		$AddCC = array('field'=>$rowTrainer['email'], 'name'=>$rowTrainer['name']);
		
		$AddAddress = array('field'=>$email, 'name'=>$name);
		$arr = array(
			'{_name}' => $name,
			'{_result}' => $result,
			'{_link}' => $link,
		);
		$subject = $rowForm['subject'];
		$content = $c->contentReplace($rowForm['content'], $arr);
		$arr = array(
			'AddAddress' => $AddAddress,
			'AddCC' => $AddCC,
			'AddBCC' => $AddBCC,
			'Subject' => $subject,
			'Body' => $content,
		);
		$data = $c->sendMail($arr, 2);
		
		$c->_model->_updateEntryTestUser($rowEntry['id'], $result, 1);
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

/*dompdf*/
//reference the Dompdf namespace
use Dompdf\Dompdf;
if(isset($_GET['certificate'])){
	$certificate = $c->_model->_changeDauNhay($_GET['certificate']);
	
	require_once "libraries/dompdf/autoload.inc.php";
	
	$arr = array(
		'select' => '`mn_customer`.`name`, `web_header`.`name` as `course`, `web_header`.`pdu`, `mn_license`.`code`, `mn_license`.`datetime`, `web_users`.`name` as `name_signature`, `web_users`.`img`, `web_users`.`title`',
		'from' => '`mn_license`, `mn_customer`, `web_users`, `web_header`',
		'where' => "`mn_license`.`status`=1 AND `mn_license`.`code`='{$certificate}' AND `customer_id`=`mn_customer`.`id` AND `trainer_id`=`web_users`.`id` AND `course_id`=`web_header`.`id`",
		'limit' => 1,
	);
	$data = $c->_model->_select($arr);
	
	if(count($data)==0) return false;
	
	$row = $data[0];
	
	$name = $row['name'];
	$course = $row['course'];
	
	$img_signature1 = '';
	if($row['img']=='') $img_signature1 = '<img src="../public/images/'.$row['img'].'" />';
	$logo_signature1 = '<img src="../public/mauBang/logo1.png" />';
	$name_signature1 = $row['name_signature'];
	$position_signature1 = $row['title'];
	
	$img_signature2 = '<img src="../public/mauBang/sign2.png" />';
	$logo_signature2 = '<img src="../public/mauBang/logo2.png" />';
	$name_signature2 = 'Nguyen Huu Song Phuong';
	$position_signature2 = 'President and Chief Executive Officer';
	
	$pdu = $row['pdu'];
	$code = $row['code'];
	$date = date('F d, Y', $row['datetime']);
	
	/*$name = 'Tran Hieu Nhan';
	$course = 'PMP® Exam Preparation';
	$img_signature1 = '<img src="../public/mauBang/sign1.png" />';
	$logo_signature1 = '<img src="../public/mauBang/logo1.png" />';
	$name_signature1 = 'Nguyen Binh Phuong, MBA, PMP®';
	$position_signature1 = 'Instructor';
	$img_signature2 = '<img src="../public/mauBang/sign2.png" />';
	$logo_signature2 = '<img src="../public/mauBang/logo2.png" />';
	$name_signature2 = 'Nguyen Huu Song Phuong';
	$position_signature2 = 'President and Chief Executive Officer';
	$pdu = '30';
	$code = '3AJA789';
	$date = date('F d, Y');*/
	
	//instantiate and use the dompdf class
	$dompdf = new Dompdf();
	$dompdf->set_option('isHtml5ParserEnabled', true);
	
	//html
	$html = file_get_contents('../public/mauBang/file_html_img.html');
	$html = str_replace('{_name}', $name, $html);
	$html = str_replace('{_course}', $course, $html);
	$html = str_replace('{_img_signature1}', $img_signature1, $html);
	$html = str_replace('{_logo_signature1}', $logo_signature1, $html);
	$html = str_replace('{_name_signature1}', $name_signature1, $html);
	$html = str_replace('{_position_signature1}', $position_signature1, $html);
	$html = str_replace('{_img_signature2}', $img_signature2, $html);
	$html = str_replace('{_logo_signature2}', $logo_signature2, $html);
	$html = str_replace('{_name_signature2}', $name_signature2, $html);
	$html = str_replace('{_position_signature2}', $position_signature2, $html);
	$html = str_replace('{_pdu}', $pdu, $html);
	$html = str_replace('{_code}', $code, $html);
	$html = str_replace('{_date}', $date, $html);
	
	$dompdf->loadHtml($html);
	//end html
	
	//(Optional) Setup the paper size and orientation
	$dompdf->setPaper('A4', 'landscape'); //portrait, landscape
	
	//Render the HTML as PDF
	$dompdf->render();
	
	//Stream - Output the generated PDF to Browser
	//$dompdf->output();
	$dompdf->stream('certificate');
	//$dompdf->stream('certificate', array("Attachment" => false));
	exit(0);
}
/*end dompdf*/
?>