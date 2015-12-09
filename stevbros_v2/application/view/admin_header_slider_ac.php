<div class="clear30"></div>
<?php
echo $c->viewTableHtml($table);

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

$name = 'datetime';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'16');
if($rowDetail[$name]==0) $value=date('Y-m-d H:i', time());
else $value=date('Y-m-d H:i', $rowDetail[$name]);
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtSmall datetimepick', $properties);
echo $cF->displayDiv('Ngày', $data);

$name = 'menu_id';
$where = "";
$values = $c->menuList($lang, $where);
$valueCheck=$rowDetail[$name];
$data = $cF->inputCheckbox($name, $values, $valueCheck, 'checkBoxMenu', 1);
if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
$data .= $cF->inputHidden($name, $value, 'ad_field listValueMenu');
echo $cF->displayDiv('Danh mục hiển thị', '<div class="listCheckBox">'.$data.'</div>');

$name = 'position_id';
if($rowDetail[$name]!=''){
	$valueCheck=$rowDetail[$name];
}else $valueCheck='';
$values = $c->_model->_webPositionList(0);
$data = $cF->inputCheckbox($name, $values, $valueCheck, 'checkBoxPosition', 1);
$value=$rowDetail[$name];
$data .= $cF->inputHidden($name, $value, 'ad_field listValuePosition');
echo $cF->displayDiv('Vị trí hiển thị', '<div class="listCheckBox2">'.$data.'</div>');

$name = 'name';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
$properties[] = array('propertie'=>'check', 'value'=>'2');
$properties[] = array('propertie'=>'message', 'value'=>'Nhập name');
$value=$rowDetail[$name];
$other='<span class="error adError"></span>';
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Name', $data);

$name = 'url';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
$others = $c->messageChange(CONS_ADMIN_AUTO_URL);
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $others);
echo $cF->displayDiv('Link', $data);

/*$name = 'description';
$properties = array();
$properties[] = array('propertie'=>'spellcheck', 'value'=>'false');
$value=$rowDetail[$name];
$data = $cF->textArea($name, $value, 'ad_field adInput adTextArea', $properties);
echo $cF->displayDiv('Description', $data);*/

/*$name = 'code';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'20');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Code', $data);*/

$name = 'order';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'3');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Thứ tự', $data);

//upload images
$data = ob_start();
include_once('admin_upload.php');
$data = ob_get_clean();
echo $cF->displayDiv('Upload ảnh', $data);

if(isset($_GET['type_id'])) $type_id=$_GET['type_id']; else $type_id='';
$name = 'type_id';
$data = $cF->inputHidden($name, $type_id, 'ad_field');
echo $data;

$name = 'properties';
$data = $cF->inputHidden($name, 2, 'ad_field');
echo $data;

$name = 'lang';
$data = $cF->inputHidden($name, $lang, 'ad_field');
echo $data;

$name = 'btnCancel';
$btnCancel = $cF->btnCancel($name, 'Quay lại');
$name = 'btnSubmitAjax';
$btnSubmit = $cF->inputSubmit($name, $arrAction['lable'], 'adBtnLarge bgColorBlue1 corner8');
echo $cF->displayDiv(' ', $btnSubmit.$btnCancel);