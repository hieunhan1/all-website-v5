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
	
	$name = 'url';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
	$others = $c->messageChange(CONS_ADMIN_AUTO_URL);
	$value=$rowHeader[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties, $others);
	echo $cF->displayTable('Link', $data);
	
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
	
	//img
	$name = 'img';
	$value=$rowHeader[$name];
	echo $cF->inputHidden($name, $value, 'imgAdmin');
	
	$data = ob_start();
	include_once('admin_upload.php');
	$data = ob_get_clean();
	echo $cF->displayTableColspan($data);
	
	$name = 'parent';
	$where = "`id`<>'{$id}'";
	$values = $c->menuList($lang, $where);
	array_unshift($values, array('name'=>'-- chọn danh mục gốc --', 'id'=>'0'));
	if($rowHeader[$name]!=''){
		$valueCheck=$rowHeader[$name];
	}else $valueCheck=0;
	$data = $cF->select($name, $values, $valueCheck, 'input_medium', 1);
	echo $cF->displayTable('Danh mục gốc', $data);
	
	$name = 'position_id';
	if($rowHeader[$name]!=''){
		$valueCheck=$rowHeader[$name];
	}else $valueCheck='';
	$values = $c->_model->_webPositionList(2);
	$data = $cF->inputCheckbox($name, $values, $valueCheck, 'checkbox checkBoxPosition', 1);
	$values = $c->_model->_webPositionList(1);
	$data .= $cF->inputCheckbox($name, $values, $valueCheck, 'checkbox checkBoxPosition', 1);
	$value=$rowHeader[$name];
	$data .= $cF->inputHidden($name, $value, 'input_medium valueCheckBoxPosition');
	echo $cF->displayTable('Vị trí hiển thị', $data);
	
	$name = 'type_id';
	$values = $c->_model->_webTypeList(1);
	if($rowHeader[$name]!=''){
		$valueCheck=$rowHeader[$name];
	}else $valueCheck=20;
	$data = $cF->inputRadio($name, $values, $valueCheck, 'radio', 1);
	echo $cF->displayTable('Loại menu', $data);
	
	$name = 'order';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'5');
	$value=$rowHeader[$name];
	$data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Thứ tự', $data);

	$name = 'properties';
	$data = $cF->inputHidden($name, 1);
	echo $data;
	
	$name = 'lang';
    $data = $cF->inputHidden($name, $lang);
	echo $data;
	
	/*
	//id chuyen vao admin_upload.php
	$name = 'id';
    $data = $cF->inputHidden($name, $rowHeader[$name]);
	echo $data;
	*/
	
	echo '<tr><td colspan="2" id="ajaxViewFrmContent"></td></tr>';
	
	$name = 'btnSubmitAjax';
    $data = $cF->inputSubmit($name, $arrAction['lable'], 'submitAdmin');
	
	$name = 'btnCancel';
    $data .= $cF->btnCancel($name, 'Quay lại');
	
	$name = 'btnViewFrmContent';
    $data .= $cF->inputSubmit($name, 'Nhập nội dung', 'submitAdmin');
	
	echo $cF->displayTable('', $data);

echo '</table>';