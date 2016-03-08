<?php
$cM = new modelManager;

if(isset($_POST['insertCustomerContract'])){
	if($c->checkRole('create')==false) return false;
	$contract_id = $c->_model->_changeDauNhay($_POST['contract_id']); settype($contract_id, 'int');
	$customer_id = $c->_model->_changeDauNhay($_POST['customer_id']); settype($contract_id, 'int');
	if($contract_id==0 || $customer_id==0){
		$arr = array('error'=>1, 'message'=>'Input error');
		echo json_encode($arr);
		return false;
	}
	
	$data = $c->_model->_viewDetail('mn_customer', $customer_id);
	if(count($data)==0){
		$arr = array('error'=>1, 'message'=>'Không tìm thấy khách hàng này trong cơ sở dữ liệu');
		echo json_encode($arr);
		return false;
	}
	
	$arr = array(
		'select' => '`id`',
		'from' => '`mn_contract_customer`',
		'where' => "`contract_id`='{$contract_id}' AND `customer_id`='{$customer_id}'",
	);
	$data = $c->_model->_select($arr);
	if(count($data)!=0){
		$arr = array('error'=>1, 'message'=>'Khách hàng này đã có trong hợp đồng');
		echo json_encode($arr);
		return false;
	}
	
	$fields = array('contract_id', 'customer_id');
	$values = array($contract_id, $customer_id);
	$result = $c->_model->_getSql('create', 'mn_contract_customer', $fields, $values);
	if($result==false){
		$arr = array('error'=>1, 'message'=>'Data error: '.$result);
		echo json_encode($arr);
		return false;
	}
	
	$arr = array('error'=>0, 'message'=>'Thêm thành công');
	echo json_encode($arr);
	return true;
}

if(isset($_POST['insertCustomerClass'])){
	if($c->checkRole('create')==false) return false;
	$table = $c->_model->_changeDauNhay($_POST['table']);
	$table_id = $c->_model->_changeDauNhay($_POST['table_id']);
	$class_id = $c->_model->_changeDauNhay($_POST['class_id']);
	if($table=='' || $table_id=='' || $class_id==''){
		$arr = array('error'=>1, 'message'=>'Input error');
		echo json_encode($arr);
		return false;
	}
	
	//get customer
	$data = $c->_model->_viewDetail($table, $table_id);
	if(count($data)==0){
		$arr = array('error'=>1, 'message'=>'Không tìm thấy khách hàng này trong cơ sở dữ liệu');
		echo json_encode($arr);
		return false;
	}
	
	//check class info
	$arr = array(
		'select' => '`id`',
		'from' => '`mn_class_info`',
		'where' => "`class_id`='{$class_id}' AND `_table`='{$table}' AND `table_id`='{$table_id}'",
	);
	$data = $c->_model->_select($arr);
	if(count($data)!=0){
		$arr = array('error'=>1, 'message'=>'Khách hàng này đã có trong lớp học này');
		echo json_encode($arr);
		return false;
	}
	
	//insert data
	$fields = array('class_id', '_table', 'table_id');
	$values = array($class_id, $table, $table_id);
	$result = $c->_model->_getSql('create', 'mn_class_info', $fields, $values);
	if($result==false){
		$arr = array('error'=>1, 'message'=>'Insert error: '.$result);
		echo json_encode($arr);
		return false;
	}
	
	$arr = array('error'=>0, 'message'=>'Thêm thành công');
	echo json_encode($arr);
	return true;
}

if(isset($_POST['insertTrainerRate'])){
	$trainer_id = $c->_model->_changeDauNhay($_POST['trainer_id']);
	$class_id = $c->_model->_changeDauNhay($_POST['class_id']);
	$rate = $c->_model->_changeDauNhay($_POST['rate']);
	
	if($trainer_id=='' || $class_id=='' || $rate==''){
		$arr = array('error'=>1, 'message'=>'Import data error');
		echo json_encode($arr);
		return false;
	}
	
	$arr = array(
		'select' => '`id`',
		'from' => '`mn_trainer_rate`',
		'where' => "`trainer_id`='{$trainer_id}' AND `class_id`='{$class_id}'",
		'limit' => 1
	);
	$data = $c->_model->_select($arr);
	if(count($data) > 0){
		$arr = array('error'=>1, 'message'=>'Giảng viên đã được đánh giá cho lớp này rồi.');
		echo json_encode($arr);
		return false;
	}
	
	$cM->_insertTrainerRate($trainer_id, $class_id, $rate);
	$arr = array('error'=>0, 'message'=>'Thêm thành công');
	echo json_encode($arr);
	return false;
}

if(isset($_POST['loadWebContact'])){
	$table = $c->_model->_changeDauNhay($_POST['table']);
	$table_id = $c->_model->_changeDauNhay($_POST['table_id']);
	if($table=='' || $table_id==''){
		$arr = array('error'=>1, 'message'=>'Error: Data empty');
		echo json_encode($arr);
		return false;
	}
	$rowContact = $c->_model->_viewDetail($table, $table_id);
	if(count($rowContact)==0){
		$arr = array('error'=>1, 'message'=>'Error: Không tìm thấy trong database');
		echo json_encode($arr);
		return false;
	}
	
	$arr = array('error'=>0);
	$keys = array_keys($rowContact);
	$values = array_values($rowContact);
	for($i=1; $i<count($keys); $i++){
		if(!preg_match('/^date/i', $keys[$i])){
			$value = $c->_model->_removeNewLine($values[$i]);
			$value = str_replace('"', "'", $value);
			$value = str_replace('	', '', $value);
		}else{
			$value = date('Y-m-d- H:i:s', $values[$i]);
		}
		$arr[$keys[$i]] = $value;
	}
	
	//$arr = array('message'=>'');
	echo json_encode($arr);
	return true;
}

if(isset($_POST['classCode'])){
	$code = trim( $c->_model->_changeDauNhay($_POST['code']) );
	$course = trim( $c->_model->_changeDauNhay($_POST['course']) );
	
	$arr = array(
		'select' => '*',
		'from' => '`web_header`',
		'where' => "`id`='{$course}'",
		'limit' => 1,
	);
	$data = $c->_model->_select($arr);
	$course_code = '';
	if(count($data)>0){
		$row = $data[0];
		$course_code = trim($row['course_code']);
	}
	
	$code = "{$course_code}-".date('y')."-{$code}";
	$arr = array(
		'select' => '*',
		'from' => '`mn_class`',
		'where' => "`code` LIKE '{$code}%'",
	);
	$data = $c->_model->_select($arr);
	$total = count($data);
	if($total==0){
		$code .= '-1';
	}else{
		$total++;
		$code .= '-'.$total;
	}
	echo $code;
	return true;
}

if(isset($_POST['autoLoadCourseModule'])){
	include_once('libraries/simple_html_dom.php');
	$html = file_get_html('http://stevbros.com/capTaiKhoanChoStevbros.edu.vn/index.php?selectCourse=1');
	echo $html;
	return true;
}

if(isset($_POST['customerClass'])){
	$id = $c->_model->_changeDauNhay($_POST['id']);
	settype($id, 'int');
	$arr = array(
		'select' => '*',
		'from' => 'mn_class_info',
		'where' => "`class_id`='{$id}'",
	);
	$data = $c->_model->_select($arr);
	
	$str = '';
	foreach($data as $row){
		if($row['_table']=='mn_customer'){
			$arr = array(
				'select' => '*',
				'from' => 'mn_customer',
				'where' => "`id`='{$row['table_id']}'",
				'limit' => 1,
			);
			$dataCustomer = $c->_model->_select($arr);
			$rowCustomer = $dataCustomer[0];
			$str .= '<p style="margin-bottom:10px"><input type="checkbox" name="customers" value="'.$rowCustomer['id'].'" checked="checked" /> '.$rowCustomer['name'].' - '.$rowCustomer['email'].'</p>';
		}else if($row['_table']=='mn_contract'){
			$arr = array(
				'select' => '`mn_customer`.*',
				'from' => '`mn_contract_customer`, `mn_customer`',
				'where' => "`contract_id`='{$row['table_id']}' AND `customer_id`=`mn_customer`.`id`",
			);
			$dataCustomer = $c->_model->_select($arr);
			foreach($dataCustomer as $rowCustomer){
				$str .= '<p style="margin-bottom:10px"><input type="checkbox" name="customers" value="'.$rowCustomer['id'].'" checked="checked" /> '.$rowCustomer['name'].' - '.$rowCustomer['email'].'</p>';
			}
		}
	}
	
	$arr = array(
		'select' => '*',
		'from' => 'mn_class',
		'where' => "`id`='{$id}'",
		'limit' => 1
	);
	$data = $c->_model->_select($arr);
	$code = '';
	if(count($data)>0){
		$code = $data[0]['code'];
	}
	$arr = array('code'=>$code, 'data'=>$str);
	echo json_encode($arr);
	return true;
}

if(isset($_POST['accountAllocation'])){
	$customerid = $c->_model->_changeDauNhay($_POST['customerid']);
	$courseid = $c->_model->_changeDauNhay($_POST['courseid']);
	$coursename = $c->_model->_changeDauNhay($_POST['coursename']);
	$numberdate = $c->_model->_changeDauNhay($_POST['numberdate']);
	$institution = $c->_model->_changeDauNhay($_POST['institution']);
	
	if($customerid=='' || $courseid=='' || $numberdate=='' || $institution==''){
		$arr = array('result'=>false, 'message'=>'Dữ liệu đưa vào không đúng');
		echo json_encode($arr);
		return false;
	}
	
	$table = 'mn_customer';
	include_once('libraries/simple_html_dom.php');

	$arr = array(
		'select' => '*',
		'from' => $table,
		'where' => "`id`='{$customerid}'",
		'limit' => '1',
	);
	$data = $c->_model->_select($arr);
	if(count($data)==0){
		$arr = array('result'=>false, 'message'=>'Không tìm thấy khách hàng trong database');
		echo json_encode($arr);
		return false;
	}
	
	$row = $data[0];
	$username	= $row['email'];
	$email		= $row['email'];
	$city		= $row['city'];
	$country	= $row['country'];
	
	$name = explode(' ', $row['name']);
	$firstname	= end($name);
	$lastname	= $name[0];
	
	$url = "http://stevbros.com/capTaiKhoanChoStevbros.edu.vn/index.php?accountAllocation=1&firstname={$firstname}&lastname={$lastname}&username={$username}&email={$email}&city={$city}&country={$country}&courseid={$courseid}&numberdate={$numberdate}&institution={$institution}";
	$html = file_get_html($url);
	$html = json_decode($html);
	$html->name = $row['name'];
	
	if($html->result == true){
		//insert database
		$cM->_insertCustomerModule($customerid, $courseid, $coursename);
		
		//sendMail
		$event_id = 18;
		$arr = array(
			'select' => '*',
			'from' => '`web_event_form`',
			'where' => "`id`='{$event_id}'",
			'limit' => '1',
		);
		$data = $c->_model->_select($arr);
		$rowEvent = $data[0];
		
		$arr = array(
			'{_name}' => $row['name'],
			'{_user}' => $email,
			'{_numberdate}' => $numberdate,
		);
		$content = $c->contentReplace($rowEvent['content'], $arr);
		
		$AddBCC = '';
		if($rowEvent['email']!='') $AddBCC = array('field'=>$rowEvent['email'], 'name'=>'Stevbros');
		$AddAddress = array('field'=>$email, 'name'=>$row['name']);
		$arrSend = array(
			'AddAddress' => $AddAddress,
			'AddBCC' => $AddBCC,
			'Subject' => $rowEvent['subject'],
			'Body' => $content,
		);
		$data = $c->sendMail($arrSend, 1);
		if(!preg_match("/error:/i", $data)){
			$cM->_insertContactSendMail($row['name'], $email, $content, $event_id, $table, $customerid);
			$html->sendmail = true;
		}else{
			$html->sendmail = false;
		}
	}
	
	echo json_encode($html);
	return true;
}

/*web_event_form*/
function css_script(){
	$str = '<base href="'.CONS_BASE_URL.'/" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" type="text/css" href="themes/admin2/ad-general.css">
	<link rel="stylesheet" type="text/css" href="themes/admin2/ad-style.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.wallform.js"></script>
	<script type="text/javascript" src="js/js_checks_field.js"></script>
	<script type="text/javascript" src="js/js_admin.js"></script>
	<script type="text/javascript" src="js/ckeditor/ckeditor.js"></script>';
	return $str;
}

if(isset($_POST['formType'])){
	$type = $c->_model->_changeDauNhay($_POST['type']);
	$type_id = $c->_model->_changeDauNhay($_POST['type_id']);
	if($type==1){
		$cA = new modelAdmin();
		$data = $cA->_webTypeList(1);
		array_unshift($data, array('name'=>'-- chọn form mẫu --', 'id'=>''));
		foreach($data as $row){
			if($row['id']!=$type_id) $str=''; else $str='selected="selected"';
			echo '<option value="'.$row['id'].'" '.$str.'>'.$row['name'].'</option>';
		}
	}else if($type==2){
		$arr = array(
			'0' => '-- chọn form mẫu --',
			'1' => 'Báo giá',
			'2' => 'Phân tích',
			'3' => 'Entry test',
			'5' => 'Hợp đồng đào tạo',
			'10' => 'Form mẫu thông báo',
		);
		$key = array_keys($arr);
		for($i=0; $i<count($key); $i++){
			if($key[$i]!=$type_id) $str=''; else $str='selected="selected"';
			echo '<option value="'.$key[$i].'" '.$str.'>'.$arr[$key[$i]].'</option>';
		}
	}
	return true;
}

if(isset($_GET['loadFormEvent'])){
	$type = $c->_model->_changeDauNhay($_GET['loadFormEvent']);
	$id = $c->_model->_changeDauNhay($_GET['id']);
	$table = $c->_model->_changeDauNhay($_GET['table']);
	if($id=='' || $table=='' || $type=='') return false;
	
	echo css_script();
	switch($type){
		case 1: include_once('view/admin_mn_action_baogia.php'); break;
		case 2: include_once('view/admin_mn_action_entry.php'); break;
		case 3: include_once('view/admin_mn_action_khaosat.php'); break;
		case 5: include_once('view/admin_mn_action_hopdong.php'); break;
		case 6: include_once('view/admin_mn_action_receipt.php'); break;
	}
}

if(isset($_POST['loadFormTemplate'])){
	$id = $c->_model->_changeDauNhay($_POST['id']);
	$row = $c->_model->_viewDetail('web_event_form', $id);
	
	$subject = $row['subject'];
	$subject = str_replace('"', "'", $subject);
	$subject = $c->_model->_removeNewLine($subject);
	
	$name=''; $course=''; $date=''; $message=''; $link=''; $datecurrent='';
	$totalusd=0; $totalvnd=0; $price=0; $exchangerate=0;
	if(isset($_POST['name'])) $name=$c->_model->_changeDauNhay($_POST['name']);
	if(isset($_POST['course'])) $course=$c->_model->_changeDauNhay($_POST['course']);
	if(isset($_POST['date'])) $date=date('d-m-Y', strtotime($_POST['date']));
	if(isset($_POST['message'])) $message=$c->_model->_changeDauNhay($_POST['message']);
	if(isset($_POST['link_entry'])){
		if(!isset($_POST['table']) || !isset($_POST['table_id'])) return false;
		$rowInfo = $c->_model->_viewDetail($_POST['table'], $_POST['table_id']);
		$link = CONS_BASE_URL.'/ajax/?entrytest=1&menu_id='.$_POST['link_entry'].'&type='.$_POST['table'].'&date='.$rowInfo['datetime'];
		$link = '<a href="'.$link.'">ấn vào đây</a>';
	}
	if(isset($_POST['link_khaosat'])){
		if(!isset($_POST['table']) || !isset($_POST['table_id'])) return false;
		$rowInfo = $c->_model->_viewDetail($_POST['table'], $_POST['table_id']);
		$link = CONS_BASE_URL.'/ajax/?TrainingNeedAssessment=1&type='.$_POST['table'].'&date='.$rowInfo['datetime'];
		$link = '<a href="'.$link.'">ấn vào đây</a>';
	}
	if(isset($_POST['price'])){
		$price = $c->_model->_changeDauNhay($_POST['price']); settype($price, 'int');
		$price = number_format($price, 0, ',', '.');
	}
	if(isset($_POST['totalusd'])){
		$datecurrent = date('d/m/Y');
		$totalusd = $c->_model->_changeDauNhay($_POST['totalusd']); settype($totalusd, 'float');
		if(isset($_POST['exchangerate'])){
			$exchangerate = $c->_model->_changeDauNhay($_POST['exchangerate']); settype($exchangerate, 'int');
			$totalvnd = $totalusd * $exchangerate; settype($totalvnd, 'float');
		}
		$totalusd = number_format($totalusd, 2, ',', '.');
		$totalvnd = number_format($totalvnd, 2, ',', '.');
		$exchangerate = number_format($exchangerate, 0, ',', '.');
	}
	
	$arr = array(
		'{_name}' => $name,
		'{_course}' => $course,
		'{_date}' => $date,
		'{_price}' => $price,
		'{_link}' => $link,
		'{_exchangerate}' => $exchangerate,
		'{_datecurrent}' => $datecurrent,
		'{_totalusd}' => $totalusd,
		'{_totalvnd}' => $totalvnd,
		'{_message}' => $message,
	);
	$content = $c->contentReplace($row['content'], $arr);
	$content = str_replace('"', "'", $content);
	$content = str_replace('	', "", $content);
	$content = $c->_model->_removeNewLine($content);
	
	$arr = array('error'=>0, 'subject'=>$subject, 'content'=>$content, 'email'=>$row['email']);
	echo json_encode($arr);
	return true;
}
/*end web_event_form*/

/*sendMail*/
if(isset($_POST['testSendEmail'])){
	$email = $c->_model->_checkEmail($_POST['email']);
	$subject = $c->_model->_changeDauNhay($_POST['subject']);
	$content = $c->_model->_changeDauNhay($_POST['content'], 0);
	if($email==false || $subject=='' || $content==''){ echo 'Error: Content'; return false; }
	
	$AddAddress = array('field'=>$email, 'name'=>'Test email');
	$arr = array(
		'{_name}' => 'Stevbros Test',
		'{_birthday}' => date('d/m'),
		'{_email}' => 'email@stevbros.edu.vn',
		'{_phone}' => '0988388388',
		'{_message}' => 'Khóa học rất hay, cảm ơn Stevbros',
		'{_course}' => 'Khóa học Quản Lý Dự Án Theo Tiêu Chuẩn Quốc Tế PMBOK®',
		'{_date}' => date('d/m/Y'),
		'{_price}' => '10.000.000đ'
	);
	$content = $c->contentReplace($content, $arr);
	
	$arr = array(
		'AddAddress' => $AddAddress,
		'Subject' => $subject,
		'Body' => $content,
	);
	$data = $c->sendMail($arr, 2);
	
	if(!preg_match("/error:/i", $data)){
		echo 1;
	}else{
		echo $data;
	}
	return true;
}

if(isset($_POST['sendMailCustomer'])){
	$name = $c->_model->_changeDauNhay($_POST['name']);
	$email = $c->_model->_checkEmail($_POST['email']);
	$email_bcc = $c->_model->_checkEmail($_POST['email_bcc']);
	$event_id = $c->_model->_changeDauNhay($_POST['event_id']);
	$table = $c->_model->_changeDauNhay($_POST['table']);
	$table_id = $c->_model->_changeDauNhay($_POST['table_id']);
	$subject = $c->_model->_changeDauNhay($_POST['subject']);
	$content = $c->_model->_changeDauNhay($_POST['content'], 0);
	if($name=='' || $email==false || $subject=='' || $content=='' || $event_id=='' || $table=='' || $table_id==''){
		echo '<div class="adError">Error: Please press F5 key to try again</div>';
		return false;
	}
	
	$AddBCC = '';
	$AddAddress = array('field'=>$email, 'name'=>$name);
	if($email_bcc!=false) $AddBCC = array('field'=>$email_bcc, 'name'=>'Stevbros');
	$arrSend = array(
		'AddAddress' => $AddAddress,
		'AddBCC' => $AddBCC,
		'Subject' => $subject,
		'Body' => $content,
	);
	
	$data = $c->sendMail($arrSend, 1);
	if(!preg_match("/error:/i", $data)){
		if($table=='web_contact') $c->_model->_updateStatus($table, $table_id, $status=2);
		$cM->_insertContactSendMail($name, $email, $content, $event_id, $table, $table_id);
		echo '<div class="adMessage"><b>Gửi thành công.</b></div>';
	}else{
		echo '<div class="adError"><p>ERROR sendmail:</p>'.$data.'</div>';
	}
	
	return true;
}

if(isset($_POST['sendMailContract'])){
	$name = $c->_model->_changeDauNhay($_POST['name']);
	$email = $c->_model->_checkEmail($_POST['email']);
	$email_bcc = $c->_model->_checkEmail($_POST['email_bcc']);
	$table = $c->_model->_changeDauNhay($_POST['table']);
	$table_id = $c->_model->_changeDauNhay($_POST['table_id']);
	$subject = $c->_model->_changeDauNhay($_POST['subject']);
	$content = $c->_model->_changeDauNhay($_POST['content'], 0);
	if($name=='' || $email==false || $subject=='' || $content=='' || $table=='' || $table_id==''){
		echo '<div class="adError">Error: Please press F5 key to try again</div>';
		return false;
	}
	
	$AddAddress = array('field'=>$email, 'name'=>$name);
	$AddBCC = '';
	if($email_bcc!=false) $AddBCC = array('field'=>$email_bcc, 'name'=>'Stevbros');
	$arrSend = array(
		'AddAddress' => $AddAddress,
		'AddBCC' => $AddBCC,
		'Subject' => $subject,
		'Body' => $content,
	);
	
	$data = $c->sendMail($arrSend, 1);
	if(!preg_match("/error:/i", $data)){
		$event_id = 12;
		$cM->_insertContactSendMail($name, $email, $content, $event_id, $table, $table_id);
		echo '<div class="adMessage"><b>Gửi thành công.</b></div>';
	}else{
		echo '<div class="adError"><p>ERROR sendmail:</p>'.$data.'</div>';
	}
	
	return true;
}

if(isset($_POST['sendMailFee'])){
	$table = $c->_model->_changeDauNhay($_POST['table']);
	$table_id = $c->_model->_changeDauNhay($_POST['table_id']);
	if($table=='' || $table_id==''){
		echo '<span class="adError">Error: Data empty</span>';
		return false;
	}
	
	//get đóng học phí
	$arr = array(
		'select' => '*',
		'from' => 'mn_fee',
		'where' => "`status`=1 AND `_table`='{$table}' AND `table_id`='{$table_id}'",
	);
	$data = $c->_model->_select($arr);
	if(count($data)==0){
		echo '<span class="adError">Error: Không tìm thấy thông tin đóng học phí</span>';
		return false;
	}
	$rowFee = $data[0];
	
	//get thong tin khach hang
	$rowCustomer = $c->_model->_viewDetail($table, $table_id);
	if(count($rowCustomer)==0){
		echo '<span class="adError">Error: Không tìm thấy thông tin khách hàng</span>';
		return false;
	}
	$name = $rowCustomer['name'];
	$email = $rowCustomer['email'];
	
	//get form thong bao
	$event_id = 15;
	$rowForm = $c->_model->_viewDetail('web_event_form', $event_id);
	$subject = $rowForm['subject'];
	$arr = array(
		'{_name}' => $rowCustomer['name'],
		'{_price}' => number_format($rowFee['price'], 0, ',', '.'),
	);
	$content = $c->contentReplace($rowForm['content'], $arr);
	$AddBCC = '';
	$AddAddress = array('field'=>$email, 'name'=>$name);
	if($rowForm['email']!='') $AddBCC = array('field'=>$rowForm['email'], 'name'=>'Stevbros');
	$arrSend = array(
		'AddAddress' => $AddAddress,
		'AddBCC' => $AddBCC,
		'Subject' => $subject,
		'Body' => $content,
	);
	
	//sendmail
	$data = $c->sendMail($arrSend, 1);
	if(!preg_match("/error:/i", $data)){
		$cM->_insertContactSendMail($name, $email, $content, $event_id, $table, $table_id);
		echo '<span class="adMessage"><b>Gửi mail '.$email.' thành công.</b></span>';
	}else{
		echo '<div class="adError"><p>ERROR sendmail:</p>'.$data.'</div>';
	}
	
	return true;
}

if(isset($_POST['sendMailClass'])){
	$class_id = $c->_model->_changeDauNhay($_POST['class_id']); settype($class_id, 'int');
	$table = 'mn_class_info';
	if($class_id=='' || $class_id=='0'){
		$arr = array('error'=>1, 'message'=>'Error: Data empty');
		echo json_encode($arr);
		return false;
	}
	
	//check class_id
	$arr = array(
		'select' => '*',
		'from' => 'mn_class_info',
		'where' => "`class_id`='{$class_id}'",
	);
	$dataClassInfo = $c->_model->_select($arr);
	if(count($dataClassInfo)==0){
		$arr = array('error'=>1, 'message'=>'Error: Không tìm thấy thông tin lớp học này.');
		echo json_encode($arr);
		return false;
	}
	
	//get lop hoc
	$rowClass = $c->_model->_viewDetail('mn_class', $class_id);
	
	//get giang vien
	$rowTrainer = $c->_model->_viewDetail('mn_trainer', $rowClass['trainer_id']);
	
	//sendMail Customer
	$event_id = 16;
	$rowForm = $c->_model->_viewDetail('web_event_form', $event_id);
	$subject = $rowForm['subject'];
	$AddBCC = '';
	if($rowForm['email']!='') $AddBCC = array('field'=>$rowForm['email'], 'name'=>'Stevbros');
	
	//get customer
	function sendMailClass($arrData){
		global $c;
		$name = $arrData['name'];
		$email = $arrData['email'];
		if( $c->_model->_checkEmail($email)==false )
			return "<p class='adError'>ERROR: email không đúng <b>{$name} | {$email}</b></p>";
		
		$arr = array(
			'{_name}' => $name,
			'{_class}' => $arrData['class']['name'],
			'{_date}' => date('d/m/Y', $arrData['class']['date']),
		);
		$content = $c->contentReplace($arrData['content'], $arr);
		$AddAddress = array('field'=>$email, 'name'=>$name);
		$AddBCC = '';
		if($arrData['bcc']!='') $AddBCC=array('field'=>$arrData['bcc'], 'name'=>'Stevbros');
		$arrSend = array(
			'AddAddress' => $AddAddress,
			'AddBCC' => $arrData['bcc'],
			'Subject' => $arrData['subject'],
			'Body' => $content,
		);
		$data = $c->sendMail($arrSend, 1);
		if(!preg_match("/error:/i", $data)){
			global $cM;
			$cM->_insertContactSendMail($name, $email, $content, $arrData['event_id'], $arrData['table'], $arrData['table_id']);
			return "<p>Gửi mail <b class='adMessage'>{$name} - {$email}</b> thành công.</p>";
		}else{
			return "<p class='adError'>ERROR sendmail: <b>{$name} - {$email}</b></p>";
		}
	}
	$str = '';
	foreach($dataClassInfo as $rowClassInfo){
		$rowCustomer = $c->_model->_viewDetail($rowClassInfo['_table'], $rowClassInfo['table_id']);
		$arrData = array(
			'name' => $rowCustomer['name'],
			'email' => $rowCustomer['email'],
			'class' => array('name'=>$rowClass['name'], 'date'=>$rowClass['date_start']),
			'subject' => $rowForm['subject'],
			'content' => $rowForm['content'],
			'bcc' => $rowForm['email'],
			'event_id' => $event_id,
			'table' => $table,
			'table_id' => $class_id,
		);
		$str .= sendMailClass($arrData);
		if($rowClassInfo['_table']=='mn_contract'){
			$arr = array(
				'select' => '`mn_customer`.`name`, `mn_customer`.`email`',
				'from' => '`mn_customer`, `mn_contract_customer`',
				'where' => "`contract_id`='{$rowClassInfo['table_id']}' AND `customer_id`=`mn_customer`.`id`",
			);
			$data = $c->_model->_select($arr);
			foreach($data as $row){
				$arrData = array(
					'name' => $row['name'],
					'email' => $row['email'],
					'class' => array('name'=>$rowClass['name'], 'date'=>$rowClass['date_start']),
					'subject' => $rowForm['subject'],
					'content' => $rowForm['content'],
					'bcc' => $rowForm['email'],
					'event_id' => $event_id,
					'table' => $table,
					'table_id' => $class_id,
				);
				$str .= sendMailClass($arrData);
			}
		}
	}
	$arr = array(
		'error' => 0,
		'message' => 'Gửi mail thành công',
		'data' => $str,
	);
	echo json_encode($arr);
	return true;
}
/*end sendMail*/

?>