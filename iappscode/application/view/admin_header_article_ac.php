<div id="dataAction"><span class="process">Lưu thành công</span></div>
<div id="dataActionBG"></div>
<?php
$cF = new controlAdminForm;

$id = $c->createEditData($table, $arrAction, $rowHeader);

echo '<div id="tableName" style="display:none">'.$table.'</div>
<table width="100%" border="0" cellpadding="0" cellspacing="10" style="margin-bottom:50px">';	
	
	$name = 'status';
	$values = array();
	$values[] = array('name'=>'Hiện', 'id'=>'1');
	$values[] = array('name'=>'Ẩn', 'id'=>'0');
	if($rowHeader[$name]=='') $valueCheck=1;
	else $valueCheck=$rowHeader[$name];
	$data = $cF->inputRadio($name, $values, $valueCheck, 'radio');
	echo $cF->displayTable('Trạng thái', $data);
	
	$name = 'datetime';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'16');
	if($rowHeader[$name]==0) $value=date('Y-m-d H:i', time());
	else $value=date('Y-m-d H:i', $rowHeader[$name]);
    $data = $cF->inputText($name, $value, 'input_large datetimepick', $properties);
	echo $cF->displayTable('Ngày', $data);
	
	$name = 'menu_id';
	$where = "(type_id=1 OR type_id=2 OR type_id=20)";
	$values = $c->menuList($lang, $where);
	$valueCheck=$rowHeader[$name];
	$data = $cF->inputCheckbox($name, $values, $valueCheck, 'checkBoxMenuID', 1);
	if(!isset($_POST[$name])) $value=$rowHeader[$name]; else $value=$_POST[$name];
	$data .= $cF->inputHidden($name, $value, 'input_medium valueCheckBoxMenuID');
	echo $cF->displayTable('Danh mục hiển thị', '<div class="listCheckboxMedium" style="height:250px">'.$data.'</div>');
	
	$name = 'name';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
	$value=$rowHeader[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Name', $data);
	
	$name = 'name_alias';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
	if($arrAction['disabled']!='') $properties[] = $arrAction['disabled'];
	if($arrAction['change']=='') $change=''; else $change='changeAlias';
	$others = $c->messageChange(CONS_ADMIN_CHANGE_ALIAS, $change);
	$value=$rowHeader[$name];
    $data = $cF->inputText($name, $value, 'input_medium enable', $properties, $others);
	echo $cF->displayTable('Alias', $data.'<br /><span class="error messageAlias"></span>');
	
	/*$name = 'url';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
	$others = $c->messageChange(CONS_ADMIN_AUTO_URL);
	$value=$rowHeader[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties, $others);
	echo $cF->displayTable('Link', $data);*/
	
	$name = 'title';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
	$value=$rowHeader[$name];
	$others = $c->messageChange(CONS_ADMIN_AUTO_TITLE);
    $data = $cF->inputText($name, $value, 'input_medium', $properties, $others);
	echo $cF->displayTable('Title', $data);
	
	$name = 'description';
	$value=$rowHeader[$name];
    $data = $cF->textArea($name, $value, 'textareaAdmin');
	echo $cF->displayTable('Description', $data);
	
	$name = 'tags';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
	$others = $c->messageChange(CONS_ADMIN_AUTO_TAGS);
	$value=$rowHeader[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties, $others);
	echo $cF->displayTable('Tags (keyword)', $data);
	
	/*$name = 'code';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'20');
	$value=$rowHeader[$name];
	$data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Code', $data);*/
	
	$dataContent = $c->_model->_viewWebContent($rowHeader['id']);
	if(count($dataContent)>0) $rowContent = $dataContent[0];
	
	//img
	$name = 'img';
	$value=$rowHeader[$name];
	echo $cF->inputHidden($name, $value, 'imgAdmin');
	
	$data = ob_start();
	include_once('admin_upload.php');
	$data = ob_get_clean();
	echo $cF->displayTableColspan($data);
	
	//-----web_content-----//
	//arr_img
	$name = 'arr_img';
	if(isset($rowContent[$name])) $value=$rowContent[$name]; else $value='';
	echo $cF->inputHidden($name, $value, 'arrImgAdmin');
	
	/*$name = 'price_cost';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'10');
	if(isset($rowContent[$name])) $value=$rowContent[$name]; else $value='';
	$data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Giá gốc', $data);
	
	$name = 'price';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'10');
	if(isset($rowContent[$name])) $value=$rowContent[$name]; else $value='';
	$data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Giá bán', $data);
	
	$name = 'more';
	if(isset($rowContent[$name])) $value=$rowContent[$name]; else $value='';
	$others = $cF->ckeditorCustom($name);
	$data = $cF->textArea($name, $value, 'textarea', NULL, $others);
	echo $cF->displayTable('Thông tin khác', $data);*/
	
	$name = 'content';
	if(isset($rowContent[$name])) $value=$rowContent[$name]; else $value='';
	$others = $cF->ckeditorFull($name);
	$data = $cF->textArea($name, $value, 'textarea', NULL, $others);
	echo $cF->displayTableColspan($data);
	
	$name = 'idContent';
	if(isset($rowContent['id'])) $value=$rowContent['id']; else $value='';
	$data = $cF->inputHidden($name, $value);
	echo $data;
	//-----end web_content-----//
	
	/*$name = 'order';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'5');
	$value=$rowHeader[$name];
	$data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Thứ tự', $data);*/
	
	if(isset($_GET['type_id'])) $type_id=$_GET['type_id']; else $type_id='';
	$name = 'type_id';
	$data = $cF->inputHidden($name, $type_id);
	echo $data;
	
	$name = 'properties';
	$data = $cF->inputHidden($name, 2);
	echo $data;
	
	$name = 'lang';
    $data = $cF->inputHidden($name, $lang);
	echo $data;
	
	$name = 'btnCancel';
    $btnCancel = $cF->btnCancel($name, 'Quay lại');
	$name = 'btnSubmitAjax';
    $btnSubmit = $cF->inputSubmit($name, $arrAction['lable'], 'submitAdmin');
	echo $cF->displayTable('', $btnSubmit.$btnCancel);

echo '</table>';