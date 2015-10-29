<?php
$cF = new controlAdminForm;

$id = $c->createEditData($table, $arrAction, $rowDetail);

echo '<p style="color:#F60; font-size:120%">Lưu ý: Khi tạo tài khoản password mặc định là "<b>'.CONS_ADMIN_PASSWORD_DEFAULT.'</b>"</p>';
echo '<form name="form_action" method="post" action="">
<table width="100%" border="0" cellpadding="0" cellspacing="10" style="margin-bottom:50px">';	

	$name = 'status';
	$values = array();
	$values[] = array('name'=>'Hiện', 'id'=>'1');
	$values[] = array('name'=>'Ẩn', 'id'=>'0');
	if(!isset($_POST[$name])){
		if($rowDetail[$name]=='') $valueCheck=1;
		else $valueCheck=$rowDetail[$name];
	}else $valueCheck=$_POST[$name];
	$data = $cF->inputRadio($name, $values, $valueCheck, 'radio');
	echo $cF->displayTable('Trạng thái', $data);
	
	if($rowDetail['group_id']!=3 && $id!=0){
		echo $cF->displayTable('Ngày đăng ký', '<p style="color:#00F; font-weight:bold; margin-top:3px">'.$c->viewDateTime($rowDetail['datetime']).'</p>');
		
		$name = 'date_expiration';
		$properties = array();
		$properties[] = array('propertie'=>'maxlength', 'value'=>'30');
		if(!isset($_POST[$name])){
			if($rowDetail[$name]==0) $value=date('Y-m-d H:i', time());
			else $value=date('Y-m-d H:i', $rowDetail[$name]);
		}else $value=$_POST[$name];
		$data = $cF->inputText($name, $value, 'input_large datetimepick', $properties);
		echo $cF->displayTable('Ngày hết hạn', $data);
	}
	
	$name = 'group_id';
	$values = $c->_model->_listTable('web_users_group', '`order`');
	array_unshift($values, array('name'=>'-- chọn nhóm --', 'id'=>'0'));
	if(!isset($_POST[$name])){
		$valueCheck=$rowDetail[$name];
	}else $valueCheck=$_POST[$name];
	$data = $cF->select($name, $values, $valueCheck, 'input_medium', 1);
	echo $cF->displayTable('Group', $data);
	
	$name = 'username';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'32');
	if($arrAction['disabled']!='') $properties[] = $arrAction['disabled'];
	if($arrAction['change']=='') $change=''; else $change='changeUser';
	$others = $c->messageChange('', $change);
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
	$data = $cF->inputText($name, $value, 'input_medium enable', $properties, $others);
	echo $cF->displayTable('Username', $data);
	
	if($id==0){
		$name = 'password';
		$value = md5(CONS_ADMIN_PASSWORD_DEFAULT);
		$data = $cF->inputHidden($name, $value);
		echo $data;
	}else{
		$name = 'password';
		$properties = array();
		$properties[] = array('propertie'=>'readonly', 'value'=>'readonly');
		$properties[] = $arrAction['disabled'];
		$value = md5(CONS_ADMIN_PASSWORD_DEFAULT);
		$data = $cF->inputText($name, $value, 'input_medium enable', $properties);
		echo $cF->displayTable('Reset pass', $data.'<a href="javascript:;" id="resetPass" class="change">Reset</a>');
	}
	
	$name = 'name';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'100');
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Họ tên', $data);
	
	$name = 'phone';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'30');
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Điện thoại', $data);
	
	$name = 'email';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'60');
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Email', $data);
	
	$name = 'address';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Địa chỉ', $data);
	
	$name = 'rule_view';
	$values = $c->_model->_listAdmin();
	if(!isset($_POST[$name])){
		$valueCheck=$rowDetail[$name];
	}else $valueCheck=$_POST[$name];
	$dataView = '<b>Quyền xem</b><br />'.$cF->inputCheckbox($name, $values, $valueCheck, 'checkboxView', 1);
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $dataView .= $cF->inputHidden($name, $value, 'input_medium valueRuleView');
	$name = 'rule_action';
	$values = $c->_model->_listAdmin();
	if(!isset($_POST[$name])){
		$valueCheck=$rowDetail[$name];
	}else $valueCheck=$_POST[$name];
	$dataAction = '<b>Quyền chỉnh sửa</b><br />'.$cF->inputCheckbox($name, $values, $valueCheck, 'checkboxAction', 1);
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $dataAction .= $cF->inputHidden($name, $value, 'input_medium valueRuleAction');
	$data = '<div class="listCheckboxSmall" style="margin-right:4px">'.$dataView.'</div> <div class="listCheckboxSmall">'.$dataAction.'</div>';
	echo $cF->displayTable('Quyền trên website', $data);
	
	$name = 'lang';
    $data = $cF->inputHidden($name, $lang);
	echo $data;
	
	$name = 'id';
    $data = $cF->inputHidden($name, $rowDetail[$name]);
	echo $data;
	
	$name = 'btnCancel';
    $btnCancel = $cF->btnCancel($name);
	$name = 'btnSubmit';
    $btnSubmit = $cF->inputSubmit($name, $arrAction['lable'], 'submitAdmin');
	echo $cF->displayTable('', $btnSubmit.$btnCancel);

echo '</table></form>';

if($_SESSION['adminId']==25) echo '<p><a href="javascript:;" id="reset_pass">Reset password (Password: "<b>'.CONS_ADMIN_PASSWORD_DEFAULT.'</b>")</a></p>';