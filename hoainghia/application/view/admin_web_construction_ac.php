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
	
	$name = 'name';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Tên công trình', $data);
	
	$name = 'code';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'20');
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Số thẩm tra', $data);
	
	$name = 'date_examine';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'16');
	if($rowDetail[$name]==0) $value=date('Y-m-d H:i', time());
	else $value=date('Y-m-d H:i', $rowDetail[$name]);
    $data = $cF->inputText($name, $value, 'input_large datetimepick', $properties);
	echo $cF->displayTable('Ngày thẩm tra', $data);
	
	$name = 'provisional_costs';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'10');
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Chi phí tạm tính', $data);
	
	$name = 'investor';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'100');
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Chủ đầu tư', $data);
	
	$name = 'notes';
	$value=$rowDetail[$name];
    $data = $cF->textArea($name, $value, 'textareaAdmin');
	echo $cF->displayTable('Ghi chú', $data);
	
	$name = 'type';
	$values = array();
	$values[] = array('name'=>'Thẩm tra', 'id'=>'1');
	$values[] = array('name'=>'Thiết kế', 'id'=>'2');
	if(!isset($_POST[$name])){
		if($rowDetail[$name]=='') $valueCheck=1;
		else $valueCheck=$rowDetail[$name];
	}else $valueCheck=$_POST[$name];
	$data = $cF->inputRadio($name, $values, $valueCheck, 'radio');
	echo $cF->displayTable('Loại công trình', $data);
	
	$name = 'other';
	$values = array();
	$values[] = array('name'=>'Công trình chính', 'id'=>'1');
	$values[] = array('name'=>'Công trình phụ', 'id'=>'2');
	if(!isset($_POST[$name])){
		if($rowDetail[$name]=='') $valueCheck=1;
		else $valueCheck=$rowDetail[$name];
	}else $valueCheck=$_POST[$name];
	$data = $cF->inputRadio($name, $values, $valueCheck, 'radio');
	echo $cF->displayTable('Khác', $data);
	
	$name = 'city_id';
	$values = $c->_model->_listTable('web_listcity', '`order`, `name`');
	array_unshift($values, array('name'=>'-- chọn tỉnh thành --', 'id'=>'0'));
	if($rowDetail[$name]!=''){
		$valueCheck=$rowDetail[$name];
	}else $valueCheck=35;
	$data = $cF->select($name, $values, $valueCheck, 'input_medium', 1);
	echo $cF->displayTable('Tỉnh thành', $data);
	
	$name = 'district_id';
	$values = $c->_model->_listTable('web_listdistrict', '`name`');
	array_unshift($values, array('name'=>'-- chọn quận huyện --', 'id'=>'0'));
	if($rowDetail[$name]!=''){
		$valueCheck=$rowDetail[$name];
	}else $valueCheck=0;
	$data = $cF->select($name, $values, $valueCheck, 'input_medium', 1);
	echo $cF->displayTable('Quận huyện', $data);
	
	$name = 'lang';
    $data = $cF->inputHidden($name, $lang);
	echo $data;
	
	if(isset($_GET['id']) && $_GET['id']==0){
		$name = 'datetime';
		$data = $cF->inputHidden($name, date('Y-m-d H:i:s'));
		echo $data;
	}
	
	$name = 'id';
    $data = $cF->inputHidden($name, $rowDetail[$name]);
	echo $data;
	
	$name = 'btnCancel';
    $btnCancel = $cF->btnCancel($name);
	$name = 'btnSubmit';
    $btnSubmit = $cF->inputSubmit($name, $arrAction['lable'], 'submitAdmin');
	echo $cF->displayTable('', $btnSubmit.$btnCancel);

echo '</table></form>';