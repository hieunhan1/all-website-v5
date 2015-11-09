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
	$where = "(type_id=1 OR type_id=2 OR type_id=3)";
	$values = $c->menuList($lang, $where);
	$valueCheck=$rowHeader[$name];
	$data = $cF->inputCheckbox($name, $values, $valueCheck, 'checkBoxMenuID', 1);
	if(!isset($_POST[$name])) $value=$rowHeader[$name]; else $value=$_POST[$name];
	$data .= $cF->inputHidden($name, $value, 'input_medium valueCheckBoxMenuID');
	echo $cF->displayTable('Danh mục hiển thị', '<div class="listCheckboxMedium" style="height:250px">'.$data.'</div>');
	
	$name = 'position_id';
	if($rowHeader[$name]!=''){
		$valueCheck=$rowHeader[$name];
	}else $valueCheck='';
	$values = $c->_model->_webPositionList(0);
	$data = $cF->inputCheckbox($name, $values, $valueCheck, 'checkbox checkBoxPosition', 1);
	$value=$rowHeader[$name];
	$data .= $cF->inputHidden($name, $value, 'input_medium valueCheckBoxPosition');
	echo $cF->displayTable('Vị trí hiển thị', $data);
	
	$name = 'name';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
	$value=$rowHeader[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Name', $data);
	
	$name = 'url';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
	$others = $c->messageChange(CONS_ADMIN_AUTO_URL);
	$value=$rowHeader[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties, $others);
	echo $cF->displayTable('Link', $data);
	
	//img
	$original = '0'; //hiện from check xử lý hình hay không
	
	$name = 'img';
	$value=$rowHeader[$name];
	echo $cF->inputHidden($name, $value, 'imgAdmin');
	
	$data = ob_start();
	include_once('admin_upload.php');
	$data = ob_get_clean();
	echo $cF->displayTableColspan($data);
	//end img
	
	$name = 'description';
	$value=$rowHeader[$name];
    $data = $cF->textArea($name, $value, 'textareaAdmin');
	echo $cF->displayTable('Description', $data);
	
	$name = 'order';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'5');
	$value=$rowHeader[$name];
	$data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Thứ tự', $data);
	
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