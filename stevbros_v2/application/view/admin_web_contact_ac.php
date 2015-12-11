<div class="clear30"></div>
<?php

$cF = new controlAdminForm;

$id = $c->createEditData($table, $arrAction, $rowDetail);
$data = $cF->inputHidden('id', $id, 'ad_field');
echo $data;

if($rowDetail['type']==1) $data='Liên hệ'; else $data='Đăng ký';
echo $cF->displayDiv('Type', '<p class="adMessage label2">'.$data.'</p>' );
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
$properties = array();
$properties[] = array('propertie'=>'spellcheck', 'value'=>'false');
$value=$rowDetail[$name];
$data = $cF->textArea($name, $value, 'ad_field adInput adTextArea', $properties);
echo $cF->displayDiv('Address', $data);

$name = 'ckeditor_message';
if(isset($rowContent[$name])) $value=$rowContent[$name]; else $value='';
$others = $cF->ckeditorCustom($name);
$data = $cF->textArea($name, $value, 'textarea', NULL, $others);
echo $cF->displayDiv('Lời nhắn', $data);

$name = 'lang';
$data = $cF->inputHidden($name, $lang, 'ad_field');
echo $data;

$name = 'btnCancel';
$btnCancel = $cF->btnCancel($name, 'Quay lại');
$name = 'btnSubmitAjax';
$btnSubmit = $cF->inputSubmit($name, $arrAction['lable'], 'adBtnLarge bgColorBlue1 corner8');
echo $cF->displayDiv(' ', $btnSubmit.$btnCancel);