<?php
$cF = new controlAdminForm;

$c->createEditData($table, $arrAction, $rowDetail);

echo '<div id="tableName" style="display:none">'.$table.'</div>
<form name="form_action" method="post" action="">
<table width="100%" border="0" cellpadding="0" cellspacing="10" style="margin-bottom:50px">';	
	
	$name = 'status';
	$values = array();
	$values[] = array('name'=>'Hiện', 'id'=>'1');
	$values[] = array('name'=>'Ẩn', 'id'=>'0');
	if(!isset($_POST[$name])){
		if($rowDetail[$name]=='') $valueCheck=1;
		else $valueCheck=$rowDetail[$name];
	}else $valueCheck=$_POST[$name];
	$data = $cF->inputRadio($name, $values, $valueCheck, 'radio');
	echo $cF->displayTable('Trạng thái', $data);
	
	$name = 'datetime';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'100');
	if(!isset($_POST[$name])){
		if($rowDetail[$name]==0) $value=date('Y-m-d H:i', time());
		else $value=date('Y-m-d H:i', $rowDetail[$name]);
	}else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_large datetimepick', $properties);
	echo $cF->displayTable('Ngày', $data);
	
	$name = 'name';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
	$value=$rowDetail[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Name', $data);
	
	$name = 'name_alias';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
	if($arrAction['disabled']!='') $properties[] = $arrAction['disabled'];
	if($arrAction['change']=='') $change=''; else $change='changeAlias';
	$others = $c->messageChange(CONS_ADMIN_CHANGE_ALIAS, $change);
	$value=$rowDetail[$name];
    $data = $cF->inputText($name, $value, 'input_medium enable', $properties, $others);
	echo $cF->displayTable('Alias', $data.'<br /><span class="error messageAlias"></span>');
	
	$name = 'url';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
	$others = $c->messageChange(CONS_ADMIN_AUTO_URL);
	$value=$rowDetail[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties, $others);
	echo $cF->displayTable('Link', $data);
	
	$name = 'title';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
	$value=$rowDetail[$name];
	$others = $c->messageChange(CONS_ADMIN_AUTO_TITLE);
    $data = $cF->inputText($name, $value, 'input_medium', $properties, $others);
	echo $cF->displayTable('Title', $data);
	
	$name = 'description';
	$value=$rowDetail[$name];
    $data = $cF->textArea($name, $value, 'textareaAdmin');
	echo $cF->displayTable('Description', $data);
	
	$name = 'tags';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
	$others = $c->messageChange(CONS_ADMIN_AUTO_TAGS);
	$value=$rowDetail[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties, $others);
	echo $cF->displayTable('Tags (keyword)', $data);
	
	$name = 'img';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'50');
	$others = $c->messageChange(CONS_ADMIN_AUTO_TAGS);
	$value=$rowDetail[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties, $others);
	echo $cF->displayTable('Img', $data);
	
	$name = 'code';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'30');
	$value=$rowDetail[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Code', $data);
	
	$name = 'parent';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'5');
	$value=$rowDetail[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Parent', $data);
	
	$name = 'order';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'5');
	$value=$rowDetail[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Order', $data);
	
	$name = 'lang';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'2');
	$value=$rowDetail[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Lang', $data);
	
	$name = 'properties';
	$values = array();
	$values[] = array('name'=>'Folder (menu)', 'id'=>'1');
	$values[] = array('name'=>'File (bài viết)', 'id'=>'2');
	if(!isset($_POST[$name])){
		if($rowDetail[$name]=='') $valueCheck=1;
		else $valueCheck=$rowDetail[$name];
	}else $valueCheck=$_POST[$name];
	$data = $cF->inputRadio($name, $values, $valueCheck, 'radio');
	echo $cF->displayTable('Properties', $data);
	
	$name = 'type_id';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'2');
	$value=$rowDetail[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Type ID', $data);
	
	$name = 'position_id';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'20');
	$value=$rowDetail[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Position ID', $data);
	
	$name = 'menu_id';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'20');
	$value=$rowDetail[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Menu ID', $data);
	
	$name = 'id';
    $data = $cF->inputHidden($name, $rowDetail[$name]);
	echo $data;
	
	$name = 'btnCancel';
    $btnCancel = $cF->btnCancel($name);
	$name = 'btnSubmit';
    $btnSubmit = $cF->inputSubmit($name, $arrAction['lable'], 'submitAdmin');
	echo $cF->displayTable('', $btnSubmit.$btnCancel);

echo '</table></form>';