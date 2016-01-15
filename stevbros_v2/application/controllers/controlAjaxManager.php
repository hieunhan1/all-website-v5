<?php
$cM = new modelManager;

if(isset($_POST['insertCustomerContract'])){
	if($c->checkRole('create')==false) return false;
	$contract_id = $c->_model->_changeDauNhay($_POST['contract_id']); settype($contract_id, 'int');
	$customer_id = $c->_model->_changeDauNhay($_POST['customer_id']); settype($contract_id, 'int');
	if($contract_id==0 || $customer_id==0){
		$arr = array('error'=>1, 'message'=>'Input error');
		echo $c->exportError($arr);
		return false;
	}
	
	$data = $c->_model->_viewDetail('mn_customer', $customer_id);
	if(count($data)==0){
		$arr = array('error'=>1, 'message'=>'Không tìm thấy khách hàng này trong cơ sở dữ liệu');
		echo $c->exportError($arr);
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
		echo $c->exportError($arr);
		return false;
	}
	
	$fields = array('contract_id', 'customer_id');
	$values = array($contract_id, $customer_id);
	$result = $c->_model->_getSql('create', 'mn_contract_customer', $fields, $values);
	if($result==false){
		$arr = array('error'=>1, 'message'=>'Data error: '.$result);
		echo $c->exportError($arr);
		return false;
	}
	
	$arr = array('error'=>0, 'message'=>'Thêm thành công');
	echo $c->exportError($arr);
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
		case 3: include_once('view/admin_mn_action_phantich.php'); break;
		case 5: include_once('view/admin_mn_action_hopdong.php'); break;
	}
}

if(isset($_POST['loadFormTemplate'])){
	$id = $c->_model->_changeDauNhay($_POST['id']);
	$row = $c->_model->_viewDetail('web_event_form', $id);
	
	$subject = $row['subject'];
	$subject = str_replace('"', "'", $subject);
	$subject = $c->_model->_removeNewLine($subject);
	
	$name=''; $course=''; $date=''; $price=''; $message=''; $link='';
	if(isset($_POST['name'])) $name=$c->_model->_changeDauNhay($_POST['name']);
	if(isset($_POST['course'])) $course=$c->_model->_changeDauNhay($_POST['course']);
	if(isset($_POST['date'])) $date=date('d-m-Y', strtotime($_POST['date']));
	if(isset($_POST['price'])) $price=$c->_model->_changeDauNhay($_POST['price']);
	if(isset($_POST['message'])) $message=$c->_model->_changeDauNhay($_POST['message']);
	if(isset($_POST['link_entry'])){
		if(!isset($_POST['table']) || !isset($_POST['table_id'])) return false;
		$rowInfo = $c->_model->_viewDetail($_POST['table'], $_POST['table_id']);
		$link = CONS_BASE_URL.'/ajax/?entrytest=1&menu_id=286&type='.$_POST['table'].'&date='.$rowInfo['datetime'];
		$link = '<a href="'.$link.'">ấn vào đây</a>';
	}
	
	$arr = array(
		'{_name}' => $name,
		'{_course}' => $course,
		'{_date}' => $date,
		'{_price}' => number_format($price, 0, ',', '.').'đ',
		'{_link}' => $link,
		'{_message}' => $message,
	);
	$content = $c->contentReplace($row['content'], $arr);
	$content = str_replace('"', "'", $content);
	$content = $c->_model->_removeNewLine($content);
	
	$arr = array('error'=>0, 'subject'=>$subject, 'content'=>$content, 'email'=>$row['email']);
	echo $c->exportError($arr);
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
	$table_id = $c->_model->_changeDauNhay($_POST['table_id']);
	$subject = $c->_model->_changeDauNhay($_POST['subject']);
	$content = $c->_model->_changeDauNhay($_POST['content'], 0);
	if($name=='' || $email==false || $subject=='' || $content=='' || $event_id=='' || $table_id==''){
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
		$table = 'web_contact';
		$cM->_updateStatusContact($table_id, 2);
		$cM->_insertContactSendMail($name, $email, $content, $event_id, $table, $table_id);
		echo '<div class="adMessage"><b>Gửi thành công.</b></div>';
	}else{
		echo '<div class="adError"><p>ERROR sendmail:</p>'.$data.'</div>';
	}
	
	return true;
}
/*end sendMail*/

?>