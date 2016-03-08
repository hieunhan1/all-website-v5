<div class="clear30"></div>
<?php
$arrType = array(
	0 => array('id'=>'', 'name'=>'-- chọn loại --'),
	1 => array('id'=>'1', 'name'=>'Liên hệ'),
	2 => array('id'=>'2', 'name'=>'Đặt tour'),
	3 => array('id'=>'3', 'name'=>'Yêu cầu dịch vụ'),
);
/*$arrStatus = array(
	1 => array('id'=>'0', 'name'=>'Chưa xem'),
	2 => array('id'=>'2', 'name'=>'Đã hành động'),
	3 => array('id'=>'3', 'name'=>'Đã phản hồi'),
	4 => array('id'=>'1', 'name'=>'Hoàn thành'),
	5 => array('id'=>'4', 'name'=>'Error'),
);*/
$arrStatus = array(
	1 => array('id'=>'0', 'name'=>'Chưa xem'),
	4 => array('id'=>'1', 'name'=>'Đã xem'),
);

$cF = new controlAdminForm;

$id = $c->createEditData($table, $arrAction, $rowDetail);
$data = $cF->inputHidden('id', $id, 'ad_field');
echo $data;

if(isset($rowDetail['type'])) echo $cF->displayDiv('Type', '<p class="adMessage label2">'.$arrType[$rowDetail['type']]['name'].'</p>' );
if($rowDetail['header_id']!='0' && $rowDetail['header_id']!=''){
	$data = $c->_model->_viewEditDetail('web_header', $rowDetail['header_id']);
	echo $cF->displayDiv('Tour', '<p class="adMessage label2 header_id">'.$data['name'].'</p>' );
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

$name = 'date_khoihanh';
if($rowDetail[$name]!=''){
	echo $cF->displayDiv('Ngày khởi hành', '<b class="label2 adMessage">'.$c->viewDateTime($rowDetail[$name]).'</b>' );
}

$name = 'address';
if($rowDetail[$name]!=''){
	$properties = array();
	$properties[] = array('propertie'=>'spellcheck', 'value'=>'false');
	$value=$rowDetail[$name];
	$data = $cF->textArea($name, $value, 'ad_field adInput adTextArea', $properties);
	echo $cF->displayDiv('Address', $data);
}

$name = 'destination';
if($rowDetail[$name]!=''){
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'150');
	$value=$rowDetail[$name];
	$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
	echo $cF->displayDiv('Điểm đến', $data);
}

$name = 'visitors';
if($rowDetail[$name]!=''){
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'3');
	$value=$rowDetail[$name];
	$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
	echo $cF->displayDiv('Người lớn', $data);
}

$name = 'children';
if($rowDetail[$name]!=''){
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'3');
	$value=$rowDetail[$name];
	$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
	echo $cF->displayDiv('Trẻ em', $data);
}

$name = 'baby';
if($rowDetail[$name]!=''){
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'2');
	$value=$rowDetail[$name];
	$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
	echo $cF->displayDiv('Trẻ nhỏ', $data);
}

$name = 'message';
if($rowDetail[$name]!=''){
	if(isset($rowDetail[$name])) $value=$rowDetail[$name]; else $value='';
	$name = 'ckeditor_message';
	$others = $cF->ckeditorBasic($name);
	$data = $cF->textArea($name, $value, 'textarea', NULL, $others);
	echo $cF->displayDiv('Lời nhắn', $data);
}

$name = 'lang';
$data = $cF->inputHidden($name, $lang, 'ad_field');
echo $data;

$name = 'btnCancel';
$btnCancel = $cF->btnCancel($name, 'Quay lại');
$name = 'btnActionAjax';
$btnActionAjax = $cF->inputButton($name, 'Tương tác với khách hàng', 'adBtnLarge bgColorGreen corner8');
$name = 'btnSubmitAjax';
$btnSubmit = $cF->inputButton($name, $arrAction['lable'], 'adBtnLarge bgColorBlue1 corner8');
echo $cF->displayDiv(' ', $btnSubmit.$btnCancel);

//include_once('admin_action.php');