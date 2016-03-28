<div class="clear30"></div>
<?php
$arrStatus = array(
	array('id'=>'0', 'name'=>'Chưa gửi mail'),
	array('id'=>'2', 'name'=>'Đã gửi mail'),
	array('id'=>'1', 'name'=>'Đã xem'),
);

$arrBranch = array();
$data = $c->_model->_listTable('web_branch', 'id');
foreach($data as $row){
	$arrBranch[$row['id']] = array('id'=>$row['id'], 'name'=>$row['name']);
}

$cF = new controlAdminForm;

$id = $c->createEditData($table, $arrAction, $rowDetail);
$data = $cF->inputHidden('id', $id, 'ad_field');
echo $data;

if(isset($rowDetail['type'])) echo $cF->displayDiv('Type', '<p class="adMessage label2">'.$cons_contact_type[$rowDetail['type']]['name'].'</p>' );
if($rowDetail['header_id']!='0' && $rowDetail['header_id']!=''){
	$data = $c->_model->_viewEditDetail('web_header', $rowDetail['header_id']);
	echo $cF->displayDiv('Khóa học', '<p class="adMessage label2 header_id">'.$data['name'].'</p>' );
}else{
	$name = 'course_name';
	if($rowDetail[$name]!=''){
		$properties = array();
		$properties[] = array('propertie'=>'maxlength', 'value'=>'150');
		$value=$rowDetail[$name];
		$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
		echo $cF->displayDiv('Khóa học', $data);
	}
}

$name = 'branch';
if($rowDetail[$name]!=''){
	echo $cF->displayDiv('Nơi học', '<p class="adMessage label2 header_id">'.$arrBranch[$rowDetail[$name]]['name'].'</p>' );
}

echo $cF->displayDiv('Ngày liên hệ', '<b class="label2">'.$c->viewDateTime($rowDetail['datetime']).'</b>' );

$name = 'status';
$values = $arrStatus;
if($rowDetail[$name]=='') $valueCheck=1;
else $valueCheck=$rowDetail[$name];
$data = $cF->inputRadio($name, $values, $valueCheck, 'ad_field adRadio');
echo $cF->displayDiv('Trạng thái', $data);

$name = 'name';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
$properties[] = array('propertie'=>'check', 'value'=>'2');
$properties[] = array('propertie'=>'message', 'value'=>'Nhập name');
$value=$rowDetail[$name];
$other='<span class="error adError"></span>';
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Họ tên', $data);

$name = 'email';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'100');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Email', $data);

$name = 'phone';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'30');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Phone', $data);

$name = 'address';
if($rowDetail[$name]!=''){
	$properties = array();
	$properties[] = array('propertie'=>'spellcheck', 'value'=>'false');
	$value=$rowDetail[$name];
	$data = $cF->textArea($name, $value, 'ad_field adInput adTextArea', $properties);
	echo $cF->displayDiv('Address', $data);
}

$name = 'date_birthday';
if($rowDetail[$name]!=''){
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'16');
	if($rowDetail[$name]==0) $value=date('Y-m-d 0:0', time());
	else $value=date('Y-m-d 0:0', $rowDetail[$name]);
	$data = $cF->inputText($name, $value, 'ad_field adInput adTxtSmall datetimepick', $properties);
	echo $cF->displayDiv('Sinh nhật', $data);
}

$name = 'message';
if($rowDetail[$name]!=''){
	if(isset($rowDetail[$name])) $value=$rowDetail[$name]; else $value='';
	$name = 'ckeditor_message';
	$others = $cF->ckeditorBasic($name);
	$data = $cF->textArea($name, $value, 'textarea', NULL, $others);
	echo $cF->displayDiv('Lời nhắn', $data);
}

$name = 'user';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'5');
$properties[] = array('propertie'=>'placeholder', 'value'=>'ID user');
$properties[] = array('propertie'=>'style', 'value'=>'width:70px');
if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
$other='<span class="error adError"></span>';
$data = $cF->inputText($name, $value, 'ad_field adInput value_id', $properties);
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'100');
$properties[] = array('propertie'=>'placeholder', 'value'=>'Nhập tên user và ấn nút TÌM KIẾM');
$properties[] = array('propertie'=>'style', 'value'=>'width:260px; margin-left:5px');
$data .= $cF->inputText('', '', 'adInput value_name', $properties);
$data .= '<input type="button" value="Tìm kiếm" class="adBtnSmall bgColorBlue1 corner5 value_search" style="float:none; margin-left:5px" /> <p class="adError error value_name_error"></p>';
$data .= '<div class="value_view" table="web_users"></div>';
echo $cF->displayDiv('User ID', $data);

$name = 'lang';
$data = $cF->inputHidden($name, $lang, 'ad_field');
echo $data;

$name = 'btnCancel';
$btnCancel = $cF->btnCancel($name, 'Quay lại');
$name = 'btnSubmitAjax';
$btnSubmit = $cF->inputButton($name, $arrAction['lable'], 'adBtnLarge bgColorBlue1 corner8');
echo $cF->displayDiv(' ', $btnSubmit.$btnCancel);