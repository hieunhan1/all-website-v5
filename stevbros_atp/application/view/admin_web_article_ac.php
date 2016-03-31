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
echo $cF->displayDiv('Status', $data);

$name = 'datetime';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'16');
if($rowDetail[$name]==0) $value=date('Y-m-d H:i', time());
else $value=date('Y-m-d H:i', $rowDetail[$name]);
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtSmall datetimepick', $properties);
echo $cF->displayDiv('Date', $data);

$name = 'menu_id';
$where = "(type_id=1 OR type_id=2 OR type_id=5)";
$values = $c->menuList($lang, $where);
$valueCheck=$rowDetail[$name];
$data = $cF->inputCheckbox($name, $values, $valueCheck, 'checkBoxItem');
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
echo $cF->displayDiv('Name', $data);

$name = 'authors';
if($rowDetail[$name]!=''){
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'50');
	$value=$rowDetail[$name];
	$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
	echo $cF->displayDiv('Tác giả', $data);
	
	$name = 'other';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'60');
	$value=$rowDetail[$name];
	$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
	echo $cF->displayDiv('Email', $data);
}

$name = 'name_alias';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
if($arrAction['disabled']!='') $properties[] = $arrAction['disabled'];
$others = $c->messageChange(CONS_ADMIN_CHANGE_ALIAS, $arrAction['change']);
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $others);
echo $cF->displayDiv('Alias', $data.'<br /><span class="adError messageAlias"></span>');

/*$name = 'url';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
$others = $c->messageChange(CONS_ADMIN_AUTO_URL);
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $others);
echo $cF->displayDiv('Link', $data);*/

echo '<div class="seo">';
$name = 'title';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
$value=$rowDetail[$name];
$others = $c->messageChange(CONS_ADMIN_AUTO_TITLE);
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $others);
echo $cF->displayDiv('Title', $data);

$name = 'description';
$properties = array();
$properties[] = array('propertie'=>'spellcheck', 'value'=>'false');
$value=$rowDetail[$name];
$data = $cF->textArea($name, $value, 'ad_field adInput adTextArea', $properties);
echo $cF->displayDiv('Description', $data);

$name = 'tags';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
$value=$rowDetail[$name];
$others = $c->messageChange(CONS_ADMIN_AUTO_TAGS);
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $others);
echo $cF->displayDiv('Tags (keyword)', $data);
echo '</div>';

$name = '_order';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'3');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Order', $data);

/*$name = 'code';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'20');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Code', $data);*/

//upload images
$data = ob_start();
include_once('admin_upload.php');
$data = ob_get_clean();
echo $cF->displayDiv('Upload ảnh', $data);

//-----web_content Second-----//
$dataContent = $c->_model->_viewWebContent($rowDetail['id']);
if(count($dataContent)>0) $rowContent = $dataContent[0];

//dk de ajax table thu 2 den database
echo '<div id="tableSecond" style="display:none">web_content</div>'; //table database
if(isset($rowContent['id'])){
	$value = '{"name":"id", "value":"'.$rowContent['id'].'"}';
}else{
	$value = '{"name":"id", "value":"0"}';
}
echo '<div id="idFirst" style="display:none">'.$value.'</div>';

$value = '{"name":"header_id", "value":"'.$id.'"}';
echo '<div id="idSecond" style="display:none">'.$value.'</div>';

/*
$name = 'price_cost';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'10');
if(isset($rowContent[$name])) $value=$rowContent[$name]; else $value='';
$data = $cF->inputText($name, $value, 'adInput adTxtMedium', $properties);
echo $cF->displayDiv('Giá gốc', $data);

$name = 'price';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'10');
if(isset($rowContent[$name])) $value=$rowContent[$name]; else $value='';
$data = $cF->inputText($name, $value, 'adInput adTxtMedium', $properties);
echo $cF->displayDiv('Giá bán', $data);
	
$name = 'more';
if(isset($rowContent[$name])) $value=$rowContent[$name]; else $value='';
$name = 'ckeditor_more';
$properties = array();
$properties[] = array('propertie'=>'type', 'value'=>'ckeditor');
$others = $cF->ckeditorBasic($name);
$data = $cF->textArea($name, $value, 'ad_field_second', $properties, $others);
echo $cF->displayDiv('Thông tin khác', $data);*/
	
$name = 'content';
if(isset($rowContent[$name])) $value=$rowContent[$name]; else $value='';
$name = 'ckeditor_content';
$properties = array();
$properties[] = array('propertie'=>'type', 'value'=>'ckeditor');
$others = $cF->ckeditorFull($name);
$data = $cF->textArea($name, $value, 'ad_field_second', $properties, $others);
echo $cF->displayDiv('', $data);
//-----end web_content Second-----//

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
$btnCancel = $cF->btnCancel($name, 'Back');
$name = 'btnSubmitAjax';
$btnSubmit = $cF->inputSubmit($name, $arrAction['lable'], 'adBtnLarge bgColorBlue1 corner8');
echo $cF->displayDiv(' ', $btnSubmit.$btnCancel);