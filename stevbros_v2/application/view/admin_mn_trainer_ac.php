<div class="clear30"></div>
<?php
$type = array(
	'0' => array('id'=>0, 'name'=>'No'),
	'1' => array('id'=>1, 'name'=>'Selected'),
	'2' => array('id'=>2, 'name'=>'Associate'),
	'3' => array('id'=>3, 'name'=>'Certified'),
	'4' => array('id'=>4, 'name'=>'Senior'),
	'5' => array('id'=>5, 'name'=>'Expert'),
);

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

$name = 'type';
$values = $type;
if($rowDetail[$name]!=''){
	$valueCheck=$rowDetail[$name];
}else $valueCheck=0;
$data = $cF->select($name, $values, $valueCheck, 'ad_field adInput adTxtMedium');
echo $cF->displayDiv('Chức vụ', $data);

$name = 'price_public';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'10');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Mức giá public', $data);

$name = 'price_business';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'10');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Mức giá doanh nghiệp', $data);

$name = 'name';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'60');
$properties[] = array('propertie'=>'check', 'value'=>'2');
$properties[] = array('propertie'=>'message', 'value'=>'Nhập name');
$other='<span class="error adError"></span>';
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Name', $data);

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

$name = 'date_birthday';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'16');
if($rowDetail[$name]==0) $value=date('Y-m-d 00:00', time());
else $value=date('Y-m-d 00:00', $rowDetail[$name]);
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtSmall datetimepick', $properties);
echo $cF->displayDiv('Birthday', $data);

$name = 'exp_work';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'3');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Số năm kinh nghiệm', $data);

$name = 'courses_id';
if($rowDetail[$name]!=''){
	$valueCheck=$rowDetail[$name];
}else $valueCheck='';
$arr = array(
	'select' => '`id`, `name`',
	'from' => '`web_header`',
	'where' => '`parent`=70 AND `properties`=1 AND `status`=1',
	'order' => '`_order`',
 );
$values = $c->_model->_select($arr);
$data = $cF->inputCheckbox($name, $values, $valueCheck, 'checkBoxItem', 1);
$value = $rowDetail[$name];
$data .= $cF->inputHidden($name, $value, 'ad_field listValueItem');
echo $cF->displayDiv('Đào tạo lĩnh vực', '<div class="listCheckBox2">'.$data.'</div>');

$name = 'yourself';
$value=$rowDetail[$name];
$name = 'ckeditor_yourself';
$properties = array();
$properties[] = array('propertie'=>'type', 'value'=>'ckeditor');
$others = $cF->ckeditorStandard($name);
$data = $cF->textArea($name, $value, 'ad_field', $properties, $others);
echo $cF->displayDiv('Giới thiệu bản thân', $data);

$name = 'diploma';
$value=$rowDetail[$name];
$name = 'ckeditor_diploma';
$properties = array();
$properties[] = array('propertie'=>'type', 'value'=>'ckeditor');
$others = $cF->ckeditorStandard($name);
$data = $cF->textArea($name, $value, 'ad_field', $properties, $others);
echo $cF->displayDiv('Bằng cấp', $data);

$name = 'certificate';
$value=$rowDetail[$name];
$name = 'ckeditor_certificate';
$properties = array();
$properties[] = array('propertie'=>'type', 'value'=>'ckeditor');
$others = $cF->ckeditorStandard($name);
$data = $cF->textArea($name, $value, 'ad_field', $properties, $others);
echo $cF->displayDiv('Chứng nhận', $data);

$name = 'experience';
$value=$rowDetail[$name];
$name = 'ckeditor_experience';
$properties = array();
$properties[] = array('propertie'=>'type', 'value'=>'ckeditor');
$others = $cF->ckeditorStandard($name);
$data = $cF->textArea($name, $value, 'ad_field', $properties, $others);
echo $cF->displayDiv('Kinh nghiệm', $data);

//upload images
$data = ob_start();
include_once('admin_upload.php');
$data = ob_get_clean();
echo $cF->displayDiv('Avatar', $data);

$name = 'btnCancel';
$btnCancel = $cF->btnCancel($name, 'Quay lại');
$name = 'btnSubmitAjax';
$btnSubmit = $cF->inputSubmit($name, $arrAction['lable'], 'adBtnLarge bgColorBlue1 corner8');
echo $cF->displayDiv(' ', $btnSubmit.$btnCancel);