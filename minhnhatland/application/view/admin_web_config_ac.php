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

$name = 'name';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'30');
$properties[] = array('propertie'=>'check', 'value'=>'2');
$properties[] = array('propertie'=>'message', 'value'=>'Nhập name');
$value=$rowDetail[$name];
$other='<span class="error adError"></span>';
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Mô tả', $data);

$name = 'name_var';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'30');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Tên biến', $data);

$name = 'value';
$properties = array();
$properties[] = array('propertie'=>'spellcheck', 'value'=>'false');
$value=$rowDetail[$name];
$data = $cF->textArea($name, $value, 'ad_field adInput adTextArea', $properties);
echo $cF->displayDiv('Giá trị', $data);

$name = '_order';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'3');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Thứ tự', $data);

$name = 'lang';
$data = $cF->inputHidden($name, $lang, 'ad_field');
echo $data;

$name = 'btnCancel';
$btnCancel = $cF->btnCancel($name, 'Quay lại');
$name = 'btnSubmitAjax';
$btnSubmit = $cF->inputSubmit($name, $arrAction['lable'], 'adBtnLarge bgColorBlue1 corner8');
echo $cF->displayDiv(' ', $btnSubmit.$btnCancel);