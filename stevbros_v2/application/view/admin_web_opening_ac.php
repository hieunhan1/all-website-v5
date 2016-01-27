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

$name = 'menu_id';
$where = "(type_id=10)";
$values = $c->menuList($lang, $where);
$valueCheck=$rowDetail[$name];
$data = $cF->inputCheckbox($name, $values, $valueCheck, 'checkBoxItem', 1);
if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
$data .= $cF->inputHidden($name, $value, 'ad_field listValueItem');
echo $cF->displayDiv('Danh mục hiển thị', '<div class="listCheckBox">'.$data.'</div>');

$name = 'name';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
$properties[] = array('propertie'=>'check', 'value'=>'2');
$properties[] = array('propertie'=>'message', 'value'=>'Nhập name');
$value=$rowDetail[$name];
$other='<span class="error adError"></span>';
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Mô tả', $data);

$name = 'date_opening';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'16');
if($rowDetail[$name]==0) $value=date('Y-m-d 23:30', time());
else $value=date('Y-m-d H:i', $rowDetail[$name]);
$other = '<span class="adNotes">Chọn giờ 23:30</span>';
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtSmall datetimepick', $properties, $other);
echo $cF->displayDiv('Ngày khai giảng', $data);

$name = 'schedule';
if(isset($rowDetail[$name])) $value=$rowDetail[$name]; else $value='';
$name = 'ckeditor_schedule';
$properties = array();
$properties[] = array('propertie'=>'type', 'value'=>'ckeditor');
$others = $cF->ckeditorBasic($name);
$data = $cF->textArea($name, $value, 'ad_field', $properties, $others);
echo $cF->displayDiv('Description', $data);

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