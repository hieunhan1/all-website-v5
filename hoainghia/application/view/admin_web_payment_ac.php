<?php
$cF = new controlAdminForm;

$c->createEditData($table, $arrAction, $rowDetail);

echo '<form name="form_action" method="post" action="">
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
	
	$name = 'construction_code';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'20');
	$properties[] = array('propertie'=>'placeholder', 'value'=>'Nhập mã c.trình');
	$properties[] = array('propertie'=>'style', 'value'=>'width:100px');
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_large value_id', $properties);
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
	$properties[] = array('propertie'=>'placeholder', 'value'=>'Nhập tên công trình');
	$properties[] = array('propertie'=>'style', 'value'=>'width:235px; margin-left:5px');
    $data .= $cF->inputText('', '', 'input_medium value_name', $properties);
	$data .= '<input type="button" value="Tìm kiếm" class="value_search" style="color:#666; margin-left:5px; padding:2px 5px" />';
	$data .= '<div id="value_view" table="web_construction"></div>';
	echo $cF->displayTable('Công trình', $data);
	
	$name = 'datetime';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'16');
	if($rowDetail[$name]==0) $value=date('Y-m-d H:i', time());
	else $value=date('Y-m-d H:i', $rowDetail[$name]);
    $data = $cF->inputText($name, $value, 'input_large datetimepick', $properties);
	echo $cF->displayTable('Ngày thanh toán', $data);
	
	$name = 'amount';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'10');
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Số tiền', $data);
	
	$name = 'notes';
	$value=$rowDetail[$name];
    $data = $cF->textArea($name, $value, 'textareaAdmin');
	echo $cF->displayTable('Ghi chú', $data);
	
	$name = 'lang';
    $data = $cF->inputHidden($name, $lang);
	echo $data;
	
	$name = 'id';
    $data = $cF->inputHidden($name, $rowDetail[$name]);
	echo $data;
	
	$name = 'btnCancel';
    $btnCancel = $cF->btnCancel($name);
	$name = 'btnSubmit';
    $btnSubmit = $cF->inputSubmit($name, $arrAction['lable'], 'submitAdmin');
	echo $cF->displayTable('', $btnSubmit.$btnCancel);

echo '</table></form>';