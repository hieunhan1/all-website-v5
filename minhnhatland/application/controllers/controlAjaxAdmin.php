<?php
include_once('config/configAdmin.php');

include_once('controlUpload.php');

if(isset($_POST['rejectStatus'])){
	if($c->checkRole('edit')==false) return false;
	
	$table = $c->_model->_changeDauNhay($_POST['rejectTable']);
	$data = $c->createEditData($table);
	echo $data;
	return true;
} 

if(isset($_POST['rejectDetele'])){
	if($c->checkRole('delete')==false) return false;
	
	$table = $c->_model->_changeDauNhay($_POST['table']);
	$id = $c->_model->_changeDauNhay($_POST['id']); settype($id, "int");
	
	if($table=='web_picture'){
		include_once('config/configUpload.php');
		$ad = new modelAdmin();
		$data = $ad->_viewEditDetail($table, $id);
		if(count($data) > 0){
			$urlImage = IMAGE_UPLOAD_URL.$data['img'];
			$urlImageThumb = IMAGE_UPLOAD_URL_THUMB.$data['img'];
			if(file_exists($urlImageThumb)) unlink($urlImageThumb);
			if(file_exists($urlImage)) unlink($urlImage);
		}
	}
	
	if($table=='' || $id=='') return false;
	$c->_model->_deleteOne($table, $id);
	
	return true;
}

if(isset($_POST['rejectCreateData'])){
	$table = $c->_model->_changeDauNhay($_POST['rejectTable']);
	if($table==''){
		$arr = array('error'=>1, 'message'=>'Error: Please press F5 key to try again');
		echo $c->exportError($arr);
		return false;
	}
	$data = $c->createEditData($table);
	if($data!=false){
		$arr = array('error'=>0, 'message'=>'Đã lưu vào database', 'id'=>$data);
		echo $c->exportError($arr);
		return true;
	}else{
		$arr = array('error'=>1, 'message'=>'Error: Please press F5 key to try again');
		echo $c->exportError($arr);
		return false;
	}
}

if(isset($_POST['checkAlias'])){
	$id = $c->_model->_changeDauNhay($_POST['id']); settype($id, 'int');
	$alias = $c->_model->_changeDauNhay($_POST['checkAlias']);
	echo $c->_model->_checkAliasHeader($alias, $id);
	return true;
}

/*phan quyen role*/
if(isset($_POST['checksUsersRole'])){
	$users_id = $c->_model->_changeDauNhay($_POST['users_id']); settype($users_id, 'int');
	$admin_id = $c->_model->_changeDauNhay($_POST['admin_id']); settype($admin_id, 'int');
	if($users_id==0 || $admin_id==0) return false;
	
	$data = $c->_model->_checksUsersRole($users_id, $admin_id);
	$check = count($data);
	$arr = array('error'=>$check, 'message'=>'= 0 Insert | = 1 Update', 'id'=>$data['id']);
	echo $c->exportError($arr);
	return true;
}
if(isset($_POST['rejectInsertListRole'])){
	$table = $c->_model->_changeDauNhay($_POST['rejectTable']);
	$users_id = $c->_model->_changeDauNhay($_POST['users_id']); settype($users_id, 'int');
	$admin_id = $c->_model->_changeDauNhay($_POST['admin_id']); settype($admin_id, 'int');
	if($table=='' || $users_id==0 || $admin_id==0){
		$arr = array('error'=>1, 'message'=>'Error: Please press F5 key to try again');
		echo $c->exportError($arr);
		return false;
	}
	
	$data = $c->_model->_checksUsersRole($users_id, $admin_id);
	$check = count($data);
	if($check==0) $_POST['id']=0;
	else $_POST['id']=$data['id'];
	
	$data = $c->createEditData($table);
	if($data!=false){
		$arr = array('error'=>0, 'message'=>'Đã lưu vào database', 'id'=>$data);
		echo $c->exportError($arr);
		return true;
	}else{
		$arr = array('error'=>1, 'message'=>'Error: Please press F5 key to try again');
		echo $c->exportError($arr);
		return false;
	}
}
/*end phan quyen role*/

/*logs*/
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
	return true;
}
/*end logs*/

/*clearCache*/
if(isset($_POST['clearCache'])){
	$c->remove_dir(CONS_CACHE_URL_FILE);
	return true;
}

if(isset($_POST['ajaxNumberItem'])){
	$table = $c->_model->_changeDauNhay($_POST['table']);
	$para = str_replace("'", "&#39;", $_POST['parameter']);
	if($table=='') return false;
	
	$str = '';
	if($para!=''){
		$para = explode('&', $para);
		for($i=0; $i<count($para); $i++){
			$m = explode('=', $para[$i]);
			$str .= " AND `{$m[0]}`='{$m[1]}' ";
		}
	}
	
	echo $c->_model->_ajaxNumberItem($table, $str);
	return true;
}

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

/*other*/
if(isset($_POST['viewFrmContent'])){
	$id = $c->_model->_changeDauNhay($_POST['id']);
	$cF = new controlAdminForm;
	
	//-----web_content Second-----//
	$rowContent = $c->_model->_webContentID($id);
	
	//dk de ajax table thu 2 den database
	echo '<div id="tableSecond" style="display:none">web_content</div>'; //table database
	if(isset($rowContent['id'])){
		$value = '{"name":"id", "value":"'.$rowContent['id'].'"}';
	}else{
		$value = '{"name":"id", "value":"0"}';
	}
	echo '<div id="idFirst" style="display:none">'.$value.'</div>';
	
	$value = '{"name":"header_id", "value":"'.$id.'"}';
	echo '<div id="idSecond" style="display:none">'.$value.'</div>';
		
	$name = 'content';
	if(isset($rowContent[$name])) $value=$rowContent[$name]; else $value='';
	$name = 'ckeditor_content';
	$properties = array();
	$properties[] = array('propertie'=>'type', 'value'=>'ckeditor');
	$others = $cF->ckeditorFull($name);
	$data = $cF->textArea($name, $value, 'ad_field_second', $properties, $others);
	echo $cF->displayDiv('', $data);
	//-----end web_content Second-----//
	
	return true;
}

if(isset($_POST['searchID'])){
	$id = $c->_model->_changeDauNhay($_POST['searchID']);
	$table = $c->_model->_changeDauNhay($_POST['table']);
	$ad = new modelAdmin;
	$data = $ad->_listTable($table, NULL, " AND `id`='{$id}' ");
	foreach($data as $row){
		echo $row['name'];
		return true;
	}
	return true;
}

if(isset($_POST['searchName'])){
	$name = $c->_model->_changeDauNhay($_POST['searchName']);
	$table = $c->_model->_changeDauNhay($_POST['table']);
	if(isset($_POST['limit'])) $limit = $c->_model->_changeDauNhay($_POST['limit']);
	else $limit=20;
	$where='';
	//if($table=='web_header') $where .= " AND `properties`=2 ";
	
	$ad = new modelAdmin;
	$where .= "AND `name` LIKE '%{$name}%'";
	$order = NULL;
	if($table=='mn_class') $order='`name` DESC';
	$data =$ad->_listTable($table, $order, $where, $limit);
	foreach($data as $row){
		echo '<p class="value_data" id="'.$row['id'].'" title="Click để chọn">'.$row['name'].'</p>';
	}
	return true;
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
		if($type_id!=22) $str=''; else $str='selected="selected"';
		echo '<option value="22" '.$str.'>Yêu cầu dịch vụ</option>';
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

if(isset($_GET['exportXML'])){
	$id = $c->_model->_changeDauNhay($_GET['id']); settype($id, 'int');
	if($id==0) return false;
	
	$arr = array(
		'select' => '*',
		'from' => '`mn_student`',
		'where' => "`class_id`='{$id}'",
		'limit' => '150',
	);
	$data = $c->_model->_select($arr);
	$arrXML = array();
	$arrXML[] = array(
		'name' => 'Họ tên',
		'phone' => 'Điện thoại',
		'email' => 'Email',
		'address' => 'Địa chỉ',
		'gender' => 'Giới tính',
		'birthday' => 'Ngày sinh',
		'status' => 'Trạng thái',
		'notes' => 'Ghi chú',
	);
	foreach($data as $row){
		if($row['gender']==1) $gender='Nam'; else $gender='Nữ';
		if($row['status']==1) $status='Enable'; else $status='Disable';
		
		$birthday='';
		if( (time()-$row['date_birthday']) > 60*60*24*365*8){
			$birthday=date('m/d/Y', $row['date_birthday']);
			if($birthday=='01/01/1970') $birthday='';
		}
		
		$arrXML[] = array(
			'name' => $row['name'],
			'phone' => $row['phone'].' ',
			'email' => $row['email'],
			'address' => $row['address'],
			'gender' => $gender,
			'birthday' => $birthday,
			'status' => $status,
			'notes' => $row['notes'],
		);
	}
	
	$data = $c->_model->_viewDetail('mn_class', $id);
	$file = $data['name'];
	
	include_once('libraries/php-excel-xml.php');
	$xls = new Excel_XML('UTF-8', true, 'Sheet1'); 
	$xls->addArray($arrXML);
	$xls->generateXML($file);
	
	return true;
}

if(isset($_POST['getClass'])){
	$course = $_POST['course']; settype($course, 'int');
	$class = $_POST['class']; settype($class, 'int');
	if($course==0) return false;
	
	$arr = array(
		'select' => '`id`, `name`',
		'from' => '`mn_class`',
		'where' => "`course_id`='{$course}'",
		'order' => '`name`'
	);
	$data = $c->_model->_select($arr);
	$str = '<option value="">-- chọn lớp học --</option>';
	foreach($data as $row){
		if($row['id']!=$class) $select=''; else $select='selected="selected"';
		$str .= '<option value="'.$row['id'].'" '.$select.'>'.$row['name'].'</option>';
	}
	echo $str;
	return true;
}

if(isset($_POST['getCode'])){ //lay ma hoc vien tu dong
	$table = $c->_model->_changeDauNhay($_POST['table']);
	$id = $c->_model->_changeDauNhay($_POST['id']);
	if($table=='' || $id=='') return false;
	
	$data = $c->_model->_viewDetail($table, $id);
	if(count($data)==0) return false;
	
	$name = $data['name'];
	$code = $data['code'];
	
	if($table=='mn_courses'){
		$type = $data['type'];
		$codeNew = $code.'-'.date('Y').'-';
		$arr = array(
			'select' => '`code`',
			'from' => '`mn_class`',
			'where' => "`code` LIKE '{$code}%' ",
			'order' => '`code` DESC',
		);
		$data = $c->_model->_select($arr);
		$arr = array();
		foreach($data as $row){
			$str = explode('-', $row['code']);
			$str = end($str);
			settype($str, 'int');
			$arr[] = $str;
		}
		if(count($arr)>0){
			rsort($arr);
			if($type==1){ //type: so thu tu khoa hoc
				$number = $arr[0] + 1;
				$number = str_pad( (int)$number, 3, "0", STR_PAD_LEFT );
				$name = $name.' - Khóa '.$number;
				$codeNew .= $number;
			}else{ //type: nam/thang
				$number = date('m');
				$arr = array(
					'select' => '`id`',
					'from' => '`mn_class`',
					'where' => "`code`='{$codeNew}{$number}'",
					'limit' => 1
				);
				$data = $c->_model->_select($arr);
				if(count($data) == 0){
					$name = $name.' - '.date('Y').'/'.$number;
				}else{
					settype($number, 'int');
					$number = $number + 1;
					if($number <= 12){
						$number = str_pad( (int)$number, 2, "0", STR_PAD_LEFT );
						$name = $name.' - '.date('Y').'/'.$number;
					}else{
						$number = '01';
						$codeNew = $code.'-'.(date('Y')+1).'-';
						$name = $name.' - '.(date('Y')+1).'/'.$number;
					}
				}
				$codeNew .= $number;
			}
		}else{
			if($type==1){
				$number = '001';
				$name = $name.' - Khóa '.$number;
			}else{
				$number = date('m');
				$name = $name.' - '.date('Y').'/'.$number;
			}
			$codeNew .= $number;
		}
	}else if($table=='mn_class'){
		$codeNew = $code.'-';
		$arr = array(
			'select' => '`code`',
			'from' => "`mn_student`",
			'where' => "`code` LIKE '{$code}%' ",
			'order' => '`code` DESC',
		);
		$data = $c->_model->_select($arr);
		$arr = array();
		foreach($data as $row){
			$str = explode('-', $row['code']);
			$str = end($str);
			settype($str, 'int');
			$arr[] = $str;
		}
		if(count($arr)>0){
			rsort($arr);
			$number = $arr[0] + 1;
		}else{
			$number = 1;
		}
		$codeNew .= $number;
	}
	
	echo json_encode( array('error'=>0, 'code'=>$codeNew, 'name'=>$name) );
	return true;
}
/*end other*/
?>