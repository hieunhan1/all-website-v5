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
$properties[] = array('propertie'=>'maxlength', 'value'=>'100');
$properties[] = array('propertie'=>'check', 'value'=>'2');
$properties[] = array('propertie'=>'message', 'value'=>'Nhập name');
$value=$rowDetail[$name];
$other='<span class="error adError"></span>';
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Mô tả', $data);

$name = 'url';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'30');
$properties[] = array('propertie'=>'check', 'value'=>'user');
$properties[] = array('propertie'=>'message', 'value'=>'Url chưa đúng');
$value=$rowDetail[$name];
$other='<span class="error adError"></span>';
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Url', $data);

$name = 'table';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'20');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Table database', $data);

$name = 'parameter';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'100');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Parameter', $data);

$name = 'file';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'20');
$properties[] = array('propertie'=>'check', 'value'=>'user');
$properties[] = array('propertie'=>'message', 'value'=>'File chưa đúng');
$value=$rowDetail[$name];
$other='<span class="error adError"></span>';
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('File', $data);

$name = 'img';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'150');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Image css', $data);

$name = 'ajax';
$values = array();
$values[] = array('name'=>'Yes', 'id'=>'1');
$values[] = array('name'=>'No', 'id'=>'0');
if($rowDetail[$name]=='') $valueCheck=0;
else $valueCheck=$rowDetail[$name];
$data = $cF->inputRadio($name, $values, $valueCheck, 'ad_field adRadio');
echo $cF->displayDiv('Ajax', $data);

$name = 'type';
$values = array();
$values[] = array('name'=>'Web', 'id'=>'1');
$values[] = array('name'=>'Admin', 'id'=>'2');
$values[] = array('name'=>'Manager', 'id'=>'3');
$values[] = array('name'=>'No', 'id'=>'0');
if($rowDetail[$name]=='') $valueCheck=1;
else $valueCheck=$rowDetail[$name];
$data = $cF->inputRadio($name, $values, $valueCheck, 'ad_field adRadio');
echo $cF->displayDiv('Loại', $data);

$name = 'order';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'3');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Thứ tự', $data);

$name = 'btnCancel';
$btnCancel = $cF->btnCancel($name, 'Quay lại');
$name = 'btnSubmitAjax';
$btnSubmit = $cF->inputSubmit($name, $arrAction['lable'], 'adBtnLarge bgColorBlue1 corner8');
echo $cF->displayDiv(' ', $btnSubmit.$btnCancel);