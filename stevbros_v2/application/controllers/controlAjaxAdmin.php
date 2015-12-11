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
	/*$check = $c->_model->_checksIpAddress($table, $ipAddress);
	$check = time() - $check['datetime'];
	if($check<30){
		$arr = array('error'=>1, 'message'=>'You manipulate too fast, please try again after 30 seconds.');
		echo $c->exportError($arr);
		return false;
	}*/
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
	echo 1;
	return true;
}

if(isset($_POST['ajaxNumberItem'])){
	$table = $c->_model->_changeDauNhay($_POST['table']);
	if($table=='') return false;
	echo $c->_model->_ajaxNumberItem($table);
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

/*if(isset($_POST['city_id'])){
	$city_id = $c->_model->_changeDauNhay($_POST['city_id']);
	$district_id = $c->_model->_changeDauNhay($_POST['district_id']);
	if($city_id=='') return false;
	
	$ad = new modelAdmin;
	$where = " AND `city_id`='{$city_id}' ";
	$data = $ad->_listTable('web_listdistrict', '`order`, `name`', $where);
	foreach($data as $row){
		if($row['id']!=$district_id) echo '<option value="'.$row['id'].'">'.$row['name'].'</option>';
		else echo '<option value="'.$row['id'].'" selected="selected">'.$row['name'].'</option>';
	}
	return true;
}*/

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
	$where='';
	if($table=='web_header') $where .= " AND `properties`=2 ";
	
	$ad = new modelAdmin;
	$where .= "AND `name` LIKE '%{$name}%'";
	$data =$ad->_listTable($table, NULL, $where);
	foreach($data as $row){
		echo '<p class="value_data" id="'.$row['id'].'">'.$row['name'].'</p>';
	}
	return true;
}
/*end other*/
?>