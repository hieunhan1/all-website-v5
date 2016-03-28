<div class="clear30"></div>
<?php
$cF = new controlAdminForm;

$id = $c->createEditData($table, $arrAction, $rowDetail);
$data = $cF->inputHidden('id', $id, 'ad_field');
echo $data;

$name = 'status';
$values = array();
$values[] = array('name'=>'Enable', 'id'=>'1');
$values[] = array('name'=>'Disable', 'id'=>'0');
if($rowDetail[$name]=='') $valueCheck=1;
else $valueCheck=$rowDetail[$name];
$data = $cF->inputRadio($name, $values, $valueCheck, 'ad_field adRadio');
echo $cF->displayDiv('Status', $data);

$name = 'code';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'20');
$properties[] = array('propertie'=>'check', 'value'=>'1');
$properties[] = array('propertie'=>'message', 'value'=>'Input certificate number');
$properties[] = array('propertie'=>'readonly', 'value'=>'readonly');
$properties[] = array('propertie'=>'style', 'value'=>'background-color:#F1F1F1');
$other='<span class="error adError"></span>';
if($id==0){
	$country = $_SESSION['adminCountry'];
	$arr = array(
		'select' => '`id`',
		'from' => '`mn_license`',
		'where' => "`code` LIKE '{$country}%' ",
	);
	$data = $c->_model->_select($arr);
	$number = count($data) + 1;
	$value = sprintf($_SESSION['adminCountry']."%'.06s", $number);
}else{
	$value = $rowDetail[$name];
}
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Certificate Number', $data);

$name = 'datetime';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'16');
if($rowDetail[$name]==0) $value=date('Y-m-d H:i', time());
else $value=date('Y-m-d H:i', $rowDetail[$name]);
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtSmall datetimepick', $properties);
echo $cF->displayDiv('Grant date', $data);

$name = 'class_id';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'6');
$properties[] = array('propertie'=>'check', 'value'=>'1');
$properties[] = array('propertie'=>'message', 'value'=>'Input class ID');
$properties[] = array('propertie'=>'placeholder', 'value'=>'Class ID');
$properties[] = array('propertie'=>'style', 'value'=>'width:80px');
if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput value_id', $properties);
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'100');
$properties[] = array('propertie'=>'placeholder', 'value'=>'Class name');
$properties[] = array('propertie'=>'style', 'value'=>'width:260px; margin-left:5px');
$data .= $cF->inputText('', '', 'adInput value_name', $properties);
$data .= '<input type="button" value="Search" class="adBtnSmall bgColorBlue1 corner5 value_search" style="float:none; margin-left:5px" /> <p class="adError error value_name_error"></p>';
$data .= '<div class="value_view" table="mn_class"></div>';
echo $cF->displayDiv('Class ID', $data);

$name = 'customer_id';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'6');
$properties[] = array('propertie'=>'check', 'value'=>'1');
$properties[] = array('propertie'=>'message', 'value'=>'Input student ID');
$properties[] = array('propertie'=>'placeholder', 'value'=>'Student ID');
$properties[] = array('propertie'=>'style', 'value'=>'width:80px');
if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput value_id', $properties);
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'100');
$properties[] = array('propertie'=>'placeholder', 'value'=>'Student name');
$properties[] = array('propertie'=>'style', 'value'=>'width:260px; margin-left:5px');
$data .= $cF->inputText('', '', 'adInput value_name', $properties);
$data .= '<input type="button" value="Search" class="adBtnSmall bgColorBlue1 corner5 value_search" style="float:none; margin-left:5px" /> <p class="adError error value_name_error"></p>';
$data .= '<div class="value_view" table="mn_customer"></div>';
echo $cF->displayDiv('Student ID', $data);

$name = 'course_id';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'6');
$properties[] = array('propertie'=>'check', 'value'=>'1');
$properties[] = array('propertie'=>'message', 'value'=>'Input course ID');
$properties[] = array('propertie'=>'placeholder', 'value'=>'Course ID');
$properties[] = array('propertie'=>'style', 'value'=>'width:80px');
if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput value_id', $properties);
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'100');
$properties[] = array('propertie'=>'placeholder', 'value'=>'Course name');
$properties[] = array('propertie'=>'style', 'value'=>'width:260px; margin-left:5px');
$data .= $cF->inputText('', '', 'adInput value_name', $properties);
$data .= '<input type="button" value="Search" class="adBtnSmall bgColorBlue1 corner5 value_search" style="float:none; margin-left:5px" /> <p class="adError error value_name_error"></p>';
$data .= '<div class="value_view" table="web_header"></div>';
echo $cF->displayDiv('Course ID', $data);

$name = 'trainer_id';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'6');
$properties[] = array('propertie'=>'check', 'value'=>'1');
$properties[] = array('propertie'=>'message', 'value'=>'Input trainer ID');
$properties[] = array('propertie'=>'placeholder', 'value'=>'Trainer ID');
$properties[] = array('propertie'=>'style', 'value'=>'width:80px');
if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput value_id', $properties);
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'100');
$properties[] = array('propertie'=>'placeholder', 'value'=>'Trainer name');
$properties[] = array('propertie'=>'style', 'value'=>'width:260px; margin-left:5px');
$data .= $cF->inputText('', '', 'adInput value_name', $properties);
$data .= '<input type="button" value="Search" class="adBtnSmall bgColorBlue1 corner5 value_search" style="float:none; margin-left:5px" /> <p class="adError error value_name_error"></p>';
$data .= '<div class="value_view" table="web_users"></div>';
echo $cF->displayDiv('Trainer ID', $data);

$name = 'btnCancel';
$btnCancel = $cF->btnCancel($name, 'Back');
$name = 'btnSubmitAjax';
$btnSubmit = $cF->inputButton($name, $arrAction['lable'], 'adBtnLarge bgColorBlue1 corner8');
echo $cF->displayDiv(' ', $btnSubmit.$btnCancel);