<div class="clear30"></div>
<?php

$cF = new controlAdminForm;

$id = $c->createEditData($table, $arrAction, $rowDetail);
$data = $cF->inputHidden('id', $id, 'ad_field');
echo $data;

if($id==0){
	$name = 'contact_id';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'8');
	$properties[] = array('propertie'=>'placeholder', 'value'=>'ID liên hệ');
	$properties[] = array('propertie'=>'style', 'value'=>'width:80px');
	$data = $cF->inputText($name, '', 'adInput value_id', $properties);
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'100');
	$properties[] = array('propertie'=>'placeholder', 'value'=>'Tên người liên hệ');
	$properties[] = array('propertie'=>'style', 'value'=>'width:260px; margin-left:5px');
	$data .= $cF->inputText('', '', 'adInput value_name', $properties);
	$data .= '<input type="button" value="Tìm kiếm" class="adBtnSmall bgColorBlue1 corner5 value_search" style="float:none; margin-left:5px" /> <p class="adError error value_name_error"></p>';
	$data .= '<div class="value_view" table="web_contact"></div>';
	echo $cF->displayDiv('Liên hệ trực tuyến', $data.'<p class="adNotes">Nếu khách hàng đã liên hệ từ website tìm thông tin tại đây</p>');
}

$name = 'datetime';
if($rowDetail[$name]=='') $value = date('Y-m-d H:i:s');
else $value=$rowDetail[$name];
echo $data = $cF->inputHidden($name, $value, 'ad_field');

$name = 'status';
$values = array();
$values[] = array('name'=>'Enable', 'id'=>'1');
$values[] = array('name'=>'Disable', 'id'=>'0');
if($rowDetail[$name]=='') $valueCheck=1;
else $valueCheck=$rowDetail[$name];
$data = $cF->inputRadio($name, $values, $valueCheck, 'ad_field adRadio');
echo $cF->displayDiv('Status', $data);

$name = 'name';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'60');
$properties[] = array('propertie'=>'check', 'value'=>'2');
$properties[] = array('propertie'=>'message', 'value'=>'Nhập name');
$other='<span class="error adError"></span>';
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Name', $data);

$name = 'phone';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'30');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Phone', $data);

$name = 'email';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'60');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Email', $data);

$name = 'address';
$properties = array();
$properties[] = array('propertie'=>'spellcheck', 'value'=>'false');
$value=$rowDetail[$name];
$data = $cF->textArea($name, $value, 'ad_field adInput adTextArea', $properties);
echo $cF->displayDiv('Address', $data);

$name = 'date_birthday';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'16');
if($rowDetail[$name]==0) $value=date('Y-m-d 00:00', time());
else $value=date('Y-m-d 00:00', $rowDetail[$name]);
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtSmall datetimepick', $properties);
echo $cF->displayDiv('Birthday', $data);

$name = 'birthplace';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'50');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Birthplace', $data);

$name = 'identity_card';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'10');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Identity card', $data);

$name = 'company';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'150');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Company', $data);

//upload images
$data = ob_start();
include_once('admin_upload.php');
$data = ob_get_clean();
echo $cF->displayDiv('Avatar', $data);

//danh sach cac lop da hoc
$str=''; $i=0;
$arr = array(
	"select"=>"`name`, `code`, `date_start`",
	"from"=>"`mn_class_info`, `mn_class`",
	"where"=>"`_table`='mn_customer' AND `table_id`='{$id}' AND `class_id`=`mn_class`.`id`",
);
$data = $c->_model->_select($arr);
foreach($data as $row){
	$i++;
	$str.='<p class="item">'.$i.'. <b>'.$row['code'].'</b> | '.$row['name'].' -&gt; <em>KG: ('.date('d-m-Y', $row['date_start']).')</em></p>';
}
$arr = array(
	"select"=>"`mn_class`.`name`, `mn_class`.`code`, `mn_class`.`date_start`",
	"from"=>"`mn_contract_customer`, `mn_class_info`, `mn_class`",
	"where"=>"`customer_id`='{$id}' AND `_table`='mn_contract' AND `mn_class_info`.`table_id`=`contract_id` AND `class_id`=`mn_class`.`id`",
);
$data = $c->_model->_select($arr);
foreach($data as $row){
	$i++;
	$str.='<p class="item">'.$i.'. <b>'.$row['code'].'</b> | '.$row['name'].' -&gt; <em>KG: ('.date('d-m-Y', $row['date_start']).')</em></p>';
}
$str = '<div id="listCustomer" class="label2">'.$str.'</div>';
$data = '<div class="seo">'.$cF->displayDiv('K.hàng đã học các lớp:', $str).'</div>';
echo $data;
//end danh sach cac lop da hoc

$name = 'btnCancel';
$btnCancel = $cF->btnCancel($name, 'Quay lại');
$name = 'btnSubmitAjax';
$btnSubmit = $cF->inputSubmit($name, $arrAction['lable'], 'adBtnLarge bgColorBlue1 corner8');
echo $cF->displayDiv(' ', $btnSubmit.$btnCancel);
?>

<script type="text/javascript">
$(document).ready(function(e) {
	function autoGetDataContact(){
		var table_id = $(".value_id").val();
		var fields = new Object();
		fields['loadWebContact'] = 1;
		fields['table'] = 'web_contact';
		fields['table_id'] = table_id;
		
		$.ajax({ 	
			url: 'ajax',
			type: 'post',
			data: fields,
			cache:false,
			success: function(data){
				//console.log(data);
				data = data.replace(/\n/g, "");
				data = $.parseJSON(data);
				var keys = Object.keys(data);
				var error = data.error;
				var message = data.message;
				if(error=='0'){
					for(var i=0; i<keys.length; i++){
						if( $("#" + keys[i]).length ){
							$("#" + keys[i]).val( data[keys[i]] );
						}
					}
					return true;
				}else if(error=='1'){
					$(".value_name_error").html(message);
					return false;
				}
			}
		});
	}
	
    $(".value_data").live("click", function(){
		autoGetDataContact();
	});
	
	$(".value_id").live("blur", function(){
		autoGetDataContact();
	});
});
</script>