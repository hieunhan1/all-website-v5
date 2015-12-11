<div class="clear30"></div>
<?php
$cF = new controlAdminForm;

$id = $c->createEditData($table, $arrAction, $rowDetail);
$data = $cF->inputHidden('id', $id, 'ad_field');
echo $data;

$name = 'datetime';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'16');
if($rowDetail[$name]==0) $value=date('Y-m-d H:i', time());
else $value=date('Y-m-d H:i', $rowDetail[$name]);
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtSmall datetimepick', $properties);
echo $cF->displayDiv('Ngày', $data);

$name = 'table_id';
$properties = array();
$properties[] = array('propertie'=>'check', 'value'=>'1');
$properties[] = array('propertie'=>'message', 'value'=>'Chọn danh mục');
$other='<span class="error adError"></span>';
$where = "(type_id=7)";
$values = $c->menuList($lang, $where);
$valueCheck=$rowDetail[$name];
array_unshift($values, array('name'=>'-- danh mục --', 'id'=>''));
if($rowDetail[$name]!=''){
	$valueCheck=$rowDetail[$name];
}else $valueCheck=0;
$data = $cF->select($name, $values, $valueCheck, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Chọn danh mục', $data);

$name = 'name';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
$properties[] = array('propertie'=>'check', 'value'=>'2');
$properties[] = array('propertie'=>'message', 'value'=>'Nhập name');
$other='<span class="error adError"></span>';
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Name', $data);

$table = 'web_header';
$id = $rowDetail['table_id'];

$name = 'table';
$data = $cF->inputHidden($name, $table, 'ad_field');
echo $data;

//upload images
$data = ob_start();
include_once('admin_upload.php');
$data = ob_get_clean();
echo $cF->displayDiv('Upload ảnh', $data);

$name = 'btnCancel';
$btnCancel = $cF->btnCancel($name, 'Quay lại');
$name = 'btnSubmitAjax';
$btnSubmit = $cF->inputSubmit($name, $arrAction['lable'], 'adBtnLarge bgColorBlue1 corner8');
echo $cF->displayDiv(' ', $btnSubmit.$btnCancel);