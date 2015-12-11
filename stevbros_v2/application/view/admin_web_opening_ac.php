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
$where = "(type_id=1 OR type_id=2 OR type_id=3)";
$values = $c->menuList($lang, $where);
$valueCheck=$rowDetail[$name];
$data = $cF->inputCheckbox($name, $values, $valueCheck, 'checkBoxMenu', 1);
if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
$data .= $cF->inputHidden($name, $value, 'ad_field listValueMenu');
echo $cF->displayDiv('Danh mục hiển thị', '<div class="listCheckBox">'.$data.'</div>');

$name = 'header_id';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'5');
$properties[] = array('propertie'=>'placeholder', 'value'=>'ID khóa học');
$properties[] = array('propertie'=>'style', 'value'=>'width:70px');
if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput value_id', $properties);
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'100');
$properties[] = array('propertie'=>'placeholder', 'value'=>'Tên khóa học');
$properties[] = array('propertie'=>'style', 'value'=>'width:260px; margin-left:5px');
$data .= $cF->inputText('', '', 'ad_field adInput value_name', $properties);
$data .= '<input type="button" value="Tìm kiếm" class="adBtnSmall bgColorBlue1 corner5 value_search" style="float:none; margin-left:5px" />';
$data .= '<div id="value_view" table="web_header"></div>';
echo $cF->displayDiv('Khóa học', $data);

$name = 'name';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
$properties[] = array('propertie'=>'check', 'value'=>'2');
$properties[] = array('propertie'=>'message', 'value'=>'Nhập name');
$value=$rowDetail[$name];
$other='<span class="error adError"></span>';
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Mô tả', $data);

$name = 'duration';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'50');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Thời lượng', $data);

$name = 'opening';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'100');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Thông tin khai giảng', $data);

$name = 'order';
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