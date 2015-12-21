<div class="clear30"></div>
<?php
$cF = new controlAdminForm;

$id = $c->createEditData($table, $arrAction, $rowDetail);
$data = $cF->inputHidden('id', $id, 'ad_field');
echo $data;

$name = 'status';
$values = array();
$values[] = array('name'=>'Hiện', 'id'=>'1');
$values[] = array('name'=>'Ẩn', 'id'=>'0');
if($rowDetail[$name]=='') $valueCheck=1;
else $valueCheck=$rowDetail[$name];
$data = $cF->inputRadio($name, $values, $valueCheck, 'ad_field adRadio');
echo $cF->displayDiv('Trạng thái', $data);

if($rowDetail['group_id']!=3 && $id!=0){
	echo $cF->displayDiv('Ngày đăng ký', '<b class="label2 adMessage">'.$c->viewDateTime($rowDetail['datetime']).'</b>');
	
	$name = 'date_expiration';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'16');
	if($rowDetail[$name]==0) $value=date('Y-m-d H:i', time());
	else $value=date('Y-m-d H:i', $rowDetail[$name]);
	$data = $cF->inputText($name, $value, 'ad_field adInput adTxtSmall datetimepick', $properties);
	echo $cF->displayDiv('Ngày hết hạn', $data);
}

$name = 'group_id';
$values = $c->_model->_listTable('web_users_group', '`_order`');
array_unshift($values, array('name'=>'-- chọn nhóm --', 'id'=>'0'));
if($rowDetail[$name]!=''){
	$valueCheck=$rowDetail[$name];
}else $valueCheck=0;
$data = $cF->select($name, $values, $valueCheck, 'ad_field adInput adTxtMedium');
echo $cF->displayDiv('Group', $data);

$name = 'username';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'32');
if($arrAction['disabled']!='') $properties[] = $arrAction['disabled'];
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Username', $data);

if($id==0){
	echo $cF->displayDiv(' ', '<em class="label2 adMessage">Lưu ý: Khi tạo tài khoản password mặc định là "<b>'.CONS_ADMIN_PASSWORD_DEFAULT.'</b>"</em>');
	$name = 'password';
	$value = md5(CONS_ADMIN_PASSWORD_DEFAULT);
	$data = $cF->inputHidden($name, $value, 'ad_field');
	echo $data;
}else{
	$name = 'password';
	$properties = array();
	$properties[] = array('propertie'=>'readonly', 'value'=>'readonly');
	if($arrAction['disabled']!='') $properties[] = $arrAction['disabled'];
	$others = $c->messageChange('Ấn thay đổi là reset mật khẩu thành: '.CONS_ADMIN_PASSWORD_DEFAULT, $arrAction['change']);
	$value = md5(CONS_ADMIN_PASSWORD_DEFAULT);
	$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $others);
	echo $cF->displayDiv('Password', $data.'<br /><span class="adError messageAlias"></span>');
}

$name = 'name';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'60');
$properties[] = array('propertie'=>'check', 'value'=>'2');
$properties[] = array('propertie'=>'message', 'value'=>'Nhập name');
$value=$rowDetail[$name];
$other='<span class="error adError"></span>';
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Họ tên', $data);

$name = 'phone';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'30');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Phone', $data);

$name = 'email';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'60');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Email', $data);

$name = 'address';
$properties = array();
$properties[] = array('propertie'=>'spellcheck', 'value'=>'false');
$value=$rowDetail[$name];
$data = $cF->textArea($name, $value, 'ad_field adInput adTextArea', $properties);
echo $cF->displayDiv('Address', $data);

$name = 'btnCancel';
$btnCancel = $cF->btnCancel($name, 'Quay lại');
$name = 'btnSubmitAjax';
$btnSubmit = $cF->inputSubmit($name, $arrAction['lable'], 'adBtnLarge bgColorBlue1 corner8');
echo $cF->displayDiv(' ', $btnSubmit.$btnCancel);