<div class="clear30"></div>
<?php
$arrType = array(
	1=>'Liên hệ',
	2=>'Đăng ký',
	3=>'Hợp tác',
);
$number = array(
	'0' => array('id'=>0, 'name'=>'No'),
	'1' => array('id'=>1, 'name'=>'Dưới 10 người'),
	'2' => array('id'=>2, 'name'=>'Từ 10 đến 19 người'),
	'3' => array('id'=>3, 'name'=>'Từ 20 đến 25 người'),
	'4' => array('id'=>4, 'name'=>'Từ 26 đến 30 người'),
	'5' => array('id'=>5, 'name'=>'Hơn 30 người'),
);

$cF = new controlAdminForm;

$id = $c->createEditData($table, $arrAction, $rowDetail);
$data = $cF->inputHidden('id', $id, 'ad_field');
echo $data;

echo $cF->displayDiv('Type', '<p class="adMessage label2">'.$arrType[$rowDetail['type']].'</p>' );
if($rowDetail['header_id']!=''){
	$data = $c->_model->_viewEditDetail('web_header', $rowDetail['header_id']);
	echo $cF->displayDiv('Khóa học', '<p class="adMessage label2">'.$data['name'].'</p>' );
}
echo $cF->displayDiv('Ngày', '<b class="label2">'.$c->viewDateTime($rowDetail['datetime']).'</b>' );

$name = 'status';
$values = array();
$values[] = array('name'=>'Chưa xem', 'id'=>'0');
$values[] = array('name'=>'Đã xem', 'id'=>'1');
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

$name = 'company';
if($rowDetail[$name]!=''){
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'150');
	$value=$rowDetail[$name];
	$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
	echo $cF->displayDiv('Company', $data);
}

$name = 'parts';
if($rowDetail[$name]!=''){
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'50');
	$value=$rowDetail[$name];
	$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
	echo $cF->displayDiv('Bộ phận làm việc', $data);
}

$name = 'number';
if($rowDetail[$name]!=0){
	$values = $number;
	if($rowDetail[$name]!=''){
		$valueCheck=$rowDetail[$name];
	}else $valueCheck=0;
	$data = $cF->select($name, $values, $valueCheck, 'ad_field adInput adTxtMedium');
	echo $cF->displayDiv('Số học viên tham dự', $data);
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
$name = 'btnSubmitAjax';
$btnSubmit = $cF->inputSubmit($name, $arrAction['lable'], 'adBtnLarge bgColorBlue1 corner8');
echo $cF->displayDiv(' ', $btnSubmit.$btnCancel);